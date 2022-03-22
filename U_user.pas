unit U_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_user = class(TForm)
    dbgrdh1: TDBGridEh;
    FDQryUser: TFDQuery;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    ds1: TDataSource;
    btn5: TBitBtn;
    btn6: TBitBtn;
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_user: TF_user;

implementation

uses U_DT, JMCode, U_Common;
{$R *.dfm}

procedure TF_user.btn5Click(Sender: TObject);
begin
  FDQryUser.ApplyUpdates;
  FDQryUser.Close;
  Close;
end;

procedure TF_user.btn6Click(Sender: TObject);
begin
  FDQryUser.Cancel;
  FDQryUser.Close;
  Close;
end;

procedure TF_user.FormCreate(Sender: TObject);
begin
  fdQryUser.Close;
  fdQryUser.DisableControls;
  fdQryUser.Connection := F_DT.FDConSYS;
  // FDQryUser.CursorLocation:=clUseClient;
  // FDQryUser.CursorType:=ctStatic;
  // FDQryUser.LockType:=ltBatchOptimistic;
  fdQryUser.SQL.Clear;
  fdQryUser.SQL.Add('select ManagerName,ManagerLevel,ManagerPassWord FROM "X_users"');
  fdQryUser.Prepared;
  fdQryUser.Open;
  fdQryUser.First;
  fdQryUser.enableControls;
end;

procedure TF_user.btn1Click(Sender: TObject);
var
  s_user_name, s_pass1, s_pass2, s_level: string;
  n_level: Integer;
begin
  if not(InputQuery('添加用户', '请输入用户名：....', s_user_name)) then
    Exit;
  s_user_name := Trim(s_user_name);
  if FDQryUser.Locate('ManagerName', s_user_name, []) then
  begin
    MessageDlg('此用户已存在！', mtInformation, [mbOK], 0);
    FDQryUser.First;
    Exit;
  end;
  if not(InputQuery('添加用户', '请输入用户密码：....', s_pass1)) then
    Exit;
  s_pass1 := Trim(s_pass1);
  if not(InputQuery('添加用户', '请再次输入用户密码：....', s_pass2)) then
    Exit;
  s_pass2 := Trim(s_pass2);
  if Trim(s_pass1) <> Trim(s_pass2) then
  begin
    MessageDlg('两次密码输入不一致，请重新输入！', mtInformation, [mbOK], 0);
    Exit;
  end;
  n_level := Application.MessageBox('此用户具有管理员权限吗？', '注意', MB_YESNOCANCEL + MB_ICONWARNING);
  if n_level = IDCANCEL then
    Exit
  else if n_level = IDYES then
    s_level := '管理用户'
  else
    s_level := '普通用户';
  FDQryUser.Append;
  FDQryUser.FieldValues['ManagerName'] := s_user_name;
  FDQryUser.FieldValues['ManagerLevel'] := s_level;
  FDQryUser.FieldValues['ManagerPassWord'] := encryptstr(s_pass1, s_user_name + 'AML');
end;

procedure TF_user.btn2Click(Sender: TObject);
begin
  if (FDQryUser.RecordCount = 1) then
  begin
    MessageDlg('最后一个用户不能删除了！', mtInformation, [mbOK], 0);
    Exit;
  end;
  FDQryUser.Delete;
end;

procedure TF_user.btn3Click(Sender: TObject);
var
  n_level: Integer;
  s_level: string;
begin
  n_level := Application.MessageBox('此用户具有管理员权限吗？', '注意', MB_YESNOCANCEL + MB_ICONWARNING);
  if n_level = IDCANCEL then
    Exit
  else if n_level = IDYES then
    s_level := '管理用户'
  else
    s_level := '普通用户';
  FDQryUser.Edit;
  FDQryUser.FieldValues['ManagerLevel'] := s_level;
end;

procedure TF_user.btn4Click(Sender: TObject);
var
  s_pass1, s_pass2, s_user_name: string;
begin
  if not(InputQuery('添加用户', '请输入用户密码：....', s_pass1)) then
    Exit;
  s_pass1 := Trim(s_pass1);
  if not(InputQuery('添加用户', '请再次输入用户密码：....', s_pass2)) then
    Exit;
  s_pass2 := Trim(s_pass2);
  if Trim(s_pass1) <> Trim(s_pass2) then
  begin
    MessageDlg('两次密码输入不一致，请重新输入！', mtInformation, [mbOK], 0);
    Exit;
  end;
  s_user_name := FDQryUser.FieldValues['ManagerName'];
  FDQryUser.Edit;
  FDQryUser.FieldValues['ManagerPassWord'] := encryptstr(s_pass1, s_user_name + 'AML');
end;

end.
