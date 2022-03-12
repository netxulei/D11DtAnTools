unit FindPublic;

interface

uses
  SysUtils, Classes, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, db;

type
  TfrmFindPublic = class(TForm)
    Label1: TLabel;
    edtName: TEdit;
    bbFind: TBitBtn;
    bbNo: TBitBtn;
    bbFindDown: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtField: TComboBox;
    edtDirection: TComboBox;
    edtCaption: TComboBox;
    checkAll: TCheckBox;
    chkUpCase: TCheckBox;
    procedure bbNoClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure bbFindDownClick(Sender: TObject);
  private
    { Private declarations }
    bReturn: Boolean;
    sPubText: string;
    lPubFiled: Integer;
    // gridGrid1: TCustomdxDBTreeListControl;
    Dataset: TDataset;
    procedure MainShow;
    procedure LoadData;
    function GridFind(lDirect: Integer): Boolean;
  public
    { Public declarations }
  end;

function FindPublicShow(DS: TDataset; var sText: string; var
  lFiled: Integer): Boolean;

implementation

uses Math, StrUtils;

//uses SysPublic;

{$R *.DFM}

function FindPublicShow(DS: TDataset; var sText: string; var
  lFiled: Integer): Boolean;
var
  frmFindPublic: TfrmFindPublic;
begin
  frmFindPublic := TfrmFindPublic.Create(Application);
  with frmFindPublic do
  begin
    //gridGrid1 := Grid1;
    Dataset := DS;
    sPubText := sText;
    lPubFiled := lFiled;
    MainShow;
    sText := sPubText;
    lFiled := lPubFiled;
    Result := bReturn;
    Free;
  end;
end;

procedure TfrmFindPublic.MainShow;
begin
  // bOperateLog:=False;
  LoadData;
  ShowModal;
end;

procedure TfrmFindPublic.LoadData;
var
  lCol: Integer;
  sCaption, sField: string;
begin
  sCaption := '';
  edtDirection.ItemIndex := 0;
  edtName.Text := sPubText;
  //得到GRID的列名称
  for lCol := 0 to Dataset.FieldCount - 1 do
    if Dataset.Fields[lCol].Visible = true then
    begin
      sCaption := sCaption + Dataset.Fields[lCol].DisplayLabel + #13;
      sField := sField + Dataset.Fields[lCol].FieldName + #13;
    end;
  edtField.Items.Text := sField;
  edtCaption.Items.Text := sCaption;
  if edtCaption.items.Count > 0 then
    edtCaption.ItemIndex := 0;
  if lPubFiled >= 0 then
    edtCaption.ItemIndex := lPubFiled;
end;

procedure TfrmFindPublic.bbNoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

function TfrmFindPublic.GridFind(lDirect: Integer): Boolean;
var
  bFind: Boolean;
  lRow: Integer;
begin
  Dataset.DisableControls;
  try
    bFind := false;
    lPubFiled := edtCaption.ItemIndex;
    sPubText := edtName.Text;
    lRow := Dataset.RecNo;
    if lDirect = 0 then
      DataSet.First
    else
      DataSet.RecNo := lRow + 1;
    while not DataSet.Eof do
    begin
      if checkAll.Checked then
      begin
        if IfThen(chkUpCase.Checked, edtName.Text, UpperCase(edtName.Text)) <>
          IfThen(chkUpCase.Checked,
          Dataset.FieldByName(edtField.Items.Strings[edtCaption.ItemIndex]).AsString,
          UpperCase(Dataset.FieldByName(edtField.Items.Strings[edtCaption.ItemIndex]).AsString)) then
          DataSet.Next
        else
        begin
          bFind := true;
          break;
        end;
      end
      else
      begin
        if Pos(IfThen(chkUpCase.Checked, edtName.Text, UpperCase(edtName.Text)),
          IfThen(chkUpCase.Checked,
          Dataset.FieldByName(edtField.Items.Strings[edtCaption.ItemIndex]).AsString,
          UpperCase(Dataset.FieldByName(edtField.Items.Strings[edtCaption.ItemIndex]).AsString))) = 0 then
          DataSet.Next
        else
        begin
          bFind := true;
          break;
        end;
      end;
    end;

    if not bFind then
    begin
      DataSet.RecNo := lRow;
      MessageDlg('数据没找到，请重新输入条件!', mtInformation, [mbOK], 0);
    end;
    Result := bFind;
  finally
    Dataset.EnableControls;
  end;
end;

procedure TfrmFindPublic.bbFindClick(Sender: TObject);
begin
  inherited;
  if edtName.Text = '' then
    exit;
  if GridFind(edtDirection.ItemIndex) then
    Close;
end;

procedure TfrmFindPublic.bbFindDownClick(Sender: TObject);
begin
  inherited;
  if edtName.Text = '' then
    exit;
  GridFind(1);
end;

end.

