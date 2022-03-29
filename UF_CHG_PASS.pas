unit UF_CHG_PASS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh, DB, ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TF_CHG_PASS = class(TForm)
    fdQryPass: TFDQuery;
    pnl1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlTop: TPanel;
    lbl1: TLabel;
    DBEDTSET1: TDBEditEh;
    DBEDTSET11: TDBEditEh;
    Label1: TLabel;
    Label2: TLabel;
    DBEDTSET12: TDBEditEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEDTSET1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEDTSET11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEDTSET12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CHG_PASS: TF_CHG_PASS;

implementation

uses U_Common, U_DT, JMCode;
{$R *.dfm}

procedure TF_CHG_PASS.BitBtn1Click(Sender: TObject);
var
  sUserNo, sUserName, sOldPass, sNewPass1, sNewPass2: string;
begin
  if Length(Trim(DBEDTSET1.Text)) = 0 then
  begin
    MessageDlg('老密码不能为空！', mtError, [mbOK], 0);
    DBEDTSET1.SetFocus;
    exit;
  end;
  if Length(Trim(DBEDTSET11.Text)) = 0 then
  begin
    MessageDlg('新密码不能为空！', mtError, [mbOK], 0);
    DBEDTSET11.SetFocus;
    exit;
  end;
  if Length(Trim(DBEDTSET12.Text)) = 0 then
  begin
    MessageDlg('新密码不能为空！', mtError, [mbOK], 0);
    DBEDTSET12.SetFocus;
    exit;
  end;
  sOldPass := Trim(DBEDTSET1.Text);
  sNewPass1 := Trim(DBEDTSET11.Text);
  sNewPass2 := Trim(DBEDTSET12.Text);
  if sNewPass1 <> sNewPass2 then
  begin
    MessageDlg('两次新密码不一致！', mtInformation, [mbOK], 0);
    exit;
  end;

  fdQryPass.DisableControls;
  fdQryPass.Close;
  fdQryPass.Connection := F_DT.FDConSys;
  fdQryPass.SQL.Clear;
  fdQryPass.SQL.Add('SELECT * FROM "X_Users"');
  // FDQryPass.SQL.Add('WHERE(managername=:username) AND (managerpassword=:pass)');
  // FDQryPass.Parameters.ParamByName('username').Value :=t_User;
  // FDQryPass.Parameters.ParamByName('pass').Value := t_Password;
  fdQryPass.Prepared;
  fdQryPass.Open;
  // FDQryPass.First;
  if fdQryPass.Locate('managername', User_name, []) then
  begin
    if (encryptstr(sOldPass, User_name + 'AML') <> Trim(fdQryPass.FieldValues['managerpassword'])) then
    begin
      MessageDlg('老密码不正确！', mtInformation, [mbOK], 0);
      exit;
    end
    else
    begin
      fdQryPass.Edit;
      fdQryPass.FieldValues['managerpassword'] := encryptstr(sNewPass1, User_name + 'AML');
      fdQryPass.post;
      MessageDlg('密码修改成功！', mtInformation, [mbOK], 0);
      BitBtn2.SetFocus;
    end;
  end;

end;

procedure TF_CHG_PASS.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TF_CHG_PASS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdQryPass.Close;
  Action := caFree;
end;

procedure TF_CHG_PASS.DBEDTSET1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((Key = VK_RETURN) or (Key = VK_TAB)) then
    DBEDTSET11.SetFocus;
  if ((Key = VK_RETURN) or (Key = VK_TAB)) and (ssShift in Shift) then
    BitBtn2.SetFocus;
end;

procedure TF_CHG_PASS.DBEDTSET11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((Key = VK_RETURN) or (Key = VK_TAB)) then
    DBEDTSET12.SetFocus;
  if ((Key = VK_RETURN) or (Key = VK_TAB)) and (ssShift in Shift) then
    DBEDTSET1.SetFocus;
end;

procedure TF_CHG_PASS.DBEDTSET12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((Key = VK_RETURN) or (Key = VK_TAB)) then
    BitBtn1.SetFocus;
  if ((Key = VK_RETURN) or (Key = VK_TAB)) and (ssShift in Shift) then
    DBEDTSET11.SetFocus;
end;

end.
