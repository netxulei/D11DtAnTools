unit U_mode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, U_Common, ExtCtrls, U_DT, JMCode;

type
  TF_mode = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    pnl2: TPanel;
    lbl2: TLabel;
    PassText: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_mode: TF_mode;

implementation

{$R *.dfm}

procedure TF_mode.BitBtn1Click(Sender: TObject);
var
  sJm: string;
begin
  sJm := encryptstr(formatdatetime('yyyy', Now), formatdatetime('yyyy', Now) + 'XLudat');
  if Trim(PassText.Text) = sJm then
  begin
    t_mode := '1';
    // Exit;
  end
  else
  begin
    Application.MessageBox('密码错误，如有需要，请联系开发人员索取密码', '错误', MB_OK + MB_ICONWARNING);
  end;
end;

procedure TF_mode.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TF_mode.FormActivate(Sender: TObject);
begin
  PassText.Text := t_mod_pass;
  PassText.SetFocus;
end;

end.
