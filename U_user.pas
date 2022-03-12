unit U_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TF_user = class(TForm)
    dbgrdh1: TDBGridEh;
    ADOqr1: TADOQuery;
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
uses U_DT,JMCode,U_Common;
{$R *.dfm}

procedure TF_user.btn5Click(Sender: TObject);
begin
  ADOqr1.UpdateBatch(arAll);
  ADOqr1.Close;
  close;
end;

procedure TF_user.btn6Click(Sender: TObject);
begin
  ADOqr1.CancelBatch(arAll);
  ADOqr1.Close;
  close;
end;

procedure TF_user.FormCreate(Sender: TObject);
begin
  ADOqr1.close;
  ADOqr1.DisableControls;
  ADOqr1.Connection:=F_DT.ADOCN1;
  ADOqr1.CursorLocation:=clUseClient;
  ADOqr1.CursorType:=ctStatic;
  ADOqr1.LockType:=ltBatchOptimistic;
  ADOqr1.SQL.Clear;
  ADOqr1.SQL.Add('select ManagerName,ManagerLevel,ManagerPassWord FROM "X_users"');
  ADOqr1.Prepared;
  ADOqr1.Open;
  ADOqr1.First;
  ADOqr1.enableControls;
end;

procedure TF_user.btn1Click(Sender: TObject);
var
    s_user_name,s_pass1,s_pass2,s_level:string;
    n_level:Integer;
begin
  if not (InputQuery('添加用户','请输入用户名：....',s_user_name)) then Exit;
  s_user_name:=Trim(s_user_name);
  if ADOqr1.Locate('ManagerName',s_user_name,[]) then
    begin
      MessageDlg('此用户已存在！', mtInformation, [mbOK], 0);
      ADOqr1.First;
      Exit;
    end;
  if not (InputQuery('添加用户','请输入用户密码：....',s_pass1)) then Exit;
  s_pass1:=Trim(s_pass1);
  if not (InputQuery('添加用户','请再次输入用户密码：....',s_pass2)) then Exit;
  s_pass2:=Trim(s_pass2);
  if trim(s_pass1)<> trim(s_pass2) then
    begin
      MessageDlg('两次密码输入不一致，请重新输入！', mtInformation, [mbOK], 0);
      exit;
    end;
   n_level:=Application.MessageBox('此用户具有管理员权限吗？', '注意', MB_YESNOCANCEL +
     MB_ICONWARNING);
   if n_level=IDCANCEL then Exit
   else if n_level=IDYES then s_level:='管理用户'
   else s_level:='普通用户';
  ADOqr1.Append;
  ADOqr1.FieldValues['ManagerName']:=s_user_name;
  ADOqr1.FieldValues['ManagerLevel']:=s_level;
  ADOqr1.FieldValues['ManagerPassWord']:=encryptstr(s_pass1,s_user_name+'AML');
end;

procedure TF_user.btn2Click(Sender: TObject);
begin
   if (ADOqr1.RecordCount=1) then
     begin
       MessageDlg('最后一个用户不能删除了！', mtInformation, [mbOK], 0);
       Exit;
     end;
   ADOqr1.Delete;
end;

procedure TF_user.btn3Click(Sender: TObject);
var n_level:Integer;
    s_level:string;
begin
   n_level:=Application.MessageBox('此用户具有管理员权限吗？', '注意', MB_YESNOCANCEL +
   MB_ICONWARNING);
   if n_level=IDCANCEL then Exit
   else if n_level=IDYES then s_level:='管理用户'
   else s_level:='普通用户';
   ADOqr1.Edit;
   ADOqr1.FieldValues['ManagerLevel']:=s_level;
end;

procedure TF_user.btn4Click(Sender: TObject);
var s_pass1,s_pass2,s_user_name:string;
begin
  if not (InputQuery('添加用户','请输入用户密码：....',s_pass1)) then Exit;
  s_pass1:=Trim(s_pass1);
  if not (InputQuery('添加用户','请再次输入用户密码：....',s_pass2)) then Exit;
  s_pass2:=Trim(s_pass2);
  if trim(s_pass1)<> trim(s_pass2) then
    begin
      MessageDlg('两次密码输入不一致，请重新输入！', mtInformation, [mbOK], 0);
      exit;
    end;
  s_user_name:=ADOqr1.FieldValues['ManagerName'];
  ADOqr1.Edit;
  ADOqr1.FieldValues['ManagerPassWord']:=encryptstr(s_pass1,s_user_name+'AML');
end;

end.
