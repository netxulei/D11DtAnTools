unit u_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, dxGDIPlusClasses;

type
  TForm1 = class(TForm)
    lblTestVer: TLabel;
    pnlAll: TPanel;
    imgBack: TImage;
    pnlLog: TPanel;
    lblTitle: TLabel;
    lblProVer: TLabel;
    lblModVer: TLabel;
    edtUserText: TEdit;
    medtPassText: TMaskEdit;
    bitbtnLogin: TBitBtn;
    bitbtnExit: TBitBtn;
    pnlVer: TPanel;
    rg1: TRadioGroup;
    bitbtnVerOK: TBitBtn;
    bitbtnVerRtn: TBitBtn;
    ADOQ1: TADOQuery;
    fdQry1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
