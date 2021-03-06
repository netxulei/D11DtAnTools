unit U_Proj;

interface

uses
  RegularExpressions, JMCode, EncdDecd, System.StrUtils, U_DT, ShellAPI, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxListBox,
  cxDBEdit, FMTBcd, DB, SqlExpr, DBGridEhGrouping, GridsEh, DBGridEh, ADODB,
  ExtCtrls, IniFiles, log4me, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask;

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
    lbl7: TLabel;
    fdQryTmp: TFDQuery;
    fdQryProj: TFDQuery;
    Edt3: TButtonedEdit;
    Edt6: TButtonedEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    lbledtBgn: TLabeledEdit;
    lbledtEnd: TLabeledEdit;
    // function del_proc(): Boolean;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edt6RightButtonClick(Sender: TObject);
    procedure Edt3RightButtonClick(Sender: TObject);
    procedure dbgrdh1CellClick(Column: TColumnEh);
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
// ɾ??Ŀ¼????

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

/// /ɾ???洢???̺???
//
// function TF_Proj.del_proc(): Boolean;
// var
// sqltext: string;
// begin
// //ע?????Ʋ?Ҫɾ????ϵͳ?Ĵ洢????
// ShowWaitText('???Ժ?????????????ǰ??Ŀ?洢????...');
// try
// //ɾ?????ݿ??еĴ洢????
// with FDQryTmp do
// begin
// close;
// DisableControls;
// ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_database + ';Data Source=' +
// sComputerName + t_connect;
// SQL.Clear;
// sqltext := 'declare @procName varchar(500)';
// SQL.Add(sqltext);
// sqltext := 'declare cur cursor';
// SQL.Add(sqltext);
// sqltext := 'for select name from sysobjects where type =' + '''' + 'p' + '''' + 'and schema_ver=0';
// SQL.Add(sqltext);
// sqltext := 'open cur';
// SQL.Add(sqltext);
// sqltext := 'fetch next from cur into @procName';
// SQL.Add(sqltext);
// sqltext := 'while @@fetch_status=0';
// SQL.Add(sqltext);
// sqltext := 'begin';
// SQL.Add(sqltext);
// sqltext := 'exec(' + '''' + 'drop procedure ' + '''' + '+@procName)';
// SQL.Add(sqltext);
// sqltext := 'fetch next from cur into @procName';
// SQL.Add(sqltext);
// sqltext := 'end';
// SQL.Add(sqltext);
// sqltext := 'close cur';
// SQL.Add(sqltext);
// sqltext := 'deallocate cur';
// SQL.Add(sqltext);
// Prepared;
// ExecSQL;
// Close;
// end;
// finally
// ShowWaitText; //??????????,???ǹرյȴ?????
// end;
// end;

procedure TF_Proj.btn1Click(Sender: TObject);
var
  NowDataTime, s_DataName: string;
  s_filename, s_filename1, s_filepath, FDBname, sqltext, s_info: string;
  i_pos: Integer;
  aml2zhfile: TextFile;
  MyIniFile: TIniFile;
