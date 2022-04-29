unit U_float;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters;

type
  TF_float = class(TForm)
    cxm_tmp: TcxMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_float: TF_float;

implementation

{$R *.dfm}

procedure TF_float.FormCreate(Sender: TObject);
  var s_filename:string;
begin
    try
    s_filename:=ExtractFilePath(ParamStr(0))+'clip.txt';
    except
    end;
    cxm_tmp.Lines.LoadFromFile(s_filename);
    F_float.Top:=Screen.Height-f_float.Height-10;
    F_float.Left:=Screen.Width-f_float.Width;
end;

procedure TF_float.FormDestroy(Sender: TObject);
  var s_filename:string;
begin
   s_filename:=ExtractFilePath(ParamStr(0))+'clip.txt';
   cxm_tmp.Lines.SaveToFile(s_filename);
end;

end.
