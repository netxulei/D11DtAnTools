unit U_mode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, Buttons, Mask, U_Common, ExtCtrls,JMCode;

type
  TF_mode = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnl1: TPanel;
    lbl1: TLabel;
    pnl2: TPanel;
    lbl2: TLabel;
    PassText: TMaskEdit;
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
begin
  if Trim(PassText.Text) = encryptstr(formatdatetime('yyyy',Now),formatdatetime('yyyy',Now)+'XLzfjs') then
  begin
    t_mode := '1';
 //   Exit;
  end
  else
  begin
    Application.MessageBox('密码错误，如有需要，请联系开发人员索取密码', '错误',
      MB_OK + MB_ICONWARNING);
  end;
end;

procedure TF_mode.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TF_mode.FormActivate(Sender: TObject);
begin
PassText.SetFocus;
end;

end.

