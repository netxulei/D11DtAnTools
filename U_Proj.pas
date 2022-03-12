unit U_Proj;

interface

uses
  U_DT,ShellAPI, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxListBox,
  cxDBEdit, FMTBcd, DB, SqlExpr, DBGridEhGrouping, GridsEh, DBGridEh, ADODB,
  ExtCtrls, IniFiles, log4me, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_Proj = class(TForm)
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    ds1: TDataSource;
    dbgrdh1: TDBGridEh;
    btn3: TBitBtn;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    pnl1: TPanel;
    btn4: TBitBtn;
    btn2: TBitBtn;
    btn1: TBitBtn;
    pnl2: TPanel;
    lbl2: TLabel;
    lbl1: TLabel;
    edt5: TEdit;
    btn5: TBitBtn;
    pnl3: TPanel;
    edt6: TEdit;
    lbl7: TLabel;
    fdQryTmp: TFDQuery;
    fdQryProj: TFDQuery;
    //function del_proc(): Boolean;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrdh1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Proj: TF_Proj;

implementation

uses
  U_Common;

{$R *.dfm}
//ɾ��Ŀ¼����

function DelDirectory(const Source: string): Boolean;
var
  fo: TSHFileOpStruct;
begin
  FillChar(fo, SizeOf(fo), 0);
  with fo do
  begin
    wnd := 0;
    wFunc := FO_DELETE;
    pFrom := PChar(Source + #0);
    pTo := #0#0;
    fFlags := FOF_NOCONFIRMATION + FOF_SILENT;
  end;
  Result := (SHFileOperation(fo) = 0);
end;

////ɾ���洢���̺���
//
//function TF_Proj.del_proc(): Boolean;
//var
//  sqltext: string;
//begin
//  //ע�����Ʋ�Ҫɾ����ϵͳ�Ĵ洢����
//  ShowWaitText('���Ժ���������ǰ��Ŀ�洢����...');
//  try
//    //ɾ�����ݿ��еĴ洢����
//    with FDQryTmp do
//    begin
//      close;
//      DisableControls;
//      ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_database + ';Data Source=' +
//        sComputerName + t_connect;
//      SQL.Clear;
//      sqltext := 'declare @procName varchar(500)';
//      SQL.Add(sqltext);
//      sqltext := 'declare cur cursor';
//      SQL.Add(sqltext);
//      sqltext := 'for select name from sysobjects where type =' + '''' + 'p' + '''' + 'and schema_ver=0';
//      SQL.Add(sqltext);
//      sqltext := 'open cur';
//      SQL.Add(sqltext);
//      sqltext := 'fetch next from cur into @procName';
//      SQL.Add(sqltext);
//      sqltext := 'while @@fetch_status=0';
//      SQL.Add(sqltext);
//      sqltext := 'begin';
//      SQL.Add(sqltext);
//      sqltext := 'exec(' + '''' + 'drop procedure ' + '''' + '+@procName)';
//      SQL.Add(sqltext);
//      sqltext := 'fetch next from cur into @procName';
//      SQL.Add(sqltext);
//      sqltext := 'end';
//      SQL.Add(sqltext);
//      sqltext := 'close cur';
//      SQL.Add(sqltext);
//      sqltext := 'deallocate cur';
//      SQL.Add(sqltext);
//      Prepared;
//      ExecSQL;
//      Close;
//    end;
//  finally
//    ShowWaitText; //���������,���ǹرյȴ�����
//  end;
//end;

procedure TF_Proj.btn1Click(Sender: TObject);
var
  s_DataName: string;
  s_filename, s_filename1, s_filepath, FDBname, sqltext, s_info: string;
  i_pos: Integer;
  aml2zhfile: TextFile;
  MyIniFile: TIniFile;
begin
  //׼�����ݿ�����
  s_DataName := 'ZH_' + StringReplace(DateTimeToStr(Now), '-', '', [rfReplaceAll]);
  s_DataName := StringReplace(s_DataName, ':', '', [rfReplaceAll]);
  s_DataName := StringReplace(s_DataName, ' ', '', [rfReplaceAll]);
  edt3.Text := s_DataName; //��¼���ݿ�����
  edt4.Text := t_type; //��¼��Ŀ�汾��
  //¼����ȥ�ո�
  edt1.Text := Trim(edt1.Text);
  edt2.Text := Trim(edt2.Text);
  edt6.Text := Trim(edt6.Text);
  if Length(edt1.Text) = 0 then
  begin
    Application.MessageBox('��Ŀ��Ų���Ϊ�գ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if Length(edt2.Text) = 0 then
  begin
    Application.MessageBox('��Ŀ���Ʋ���Ϊ�գ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  //��ź����Ʋ����ظ�
  if FDQryProj.Locate('proj_no', edt1.Text, []) then
  begin
    Application.MessageBox('����Ŀ����Ѵ��ڣ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if FDQryProj.Locate('proj_name', edt2.Text, []) then
  begin
    Application.MessageBox('����Ŀ�����Ѵ��ڣ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  //�������ݿ⣬�ɹ����й���Ϣ�ٴ������ݿ� ///////////////////////////////////////////////

  s_filepath := ExtractFilePath(ParamStr(0));
  FDBname := UpperCase(s_DataName);
  s_filepath := s_filepath + FDBname;
  ////////////////////////
  //ShowMessage(s_filepath);
  //////////////////
  if DirectoryExists(s_filepath) then
  begin
    Application.MessageBox('����Ŀ¼����������һ�Σ�', '��Ϣ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;

  //�����µ�Ŀ¼
  CreateDirectory(PChar(s_filepath), nil);

//  ShowWaitText('���Ժ����ڽ������ݿ⡭��');

  //�������ݿ�

  try
    F_DT.FDConGen.Connected := True;
    with FDQryTmp do
    begin
      Close;
      DisableControls;
      Connection := F_DT.FDConGen;
//      ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Data Source=' + sComputerName + t_connect;
      SQL.Clear;
      //���������ݿ�
//      sqltext := 'USE [master]';
//      SQL.Add(sqltext);
      //sqltext := 'GO';
      //SQL.Add(sqltext);
      sqltext := 'CREATE DATABASE [' + FDBname + '] ON  PRIMARY';
      SQL.Add(sqltext);
      sqltext := '( NAME = N''' + FDBname + '_data''' + ', FILENAME = N''' + s_filepath + '\' + FDBname + '_data.mdf''' + ' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH =  65536KB )';
      SQL.Add(sqltext);
      sqltext := 'LOG ON ';
      SQL.Add(sqltext);
      sqltext := '( NAME = N''' + FDBname + '_log''' + ', FILENAME = N''' + s_filepath + '\' + FDBname + '_log.ldf''' + ' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH =  65536KB)';
      SQL.Add(sqltext);
      sqltext := 'ALTER DATABASE [' + FDBname + '] set single_user with rollback  immediate ';
      SQL.Add(sqltext);
      sqltext := 'ALTER DATABASE [' + FDBname + '] collate Chinese_PRC_CI_AS ';
      SQL.Add(sqltext);
      sqltext := 'ALTER DATABASE [' + FDBname + '] set multi_user ';
      SQL.Add(sqltext);

      if t_database_ver = '2019' then
      begin
//        sqltext := 'ALTER DATABASE [' + FDBname + '] SET COMPATIBILITY_LEVEL = 150 '; //140����2017SQL   150����2019
//        SQL.Add(sqltext);
        sqltext := 'ALTER DATABASE SCOPED CONFIGURATION set VERBOSE_TRUNCATION_WARNINGS = ON '; //Ӱ�����������������ʾ������Ϣ
        SQL.Add(sqltext);
      end;
      ExecSQL;
    end;
    F_DT.FDConGen.Connected := False;

    //
   //�����½���Ŀ��Ϣ
    FDQryProj.Append;
    FDQryProj.FieldValues['proj_no'] := edt1.Text;
    FDQryProj.FieldValues['proj_name'] := edt2.Text;
    FDQryProj.FieldValues['proj_database'] := edt3.Text;
    FDQryProj.FieldValues['proj_ver'] := edt4.Text; //edt5Ϊ�Զ������ֶ�
    FDQryProj.FieldValues['proj_memo'] := edt6.Text;
    FDQryProj.Post;
//    FDQryProj.UpdateBatch(arAll);
//    ShowWaitText;
    //
    // ����setting����ʾ ��t_datebase��
    t_proj_no := edt1.Text;
    t_proj_name := edt2.Text;
    t_Database := FDBname;
    //����setting
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename);
    case StrToInt(t_type) of
      1:
        begin
          MyIniFile.WriteString('Base', 'Proj_no1', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name1', t_proj_name);
          MyIniFile.WriteString('Base', 'Database1', t_Database);

        end;
      2:
        begin
          MyIniFile.WriteString('Base', 'Proj_no2', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name2', t_proj_name);
          MyIniFile.WriteString('Base', 'Database2', t_Database);

        end;
      3:
        begin
          MyIniFile.WriteString('Base', 'Proj_no3', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name3', t_proj_name);
          MyIniFile.WriteString('Base', 'Database3', t_Database);

        end;
    end;
    MyIniFile.Free;
  except
//    ShowWaitText;
    Application.MessageBox('������Ŀ���ݿ⽨�����ɹ�����½���Ŀʧ�ܣ�', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;
//  ShowWaitText;

  //  FDQryProj.DisableControls;
  //  FDQryProj.Close;
  //  FDQryProj.Open;
  //  FDQryProj.EnableControls;
  //  FDQryProj.Locate('proj_no', t_proj_no, []);
  lbl2.Caption := '��ǰ��Ŀ��' + t_proj_no + '--' + t_proj_name + '--' + t_Database;
  log4info('�½���Ŀ��' + t_proj_no + '/' + t_proj_name + '/' + t_Database);
  Application.MessageBox('�½���Ŀ�ɹ���', '�ɹ�', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

  ///////////////////////////////////////////////////////////////////////////////////////////////////
end;

procedure TF_Proj.FormCreate(Sender: TObject);
begin
  pnl3.Width := F_Proj.Width;
  lbl2.Caption := '��ǰ��Ŀ��' + t_proj_name;
  //���ݿ��б������ж���Ŀ�е����ݿ������Ƿ���Ч
  FDQryProj.close;
  FDQryProj.DisableControls;
  FDQryProj.Connection:=f_dt.FDConSYS;
//  FDQryProj.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_sys_dbname + ';Data Source=' + sComputerName + t_connect;
//  FDQryProj.CursorLocation := clUseClient;
//  FDQryProj.CursorType := ctStatic;
//  FDQryProj.LockType := ltBatchOptimistic;
  FDQryProj.SQL.Clear;
  FDQryProj.SQL.Add('select * FROM "tb_proj" where proj_ver=:s_ver');
  FDQryProj.ParamByName('s_ver').Value := t_type;
  FDQryProj.Prepared;
  FDQryProj.Open;
  FDQryProj.First;
  if FDQryProj.Locate('proj_name', t_proj_name, []) then
  begin
    edt1.Text := FDQryProj.FieldValues['proj_no'];
    edt2.Text := FDQryProj.FieldValues['proj_name'];
    edt3.Text := FDQryProj.FieldValues['proj_database'];
    edt4.Text := FDQryProj.FieldValues['proj_ver'];
    edt5.Text := FDQryProj.FieldValues['proj_id'];
    edt6.Text := FDQryProj.FieldValues['proj_memo'];
  end
  else
  begin
    edt1.Text := '';
    edt2.Text := '';
    edt3.Text := '';
    edt4.Text := '';
    edt5.Text := '';
    edt6.Text := '';
  end;
  FDQryProj.enableControls;
end;

procedure TF_Proj.dbgrdh1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if not FDQryProj.Eof then
  begin
    edt1.Text := FDQryProj.FieldValues['proj_no'];
    edt2.Text := FDQryProj.FieldValues['proj_name'];
    edt3.Text := FDQryProj.FieldValues['proj_database'];
    edt4.Text := FDQryProj.FieldValues['proj_ver'];
    edt5.Text := FDQryProj.FieldValues['proj_id'];
    edt6.Text := FDQryProj.FieldValues['proj_memo'];
  end;
end;

procedure TF_Proj.btn4Click(Sender: TObject);
begin
  Close;
end;

procedure TF_Proj.btn5Click(Sender: TObject);
var
  s_DataName: string;
  s_filename, s_filename1, s_filepath, FDBname, sqltext, s_info: string;
  i_pos: Integer;
  aml2zhfile: TextFile;
  MyIniFile: TIniFile;
begin
  if FDQryProj.Eof then
  begin
    Application.MessageBox('û��ѡ��Ҫɾ������Ŀ', '��Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  edt1.Text := FDQryProj.FieldValues['proj_no'];
  edt2.Text := FDQryProj.FieldValues['proj_name'];
  edt3.Text := FDQryProj.FieldValues['proj_database'];
  edt4.Text := FDQryProj.FieldValues['proj_ver'];
  edt5.Text := FDQryProj.FieldValues['proj_id'];
  edt6.Text := FDQryProj.FieldValues['proj_memo'];
  FDBname := Trim(edt3.Text);
  if Application.MessageBox('��Ӧ�ĸ���Ŀ���������ݺ��������ݶ�����գ�ȷ����', '��Ϣ', MB_OKCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
  begin
    Exit;
  end;

  //�������ݿ�
  try
    with FDQryTmp do
    begin
      Close;
      DisableControls;
      Connection := F_DT.fdconsys;
//      ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=master;Data Source=' + sComputerName + t_connect;
      SQL.Clear;
      //�������ݿ�  localdb�����⣬��Ϊdrop���ݿ�
     // sqltext := 'EXEC sp_detach_db ''' + FDBname + ''', ''true''';
      sqltext := 'DECLARE @SQL VARCHAR(MAX)';
      SQL.Add(sqltext);
      sqltext := 'SET @SQL=' + '''' + '''';
      SQL.Add(sqltext);
      sqltext := 'SELECT @SQL = @SQL + ' + '''' + '; KILL ' + '''' + '+ Rtrim(SPID) FROM master..sysprocesses WHERE dbid = Db_id(' + '''' + FDBname + '''' + ')';
      SQL.Add(sqltext);
      sqltext := 'EXEC(@SQL)';
      SQL.Add(sqltext);
      sqltext := 'drop database ' + FDBname;
      SQL.Add(sqltext);
      //SQL.SaveToFile('D:\xl.txt');
      ExecSQL;
    end;
  except
    Application.MessageBox('����Ŀ�����ݿⲻ���ڣ����������Ŀ��Ϣ', '��Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  end;
  FDQryTmp.Close;
  //ɾ�����ݿ�Ŀ¼//ɾ�����ݿ��ļ�
  DelDirectory(ExtractFilePath(ParamStr(0)) + FDBname);
  //ɾ����ǰ��¼
  FDQryProj.Delete;
//  FDQryProj.UpdateBatch(arAll);
  log4info('ɾ����Ŀ��' + edt1.Text + '/' + edt2.Text + '/' + edt3.Text);
  if t_proj_no = edt1.Text then //��ɾ�����ǵ�ǰ��Ŀ
  begin
    if FDQryProj.Eof then //��û�м�¼��
    begin
      t_proj_no := '';
      t_proj_name := '---����������Ŀ������ʵʩ����---';
      t_Database := '';
    end
    else //�����м�¼����ѵ�ǰ��¼����Ϊ��ǰ��Ŀ
    begin
      edt1.Text := FDQryProj.FieldValues['proj_no'];
      edt2.Text := FDQryProj.FieldValues['proj_name'];
      edt3.Text := FDQryProj.FieldValues['proj_database'];
      edt4.Text := FDQryProj.FieldValues['proj_ver'];
      edt5.Text := FDQryProj.FieldValues['proj_id'];
      edt6.Text := FDQryProj.FieldValues['proj_memo'];
      t_proj_no := edt1.Text;
      t_proj_name := edt2.Text;
      t_Database := edt3.Text;
    end;
    //ͬʱ��¼��setting
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename);

    case StrToInt(t_type) of
      1:
        begin
          MyIniFile.WriteString('Base', 'Proj_no1', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name1', t_proj_name);
          MyIniFile.WriteString('Base', 'Database1', t_Database);

        end;
      2:
        begin
          MyIniFile.WriteString('Base', 'Proj_no2', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name2', t_proj_name);
          MyIniFile.WriteString('Base', 'Database2', t_Database);

        end;
      3:
        begin
          MyIniFile.WriteString('Base', 'Proj_no3', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name3', t_proj_name);
          MyIniFile.WriteString('Base', 'Database3', t_Database);

        end;
    end;

    MyIniFile.Free;

    lbl2.Caption := '��ǰ��Ŀ��' + t_proj_name;
    if Length(t_proj_no) = 0 then
      Application.MessageBox('ɾ�����ǵ�ǰ��Ŀ����û�п����õ���Ŀ�������½���ǰ��Ŀ�����ݷ�������ʵʩ��', '��Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST)
    else
      Application.MessageBox('ɾ�����ǵ�ǰ��Ŀ�������ô��ڵ���ĿΪ��ǰ��Ŀ��', '��Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST);
  end;

end;

procedure TF_Proj.btn2Click(Sender: TObject);
var
  s_DataName: string;
  s_filename, s_filename1, s_filepath, FDBname, sqltext, s_info: string;
  i_pos: Integer;
  aml2zhfile: TextFile;
  MyIniFile: TIniFile;
begin
  if FDQryProj.Eof then
  begin
    Application.MessageBox('û�п��޸ĵ���Ŀ��', '��Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  if Application.MessageBox('�޸���Ŀ���޸���Ŀ��Ϣ���������ı����Ŀ���Ѵ��ڵ��������ݺ��������ݡ����Ա༭��������滻ѡ�е���Ŀ��ȷ����', '��Ϣ', MB_OKCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
  begin
    Exit;
  end;
  // ��¼�����޸ļ�¼��id
  edt3.Text := Trim(FDQryProj.FieldValues['proj_database']);
  edt5.Text := Trim(FDQryProj.FieldValues['proj_id']);
  //¼����ȥ�ո�
  edt1.Text := Trim(edt1.Text);
  edt2.Text := Trim(edt2.Text);
  edt6.Text := Trim(edt6.Text);
  if Length(edt1.Text) = 0 then
  begin
    Application.MessageBox('��Ŀ��Ų���Ϊ�գ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if Length(edt2.Text) = 0 then
  begin
    Application.MessageBox('��Ŀ���Ʋ���Ϊ�գ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  //��ź����Ʋ����ظ�
  FDQryTmp.close;
  FDQryTmp.DisableControls;
  FDQryTmp.Connection:=F_DT.FDConSYS;
//  FDQryTmp.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_sys_dbname + ';Data Source=' + sComputerName + t_connect;
//  FDQryTmp.CursorLocation := clUseClient;
//  FDQryTmp.CursorType := ctStatic;
//  FDQryTmp.LockType := ltBatchOptimistic;
  FDQryTmp.SQL.Clear;
  FDQryTmp.SQL.Add('select * FROM "tb_proj" where proj_id <>' + edt5.text);
  FDQryTmp.Prepared;
  FDQryTmp.Open;
  if FDQryTmp.Locate('proj_no', edt1.Text, []) then
  begin
    FDQryTmp.Close;
    Application.MessageBox('����Ŀ����Ѵ��ڣ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if FDQryTmp.Locate('proj_name', edt2.Text, []) then
  begin
    FDQryTmp.Close;
    Application.MessageBox('����Ŀ�����Ѵ��ڣ�', '��Ϣ���벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;

  //�༭�滻��Ŀ��Ϣ
  if not FDQryProj.Locate('proj_id', edt5.Text, []) then
  begin
    Application.MessageBox('û��ѡ�е���Ŀ���޸ģ�', '��Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  FDQryProj.Edit;
  FDQryProj.FieldValues['proj_no'] := edt1.Text;
  FDQryProj.FieldValues['proj_name'] := edt2.Text;
  FDQryProj.FieldValues['proj_memo'] := edt6.Text;
//  FDQryProj.UpdateBatch(arAll);
  log4info('�޸���Ŀ��' + edt1.Text + '/' + edt2.Text + '/' + edt3.Text);
  //ShowMessage(t_Database+#13+edt3.Text);
  if t_Database = edt3.Text then //���޸ĵ��ǵ�ǰ��Ŀ
  begin
    t_proj_no := edt1.Text;
    t_proj_name := edt2.Text;
    //ͬʱ��¼��setting
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename);
    case StrToInt(t_type) of
      1:
        begin
          MyIniFile.WriteString('Base', 'Proj_no1', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name1', t_proj_name);
          //  MyIniFile.WriteString('Base', 'Database1', t_Database);
        end;
      2:
        begin
          MyIniFile.WriteString('Base', 'Proj_no2', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name2', t_proj_name);
          //  MyIniFile.WriteString('Base', 'Database2', t_Database);
        end;
      3:
        begin
          MyIniFile.WriteString('Base', 'Proj_no3', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name3', t_proj_name);
          // MyIniFile.WriteString('Base', 'Database3', t_Database);
        end;
    end;
    //MyIniFile.WriteString('Base', 'Proj_no', t_proj_no);
    //MyIniFile.WriteString('Base', 'Proj_name', t_proj_name);

    MyIniFile.Free;
    lbl2.Caption := '��ǰ��Ŀ��' + t_proj_name;
    Application.MessageBox('�޸ĵ��ǵ�ǰ��Ŀ���Ѹ��µ�ǰ��Ŀ��Ϣ��', '��Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST);
  end;
//  ShowWaitText;
end;

procedure TF_Proj.btn3Click(Sender: TObject);
var
  s_DataName, s_proj_ver, s_cur_ver, s_info: string;
  s_filename, s_filename1, s_filepath, FDBname, sqltext: string;
  i_pos: Integer;
  aml2zhfile: TextFile;
  MyIniFile: TIniFile;
begin
  if FDQryProj.Eof then
  begin
    Application.MessageBox('û��ѡ��Ҫ���õ���Ŀ', '��Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  edt1.Text := FDQryProj.FieldValues['proj_no'];
  edt2.Text := FDQryProj.FieldValues['proj_name'];
  edt3.Text := FDQryProj.FieldValues['proj_database'];
  edt4.Text := FDQryProj.FieldValues['proj_ver'];
  edt6.Text := FDQryProj.FieldValues['proj_memo'];

  t_proj_no := edt1.Text;
  t_proj_name := edt2.Text;
  t_Database := edt3.Text;
  lbl2.Caption := '��ǰ��Ŀ��' + t_proj_name;
  //����setting
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  case StrToInt(t_type) of
    1:
      begin
        MyIniFile.WriteString('Base', 'Proj_no1', t_proj_no);
        MyIniFile.WriteString('Base', 'Proj_name1', t_proj_name);
        MyIniFile.WriteString('Base', 'Database1', t_Database);

      end;
    2:
      begin
        MyIniFile.WriteString('Base', 'Proj_no2', t_proj_no);
        MyIniFile.WriteString('Base', 'Proj_name2', t_proj_name);
        MyIniFile.WriteString('Base', 'Database2', t_Database);

      end;
    3:
      begin
        MyIniFile.WriteString('Base', 'Proj_no3', t_proj_no);
        MyIniFile.WriteString('Base', 'Proj_name3', t_proj_name);
        MyIniFile.WriteString('Base', 'Database3', t_Database);

      end;
    
  end;
  MyIniFile.Free;
  Application.MessageBox(PChar('��ǰ��Ŀ����Ϊ' + t_proj_name), '���õ�ǰ��Ŀ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  //del_proc();//ɾ����ǰ��Ŀ�Ĵ洢����
end;

end.