begin
  if Length(edt1.Text) = 0 then
  begin
    Application.MessageBox('??Ŀ???Ų???Ϊ?գ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if Length(edt2.Text) = 0 then
  begin
    Application.MessageBox('??Ŀ???Ʋ???Ϊ?գ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  // ???ź????Ʋ????ظ?
  if fdQryProj.Locate('proj_no', edt1.Text, []) then
  begin
    Application.MessageBox('????Ŀ?????Ѵ??ڣ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if fdQryProj.Locate('proj_name', edt2.Text, []) then
  begin
    Application.MessageBox('????Ŀ?????Ѵ??ڣ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  NowDataTime := DateTimeToStr(Now);
  // ׼?????ݿ?????
  s_DataName := 'ZH_' + StringReplace(NowDataTime, '-', '', [rfReplaceAll]);
  s_DataName := StringReplace(s_DataName, ':', '', [rfReplaceAll]);
  s_DataName := StringReplace(s_DataName, ' ', '', [rfReplaceAll]);
  Edt3.Text := s_DataName; // ??¼???ݿ?????
  Edt6.Text := '';
  lbledtBgn.Text := '';
  lbledtEnd.Text := '';
  edt4.Text := t_type; // ??¼??Ŀ?汾??
  // ¼????ȥ?ո?
  edt1.Text := Trim(edt1.Text);
  edt2.Text := Trim(edt2.Text);

  // ???????ݿ⣬?ɹ????й???Ϣ?ٴ??????ݿ? ///////////////////////////////////////////////

  s_filepath := ExtractFilePath(ParamStr(0));
  FDBname := UpperCase(s_DataName);
  s_filepath := s_filepath + FDBname;
  /// /////////////////////
  // ShowMessage(s_filepath);
  /// ///////////////
  if DirectoryExists(s_filepath) then
  begin
    Application.MessageBox('????Ŀ¼????????????һ?Σ?', '??Ϣ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;

  // ?????µ?Ŀ¼
  CreateDirectory(PChar(s_filepath), nil);

  // ShowWaitText('???Ժ??????ڽ??????ݿ⡭??');

  // ???????ݿ?

  try
    F_DT.FDConGen.Connected := True;
    with fdQryTmp do
    begin
      Close;
      DisableControls;
      Connection := F_DT.FDConGen;
      // ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Data Source=' + sComputerName + t_connect;
      SQL.Clear;
      // ?????????ݿ?
      // sqltext := 'USE [master]';
      // SQL.Add(sqltext);
      // sqltext := 'GO';
      // SQL.Add(sqltext);
      sqltext := 'CREATE DATABASE [' + FDBname + '] ON  PRIMARY';
      SQL.Add(sqltext);
      sqltext := '( NAME = N''' + FDBname + '_data''' + ', FILENAME = N''' + s_filepath + '\' + FDBname + '_data.mdf''' +
        ' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH =  65536KB )';
      SQL.Add(sqltext);
      sqltext := 'LOG ON ';
      SQL.Add(sqltext);
      sqltext := '( NAME = N''' + FDBname + '_log''' + ', FILENAME = N''' + s_filepath + '\' + FDBname + '_log.ldf''' +
        ' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH =  65536KB)';
      SQL.Add(sqltext);
      sqltext := 'ALTER DATABASE [' + FDBname + '] set single_user with rollback  immediate ';
      SQL.Add(sqltext);
      sqltext := 'ALTER DATABASE [' + FDBname + '] collate Chinese_PRC_CI_AS ';
      SQL.Add(sqltext);
      sqltext := 'ALTER DATABASE [' + FDBname + '] set multi_user ';
      SQL.Add(sqltext);

      if t_database_ver = '2019' then
      begin
        // sqltext := 'ALTER DATABASE [' + FDBname + '] SET COMPATIBILITY_LEVEL = 150 '; //140????2017SQL   150????2019
        // SQL.Add(sqltext);
        sqltext := 'ALTER DATABASE SCOPED CONFIGURATION set VERBOSE_TRUNCATION_WARNINGS = ON '; // Ӱ??????????????????ʾ??????Ϣ
        SQL.Add(sqltext);
      end;
      ExecSQL;
    end;
    F_DT.FDConGen.Connected := False;

    //
    // ?????½???Ŀ??Ϣ
    fdQryProj.Append;
    fdQryProj.FieldValues['proj_no'] := edt1.Text;
    fdQryProj.FieldValues['proj_name'] := edt2.Text;
    fdQryProj.FieldValues['proj_database'] := Edt3.Text;
    fdQryProj.FieldValues['proj_ver'] := edt4.Text; // edt5Ϊ?Զ??????ֶ?
    fdQryProj.FieldValues['proj_memo'] := '';
    fdQryProj.FieldValues['proj_data'] := NowDataTime;
    fdQryProj.Post;
    // FDQryProj.UpdateBatch(arAll);
    // ShowWaitText;
    //
    // ????setting????ʾ ??t_datebase??
    t_proj_no := edt1.Text;
    t_proj_name := edt2.Text;
    t_Database := FDBname;
    // ????setting
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
    // ShowWaitText;
    Application.MessageBox('??????Ŀ???ݿ⽨?????ɹ??????½???Ŀʧ?ܣ?', '????', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;
  // ShowWaitText;

  // FDQryProj.DisableControls;
  // FDQryProj.Close;
  // FDQryProj.Open;
  // FDQryProj.EnableControls;
  // FDQryProj.Locate('proj_no', t_proj_no, []);
  lbl2.Caption := '??ǰ??Ŀ??' + t_proj_no + '--' + t_proj_name + '--' + t_Database;
  log4info('?½???Ŀ??' + t_proj_no + '/' + t_proj_name + '/' + t_Database);
  Application.MessageBox('?½???Ŀ?ɹ?,?뵼????Ŀ?????뽻Ȩ????Ա??ȡ???ݵ?????Ȩ?룡', '?ɹ?', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

  /// ////////////////////////////////////////////////////////////////////////////////////////////////
end;

procedure TF_Proj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_Proj.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  dbgrdh1.columns[3].PickList.Clear;
  dbgrdh1.columns[3].keyList.Clear;
  for i := 0 to t_ver_nameLS.count - 1 do
  begin
    dbgrdh1.columns[3].keyList.Add(t_ver_noLS[i]);
    dbgrdh1.columns[3].PickList.Add(t_ver_nameLS[i]);
  end;

  pnl3.Width := F_Proj.Width;
  lbl2.Caption := '??ǰ??Ŀ??' + t_proj_name;
  // ???ݿ??б????????ж???Ŀ?е????ݿ??????Ƿ???Ч
  fdQryProj.Close;
  fdQryProj.DisableControls;
  fdQryProj.Connection := F_DT.FDConSYS;
  // FDQryProj.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_sys_dbname + ';Data Source=' + sComputerName + t_connect;
  // FDQryProj.CursorLocation := clUseClient;
  // FDQryProj.CursorType := ctStatic;
  // FDQryProj.LockType := ltBatchOptimistic;
  fdQryProj.SQL.Clear;
  fdQryProj.SQL.Add('select * FROM "tb_proj" where proj_ver=:s_ver');
  fdQryProj.ParamByName('s_ver').Value := t_type;
  fdQryProj.Prepared;
  fdQryProj.Open;
  fdQryProj.First;
  if fdQryProj.Locate('proj_name', t_proj_name, []) then
  begin
    dbgrdh1CellClick(dbgrdh1.columns[1]);
    // edt1.Text := fdQryProj.FieldValues['proj_no'];
    // edt2.Text := fdQryProj.FieldValues['proj_name'];
    // Edt3.Text := fdQryProj.FieldValues['proj_database'];
    // edt4.Text := fdQryProj.FieldValues['proj_ver'];
    // edt5.Text := fdQryProj.FieldValues['proj_id'];
    // Edt6.Text := fdQryProj.FieldValues['proj_memo'];
  end
  else
  begin
    edt1.Text := '';
    edt2.Text := '';
    Edt3.Text := '';
    edt4.Text := '';
    edt5.Text := '';
    Edt6.Text := '';
  end;
  fdQryProj.enableControls;
end;

procedure TF_Proj.Edt3RightButtonClick(Sender: TObject);
var
  sFilename, s: string;
  F: TextFile;
begin
  if Length(Edt3.Text) = 0 then
  begin
    MessageDlg('????Ŀδ?????????ܵ?????Ŀ???????ļ?', mtInformation, [mbOK], 0);
    Exit;
  end;
  if Not fdQryProj.Eof then
  begin
    SaveDialog1.FileName := Edt3.Text + '.Did';
    if SaveDialog1.Execute() then
    begin
      sFilename := SaveDialog1.FileName;
      AssignFile(F, sFilename);
      Rewrite(F); // ?Ḳ???Ѵ??ڵ??ļ?
      Writeln(F, Edt3.Text);
      CloseFile(F);
    end;
  end
  else
  begin
    MessageDlg('??ѡ??һ????Ŀ???ٵ?????Ŀ???????ļ?', mtInformation, [mbOK], 0);
    Exit;
  end;

end;

procedure TF_Proj.Edt6RightButtonClick(Sender: TObject);
var
  sFilename, s: string;
  F: TextFile;
  v_key, codeID, codeBgn, codeEnd, sDateBgn, sDateEnd: string;
  m: tmatch;
begin
  if OpenDialog1.Execute() then
  begin
    if Not fdQryProj.Eof then
    begin
      sFilename := OpenDialog1.FileName;
      AssignFile(F, sFilename);
      Reset(F); // ֻ??????
      Readln(F, s); // ??ȡ
      CloseFile(F);
      Edt6.Text := Trim(s);
      v_key := rightstr(Trim(Edt3.Text), 4);
      m := TRegex.match(Edt6.Text, '^(\S+)\-(\S+)\-(\S+)$');
      if m.Success then
      begin
        // ShowMessage(m.Groups[2].Value);
        // ShowMessage(m.Groups[3].Value);
        codeBgn := DecodeString(UncrypKey(m.Groups[2].Value, EncodeString(v_key))); // ???ܺ?????);
        codeEnd := DecodeString(UncrypKey(m.Groups[3].Value, EncodeString(v_key))); // ???ܺ?????);
        lbledtBgn.Text := codeBgn;
        lbledtEnd.Text := codeEnd;
        fdQryProj.Edit;
        fdQryProj.FieldValues['proj_memo'] := Edt6.Text;
        fdQryProj.Post;
      end
      else
      begin
        MessageDlg('??????Ȩ???ļ?????ȷ', mtInformation, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      MessageDlg('??ѡ??һ????Ŀ???ٵ?????????Ȩ???ļ?', mtInformation, [mbOK], 0);
      Exit;
    end;

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
  if fdQryProj.Eof then
  begin
    Application.MessageBox('û??ѡ??Ҫɾ??????Ŀ', '??ʾ??Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  edt1.Text := fdQryProj.FieldValues['proj_no'];
  edt2.Text := fdQryProj.FieldValues['proj_name'];
  Edt3.Text := fdQryProj.FieldValues['proj_database'];
  edt4.Text := fdQryProj.FieldValues['proj_ver'];
  edt5.Text := fdQryProj.FieldValues['proj_id'];
  Edt6.Text := fdQryProj.FieldValues['proj_memo'];
  FDBname := Trim(Edt3.Text);
  if Application.MessageBox('??Ӧ?ĸ???Ŀ?????????ݶ??????٣?ȷ??????', '??ʾ??Ϣ', MB_OKCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
  begin
    Exit;
  end;

  // ???????ݿ?
  try
    with fdQryTmp do
    begin
      Close;
      DisableControls;
      Connection := F_DT.FDConSYS;
      // ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=master;Data Source=' + sComputerName + t_connect;
      SQL.Clear;
      // ???????ݿ?  localdb?????⣬??Ϊdrop???ݿ?
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
      // SQL.SaveToFile('D:\xl.txt');
      ExecSQL;
    end;
  except
    Application.MessageBox('????Ŀ?????ݿⲻ???ڣ???????????Ŀ??Ϣ', '??Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  end;
  fdQryTmp.Close;
  // ɾ?????ݿ?Ŀ¼//ɾ?????ݿ??ļ?
  DelDirectory(ExtractFilePath(ParamStr(0)) + FDBname);
  // ɾ????ǰ??¼
  fdQryProj.Delete;
  // FDQryProj.UpdateBatch(arAll);
  log4info('ɾ????Ŀ??' + edt1.Text + '/' + edt2.Text + '/' + Edt3.Text);
  if t_proj_no = edt1.Text then // ??ɾ?????ǵ?ǰ??Ŀ
  begin
    if fdQryProj.Eof then // ??û?м?¼??
    begin
      t_proj_no := '';
      t_proj_name := '---??????????Ŀ??????ʵʩ????---';
      t_Database := '';
    end
    else // ?????м?¼?????ѵ?ǰ??¼????Ϊ??ǰ??Ŀ
    begin
      edt1.Text := fdQryProj.FieldValues['proj_no'];
      edt2.Text := fdQryProj.FieldValues['proj_name'];
      Edt3.Text := fdQryProj.FieldValues['proj_database'];
      edt4.Text := fdQryProj.FieldValues['proj_ver'];
      edt5.Text := fdQryProj.FieldValues['proj_id'];
      Edt6.Text := fdQryProj.FieldValues['proj_memo'];
      t_proj_no := edt1.Text;
      t_proj_name := edt2.Text;
      t_Database := Edt3.Text;
    end;
    // ͬʱ??¼??setting
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

    lbl2.Caption := '??ǰ??Ŀ??' + t_proj_name;
    if Length(t_proj_no) = 0 then
      Application.MessageBox('ɾ?????ǵ?ǰ??Ŀ????û?п????õ???Ŀ???????½???ǰ??Ŀ?????ݷ???????ʵʩ??', '??Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST)
    else
      Application.MessageBox('ɾ?????ǵ?ǰ??Ŀ???????ô??ڵ???ĿΪ??ǰ??Ŀ??', '??Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST);
  end;

end;

procedure TF_Proj.dbgrdh1CellClick(Column: TColumnEh);
var
  v_key, codeID, codeBgn, codeEnd, sDateBgn, sDateEnd: string;
  m: tmatch;
begin
  if not fdQryProj.Eof then
  begin
    edt1.Text := fdQryProj.FieldValues['proj_no'];
    edt2.Text := fdQryProj.FieldValues['proj_name'];
    Edt3.Text := fdQryProj.FieldValues['proj_database'];
    edt4.Text := fdQryProj.FieldValues['proj_ver'];
    edt5.Text := fdQryProj.FieldValues['proj_id'];
    Edt6.Text := fdQryProj.FieldValues['proj_memo'];

    if Length(Edt6.Text) = 0 then
    begin
      lbledtBgn.Text := '';
      lbledtEnd.Text := '';
      Exit;
    end;
    v_key := rightstr(Trim(Edt3.Text), 4);
    m := TRegex.match(Edt6.Text, '^(\S+)\-(\S+)\-(\S+)$');
    if m.Success then
    begin
      // ShowMessage(m.Groups[2].Value);
      // ShowMessage(m.Groups[3].Value);
      codeBgn := DecodeString(UncrypKey(m.Groups[2].Value, EncodeString(v_key))); // ???ܺ?????);
      codeEnd := DecodeString(UncrypKey(m.Groups[3].Value, EncodeString(v_key))); // ???ܺ?????);
      lbledtBgn.Text := codeBgn;
      lbledtEnd.Text := codeEnd;
    end
    else
    begin
      MessageDlg('??????Ȩ???ļ?????ȷ', mtInformation, [mbOK], 0);
      Exit;
    end;
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
  if fdQryProj.Eof then
  begin
    Application.MessageBox('û?п??޸ĵ???Ŀ??', '??Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  if Application.MessageBox('?޸???Ŀ???޸???Ŀ??Ϣ?????????ı?????Ŀ???Ѵ??ڵ????????ݺ????????ݡ????Ա༭?????????滻ѡ?е???Ŀ??ȷ??????', '??Ϣ', MB_OKCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
  begin
    Exit;
  end;
  // ??¼?????޸ļ?¼??id
  Edt3.Text := Trim(fdQryProj.FieldValues['proj_database']);
  edt5.Text := Trim(fdQryProj.FieldValues['proj_id']);
  // ¼????ȥ?ո?
  edt1.Text := Trim(edt1.Text);
  edt2.Text := Trim(edt2.Text);
  Edt6.Text := Trim(Edt6.Text);
  if Length(edt1.Text) = 0 then
  begin
    Application.MessageBox('??Ŀ???Ų???Ϊ?գ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if Length(edt2.Text) = 0 then
  begin
    Application.MessageBox('??Ŀ???Ʋ???Ϊ?գ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  // ???ź????Ʋ????ظ?
  fdQryTmp.Close;
  fdQryTmp.DisableControls;
  fdQryTmp.Connection := F_DT.FDConSYS;
  // FDQryTmp.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_sys_dbname + ';Data Source=' + sComputerName + t_connect;
  // FDQryTmp.CursorLocation := clUseClient;
  // FDQryTmp.CursorType := ctStatic;
  // FDQryTmp.LockType := ltBatchOptimistic;
  fdQryTmp.SQL.Clear;
  fdQryTmp.SQL.Add('select * FROM "tb_proj" where proj_id <>' + edt5.Text);
  fdQryTmp.Prepared;
  fdQryTmp.Open;
  if fdQryTmp.Locate('proj_no', edt1.Text, []) then
  begin
    fdQryTmp.Close;
    Application.MessageBox('????Ŀ?????Ѵ??ڣ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if fdQryTmp.Locate('proj_name', edt2.Text, []) then
  begin
    fdQryTmp.Close;
    Application.MessageBox('????Ŀ?????Ѵ??ڣ?', '??Ϣ???벻׼ȷ', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;

  // ?༭?滻??Ŀ??Ϣ
  if not fdQryProj.Locate('proj_id', edt5.Text, []) then
  begin
    Application.MessageBox('û??ѡ?е???Ŀ???޸ģ?', '??Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  fdQryProj.Edit;
  fdQryProj.FieldValues['proj_no'] := edt1.Text;
  fdQryProj.FieldValues['proj_name'] := edt2.Text;
  // fdQryProj.FieldValues['proj_memo'] := Edt6.Text;
  fdQryProj.Post;
  // FDQryProj.UpdateBatch(arAll);
  log4info('?޸???Ŀ??' + edt1.Text + '/' + edt2.Text + '/' + Edt3.Text);
  // ShowMessage(t_Database+#13+edt3.Text);
  if t_Database = Edt3.Text then // ???޸ĵ??ǵ?ǰ??Ŀ
  begin
    t_proj_no := edt1.Text;
    t_proj_name := edt2.Text;
    // ͬʱ??¼??setting
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename);
    case StrToInt(t_type) of
      1:
        begin
          MyIniFile.WriteString('Base', 'Proj_no1', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name1', t_proj_name);
          // MyIniFile.WriteString('Base', 'Database1', t_Database);
        end;
      2:
        begin
          MyIniFile.WriteString('Base', 'Proj_no2', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name2', t_proj_name);
          // MyIniFile.WriteString('Base', 'Database2', t_Database);
        end;
      3:
        begin
          MyIniFile.WriteString('Base', 'Proj_no3', t_proj_no);
          MyIniFile.WriteString('Base', 'Proj_name3', t_proj_name);
          // MyIniFile.WriteString('Base', 'Database3', t_Database);
        end;
    end;
    // MyIniFile.WriteString('Base', 'Proj_no', t_proj_no);
    // MyIniFile.WriteString('Base', 'Proj_name', t_proj_name);

    MyIniFile.Free;
    lbl2.Caption := '??ǰ??Ŀ??' + t_proj_name;
    Application.MessageBox('?޸ĵ??ǵ?ǰ??Ŀ???Ѹ??µ?ǰ??Ŀ??Ϣ??', '??Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST);
  end;
  // ShowWaitText;
end;

procedure TF_Proj.btn3Click(Sender: TObject);
var
  s_DataName, s_proj_ver, s_cur_ver, s_info: string;
  s_filename, s_filename1, s_filepath, FDBname, sqltext: string;
  i_pos: Integer;
  aml2zhfile: TextFile;
  MyIniFile: TIniFile;
begin
  if fdQryProj.Eof then
  begin
    Application.MessageBox('û??ѡ??Ҫ???õ???Ŀ', '??Ϣ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  edt1.Text := fdQryProj.FieldValues['proj_no'];
  edt2.Text := fdQryProj.FieldValues['proj_name'];
  Edt3.Text := fdQryProj.FieldValues['proj_database'];
  edt4.Text := fdQryProj.FieldValues['proj_ver'];
  Edt6.Text := fdQryProj.FieldValues['proj_memo'];

  t_proj_no := edt1.Text;
  t_proj_name := edt2.Text;
  t_Database := Edt3.Text;
  lbl2.Caption := '??ǰ??Ŀ??' + t_proj_name;
  // ????setting
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
  Application.MessageBox(PChar('??ǰ??Ŀ????Ϊ' + t_proj_name), '???õ?ǰ??Ŀ', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  // del_proc();//ɾ????ǰ??Ŀ?Ĵ洢????
end;

end.
