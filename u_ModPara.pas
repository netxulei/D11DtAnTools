unit u_ModPara;

interface

uses
  U_DT, U_Common, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmModPara = class(TForm)
    pnlBot: TPanel;
    fdQrySrcTab: TFDQuery;
    dsSrcTab: TDataSource;
    fdQrySrcTabtab_name_en: TStringField;
    fdQrySrcTabtab_name_cn: TStringField;
    pnlIn: TPanel;
    btnExe: TButton;
    btnExit: TButton;
    pnlAll: TPanel;
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblEdtKeyPress(Sender: TObject; var Key: Char);
  private
  { Private declarations }
    type

    TParaCtrlRec = record
      pnlCtrl: TPanel;
      edtCtrl: TLabeledEdit;
      lblCtrl: TLabel;
      lstCtrl: TcxLookupComboBox;
    end;

  var
    arParaCtrl: array of TParaCtrlRec;
    i_cnt1: integer;

  public
    { Public declarations }
  end;

var
  FrmModPara: TFrmModPara;

implementation

{$R *.dfm}

procedure TFrmModPara.btnExeClick(Sender: TObject);
var

  i: integer;
begin
  // for i := 1 to i_cnt1 do
  // begin
  //
  // end;
end;

procedure TFrmModPara.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmModPara.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdQrySrcTab.close;
  Action := caFree;
end;

procedure TFrmModPara.FormCreate(Sender: TObject);

var
  i: integer;
begin
  i_cnt1 := Length(R_proc);
  SetLength(arParaCtrl, i_cnt1);
  for i := 0 to i_cnt1 - 1 do
  begin
    arParaCtrl[i].pnlCtrl := TPanel.Create(Self);
    arParaCtrl[i].pnlCtrl.Parent := pnlAll;
    arParaCtrl[i].pnlCtrl.Name := 'pnl' + IntToStr(i);
    arParaCtrl[i].pnlCtrl.Align := alTop;
    if i = 0 then
      arParaCtrl[i].pnlCtrl.Top := 0
    else
      arParaCtrl[i].pnlCtrl.Top := arParaCtrl[i - 1].pnlCtrl.height * i + 1;

    arParaCtrl[i].pnlCtrl.height := 55;
    arParaCtrl[i].pnlCtrl.Caption := '';
    if R_proc[i].s_para_lx <> 'T' then
    begin
      arParaCtrl[i].edtCtrl := TLabeledEdit.Create(Self);
      arParaCtrl[i].edtCtrl.Parent := arParaCtrl[i].pnlCtrl;
      arParaCtrl[i].edtCtrl.Name := 'edt' + IntToStr(i);
      arParaCtrl[i].edtCtrl.EditLabel.Caption := R_proc[i].s_para_tip;
      arParaCtrl[i].edtCtrl.Text := R_proc[i].s_para_value;
      arParaCtrl[i].edtCtrl.Align := alBottom;
      arParaCtrl[i].edtCtrl.OnKeyPress := lblEdtKeyPress;
    end
    Else
    begin
      arParaCtrl[i].lblCtrl := TLabel.Create(Self);
      arParaCtrl[i].lblCtrl.Name := 'lbl' + IntToStr(i);
      arParaCtrl[i].lblCtrl.Parent := arParaCtrl[i].pnlCtrl;
      arParaCtrl[i].lblCtrl.Caption := R_proc[i].s_para_tip;
      arParaCtrl[i].lblCtrl.Align := alBottom;

      arParaCtrl[i].lstCtrl := TcxLookupComboBox.Create(Self);
      arParaCtrl[i].lstCtrl.Parent := arParaCtrl[i].pnlCtrl;
      arParaCtrl[i].lstCtrl.Name := 'lst' + IntToStr(i);
      arParaCtrl[i].lstCtrl.Align := alBottom;
      arParaCtrl[i].lstCtrl.Properties.ListSource := dsSrcTab;
      arParaCtrl[i].lstCtrl.Properties.KeyFieldNames := 'tab_name_en';
      arParaCtrl[i].lstCtrl.Properties.ListFieldNames := 'tab_name_en;tab_name_cn';
      arParaCtrl[i].lstCtrl.Properties.DropDownSizeable := True;
      // arParaCtrl[i].lstCtrl.Properties.PopupAutoSize := True;
      arParaCtrl[i].lstCtrl.Properties.GridMode := True;
      arParaCtrl[i].lstCtrl.Properties.ListColumns[0].Caption := '英文表名';
      arParaCtrl[i].lstCtrl.Properties.ListColumns[1].Caption := '中文表名';
      arParaCtrl[i].lstCtrl.EditValue := R_proc[i].s_para_value;
    end;
  end;
  // arParaCtrl[0].edtCtrl.SetFocus;
  // 获取数据表表名作为参数
  fdQrySrcTab.Connection := F_DT.FDconSYS;
  fdQrySrcTab.Open();
  FrmModPara.height := 55 * (i_cnt1 + 1) + 60;
end;

procedure TFrmModPara.FormShow(Sender: TObject);
begin
  if Components[10] is TLabeledEdit then
    (Components[10] As TLabeledEdit).SetFocus
  else if Components[11] is TcxLookupComboBox then
    (Components[11] As TcxLookupComboBox).SetFocus;
end;

procedure TFrmModPara.lblEdtKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

end.
