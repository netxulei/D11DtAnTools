unit U_Export;

interface

uses U_DT, U_Common,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit, DB, ADODB,
  StdCtrls, Buttons, cxInplaceContainer, cxDBTL, cxControls, cxTLData,
  ExtCtrls, Mask, IniFiles, Vcl.ExtDlgs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.StrUtils, Vcl.Grids, Vcl.DBGrids, cxLookAndFeels, cxLookAndFeelPainters,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TF_Export = class(TForm)
    OpenTextFileDialog1: TOpenTextFileDialog;
    pnlFileName: TPanel;
    lbledtFileName: TLabeledEdit;
    spbtnFileName: TSpeedButton;
    FDqryTree: TFDQuery;
    FDqryTmp: TFDQuery;
    fdmtblImp: TFDMemTable;
    ds1: TDataSource;
    cxDBTreeLst1: TcxDBTreeList;
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn4: TcxDBTreeListColumn;
    rg1: TRadioGroup;
    pnl2: TPanel;
    bitbtnDisp: TBitBtn;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbtnFileNameClick(Sender: TObject);
    procedure bitbtnDispClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Export: TF_Export;

implementation

{$R *.dfm}

procedure TF_Export.bitbtnDispClick(Sender: TObject);
var
  s_filename, s_Jclj_Ver: string;
begin
  s_filename := Trim(StringReplace(lbledtFileName.Text, '"', '', [rfReplaceAll]));
  s_Jclj_Ver := ExtractFileName(s_filename);
  if Length(s_filename) = 0 then
  begin
    MessageDlg('????????????????????', mtInformation, [mbOK], 0);
    exit;
  end;

  if IfIncludeKG(s_filename) then
  begin
    MessageDlg('????????????????????????????????????????????????????????????????????????????????', mtInformation, [mbOK], 0);
    exit;
  end;
  if not FileExists(s_filename) then
  begin
    MessageDlg('????????????', mtInformation, [mbOK], 0);
    exit;
  end;

  if not cxDBTreeLst1.Visible then
  begin
    fdmtblImp.LoadFromFile(s_filename);;
    fdmtblImp.Open;
    cxDBTreeLst1.DataController.KeyField := 't_id';
    cxDBTreeLst1.DataController.ParentField := 't_parent_id';
    // cxDBTreeLst1.Columns[0].DataBinding.fieldname:=
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn1.DataBinding.FieldName := 't_name';
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn2.DataBinding.FieldName := 't_id';
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn3.DataBinding.FieldName := 't_parent';
    cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn4.DataBinding.FieldName := 't_sort';
    cxDBTreeLst1.Visible := True;
    bitbtnDisp.Caption := '????????';
//    F_import.Height := pnlFileName.Height + pnl2.Height + cxDBTreeLst1.Height;
  end
  else
  begin
    cxDBTreeLst1.Visible := False;
    fdmtblImp.Close;
    bitbtnDisp.Caption := '????????';
//    F_import.Height := pnlFileName.Height + pnl2.Height;
  end;

end;

procedure TF_Export.btn1Click(Sender: TObject);
var
  s_filepath, s_filename, s_filename_set, s_Jclj_Ver: string;
  i, i_id_max, i_sort_max: Integer;
  s_sort_max: string;
  MyIniFile: TIniFile;
