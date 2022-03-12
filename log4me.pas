{
 ����ʵ�õ�DELPHI��־��Ԫ 1.0.0
 2011-7-10 p5soft.com


 ���ñ���Ԫ����ʹ��

 һ���ĸ�����
procedure  log4error(msg: AnsiString); //дERROR�������־
procedure  log4info(msg: AnsiString); //дINFO�������־
procedure  log4debug(msg: AnsiString); //дDEBUG�������־

function  log4filename():AnsiString; //�õ���ǰ��־�ļ�ȫ��

 һ�������ļ�
 log4me.ini


#�����ļ�����������ͬһĿ¼.û������ļ�������Ŀ¼����д��־
[log4me]
#path,��־�Ĵ��Ŀ¼.������������Ŀ¼����Ŀ¼.
#����:������Ŀ¼
#path=.
#����:��Ŀ¼
#path=temp\logs
path=logs
#level,��־�ȼ�,ֻ���� error,info,debug֮һ
#Ϊerrorʱ,ֻ��log4error��ӡ����־�����.
#Ϊinfoʱ,log4error��log4info��ӡ����־�����.
#Ϊdebugʱ,log4error,log4info,log4debug��ӡ����־�������.
level=info

 һ����ѡ����
 tail.exe

 ������������ >tail.exe -1000f ��־�ļ���
 ���ɶ�̬�鿴��־���
 ���ó������
 var
  cmd :AnsiString;
  log_file:AnsiString;
 begin
  log_file := log4filename();  //�õ���ǰ��־�ļ�ȫ��
  cmd := ExtractFilePath(ParamStr(0)) + 'tail.exe -1000f "'+ log_file +'"';
  WinExec(PAnsiChar(cmd),SW_SHOWNORMAL); //������� tail.exe�������鿴��־

}


unit log4me;

interface

uses classes, sysutils, ComObj, windows,IniFiles;

procedure  log4error(msg: AnsiString); //дERROR�������־
procedure  log4info(msg: AnsiString); //дINFO�������־
procedure  log4debug(msg: AnsiString); //дDEBUG�������־

function  log4filename():AnsiString; //�õ���ǰ��־�ļ�ȫ��
var
  log_filename: AnsiString; //��־�ļ�ȫ��
implementation


var
  log_ThreadLock: TRTLCriticalSection; // �ٽ���
  log_fileStream: TFileStream;
  log_filepath: AnsiString; //��־�ļ�·��

  log_initime:TDateTime; 
  log_doerror, log_dodebug, log_doinfo: Boolean;


procedure log_init();
var
 tmpStr:String;
begin

  log_doerror := False;
  log_dodebug := False;
  log_doinfo := False;

  if FileExists(ExtractFilePath(ParamStr(0)) + 'setting.ini') then
  begin
  
    with TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini') do
      try
        log_filepath := ExtractFilePath(ParamStr(0)) + '\' + ReadString('log4me','path','logs') + '\';
        tmpStr := LowerCase(ReadString('log4me','level','info'));

        log_doerror :=  (tmpStr = 'debug') or (tmpStr = 'info') or (tmpStr = 'error');
        log_doinfo  :=  (tmpStr = 'debug') or (tmpStr = 'info');
        log_dodebug :=  (tmpStr = 'debug') ;
      finally
        Free;
      end;

  end;

  log_initime := Now;

end;

procedure log4me_addLog(filename: AnsiString; p: PAnsiChar);
var
 fmode :Word;
 tmp:AnsiString;
begin

  //�����ٽ��������߳�ʱ���Ա�����Դ
  EnterCriticalSection(log_ThreadLock);

  try

      try

        //���Ҫд����־�ļ��ʹ򿪵Ĳ�ͬ���ڳ����һ�����кͿ����ʱ����֣�
        //��رմ򿪵���־�ļ���
        if filename <> log_filename then
        begin
          log_filename := filename;
          if Assigned(log_fileStream) then
          begin
            log_fileStream.Free;
            log_fileStream := nil;
          end;
        end;

        //���Ҫд����־�ļ�û�д򿪣��ڳ����һ�����кͿ����ʱ����֣�
        //�����־�ļ���
        if not Assigned(log_fileStream) then
        begin
           if FileExists(log_filename) then
             fmode := fmOpenWrite or fmShareDenyNone
           else
             fmode := fmCreate or fmShareDenyNone ;
          log_fileStream := TFileStream.Create(log_filename,fmode);
          log_fileStream.Position := log_fileStream.Size;
        end;

        //����־�ļ���д����־
        log_fileStream.Write(p^, strlen(p));

      except
      
        on E:Exception do
        begin
            try
              tmp := ExtractFilePath(ParamStr(0)) + 'log4me_err.log';
              if FileExists(tmp) then
                 fmode := fmOpenWrite or fmShareDenyNone
              else
                 fmode := fmCreate or fmShareDenyNone ;
              with TFileStream.Create(tmp, fmode) do
              begin
                Position := Size;
                tmp := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', Now) + ' ' +  E.Message +  #13#10;
                Write(tmp[1],Length(tmp));
                Free;
              end;
            except
            end;
        end;
      end;

  finally
    //������Σ��뿪�ٽ���
    LeaveCriticalSection(log_ThreadLock);
  end;

end;

procedure log4write(msg: AnsiString);
var
  strline: AnsiString;
begin

   // ���ÿ���ؼ���һ�������ļ�
   if (Now() - log_initime) > (1/(24*60*60)) then
     log_init();

   //��־��ͷ��ʱ��
   strline := FormatDateTime('hh:nn:ss.zzz', Now) + ' ' + msg + #13#10;

   //д���������־�ļ���
   log4me_addLog(log_filepath + FormatDateTime('yyyy-mm-dd', Now) + '.log', PAnsiChar(strline));

end;


//-----����4���Ƕ��ⷽ��-------------------------

function  log4filename():AnsiString;
begin
  Result := log_filename;
end;

procedure log4error(msg: AnsiString);
begin
  if log_doerror then
     log4write('[error]' + msg);
end;

procedure log4info(msg: AnsiString);
begin
  if log_doinfo then
    log4write('[info ]' + msg);
end;

procedure log4debug(msg: AnsiString);
begin
  if log_dodebug then
    log4write('[debug]' + msg);
end;

// ----------- ���ʼ�� -------------//
initialization
  InitializeCriticalSection(log_ThreadLock);
  log_init;
  //log4info('log4me:application starting....');

// ----------- ������ -------------//
finalization

//log4info('log4me:application stoping....');
DeleteCriticalSection(log_ThreadLock);
if Assigned(log_fileStream) then
  log_fileStream.Free;

end.
