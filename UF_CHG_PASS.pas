unit UF_CHG_PASS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh, DB, ADODB;

type
  TF_CHG_PASS = class(TForm)
    lbl1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEDTSET1: TDBEditEh;
    DBEDTSET11: TDBEditEh;
    DBEDTSET12: TDBEditEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOqr1: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEDTSET1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEDTSET11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEDTSET12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CHG_PASS: TF_CHG_PASS;

implementation
uses U_Common,U_DT,JMCode;
{$R *.dfm}

procedure TF_CHG_PASS.BitBtn1Click(Sender: TObject);
var sUserNo,sUserName,sOldPass,sNewPass1,sNewPass2:string;
begin
  if Length(Trim(DBEDTSET1.Text))=0 then
     begin
        MessageDlg('老密码不能为空！',mtError,[mbOK],0);
        DBEDTSET1.SetFocus;
        exit;
     end;
  if Length(Trim(DBEDTSET11.Text))=0 then
     begin
        MessageDlg('新密码不能为空！',mtError,[mbOK],0);
        DBEDTSET11.SetFocus;
        exit;
     end;
  if Length(Trim(DBEDTSET12.Text))=0 then
     begin
        MessageDlg('新密码不能为空！',mtError,[mbOK],0);
        DBEDTSET12.SetFocus;
        exit;
     end;
     sOldPass:=Trim(DBEDTSET1.Text);
     sNewPass1:=Trim(DBEDTSET11.Text);
     sNewPass2:=Trim(DBEDTSET12.Text);
    if sNewPass1<>sNewPass2 then
      begin
        MessageDlg('两次新密码不一致！', mtInformation, [mbOK], 0);
        Exit;
      end;

     ADOQr1.DisableControls;
     ADOQr1.Close;
     ADOQr1.Connection:=F_DT.ADOCN1;
     ADOQr1.SQL.Clear;
     ADOQr1.SQL.Add('SELECT * FROM "X_Users"');
//     ADOQr1.SQL.Add('WHERE(managername=:username) AND (managerpassword=:pass)');
//     ADOQr1.Parameters.ParamByName('username').Value :=t_User;
//     ADOQr1.Parameters.ParamByName('pass').Value := t_Password;
     ADOQr1.Prepared;
     ADOQr1.Open;
//     ADOQr1.First;
  if ADOqr1.Locate('managername',User_name,[]) then
    begin
      if (encryptstr(sOldPass,User_name+'AML') <> Trim(ADOqr1.FieldValues['managerpassword'])) then
        begin
          MessageDlg('老密码不正确！', mtInformation, [mbOK], 0);
          Exit;
        end
      else
        begin
          ADOqr1.Edit;
          ADOqr1.FieldValues['managerpassword']:=encryptstr(sNewPass1,User_name+'AML');
          ADOqr1.UpdateBatch(arAll);
          MessageDlg('密码修改成功！', mtInformation, [mbOK], 0);
          BitBtn2.SetFocus;
        end;
    end;

end;

procedure TF_CHG_PASS.BitBtn2Click(Sender: TObject);
begin
ADOqr1.close;
close;
end;

procedure TF_CHG_PASS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOqr1.Close;
Action:=caFree;
end;

procedure TF_CHG_PASS.DBEDTSET1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key=VK_RETURN) or (key=VK_TAB)) then
    DBEDTSET11.SetFocus;
   if ((key=VK_RETURN) or (key=VK_TAB)) and (ssShift in Shift) then
    BitBtn2.SetFocus;
end;

procedure TF_CHG_PASS.DBEDTSET11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key=VK_RETURN) or (key=VK_TAB)) then
    DBEDTSET12.SetFocus;
   if ((key=VK_RETURN) or (key=VK_TAB)) and (ssShift in Shift) then
    DBEDTSET1.SetFocus;
end;

procedure TF_CHG_PASS.DBEDTSET12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key=VK_RETURN) or (key=VK_TAB)) then
    BitBtn1.SetFocus;
   if ((key=VK_RETURN) or (key=VK_TAB)) and (ssShift in Shift) then
    DBEDTSET11.SetFocus;
end;

end.
