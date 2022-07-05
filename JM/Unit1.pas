unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JMCode, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    edt3: TEdit;
    rg1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  edt1.Text := formatdatetime('yyyy', Now);
  edt3.Text := formatdatetime('yyyy', Now) + 'XLudat'
end;

procedure TForm1.rg1Click(Sender: TObject);
begin
  if rg1.ItemIndex = 0 then
    edt3.Text := formatdatetime('yyyy', Now) + 'XLudat'
  else
    edt3.Text := formatdatetime('yyyy', Now) + 'XLuAut'
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt2.Text := '';
  edt2.Text := encryptstr(edt1.Text, edt3.Text);
  // edt2.Text := EncryptString(edt1.Text, edt3.Text);

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  edt1.Text := '';
  edt1.Text := decryptstr(edt2.Text, edt3.Text);
  // edt1.Text := UnEncryptString(edt2.Text, edt3.Text);
end;

end.
