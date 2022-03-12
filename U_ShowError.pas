unit U_ShowError;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, ExtCtrls, cxLabel;

type
  TF_showError = class(TForm)
    cxm1: TcxMemo;
    cxlbl1: TcxLabel;
    cxm2: TcxMemo;
    cxlbl2: TcxLabel;
    spl1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_showError: TF_showError;

implementation

{$R *.dfm}

procedure TF_showError.FormCreate(Sender: TObject);
var
  s_filename1, s_filename2: string;
begin
  try
    s_filename1 := ExtractFilePath(ParamStr(0)) + 'error.txt.error.txt';
    cxm1.Lines.LoadFromFile(s_filename1);
    s_filename2 := ExtractFilePath(ParamStr(0)) + 'error.txt';
    cxm2.Lines.LoadFromFile(s_filename2);
  except
    ShowMessage('上次导入数据没有出错，将不显示任何信息！');
  end;
  // F_float.Top:=Screen.Height-f_float.Height-10;
  // F_float.Left:=Screen.Width-f_float.Width;
end;

procedure TF_showError.FormDestroy(Sender: TObject);
var
  s_filename: string;
begin
  // s_filename:=ExtractFilePath(ParamStr(0))+'clip.txt';
   //cxm_tmp.Lines.SaveToFile(s_filename);
end;

end.

