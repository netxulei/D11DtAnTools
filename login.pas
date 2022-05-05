unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, main, U_Common, IniFiles,
  ExtCtrls, WinSock, jpeg, dxGDIPlusClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Menus,
  system.uitypes, RTFLabel;

type
  TLoginFrm = class(TForm)
    fdQry1: TFDQuery;
    rg1: TRadioGroup;
    pnlLog: TPanel;
    edtUserText: TEdit;
    medtPassText: TMaskEdit;
    bitbtnLogin: TBitBtn;
    bitbtnExit: TBitBtn;
    lblProVer: TLabel;
    lblModVer: TLabel;
    imgBack: TImage;
    lblTitle: TLabel;
    pnlAll: TPanel;
    pnlVer: TPanel;
    bitbtnVerOK: TBitBtn;
    bitbtnVerRtn: TBitBtn;
    pmNewDt: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    RTFlblVer: TRTFLabel;
    procedure bitbtnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bitbtnExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtUserTextKeyPress(Sender: TObject; var Key: Char);
    procedure medtPassTextKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure lblTitleDblClick(Sender: TObject);
    procedure bitbtnVerRtnClick(Sender: TObject);
    procedure bitbtnVerOkClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    I_logo: Integer;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  LoginFrm: TLoginFrm;

implementation

uses
  JMCode, U_DT;
{$R *.dfm}

procedure TLoginFrm.bitbtnLoginClick(Sender: TObject);
var
  s_filepath, sqltext: string;
  is_exist: Integer; // 0 false,1 true
  sd: SECURITY_DESCRIPTOR;
