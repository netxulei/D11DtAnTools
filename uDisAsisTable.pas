unit uDisAsisTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TfmDisAssiTable = class(TForm)
    lbledtResult: TLabeledEdit;
    lbledtAssis1CH: TLabeledEdit;
    lbledtAssis2CH: TLabeledEdit;
    lbledtField2: TLabeledEdit;
    lbledtAssis1EN: TLabeledEdit;
    lbledtAssis2EN: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisAssiTable: TfmDisAssiTable;

implementation

{$R *.dfm}

end.
