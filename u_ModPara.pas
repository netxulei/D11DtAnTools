unit u_ModPara;

interface

uses
  RegularExpressions, U_DT, U_Common, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  for i := 0 to i_cnt1 - 1 do
  begin
    if R_proc[i].s_para_lx <> 'T' then
    begin
      if varisnull(arParaCtrl[i].edtCtrl.Text) then
        R_proc[i].s_para_value := ''
      else
        R_proc[i].s_para_value := Trim(arParaCtrl[i].edtCtrl.Text)
    end
    else
    begin
      if varisnull(arParaCtrl[i].lstCtrl.EditValue) then
        R_proc[i].s_para_value := ''
      else
        R_proc[i].s_para_value := Trim(arParaCtrl[i].lstCtrl.EditValue);
    end;

    // 根据提示参数“日期”“数”等判断数据是否输入正确
    if (R_proc[i].s_para_lx = 'D') AND (Length(R_proc[i].s_para_value) > 0) then
    begin
      // 判断是否日期
      if not TRegex.IsMatch(R_proc[i].s_para_value, '^(19|20|21)\d{2}(0[1-9]|1[0-2])(0[1-9]|[1|2][0-9]|3[0-1])$|^$') then
      begin
        if R_proc[i].s_para_lx <> 'T' then
          arParaCtrl[i].edtCtrl.SetFocus
        else
          arParaCtrl[i].lstCtrl.SetFocus;
        MessageDlg('错误的日期格式,正确的日期格式应为”20090228“！', mtInformation, [mbOK], 0);
        Abort;
      end;
    end;
    // 根据提示参数“日期”“数”等判断数据是否输入正确
    if R_proc[i].s_para_lx = 'N' then
    begin
      // 判断是否数字
      // if not(TryStrToInt(R_proc[i - 1].s_para_value, tmpi) or TryStrToFloat(R_proc[i - 1].s_para_value, tmpf)) then
      if not TRegex.IsMatch(R_proc[i].s_para_value, '^[1-9]\d*\.\d+$|^0\.\d+$|^[1-9]\d*$|^0$') then
      begin
        arParaCtrl[i].edtCtrl.SetFocus;
        MessageDlg('应该输入数字！', mtInformation, [mbOK], 0);
        Abort;
      end;
    end;
  end;
  para_inputOK := True;
  Close;
end;

procedure TFrmModPara.btnExitClick(Sender: TObject);
begin
  para_inputOK := False;
  Close;
end;

procedure TFrmModPara.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdQrySrcTab.Close;
  Action := caFree;
end;

procedure TFrmModPara.FormCreate(Sender: TObject);

var
  i: integer;
begin
  para_inputOK := False;
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

    arParaCtrl[i].pnlCtrl.height := 66;
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
      arParaCtrl[i].lstCtrl.ShowHint := True;
      arParaCtrl[i].lstCtrl.Hint := 'Backspace键清空';
      arParaCtrl[i].lstCtrl.Properties.ClearKey := 8;
      arParaCtrl[i].lstCtrl.EditValue := R_proc[i].s_para_value;
    end;
  end;
  // arParaCtrl[0].edtCtrl.SetFocus;
  // 获取数据表表名作为参数
  fdQrySrcTab.Connection := F_DT.FDconSYS;
  fdQrySrcTab.Open();
  FrmModPara.height := 66 * (i_cnt1 + 1) + 60;
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