begin
  t_mode := '0'; // 非开放模式
  s_filepath := ExtractFilePath(ParamStr(0));
  // s_filepath := 'D:\DtAnToolsAcc\';
  if Length(Trim(edtUserText.Text)) = 0 then
  begin
    MessageDlg('用户名不能为空！', mtError, [mbOK], 0);
    edtUserText.SetFocus;
    Exit;
  end;
  if Length(Trim(medtPassText.Text)) = 0 then
  begin
    MessageDlg('用户密码不能为空！', mtError, [mbOK], 0);
    medtPassText.SetFocus;
    Exit;
  end;
  try
    // 判断系统数据库是否安装或启动，存在，若不存在则附加
    F_DT.FDConGen.Connected := False;
    F_DT.FDConGen.ConnectionString := t_connect; // 不带数据库名称的连接
    fdQry1.Connection := F_DT.FDConGen;
    fdQry1.SQL.Clear;
    fdQry1.SQL.Text := 'select name from master..sysdatabases where name = ' + '''' + t_sys_dbname + '''';
    fdQry1.Open;
    if fdQry1.RecordCount <= 0 then
    begin
      with fdQry1 do
      begin
        Close;
        // 修改文件属性  -----------------------------
        // ShowMessage(s_filepath+t_sys_dbname+'_Data.MDF');
        InitializeSecurityDescriptor(@sd, SECURITY_DESCRIPTOR_REVISION);
        SetSecurityDescriptorDacl(@sd, True, nil, False);
        SetFileSecurity(PChar(s_filepath + t_sys_dbname + '_Data.MDF'), DACL_SECURITY_INFORMATION, @sd);
        SetFileSecurity(PChar(s_filepath + t_sys_dbname + '_Log.LDF'), DACL_SECURITY_INFORMATION, @sd);
        // SetFileAttributes(PChar(s_filepath+t_sys_dbname+'_Data.MDF'),FILE_ATTRIBUTE_NORMAL);
        // SetFileAttributes(PChar(s_filepath+t_sys_dbname+'_Log.LDF'),FILE_ATTRIBUTE_NORMAL);
        SQL.Clear;
        sqltext := 'EXEC sp_attach_db @dbname = N''' + t_sys_dbname + '''' + ',';
        SQL.Add(sqltext);
        sqltext := '@filename1 = N''' + s_filepath + t_sys_dbname + '_Data.MDF' + '''' + ',';
        SQL.Add(sqltext);
        sqltext := ' @filename2 = N''' + s_filepath + t_sys_dbname + '_Log.LDF' + '''';
        SQL.Add(sqltext);
        ExecSQL;
      end;
      // Application.MessageBox('系统数据库附加成功。','提示',64) ;
    end;

    F_DT.FDConGen.Connected := False;
    F_DT.FDConSys.Connected := False;
    F_DT.FDConSys.ConnectionString := t_connect + 'Database=' + t_sys_dbname + ';'; // 带有数据名的连接
    fdQry1.Connection := F_DT.FDConSys;
    fdQry1.Close;
    fdQry1.SQL.Clear;
    fdQry1.SQL.Add('SELECT * FROM "X_Users"');
    fdQry1.SQL.Add('WHERE(managername=:username) AND (managerpassword=:pass)');
    fdQry1.ParamByName('username').Value := Trim(edtUserText.Text);
    fdQry1.ParamByName('pass').Value := encryptstr(Trim(medtPassText.Text), Trim(edtUserText.Text) + 'XLudat');
    fdQry1.Prepared;
    fdQry1.Open;
    if fdQry1.RecordCount > 0 then
    begin
      if Trim(fdQry1.FieldByName('ManagerLevel').AsString) = '管理用户' then
      begin
        User_name := Trim(edtUserText.Text);
        User_info := '管理用户:' + User_name;
        User_can := '2';
        // LoginFrm.Close;
      end
      else if Trim(fdQry1.FieldByName('ManagerLevel').AsString) = '普通用户' then
      begin
        User_name := Trim(edtUserText.Text);
        User_info := '普通用户:' + User_name;
        User_can := '1';
        // LoginFrm.Close;
      end
      else
      begin
        MessageDlg('系统用户信息有错误！请联系系统维护人员！', mtError, [mbOK], 0);
        // gpPassLevel := -1;
        // gpLoginName := '';
      end;
      fdQry1.Close;
      fdQry1.active := False;
      F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_database + ';';
      LoginFrm.Hide;
      Application.CreateForm(TMainFrm, MainFrm);
      MainFrm.ShowModal;
      LoginFrm.Close;
      // LoginFrm.Show;
      // mainform.Auser.UserNo := s_UserNo;
      // mainform.Auser.UserName := s_User;

    end
    else
    begin
      Inc(I_logo);
      if I_logo >= 3 then
      begin
        MessageDlg('您已尝试超过 3 次，系统将停止运行！', mtError, [mbOK], 0);
        LoginFrm.Close;
      end
      else
      begin
        MessageDlg('用户名或密码不正确，请检查后重新输入。' + #13 + #13 + '你还有 ' + IntToStr(3 - I_logo) + ' 次机会！', mtError, [mbOK], 0);
        medtPassText.Text := '';
        medtPassText.SetFocus;
      end;
    end;
    fdQry1.EnableControls;
    fdQry1.SQL.Clear;
    fdQry1.Close;
  except
    fdQry1.EnableControls;
    fdQry1.SQL.Clear;
    fdQry1.Close;
    MessageDlg('系统数据库出错：' + PChar(Exception(ExceptObject).Message), mtError, [mbOK], 0);
  end;

end;

procedure TLoginFrm.FormCreate(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
  ComputerName: array [0 .. MAX_COMPUTERNAME_LENGTH + 1] of Char;
  lpSize: DWORD;
  ver_name_index: Integer;
begin
  SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, 'yyyy-MM-dd');
  I_logo := 0;
  // 读取当前目录setting赋值
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  t_ver := MyIniFile.ReadString('Base', 'sys_ver', '系统版本号');
  t_sys_dbname := MyIniFile.ReadString('Base', 'sys_database', '系统数据库名称');
  t_database_ver := MyIniFile.ReadString('Base', 'database_ver', '数据库版本号2019');
  t_connect := MyIniFile.ReadString('Base', 'connect', '连接字');
  t_mod_pass := MyIniFile.ReadString('Base', 'mod_pass', '开放模式密码');

  t_type := MyIniFile.ReadString('Base', 'Sys_type', '当前版本代码');
  // 一套软件可同时拥有多个版本（最多3套）
  t_ver_no := MyIniFile.ReadString('Base', 'Ver_no', '版本代码');
  t_ver_name := MyIniFile.ReadString('Base', 'Ver_name', '版本名称');
  t_ver_noLS := SplitString(t_ver_no, '|'); // 用于分离版本代码
  t_ver_nameLS := SplitString(t_ver_name, '|'); // 对应上述标本代码

  rdbt1_name_cn := MyIniFile.ReadString('Base', 'rdbt1_name_cn', '使用银行机构代码'); // =使用银行机构代码
  rdbt1_name_en := MyIniFile.ReadString('Base', 'rdbt1_name_en', 'v_bankCode'); // =v_bankCode
  rdbt1_code := MyIniFile.ReadString('Base', 'rdbt1_code', 'ELECT 银行机构代码,银行机构名称 FROM SysDtAcc.dbo.tb_BkCode');
  // =SELECT 银行机构代码,银行机构名称 FROM SysDtAcc.dbo.tb_BkCode
  rdbt2_name_cn := MyIniFile.ReadString('Base', 'rdbt2_name_cn', '使用金融机构编码'); // =使用金融机构编码
  rdbt2_name_en := MyIniFile.ReadString('Base', 'rdbt2_name_en', 'v_bankCode'); // =v_bankCode
  rdbt2_code := MyIniFile.ReadString('Base', 'rdbt2_code',
    'SELECT 金融机构编码 银行机构代码,机构名称 银行机构名称 FROM SysDtAcc.dbo.tb_FnCode');
  rdbtCheck := MyIniFile.ReadString('Base', 'rdbtCheck', '1'); // 默认第一个选项
  // =SELECT 金融机构编码 银行机构代码,机构名称 银行机构名称 FROM SysDtAcc.dbo.tb_FnCode

  // t_TimeOut := MyIniFile.ReadString('Extend', 'Timeout', '120');
  // t_table1_sql_dw := MyIniFile.ReadString('Extend', 'table1_sql_dw', '单位账户显示');
  // t_table2_sql_dw := MyIniFile.ReadString('Extend', 'table2_sql_dw', '单位交易显示');
  // t_table1_sql_gr := MyIniFile.ReadString('Extend', 'table1_sql_gr', '个人账户显示');
  // t_table2_sql_gr := MyIniFile.ReadString('Extend', 'table2_sql_gr', '个人交易显示');
  // t_table1_sql_other := MyIniFile.ReadString('Extend', 'table1_sql_other', '其他显示');
  // t_table2_sql_other := MyIniFile.ReadString('Extend', 'table2_sql_other', '其他显示');
  // t_table2_sql_order := MyIniFile.ReadString('Extend', 'table2_sql_order', '交易表排序');
  // t_table2_other_order := MyIniFile.ReadString('Extend', 'table2_other_order', '其他表排序');
  // t_key_name := MyIniFile.ReadString('Extend', 'key_name', '账号|账号|账号');
  // t_key_name_other := MyIniFile.ReadString('Extend', 'key_name_other', '账号|账号|账号');
  case StrToInt(t_type) of
    1: // 版本1账户检查
      begin
        // t_table1_name := MyIniFile.ReadString('Extend', 'table1_name', '对应人行账户信息标签');
        // t_table2_name := MyIniFile.ReadString('Extend', 'table2_name', '对应商行交易信息标签');
        // t_key_name := MyIniFile.ReadString('Extend', 'key_name', '账号|账号|账号');
        t_proj_no := MyIniFile.ReadString('Base', 'Proj_no1', '');
        t_proj_name := MyIniFile.ReadString('Base', 'Proj_name1', '---没有设置当前项目---');
        t_database := MyIniFile.ReadString('Base', 'Database1', '');
      end;
    2: // 版本2风险监测
      begin
        // t_table1_name := MyIniFile.ReadString('Extend', 'table1_name', '对应人行账户信息标签');
        // t_table2_name := MyIniFile.ReadString('Extend', 'table2_name', '对应商行交易信息标签');
        // t_key_name := MyIniFile.ReadString('Extend', 'key_name', '账号|账号|账号');
        t_proj_no := MyIniFile.ReadString('Base', 'Proj_no2', '');
        t_proj_name := MyIniFile.ReadString('Base', 'Proj_name2', '---没有设置当前项目---');
        t_database := MyIniFile.ReadString('Base', 'Database2', '');
      end;
    3: // 版本3其他
      begin
        // t_table1_name := MyIniFile.ReadString('Extend', 'table1_name_other', '对应表1标签');
        // t_table2_name := MyIniFile.ReadString('Extend', 'table2_name_other', '对应表2标签');
        // t_key_name := MyIniFile.ReadString('Extend', 'key_name_other', '账号|账号|账号');
        t_proj_no := MyIniFile.ReadString('Base', 'Proj_no3', '');
        t_proj_name := MyIniFile.ReadString('Base', 'Proj_name3', '---没有设置当前项目---');
        t_database := MyIniFile.ReadString('Base', 'Database3', '');
      end;
  end;
  // t_key_nameLS := SplitString(t_key_name, '|');
  t_Jclj_Ver := MyIniFile.ReadString('Base', 'Jclj_Ver', '0'); // 检查逻辑版本
  MyIniFile.Free;
  ver_name_index := t_ver_noLS.IndexOf(t_type);
  if ver_name_index >= 0 then
  begin
    lblTitle.Caption := t_ver_nameLS[ver_name_index] + '数据分析工具';
    bitbtnLogin.Enabled := True;
  end
  else
  begin
    lblTitle.Caption := '版本不正确，点击此处修复';
    bitbtnLogin.Enabled := False;
  end;

  sComputerName := '';
  // ShowMessage(sComputerName+'/SQLEXPRESS');
  // auAutoUpgrader1.CheckUpdate;
  // Sleep(3000);
end;

procedure TLoginFrm.bitbtnExitClick(Sender: TObject);
// var
// sqltext: string;
begin
  // sqltext := 'update tb_shzh_gr set 存款人身份类别=replace(存款人身份类别,' + '''' + '01' + '''' + ',' + '''' + '中国居民' + '''' + ')';
  // ShowMessage(sqltext);
  Close;
end;

procedure TLoginFrm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // if key=VK_RETURN	then
  // begin
  // LoginFrm.Hide;
  // Application.CreateForm(TMainFrm, MainFrm);
  // MainFrm.ShowModal;
  // LoginFrm.Close;
  // end;
end;

procedure TLoginFrm.edtUserTextKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    medtPassText.SetFocus;
end;

procedure TLoginFrm.medtPassTextKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    bitbtnLogin.Click;
end;

procedure TLoginFrm.N1Click(Sender: TObject);
var
  FDConGen: TFDConnection;
begin
  if MessageDlg('将要分离系统中名为' + PChar(t_sys_dbname) + '的系统数据库,以便复制数据库文件备份或被覆盖，确认吗？', mtWarning, mbOKCancel, 0) = mrCancel
  then
  begin
    Exit;
  end;
  try
    // F_DT.FDConGen.Connected := False;
    // F_DT.FDConGen.LoginPrompt := False;
    // F_DT.FDConGen.ConnectionString := 'DriverID=MSSQL;Server=.;OSAuthent=Yes;';
    // // 不带数据库名称的连接
    // F_DT.FDConGen.ExecSQL('EXEC sp_detach_db ' + t_sys_dbname);
    // F_DT.FDConGen.Close;
    FDConGen := TFDConnection.Create(nil);
    FDConGen.Connected := False;
    FDConGen.LoginPrompt := False;
    FDConGen.ConnectionString := 'DriverID=MSSQL;Server=.;OSAuthent=Yes;';
    // 不带数据库名称的连接
    FDConGen.ExecSQL('Use Master;ALTER DATABASE [' + t_sys_dbname +
      '] SET SINGLE_USER WITH ROLLBACK IMMEDIATE; EXEC sp_detach_db ' + t_sys_dbname);
    FDConGen.Close;
    FDConGen.Free;
    MessageDlg('系统数据库分离成功，可将数据库文件另行保存或被同名数据库文件覆盖升级。', mtWarning, [mbOK], 0);
  except
    // FDConGen.Free;
    // MessageDlg('数据库已分离或系统未安装SQL Server ？ ',  mtWarning,[mbOK], 0);
    MessageDlg(PChar(t_sys_dbname) + '系统数据库分离失败，可能已经分离或未安装SQL Server.', mtWarning, [mbOK], 0);
    Exit;
  end;

end;

procedure TLoginFrm.FormActivate(Sender: TObject);
begin
  lblProVer.Caption := '程序版本：' + t_ver;
  lblModVer.Caption := '模型版本：' + t_Jclj_Ver;
  LoginFrm.Caption := lblTitle.Caption;
  pnlVer.Visible := False;
  pnlLog.Visible := True;
end;

procedure TLoginFrm.lblTitleDblClick(Sender: TObject);
var
  i: Integer;
begin
  // pnl1.Left := 4;
  // pnl1.Width := imgBack.Width - 8;
  // pnl1.Visible := True;
  // pnl1.Enabled := True;
  pnlLog.Enabled := False;
  pnlVer.Visible := True;
  rg1.Items.Clear;
  for i := 0 to t_ver_nameLS.Count - 1 do
    rg1.Items.Append(t_ver_nameLS[i]);
  i := t_ver_noLS.IndexOf(t_type);
  rg1.ItemIndex := i;
end;

procedure TLoginFrm.bitbtnVerRtnClick(Sender: TObject);
begin
  // pnl1.Visible := False;
  // pnl1.Enabled := False;
  pnlVer.Visible := False;
  pnlLog.Enabled := True;
end;

procedure TLoginFrm.bitbtnVerOkClick(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
  choice: Integer;
begin
  if rg1.ItemIndex < 0 then
  begin
    Application.MessageBox('没有选择版本！', '提示', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  choice := StrToInt(t_ver_noLS[rg1.ItemIndex]);
  case choice of
    1:
      begin
        s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
        MyIniFile := TIniFile.Create(s_filename);
        MyIniFile.WriteString('Base', 'Sys_type', '1');
        // t_table1_name := MyIniFile.ReadString('Extend', 'table1_name', '对应人行账户信息标签');
        // t_table2_name := MyIniFile.ReadString('Extend', 'table2_name', '对应商行交易信息标签');
        // t_key_name := MyIniFile.ReadString('Extend', 'key_name', '账号|账号|账号');
        t_proj_no := MyIniFile.ReadString('Base', 'Proj_no1', '');
        t_proj_name := MyIniFile.ReadString('Base', 'Proj_name1', '---没有设置当前项目---');
        t_database := MyIniFile.ReadString('Base', 'Database1', '');
        MyIniFile.Free;
        t_type := '1';
        // lblTitle.Caption := '检查分析工具';
      end;
    2:
      begin
        s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
        MyIniFile := TIniFile.Create(s_filename);
        MyIniFile.WriteString('Base', 'Sys_type', '2');
        // t_table1_name := MyIniFile.ReadString('Extend', 'table1_name', '对应人行账户信息标签');
        // t_table2_name := MyIniFile.ReadString('Extend', 'table2_name', '对应商行交易信息标签');
        // t_key_name := MyIniFile.ReadString('Extend', 'key_name', '账号|账号|账号');
        t_proj_no := MyIniFile.ReadString('Base', 'Proj_no2', '');
        t_proj_name := MyIniFile.ReadString('Base', 'Proj_name2', '---没有设置当前项目---');
        t_database := MyIniFile.ReadString('Base', 'Database2', '');
        MyIniFile.Free;
        t_type := '2';
        // lblTitle.Caption := '风险据分析工具';
      end;
    3:
      begin
        s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
        MyIniFile := TIniFile.Create(s_filename);
        MyIniFile.WriteString('Base', 'Sys_type', '3');
        // t_table1_name := MyIniFile.ReadString('Extend', 'table1_name_other', '对应表1标签');
        // t_table2_name := MyIniFile.ReadString('Extend', 'table2_name_other', '对应表2标签');
        // t_key_name := MyIniFile.ReadString('Extend', 'key_name_other', '账号|账号|账号');
        t_proj_no := MyIniFile.ReadString('Base', 'Proj_no3', '');
        t_proj_name := MyIniFile.ReadString('Base', 'Proj_name3', '---没有设置当前项目---');
        t_database := MyIniFile.ReadString('Base', 'Database3', '');
        MyIniFile.Free;
        t_type := '3';
        // lblTitle.Caption := '其他工具';
      end;
  end;
  lblTitle.Caption := t_ver_nameLS[rg1.ItemIndex] + '数据分析工具';
  lblProVer.Caption := '程序版本：' + t_ver;
  lblModVer.Caption := '逻辑版本：' + t_Jclj_Ver;
  LoginFrm.Caption := lblTitle.Caption;
  // pnl1.Visible := False;
  // pnl1.Enabled := False;
  pnlVer.Visible := False;
  pnlLog.Enabled := True;
  // bitbtnLogin.Enabled := True;
end;

end.
