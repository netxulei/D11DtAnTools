unit Upass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList;

type
  TFrmPass = class(TForm)
    lbledtPass: TLabeledEdit;
    btnOK: TButton;
    btnCancel: TButton;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPass: TFrmPass;

implementation

{$R *.dfm}

procedure TFrmPass.btnCancelClick(Sender: TObject);
begin
close;
end;

end.