begin
  s_filename := Trim(StringReplace(lbledtFileName.Text, '"', '', [rfReplaceAll]));
  s_Jclj_Ver := ExtractFileName(s_filename);
  if Length(s_filename) = 0 then
  begin
    MessageDlg('????????????????????????', mtInformation, [mbOK], 0);
    exit;
  end;

  if IfIncludeKG(s_filename) then
  begin
    MessageDlg('????????????????????????????????????????????????????????????????????????????????', mtInformation, [mbOK], 0);
    exit;
  end;
  if not FileExists(s_filename) then
  begin
    MessageDlg('????????????', mtInformation, [mbOK], 0);
    exit;
  end;

  // --????????????--------------
  fdmtblImp.Close;
  fdmtblImp.LoadFromFile(s_filename);;
  fdmtblImp.Open;
  fdmtblImp.DisableControls;

  // ----------------------------

  FDqryTree.Close;
  FDqryTree.Connection := F_DT.FDConSYS;
  FDqryTree.UpdateOptions.AutoCommitUpdates := True;
  FDqryTree.CachedUpdates := True;
  FDqryTree.SQL.Clear;
  FDqryTree.SQL.Add('SELECT * FROM "X_menus" order by t_sort');
  FDqryTree.Prepared;
  FDqryTree.Open;
  FDqryTree.FetchAll;

  try
    F_DT.FDConSYS.StartTransaction;
    if rg1.ItemIndex = 1 then // ????????
    begin
      if Application.MessageBox('??????????????????????????????????????????', '????', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
      begin
        F_DT.FDConSYS.Rollback;
        FDqryTree.Close;
        exit;
      end;

      // ------????????----------
      FDqryTmp.Close;
      FDqryTmp.Connection := F_DT.FDConSYS;
      FDqryTmp.SQL.Clear;
      FDqryTmp.SQL.Add('TRUNCATE TABLE "X_menus"');
      FDqryTmp.Prepared;
      FDqryTmp.ExecSQL;
      FDqryTmp.Close;
      // ---------------------------
      // // --????????????--------------
      // fdmtblImp.LoadFromFile(s_filename);;
      // fdmtblImp.Open;
      // fdmtblImp.First;
      // // ----------------------------
      fdmtblImp.First;
      while not fdmtblImp.Eof do
      begin
        FDqryTree.Append;
        for i := 0 to fdmtblImp.FieldCount - 1 do
          FDqryTree.Fields[i].Value := fdmtblImp.Fields[i].Value;
        fdmtblImp.Next;
      end;
      FDqryTree.ApplyUpdates;

    end;
    if rg1.ItemIndex = 0 then // ????????
    begin
      if MessageDlg('????????????????????????????????????????????????????????????????????????????????????''', mtWarning, mbOKCancel, 0) = mrCancel then
      begin
        F_DT.FDConSYS.Rollback;
        exit;
      end;
      // ????????????????????t_id??t_sort
      FDqryTmp.Close;
      FDqryTmp.Connection := F_DT.FDConSYS;
      FDqryTmp.SQL.Clear;
      FDqryTmp.SQL.Add('SELECT max(t_id) as i_max FROM "X_menus"');
      FDqryTmp.Prepared;
      FDqryTmp.Open;
      FDqryTmp.First;
      if not FDqryTmp.Eof then
        i_id_max := FDqryTmp.FieldByName('i_max').AsInteger
      else
        i_id_max := 0;

      FDqryTmp.Close;
      FDqryTmp.SQL.Clear;
      FDqryTmp.SQL.Add('SELECT max(cast(t_sort as int)) as i_SortMax FROM X_menus where len(t_sort)=2');
      FDqryTmp.Prepared;
      FDqryTmp.Open;
      FDqryTmp.First;
      if not FDqryTmp.Eof then
        i_sort_max := FDqryTmp.FieldByName('i_SortMax').AsInteger
      else
        i_sort_max := 0;
      FDqryTmp.Close;

      // ---????????????t_sort--------
      // ????????????sort
      var
        prior2_sort, next2_sort, cur_sort: string;
      prior2_sort := '';
      prior2_sort := '';
      cur_sort := '';
      fdmtblImp.First;
      while not fdmtblImp.Eof do
      begin
        cur_sort := fdmtblImp.FieldValues['t_sort'];
        next2_sort := leftstr(cur_sort, 2);
        if prior2_sort <> next2_sort then
        begin
          i := i + 1;
          i_sort_max := i_sort_max + 1;
          s_sort_max := Format('%.2d', [i_sort_max]);
        end;
        fdmtblImp.Edit;
        fdmtblImp.FieldValues['t_sort'] := s_sort_max + copy(cur_sort, 3, Length(cur_sort) - 2);
        fdmtblImp.FieldValues['t_id'] := fdmtblImp.FieldValues['t_id'] + i_id_max;
        if fdmtblImp.FieldValues['t_parent_id'] <> 0 then
          fdmtblImp.FieldValues['t_parent_id'] := fdmtblImp.FieldValues['t_parent_id'] + i_id_max;
        prior2_sort := next2_sort;
        fdmtblImp.Next;
      end;
//         cxDBTreeLst1.Refresh;
      fdmtblImp.First;
      while not fdmtblImp.Eof do
      begin
        FDqryTree.Append;
        for i := 0 to fdmtblImp.FieldCount - 1 do
          FDqryTree.Fields[i].Value := fdmtblImp.Fields[i].Value;
        fdmtblImp.Next;
      end;
      FDqryTree.ApplyUpdates;

      // while not ADOqr2.Eof do
      // begin
      // ADOqr1.Append;
      // ADOqr1.FieldValues['t_id'] := ADOqr2.FieldValues['t_id'] + ii_max + 1;
      // ADOqr1.FieldValues['t_parent_id'] := ADOqr2.FieldValues['t_parent_id'] + ii_max + 1;
      // ADOqr1.FieldValues['t_order'] := ADOqr2.FieldValues['t_parent_id'] + ii_max + 1;
      // for i := 2 to ADOqr2.FieldCount - 2 do
      // ADOqr1.Fields[i].Value := ADOqr2.Fields[i].Value;
      // ADOqr2.Next;
      // ADOqr1.UpdateBatch(arAll);
      // end;
    end;
    F_DT.FDConSYS.Commit;
    // ??????????????????
    s_filename_set := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename_set);
    MyIniFile.WriteString('Base', 'Jclj_Ver', Trim(s_Jclj_Ver));
    t_Jclj_Ver := s_Jclj_Ver;
    // MyIniFile.WriteString('other','AreaCode',Trim(cxtxtdt2.Text));
    MyIniFile.Free;
    fdmtblImp.Close;
    MessageDlg('????????????????!', mtInformation, [mbOK], 0);
    Close;
  except
    F_DT.FDConSYS.Rollback;
    raise exception.Create('??????????????????????????????????!');
  end;
end;

procedure TF_Export.FormCreate(Sender: TObject);
begin
  lbledtFileName.Text := DateToStr(Now) + '.Mod';
end;

procedure TF_Export.spbtnFileNameClick(Sender: TObject);
begin
  if OpenTextFileDialog1.Execute then
  begin
    lbledtFileName.Text := OpenTextFileDialog1.FileName;
    // showmessage(OpenTextFileDialog1.FileName);
  end;
end;

procedure TF_Export.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TF_Export.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDqryTree.Close;
  FDqryTmp.Close;
  fdmtblImp.Close;
end;

end.
