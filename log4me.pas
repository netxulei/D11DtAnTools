{
 超简单实用的DELPHI日志单元 1.0.0
 2011-7-10 p5soft.com


 引用本单元即可使用

 一共四个方法
procedure  log4error(msg: AnsiString); //写ERROR级别的日志
procedure  log4info(msg: AnsiString); //写INFO级别的日志
procedure  log4debug(msg: AnsiString); //写DEBUG级别的日志

function  log4filename():AnsiString; //得到当前日志文件全名

 一个配置文件
 log4me.ini


#配置文件和主程序在同一目录.没有这个文件或不在主目录中则不写日志
[log4me]
#path,日志的存放目录.必须是主程序目录及子目录.
#例子:主程序目录
#path=.
#例子:子目录
#path=temp\logs
path=logs
#level,日志等级,只能是 error,info,debug之一
#为error时,只有log4error打印的日志被输出.
#为info时,log4error和log4info打印的日志被输出.
#为debug时,log4error,log4info,log4debug打印的日志都被输出.
level=info

 一个可选工具
 tail.exe

 命令行中输入 >tail.exe -1000f 日志文件名
 即可动态查看日志输出
 或用程序调用
 var
  cmd :AnsiString;
  log_file:AnsiString;
 begin
  log_file := log4filename();  //得到当前日志文件全名
  cmd := ExtractFilePath(ParamStr(0)) + 'tail.exe -1000f "'+ log_file +'"';
  WinExec(PAnsiChar(cmd),SW_SHOWNORMAL); //程序调用 tail.exe工具来查看日志

}


unit log4me;

interface

uses classes, sysutils, ComObj, windows,IniFiles;

procedure  log4error(msg: AnsiString); //写ERROR级别的日志
procedure  log4info(msg: AnsiString); //写INFO级别的日志
procedure  log4debug(msg: AnsiString); //写DEBUG级别的日志

function  log4filename():AnsiString; //得到当前日志文件全名
var
  log_filename: AnsiString; //日志文件全名
implementation


var
  log_ThreadLock: TRTLCriticalSection; // 临界区
  log_fileStream: TFileStream;
  log_filepath: AnsiString; //日志文件路径

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

  //进入临界区，多线程时可以保护资源
  EnterCriticalSection(log_ThreadLock);

  try

      try

        //如果要写的日志文件和打开的不同（在程序第一次运行和跨天的时候出现）
        //则关闭打开的日志文件。
        if filename <> log_filename then
        begin
          log_filename := filename;
          if Assigned(log_fileStream) then
          begin
            log_fileStream.Free;
            log_fileStream := nil;
          end;
        end;

        //如果要写的日志文件没有打开（在程序第一次运行和跨天的时候出现）
        //则打开日志文件。
        if not Assigned(log_fileStream) then
        begin
           if FileExists(log_filename) then
             fmode := fmOpenWrite or fmShareDenyNone
           else
             fmode := fmCreate or fmShareDenyNone ;
          log_fileStream := TFileStream.Create(log_filename,fmode);
          log_fileStream.Position := log_fileStream.Size;
        end;

        //在日志文件中写入日志
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
    //无论如何，离开临界区
    LeaveCriticalSection(log_ThreadLock);
  end;

end;

procedure log4write(msg: AnsiString);
var
  strline: AnsiString;
begin

   // 最多每秒重加载一次配置文件
   if (Now() - log_initime) > (1/(24*60*60)) then
     log_init();

   //日志开头加时间
   strline := FormatDateTime('hh:nn:ss.zzz', Now) + ' ' + msg + #13#10;

   //写到当天的日志文件中
   log4me_addLog(log_filepath + FormatDateTime('yyyy-mm-dd', Now) + '.log', PAnsiChar(strline));

end;


//-----下面4个是对外方法-------------------------

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

// ----------- 类初始化 -------------//
initialization
  InitializeCriticalSection(log_ThreadLock);
  log_init;
  //log4info('log4me:application starting....');

// ----------- 类销毁 -------------//
finalization

//log4info('log4me:application stoping....');
DeleteCriticalSection(log_ThreadLock);
if Assigned(log_fileStream) then
  log_fileStream.Free;

end.
