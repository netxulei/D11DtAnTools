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
// 删除目录函数

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

/// /删除存储过程函数
//
// function TF_Proj.del_proc(): Boolean;
// var
// sqltext: string;
// begin
// //注意限制不要删除了系统的存储过程
// ShowWaitText('请稍后，正在清理当前项目存储过程...');
// try
// //删除数据库中的存储过程
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
// ShowWaitText; //不带入参数,则是关闭等待窗口
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
    Application.MessageBox('项目编号不能为空！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if Length(edt2.Text) = 0 then
  begin
    Application.MessageBox('项目名称不能为空！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  // 编号和名称不能重复
  if fdQryProj.Locate('proj_no', edt1.Text, []) then
  begin
    Application.MessageBox('该项目编号已存在！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if fdQryProj.Locate('proj_name', edt2.Text, []) then
  begin
    Application.MessageBox('该项目名称已存在！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  NowDataTime := DateTimeToStr(Now);
  // 准备数据库名称
  s_DataName := 'ZH_' + StringReplace(NowDataTime, '-', '', [rfReplaceAll]);
  s_DataName := StringReplace(s_DataName, ':', '', [rfReplaceAll]);
  s_DataName := StringReplace(s_DataName, ' ', '', [rfReplaceAll]);
  Edt3.Text := s_DataName; // 记录数据库名称
  Edt6.Text := '';
  lbledtBgn.Text := '';
  lbledtEnd.Text := '';
  edt4.Text := t_type; // 记录项目版本号
  // 录入项去空格
  edt1.Text := Trim(edt1.Text);
  edt2.Text := Trim(edt2.Text);

  // 建立数据库，成功后有关信息再存入数据库 ///////////////////////////////////////////////

  s_filepath := ExtractFilePath(ParamStr(0));
  FDBname := UpperCase(s_DataName);
  s_filepath := s_filepath + FDBname;
  /// /////////////////////
  // ShowMessage(s_filepath);
  /// ///////////////
  if DirectoryExists(s_filepath) then
  begin
    Application.MessageBox('建立目录出错，请再试一次！', '信息', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;

  // 建立新的目录
  CreateDirectory(PChar(s_filepath), nil);

  // ShowWaitText('请稍后，正在建立数据库……');

  // 建立数据库

  try
    F_DT.FDConGen.Connected := True;
    with fdQryTmp do
    begin
      Close;
      DisableControls;
      Connection := F_DT.FDConGen;
      // ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Data Source=' + sComputerName + t_connect;
      SQL.Clear;
      // 建立空数据库
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
        // sqltext := 'ALTER DATABASE [' + FDBname + '] SET COMPATIBILITY_LEVEL = 150 '; //140兼容2017SQL   150兼容2019
        // SQL.Add(sqltext);
        sqltext := 'ALTER DATABASE SCOPED CONFIGURATION set VERBOSE_TRUNCATION_WARNINGS = ON '; // 影响大容量导入数据显示错误信息
        SQL.Add(sqltext);
      end;
      ExecSQL;
    end;
    F_DT.FDConGen.Connected := False;

    //
    // 插入新建项目信息
    fdQryProj.Append;
    fdQryProj.FieldValues['proj_no'] := edt1.Text;
    fdQryProj.FieldValues['proj_name'] := edt2.Text;
    fdQryProj.FieldValues['proj_database'] := Edt3.Text;
    fdQryProj.FieldValues['proj_ver'] := edt4.Text; // edt5为自动增量字段
    fdQryProj.FieldValues['proj_memo'] := '';
    fdQryProj.FieldValues['proj_data'] := NowDataTime;
    fdQryProj.Post;
    // FDQryProj.UpdateBatch(arAll);
    // ShowWaitText;
    //
    // 更新setting、显示 、t_datebase等
    t_proj_no := edt1.Text;
    t_proj_name := edt2.Text;
    t_Database := FDBname;
    // 保存setting
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
    Application.MessageBox('由于项目数据库建立不成功造成新建项目失败！', '错误', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;
  // ShowWaitText;

  // FDQryProj.DisableControls;
  // FDQryProj.Close;
  // FDQryProj.Open;
  // FDQryProj.EnableControls;
  // FDQryProj.Locate('proj_no', t_proj_no, []);
  lbl2.Caption := '当前项目：' + t_proj_no + '--' + t_proj_name + '--' + t_Database;
  log4info('新建项目：' + t_proj_no + '/' + t_proj_name + '/' + t_Database);
  Application.MessageBox('新建项目成功,请导出项目特征码交权限人员获取数据导入授权码！', '成功', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

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
  lbl2.Caption := '当前项目：' + t_proj_name;
  // 数据库列表，用于判断项目中的数据库名称是否有效
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
    MessageDlg('该项目未建立，不能导出项目特征码文件', mtInformation, [mbOK], 0);
    Exit;
  end;
  if Not fdQryProj.Eof then
  begin
    SaveDialog1.FileName := Edt3.Text + '.Did';
    if SaveDialog1.Execute() then
    begin
      sFilename := SaveDialog1.FileName;
      AssignFile(F, sFilename);
      Rewrite(F); // 会覆盖已存在的文件
      Writeln(F, Edt3.Text);
      CloseFile(F);
    end;
  end
  else
  begin
    MessageDlg('请选择一个项目后再导出项目特征码文件', mtInformation, [mbOK], 0);
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
      Reset(F); // 只读打开
      Readln(F, s); // 读取
      CloseFile(F);
      Edt6.Text := Trim(s);
      v_key := rightstr(Trim(Edt3.Text), 4);
      m := TRegex.match(Edt6.Text, '^(\S+)\-(\S+)\-(\S+)$');
      if m.Success then
      begin
        // ShowMessage(m.Groups[2].Value);
        // ShowMessage(m.Groups[3].Value);
        codeBgn := DecodeString(UncrypKey(m.Groups[2].Value, EncodeString(v_key))); // 解密后解码);
        codeEnd := DecodeString(UncrypKey(m.Groups[3].Value, EncodeString(v_key))); // 解密后解码);
        lbledtBgn.Text := codeBgn;
        lbledtEnd.Text := codeEnd;
        fdQryProj.Edit;
        fdQryProj.FieldValues['proj_memo'] := Edt6.Text;
        fdQryProj.Post;
      end
      else
      begin
        MessageDlg('数据授权码文件不正确', mtInformation, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      MessageDlg('请选择一个项目后再导入数据授权码文件', mtInformation, [mbOK], 0);
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
    Application.MessageBox('没有选择要删除的项目', '提示信息', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  edt1.Text := fdQryProj.FieldValues['proj_no'];
  edt2.Text := fdQryProj.FieldValues['proj_name'];
  Edt3.Text := fdQryProj.FieldValues['proj_database'];
  edt4.Text := fdQryProj.FieldValues['proj_ver'];
  edt5.Text := fdQryProj.FieldValues['proj_id'];
  Edt6.Text := fdQryProj.FieldValues['proj_memo'];
  FDBname := Trim(Edt3.Text);
  if Application.MessageBox('对应的该项目的所有数据都将销毁，确定吗？', '提示信息', MB_OKCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
  begin
    Exit;
  end;

  // 分离数据库
  try
    with fdQryTmp do
    begin
      Close;
      DisableControls;
      Connection := F_DT.FDConSYS;
      // ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=master;Data Source=' + sComputerName + t_connect;
      SQL.Clear;
      // 分离数据库  localdb有问题，改为drop数据库
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
    Application.MessageBox('该项目的数据库不存在，将清理此项目信息', '信息', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  end;
  fdQryTmp.Close;
  // 删除数据库目录//删除数据库文件
  DelDirectory(ExtractFilePath(ParamStr(0)) + FDBname);
  // 删除当前记录
  fdQryProj.Delete;
  // FDQryProj.UpdateBatch(arAll);
  log4info('删除项目：' + edt1.Text + '/' + edt2.Text + '/' + Edt3.Text);
  if t_proj_no = edt1.Text then // 若删除的是当前项目
  begin
    if fdQryProj.Eof then // 若没有记录了
    begin
      t_proj_no := '';
      t_proj_name := '---首先设置项目，才能实施分析---';
      t_Database := '';
    end
    else // 若还有记录，则把当前记录设置为当前项目
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
    // 同时记录到setting
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

    lbl2.Caption := '当前项目：' + t_proj_name;
    if Length(t_proj_no) = 0 then
      Application.MessageBox('删除的是当前项目，且没有可设置的项目，必须新建当前项目，数据分析才能实施！', '信息', MB_OK + MB_ICONWARNING + MB_TOPMOST)
    else
      Application.MessageBox('删除的是当前项目，已设置存在的项目为当前项目！', '信息', MB_OK + MB_ICONWARNING + MB_TOPMOST);
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
      codeBgn := DecodeString(UncrypKey(m.Groups[2].Value, EncodeString(v_key))); // 解密后解码);
      codeEnd := DecodeString(UncrypKey(m.Groups[3].Value, EncodeString(v_key))); // 解密后解码);
      lbledtBgn.Text := codeBgn;
      lbledtEnd.Text := codeEnd;
    end
    else
    begin
      MessageDlg('数据授权码文件不正确', mtInformation, [mbOK], 0);
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
    Application.MessageBox('没有可修改的项目！', '信息', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  if Application.MessageBox('修改项目经修改项目信息，并不不改变该项目下已存在的人行数据和商行数据。将以编辑框的内容替换选中的项目，确定吗？', '信息', MB_OKCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
  begin
    Exit;
  end;
  // 记录下与修改记录的id
  Edt3.Text := Trim(fdQryProj.FieldValues['proj_database']);
  edt5.Text := Trim(fdQryProj.FieldValues['proj_id']);
  // 录入项去空格
  edt1.Text := Trim(edt1.Text);
  edt2.Text := Trim(edt2.Text);
  Edt6.Text := Trim(Edt6.Text);
  if Length(edt1.Text) = 0 then
  begin
    Application.MessageBox('项目编号不能为空！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if Length(edt2.Text) = 0 then
  begin
    Application.MessageBox('项目名称不能为空！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;
  // 编号和名称不能重复
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
    Application.MessageBox('该项目编号已存在！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt1.SetFocus;
    Exit;
  end;
  if fdQryTmp.Locate('proj_name', edt2.Text, []) then
  begin
    fdQryTmp.Close;
    Application.MessageBox('该项目名称已存在！', '信息输入不准确', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    edt2.SetFocus;
    Exit;
  end;

  // 编辑替换项目信息
  if not fdQryProj.Locate('proj_id', edt5.Text, []) then
  begin
    Application.MessageBox('没有选中的项目供修改！', '信息', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    Exit;
  end;
  fdQryProj.Edit;
  fdQryProj.FieldValues['proj_no'] := edt1.Text;
  fdQryProj.FieldValues['proj_name'] := edt2.Text;
  // fdQryProj.FieldValues['proj_memo'] := Edt6.Text;
  fdQryProj.Post;
  // FDQryProj.UpdateBatch(arAll);
  log4info('修改项目：' + edt1.Text + '/' + edt2.Text + '/' + Edt3.Text);
  // ShowMessage(t_Database+#13+edt3.Text);
  if t_Database = Edt3.Text then // 若修改的是当前项目
  begin
    t_proj_no := edt1.Text;
    t_proj_name := edt2.Text;
    // 同时记录到setting
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
    lbl2.Caption := '当前项目：' + t_proj_name;
    Application.MessageBox('修改的是当前项目，已更新当前项目信息！', '信息', MB_OK + MB_ICONWARNING + MB_TOPMOST);
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
    Application.MessageBox('没有选择要设置的项目', '信息', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
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
  lbl2.Caption := '当前项目：' + t_proj_name;
  // 保存setting
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
  Application.MessageBox(PChar('当前项目设置为' + t_proj_name), '设置当前项目', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  // del_proc();//删除当前项目的存储过程
end;

end.
