unit UDtHlp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.OleCtnrs, Vcl.StdCtrls, Vcl.ComCtrls, DBCtrlsEh, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMemo, cxRichEdit;

type
  TFrmDtHlp = class(TForm)
    RichEdit1: TRichEdit;
    pnl1: TPanel;
    btnSave: TButton;
    chkEdit: TCheckBox;
    btnExit: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure chkEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDtHlp: TFrmDtHlp;

implementation

{$R *.dfm}

procedure TFrmDtHlp.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmDtHlp.btnSaveClick(Sender: TObject);
var
  s_filename1: string;
begin
  s_filename1 := ExtractFilePath(ParamStr(0)) + 'DataHelp.rtf';
  RichEdit1.Lines.SaveToFile(s_filename1);
end;

procedure TFrmDtHlp.chkEditClick(Sender: TObject);
begin
  RichEdit1.ReadOnly:=chkEdit.Checked;
end;

procedure TFrmDtHlp.FormCreate(Sender: TObject);
var
  s_filename1: string;
begin
  s_filename1 := ExtractFilePath(ParamStr(0)) + 'DataHelp.rtf';
  RichEdit1.Lines.LoadFromFile(s_filename1);
  // wbDtHlp.Navigate(s_filename1);

  // OleContainer1.CreateLinkToFile(s_filename1,false)
end;

end.
