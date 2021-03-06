unit uModMaintain;

interface

uses
  U_DT, U_Common, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, cxInplaceContainer, cxDBTL, cxTLData, cxContainer,
  cxEdit, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, cxCheckBox, cxDBEdit, cxMemo,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxNavigator, cxDBNavigator, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.ImageList,
  Vcl.ImgList, Vcl.DBCtrls, cxSplitter, cxClasses, cxImage, cxImageComboBox,
  FireDAC.Phys.SQLiteVDataSet, Vcl.Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableDataEh, MemTableEh, Vcl.ComCtrls, StrUtils, dxdbtrel,
  cxDBExtLookupComboBox, cxFilter, cxData, cxDataStorage, dxDateRanges, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxGridDBTableView, Vcl.Grids, Vcl.DBGrids, cxButtons,
  u_import, SynEdit, SynDBEdit, SynEditHighlighter, SynHighlighterSQL;

type
  TMyNavgator = class(TDBNavigator);

  TFModMaintain = class(TForm)
    cxdbtrlst1: TcxDBTreeList;
    pnl1: TPanel;
    pnl6: TPanel;
    bitbtnUndoAll: TBitBtn;
    bitbtnSave: TBitBtn;
    bitbtnUndoOnce: TBitBtn;
    bitbtnExit: TBitBtn;
    bitbtnAddBrother: TBitBtn;
    bitbtnAddChild: TBitBtn;
    ds1: TDataSource;
    ds2: TDataSource;
    fdQryTitle: TFDQuery;
    fdQrySameLev: TFDQuery;
    cxspltr1: TcxSplitter;
    pnl3: TPanel;
    lbl6: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cxdbtxtdt2: TcxDBTextEdit;
    cxdbchckbx4: TcxDBCheckBox;
    cxdbchckbx3: TcxDBCheckBox;
    cxdbtxtdt4: TcxDBTextEdit;
    cxdbm1: TcxDBMemo;
    pnl4: TPanel;
    bitbtn3: TBitBtn;
    bitbtnTypeDown: TBitBtn;
    btnTest: TButton;
    fdQryTree: TFDQuery;
    fdQryTreet_id: TIntegerField;
    fdQryTreet_parent_id: TIntegerField;
    fdQryTreet_name: TStringField;
    fdQryTreet_memo: TStringField;
    fdQryTreet_para: TStringField;
    fdQryTreet_proc: TMemoField;
    fdQryTreet_right: TStringField;
    fdQryTreet_auto: TStringField;
    fdQryTreet_hide: TStringField;
    fdQryTreet_type: TStringField;
    cxdbtrlst1t_name: TcxDBTreeListColumn;
    fdQryTreemodiState2: TStringField;
    cxdbtrlst1modiState: TcxDBTreeListColumn;
    FDLocalSQL1: TFDLocalSQL;
    pm1: TPopupMenu;
    MnExpand: TMenuItem;
    MnCollapse: TMenuItem;
    fdQryMaxID: TFDQuery;
    fdQryMaxSort: TFDQuery;
    bitbtnDelete: TBitBtn;
    fdQryTreet_sort: TStringField;
    cxdbtrlst1t_sort: TcxDBTreeListColumn;
    StatusBar1: TStatusBar;
    cxdbtrlst1t_id: TcxDBTreeListColumn;
    cxdbtrlst1t_parent_id: TcxDBTreeListColumn;
    fdQryTreeisClass: TStringField;
    cxdbchkbxIsClass: TcxDBCheckBox;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    fdQryMov: TFDQuery;
    fdQryMaxLen: TFDQuery;
    cxGrdVwrpstry1: TcxGridViewRepository;
    cxgrdbtblvwGrdVwrpstry1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvwGrdVwrpstry1DBTableView1t_id: TcxGridDBColumn;
    cxgrdbtblvwGrdVwrpstry1DBTableView1t_parent_id: TcxGridDBColumn;
    cxgrdbtblvwGrdVwrpstry1DBTableView1t_sort: TcxGridDBColumn;
    cxgrdbtblvwGrdVwrpstry1DBTableView1t_name: TcxGridDBColumn;
    cxDBLkUpComClass: TcxDBLookupComboBox;
    fdQryCur: TFDQuery;
    fdQryNext: TFDQuery;
    bitbtnImport: TBitBtn;
    cxbtnExp: TcxButton;
    pmExport: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    dlgSaveExport: TSaveDialog;
    fdQryExport: TFDQuery;
    cxdbtxtdtDataVer: TcxDBTextEdit;
    lblDataVer: TLabel;
    cxdbtrlst1isClass: TcxDBTreeListColumn;
    cxstylHotTrace: TcxStyle;
    DBSynEditCode: TDBSynEdit;
    SynSQLSyn1: TSynSQLSyn;
    SynEditCode: TSynEdit;
    FDMtblTree: TFDMemTable;
    dbmmot_memo: TDBMemo;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxdbtrlst1GetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
    procedure fdQryTreeCalcFields(DataSet: TDataSet);
    procedure MnExpandClick(Sender: TObject);
    procedure MnCollapseClick(Sender: TObject);
    procedure bitbtnAddBrotherClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure bitbtnAddChildClick(Sender: TObject);
    procedure bitbtnDeleteClick(Sender: TObject);
    procedure OnDataChange(Sender: TObject; Field: TField);
    procedure bitbtnSaveClick(Sender: TObject);
    procedure fdQryTreeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure bitbtnExitClick(Sender: TObject);
    procedure bitbtnUndoOnceClick(Sender: TObject);
    procedure bitbtnUndoAllClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxdbchkbxIsClassExit(Sender: TObject);
    procedure cxDBLkUpComClassEnter(Sender: TObject);
    procedure cxdbchkbxIsClassEditing(Sender: TObject; var CanEdit: Boolean);
    procedure fdQryTreet_parent_idChange(Sender: TField);
    procedure cxDBLkUpComClassClick(Sender: TObject);
    procedure bitbtn3Click(Sender: TObject);
    procedure bitbtnTypeDownClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure bitbtnImportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxdbtrlst1Click(Sender: TObject);
    procedure SynEditCodeExit(Sender: TObject);
    procedure cxdbtrlst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnl3Resize(Sender: TObject);
    procedure cxdbtrlst1KeyPress(Sender: TObject; var Key: Char);
    procedure cxdbchckbx3Editing(Sender: TObject; var CanEdit: Boolean);
    procedure cxdbtxtdt2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxdbtxtdt4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbmmot_memoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private { Private declarations }
  var
    parentIdBefore, parentIdAfter: integer;
    isBatch: Boolean; // ??????????????????????????????????????????????????????????????
    LastMax_id: integer; // ???????? ??????????????????????t_id,??????????
    procedure ToggleButtons(Enable: Boolean);
    procedure AddNode(IsChild: Boolean);
    procedure MoveItem(UpDown: Char);
  public { Public declarations }
  end;

var
  FModMaintain: TFModMaintain;

implementation

{$R *.dfm}

procedure TFModMaintain.bitbtnAddChildClick(Sender: TObject);
begin
  AddNode(True);
end;

procedure TFModMaintain.bitbtnSaveClick(Sender: TObject);
var
  NumErrors: integer;
  NumChanges: integer;
begin
  // Ensure that all edits have been posted
  if fdQryTree.State in dsEditModes then
    fdQryTree.Post;
  F_DT.FDConSYS.StartTransaction;
  try
{$IF CompilerVersion >= 29.0}
    NumChanges := fdQryTree.ChangeCount;
{$ELSE}
    NumChanges := -1;
{$ENDIF}
    NumErrors := fdQryTree.ApplyUpdates(-1);
    F_DT.FDConSYS.Commit;
    if NumErrors > 0 then
      StatusBar1.SimpleText := '??????????????????'
    else
    begin
      StatusBar1.SimpleText := NumChanges.ToString + ' ??????????';
      isBatch := False;
    end;

  except
    F_DT.FDConSYS.Rollback;
  end;
  OnDataChange(nil, nil);

end;

procedure TFModMaintain.bitbtnUndoAllClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  fdQryTree.CancelUpdates;
{$ENDIF}
  isBatch := False;
  OnDataChange(nil, nil);
  fdQryTitle.Refresh;

end;

procedure TFModMaintain.bitbtnUndoOnceClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  fdQryTree.UndoLastChange(True);
{$ENDIF}
  OnDataChange(nil, nil);
  fdQryTitle.Refresh;

end;

procedure TFModMaintain.bitbtnDeleteClick(Sender: TObject);
begin
  if cxdbtrlst1.FocusedNode.HasChildren then
    MessageDlg('????????????????????????????', mtInformation, [mbOK], 0)
  else
  begin
    if MessageBox(Handle, '??????????????????????', '????????', MB_YESNO or MB_ICONQUESTION) = ID_YES then
      fdQryTree.Delete;
    fdQryTitle.Refresh;

  end;
end;

procedure TFModMaintain.bitbtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFModMaintain.bitbtnImportClick(Sender: TObject);
begin
  if fdQryTree.UpdatesPending then
  begin
    MessageDlg('??????????????????????????????????????????????????????', mtWarning, [mbOK], 0);
    exit;
  end;
  Application.CreateForm(TF_import, F_import);
  F_import.ShowModal;
  fdQryTree.Close;
  fdQryTree.Open;
  fdQryTitle.Refresh;

end;

procedure TFModMaintain.bitbtn3Click(Sender: TObject);

begin
  MoveItem('1');
end;

procedure TFModMaintain.bitbtnTypeDownClick(Sender: TObject);
begin
  MoveItem('0');
end;

procedure TFModMaintain.bitbtnAddBrotherClick(Sender: TObject);
begin
  AddNode(False);
  fdQryTitle.Refresh;

end;

procedure TFModMaintain.btnTestClick(Sender: TObject);
begin
  ModlCodeValid(fdQryTree, False, False);
end;

procedure TFModMaintain.cxdbchckbx3Editing(Sender: TObject; var CanEdit: Boolean);
var
  cur_id, cur_par_id, cur_level, cur_count, max_id, i, pare_id_tmp: integer;
  s_cur_sort, s_max_sort, s_sort_num: string;
begin
  // ??????????????????????
  if fdQryTree.Eof then
  begin
    abort
  end
  else
  begin
    cur_id := fdQryTree['t_id'];
    cur_par_id := fdQryTree['t_parent_id'];
    cur_level := cxdbtrlst1.FocusedNode.Level;
    cur_count := cxdbtrlst1.FocusedNode.Level; // ????????????
    s_cur_sort := fdQryTree['t_sort'];
  end;

  if cxdbchckbx3.Checked then
  begin // ??????????????????????????????????????????????????  ??????????????
    // ??????????????????????????????????
    if cxdbtrlst1.FocusedNode.HasChildren then // ????????????????
    begin
      FDMtblTree.Filter := 't_parent_id=' + inttostr(cur_id) + 'and t_hide=''1''';
      FDMtblTree.filtered := True;
      if FDMtblTree.RecordCount > 0 then
      begin
        MessageDlg('??????????????????????????????????????????????????', mtWarning, [mbOK], 0);
        FDMtblTree.Filter := '';
        FDMtblTree.filtered := False;
        abort
      end;
      FDMtblTree.Filter := '';
      FDMtblTree.filtered := False;
    end;
  end
  else
  begin // ??????????????????????????   ??????????????
    // ????????????????????????????????
    pare_id_tmp := cur_par_id;
    for i := 1 to cur_level do
    begin
      if FDMtblTree.Locate('t_id', pare_id_tmp, []) then
      begin
        if FDMtblTree['t_hide'] <> '1' then
        begin
          FDMtblTree.Edit;
          FDMtblTree['t_hide'] := '1';
        end;
      end;
      pare_id_tmp := FDMtblTree['t_parent_id'];
    end;
  end;
  if fdQryTree.State in [dsEdit, dsInsert] then
    fdQryTree.Post;
  if FDMtblTree.State in [dsEdit, dsInsert] then
    FDMtblTree.Post;
end;

procedure TFModMaintain.cxdbchkbxIsClassEditing(Sender: TObject; var CanEdit: Boolean);
begin

  if cxdbtrlst1.FocusedNode.HasChildren and cxdbchkbxIsClass.Checked then
  begin
    MessageDlg('????????????????????????????????', mtInformation, [mbOK], 0);
    abort;
  end;

end;

procedure TFModMaintain.cxdbchkbxIsClassExit(Sender: TObject);
begin

  fdQryTitle.Refresh;
end;

procedure TFModMaintain.cxDBLkUpComClassClick(Sender: TObject);
var
  Movedsort, NewParentsort, sqltext, s_max_sort: string; // ????????????????????????????????
  sortMovedLen, sortNewParentLen, level_old, level_new, i_max_sort, i: integer;
  bk: TbookMark;
begin
  {
    -- parentIdBefore ??????parentId??OnbeforeEdit????
    -- parentIdAfter  ??????parentId ??????????????t_ID
    -- Movedsort????????t_sort
    -- NewParentsort??????????t_sort
  }
  fdQryTree.DisableControls;
  // cxdbtrlst1.DataController.DataSource := nil;
  // ??????parentId ??????????????t_I
  // ds1.Enabled:=False;
  parentIdAfter := cxDBLkUpComClass.EditValue; // ???????????????????? ??fdQryTree['t_parent_id']????????????;
  // ShowMessage(inttostr(parentIdBefore) + '|' + inttostr(parentIdAfter));
  if parentIdBefore = parentIdAfter then // ????????????????????
  begin
    // Abort;
    fdQryTree.Cancel;
    // fdQryTree.UndoLastChange(True);
    fdQryTree.EnableControls;
    exit;
  end;
  // ---Movedsort????????t_sort
  Movedsort := fdQryTree['t_sort'];
  if fdQryTitle.Locate('t_id', parentIdAfter, []) then
  begin
    // --NewParentsort??????????t_sort
    NewParentsort := fdQryTitle['t_sort']
  end
  else
  begin
    fdQryTree.Cancel;
    // fdQryTree.UndoLastChange(True);
    fdQryTree.EnableControls;
    MessageDlg('??????????????', mtWarning, [mbOK], 0); // ??????????????
    abort;
    // Exit;
  end;
  // ShowMessage(Movedsort + '|' + NewParentsort);

  // ????
  sortMovedLen := Length(Movedsort); // ????????????T_sort,????????????????sortMovedLen??????????????????t_sort
  sortNewParentLen := Length(NewParentsort); // ??????????????

  bk := fdQryTree.GetBookmark;

  // ??????????????
  if LeftStr(NewParentsort, sortMovedLen) = Movedsort then
  begin
    fdQryTree.Cancel;
    // fdQryTree.UndoLastChange(True);
    fdQryTree.EnableControls;
    MessageDlg('??????????????????????????????', mtWarning, [mbOK], 0); // ??????????????
    exit;
  end;

  // ????t_sort??????????????????????
  sqltext := 'select max(length(t_sort)) max_len from fdQryTree where t_sort like ' + '''' + Movedsort + '%'' order by t_sort';
  fdQryMaxLen.Close;
  fdQryMaxLen.Prepared := False;
  fdQryMaxLen.SQL.Clear;
  fdQryMaxLen.SQL.ADD(sqltext);
  fdQryMaxLen.Prepared := True;
  fdQryMaxLen.Open;
  fdQryMaxLen.First;
  level_old := fdQryMaxLen['max_len'] div 2 - sortMovedLen div 2 + 1; // ????????????????
  level_new := sortNewParentLen div 2;
  if level_old + level_new > 4 then
  begin
{$IF CompilerVersion >= 29.0}
    // fdQryTree.Cancel;
    fdQryTree.UndoLastChange(True); // ????????????????post??cancel??????
{$ENDIF}
    // OnDataChange(nil, nil);
    // fdQryMov.Close;
    fdQryMaxLen.Close;
    fdQryTree.EnableControls;
    MessageDlg('????????????????????????4????????????????', mtWarning, [mbOK], 0);
    exit;
  end;
  // ---------------------
  // ??????????????t_sort
  fdQryMaxSort.Close;
  fdQryMaxSort.Prepared := False;
  fdQryMaxSort.Connection := F_DT.FDConSQLite;
  fdQryMaxSort.SQL.Clear;
  fdQryMaxSort.SQL.ADD('SELECT max(cast(t_sort as int)) as i_SortMax FROM fdQryTree where t_sort like ''' + NewParentsort + '%'' and length(t_sort)=' +
    inttostr(sortNewParentLen + 2));
  // fdQryMaxSort.SQL.Add('SELECT count(t_sort) as i_SortMax FROM fdQryTree where t_sort like '''
  // + sortNewParent+'%'' and length(t_sort)='+inttostr(sortNewParentLen+2));
  // ????????????????????????????????????enter????????????  ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
  // ????????????t_sort????????????????????????????????????????????????????????
  // fdQryMaxSort.SQL.Add('SELECT count(t_sort) as i_SortMax FROM fdQryTree where t_parent_id=' + IntToStr(parentIdNew));
  fdQryMaxSort.Prepared := True;
  fdQryMaxSort.Open;
  fdQryMaxSort.First;
  // ????????????????????????????????????
  var
    vart: TVarType;
  vart := VarType(fdQryMaxSort['i_SortMax']);
  if (vart = varNull) or (vart = varstring) then
    i_max_sort := 0
  else
    i_max_sort := fdQryMaxSort.FieldByName('i_SortMax').Asinteger;
  fdQryMaxSort.Close;

  if i_max_sort = 0 then
    s_max_sort := NewParentsort + Format('%.2d', [(i_max_sort + 1)])
  else
    s_max_sort := Format('%.' + (inttostr(Length(NewParentsort) + 2)) + 'd', [(i_max_sort + 1)]);
  // ????????????????t_parent_id??t_sort
  fdQryTree.Edit;
  fdQryTree['t_parent_id'] := parentIdAfter;
  // fdQryTree.Post;

  // ShowMessage(cxDBLkUpComClass.EditValue);
  // cxDBLkUpComClass.EditValue := parentIdAfter;
  // ShowMessage(cxDBLkUpComClass.EditValue);
  // ---------------------
  // ---------
  // ??????????????  localSQL ??????????
  // update test1 set t_sort = '0103' | | substr(t_sort, 4 + 1, Length(t_sort) - 4)where t_sort like '0201%'
  // sqlText := 'update fdQryTree set t_sort = ''' + s_max_sort + '''||substr(t_sort,' + inttostr(sortMovedLen) +
  // '+1,length(t_sort)-' + inttostr(sortMovedLen) + ') where t_sort like ' + '''' + Movedsort + '%''';
  // sqlText := 'update fdQryTree set t_sort = ''' + s_max_sort + '''||substr(t_sort,' + inttostr(sortMovedLen) +
  // '+1,length(t_sort)-' + inttostr(sortMovedLen) + ') where t_sort like ' + '''' + Movedsort + '%''';
  // sqlText := 'update fdQryTree set t_sort = ''' + s_max_sort + '''' +' where t_sort = ' + '''' + sortMoved + '''';

  sqltext := 'select t_id,t_parent_id,t_name,t_sort from  fdQryTree where t_sort like ' + '''' + Movedsort + '%''';
  fdQryMov.Close;
  fdQryMov.Prepared := False;
  fdQryMov.SQL.Clear;
  fdQryMov.SQL.ADD(sqltext);
  fdQryMov.Prepared := True;
  fdQryMov.Open;
  var
    tmpId: integer;
  var
    tmpSort: string;
  fdQryMov.First;
  while not fdQryMov.Eof do
  begin
    tmpId := fdQryMov['t_id'];
    if fdQryTree.Locate('t_id', tmpId, []) then
    begin
      tmpSort := fdQryTree['t_sort'];
      fdQryTree.Edit;
      fdQryTree['t_sort'] := s_max_sort + copy(tmpSort, sortMovedLen + 1, Length(tmpSort) - sortMovedLen);
    end;
    fdQryMov.Next;
  end;
  fdQryMov.Close;
  // if fdQryTree.State in [dsInsert, dsEdit] then
  // fdQryTree.Post;
  isBatch := True; // ???????????? ????????????????????false
  fdQryTitle.Refresh;
  fdQryTree.EnableControls;
  cxdbtrlst1.FullRefresh;
  fdQryTree.GotoBookmark(bk);
  i := cxdbtrlst1.FocusedNode.Level;
  var
    curNode: TcxTreeListNode;
  curNode := cxdbtrlst1.FocusedNode; // ????????????????????????????
  for i := 0 to i - 1 do
  begin
    curNode.Parent.Expand(False); // True ?????????????????? ??False????????
    curNode := curNode.Parent;
  end;
  cxdbtrlst1.SetFocus;
  // Expand(True);
  // ---------
end;

procedure TFModMaintain.cxDBLkUpComClassEnter(Sender: TObject);
var
  sqltext: string;
begin
  parentIdBefore := fdQryTree['t_parent_id'];
end;

procedure TFModMaintain.cxdbtrlst1Click(Sender: TObject);
begin
  // ShowMessage('onchanged');
  SynEditCode.Text := VarToStrDef(fdQryTree['t_proc'], '');
  SynEditCode.modified := False;
end;

procedure TFModMaintain.cxdbtrlst1GetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
begin
  if AIndexType = tlitStateIndex then
    exit;
  if VarToStrDef(ANode.Values[5], '0') = '0' then
    AIndex := 16
  else
  begin
    if ANode.Expanded then
      AIndex := 15
    else
      AIndex := 14;
  end;

end;

procedure TFModMaintain.cxdbtrlst1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #8 then // Ctrl+H
  begin
    cxdbtrlst1t_sort.Visible := Not cxdbtrlst1t_sort.Visible;
    cxdbtrlst1t_id.Visible := Not cxdbtrlst1t_id.Visible;
    cxdbtrlst1t_parent_id.Visible := Not cxdbtrlst1t_parent_id.Visible;
  end;
end;

procedure TFModMaintain.cxdbtrlst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);

begin
  if Key in [VK_DOWN, VK_UP, VK_NEXT, VK_PRIOR] then
  begin
    cxdbtrlst1Click(Sender);
  end;
end;

procedure TFModMaintain.cxdbtxtdt2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if Key = VK_RETURN then
    dbmmot_memo.SetFocus
  else
  begin
    if Key in [VK_UP, VK_PRIOR] then
    begin
      fdQryTree.Prior;
      cxdbtrlst1Click(Sender);
    end;

    if Key in [VK_DOWN, VK_NEXT] then
    begin
      fdQryTree.Next;
      cxdbtrlst1Click(Sender);
    end;
  end;
end;

procedure TFModMaintain.cxdbtxtdt4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_UP, VK_PRIOR] then
  begin
    fdQryTree.Prior;
    cxdbtrlst1Click(Sender);
  end;

  if Key in [VK_DOWN, VK_NEXT] then
  begin
    fdQryTree.Next;
    cxdbtrlst1Click(Sender);
  end;

  if Key = VK_RETURN then
    DBSynEditCode.SetFocus;
end;

procedure TFModMaintain.dbmmot_memoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_UP, VK_PRIOR] then
  begin
    fdQryTree.Prior;
    cxdbtrlst1Click(Sender);
  end;

  if Key in [VK_DOWN, VK_NEXT] then
  begin
    fdQryTree.Next;
    cxdbtrlst1Click(Sender);
  end;
end;

procedure TFModMaintain.fdQryTreeCalcFields(DataSet: TDataSet);
begin
  case DataSet.UpdateStatus of
    usUnmodified:
      DataSet.Fields[0].AsString := '0';
    usModified:
      DataSet.Fields[0].AsString := '1';
    usInserted:
      DataSet.Fields[0].AsString := '2';
    usDeleted:
      DataSet.Fields[0].AsString := '3';
    // usUnmodified:
    // DataSet.Fields[0].AsString := '????';
    // usModified:
    // DataSet.Fields[0].AsString := '????';
    // usInserted:
    // DataSet.Fields[0].AsString := '????';
    // usDeleted:
    // DataSet.Fields[0].AsString := '????';
    // usUnmodified:
    // DataSet.Fields[0].AsInteger := 0;
    // usModified:
    // DataSet.Fields[0].AsInteger := 1;
    // usInserted:
    // DataSet.Fields[0].AsInteger := 2;
    // usDeleted:
    // DataSet.Fields[0].AsInteger := 3;
  end;

  // StatusBar1.SimpleText := DataSet.Fields[0].AsString+'????????'+datetimetostr(now());
end;

procedure TFModMaintain.fdQryTreet_parent_idChange(Sender: TField);
var
  Movedsort, NewParentsort, sqltext, s_max_sort: string; // ????????????????????????????????
  sortMovedLen, sortNewParentLen, level_old, level_new, i_max_sort: integer;
begin
  // {
  // -- parentIdBefore ??????parentId??OnbeforeEdit????
  // -- parentIdAfter  ??????parentId ??????????????t_ID
  // -- Movedsort????????t_sort
  // -- NewParentsort??????????t_sort
  // }
  // // fdQryTree.DisableControls;
  // // ShowMessage('afterPost');
  //
  // // ??????parentId ??????????????t_ID
  // parentIdAfter := fdQryTree['t_parent_id'];
  //
  // ShowMessage(inttostr(parentIdBefore) + '|' + inttostr(parentIdAfter));
  //
  // if parentIdBefore = parentIdAfter then // ????????????????????
  // begin
  // fdQryTree.Cancel;
  // // fdQryTree.UndoLastChange(True);
  // fdQryTree.EnableControls;
  // Exit;
  // end;
  // // ---Movedsort????????t_sort
  // Movedsort := fdQryTree['t_sort'];
  // if fdQryTitle.locate('t_id', parentIdAfter, []) then
  // begin
  // // --NewParentsort??????????t_sort
  // NewParentsort := fdQryTitle['t_sort']
  // end
  // else
  // begin
  // fdQryTree.Cancel;
  // // fdQryTree.UndoLastChange(True);
  // fdQryTree.EnableControls;
  // MessageDlg('??????????????', mtWarning, [mbOK], 0); // ??????????????
  // Exit;
  // end;
  //
  // // ????
  // sortMovedLen := Length(Movedsort); // ????????????T_sort,????????????????sortMovedLen??????????????????t_sort
  // sortNewParentLen := Length(NewParentsort); // ??????????????
  //
  // // ??????????????
  // if LeftStr(NewParentsort, sortMovedLen) = Movedsort then
  // begin
  // fdQryTree.Cancel;
  // // fdQryTree.UndoLastChange(True);
  // fdQryTree.EnableControls;
  // MessageDlg('??????????????????????????????', mtWarning, [mbOK], 0); // ??????????????
  // Exit;
  // end;
  //
  // // ????t_sort??????????????????????
  // sqlText := 'select max(length(t_sort)) max_len from fdQryTree where t_sort like ' + '''' + Movedsort +
  // '%'' order by t_sort';
  // fdQryMaxLen.Close;
  // fdQryMaxLen.SQL.Clear;
  // fdQryMaxLen.SQL.Add(sqlText);
  // fdQryMaxLen.Prepared;
  // fdQryMaxLen.Open;
  // fdQryMaxLen.First;
  // level_old := fdQryMaxLen['max_len'] div 2 - sortMovedLen div 2 + 1; // ????????????????
  // level_new := sortNewParentLen div 2;
  // if level_old + level_new > 4 then
  // begin
  // {$IF CompilerVersion >= 29.0}
  // // fdQryTree.Cancel;
  // fdQryTree.UndoLastChange(True); // ????????????????post??cancel??????
  // {$ENDIF}
  // // OnDataChange(nil, nil);
  // // fdQryMov.Close;
  // fdQryMaxLen.Close;
  // fdQryTree.EnableControls;
  // MessageDlg('????????????????????????4????????????????', mtWarning, [mbOK], 0);
  // Exit;
  // end;
  //
  // // ---------------------
  // // ??????????????t_sort
  // fdQryMaxSort.Close;
  // fdQryMaxSort.Connection := F_DT.FDConSQLite;
  // fdQryMaxSort.SQL.Clear;
  // fdQryMaxSort.SQL.Add('SELECT max(cast(t_sort as int)) as i_SortMax FROM fdQryTree where t_sort like ''' +
  // NewParentsort + '%'' and length(t_sort)=' + inttostr(sortNewParentLen + 2));
  // // fdQryMaxSort.SQL.Add('SELECT count(t_sort) as i_SortMax FROM fdQryTree where t_sort like '''
  // // + sortNewParent+'%'' and length(t_sort)='+inttostr(sortNewParentLen+2));
  // // ????????????????????????????????????enter????????????  ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
  // // ????????????t_sort????????????????????????????????????????????????????????
  // // fdQryMaxSort.SQL.Add('SELECT count(t_sort) as i_SortMax FROM fdQryTree where t_parent_id=' + IntToStr(parentIdNew));
  // fdQryMaxSort.Open;
  // fdQryMaxSort.First;
  // // ????????????????????????????????????
  // var
  // vart: TVarType;
  // vart := VarType(fdQryMaxSort['i_SortMax']);
  // if (vart = varNull) or (vart = varstring) then
  // i_max_sort := 0
  // else
  // i_max_sort := fdQryMaxSort.FieldByName('i_SortMax').Asinteger;
  // fdQryMaxSort.Close;
  //
  // if i_max_sort = 0 then
  // s_max_sort := NewParentsort + Format('%.2d', [(i_max_sort + 1)])
  // else
  // s_max_sort := Format('%.' + (inttostr(Length(NewParentsort) + 2)) + 'd', [(i_max_sort + 1)]);
  //
  // ShowMessage(s_max_sort);
  // // ---------------------
  //
  // // ---------
  /// /  // ??????????????
  /// /  // update test1 set t_sort = '0103' | | substr(t_sort, 4 + 1, Length(t_sort) - 4)where t_sort like '0201%'
  /// /  // sqlText := 'update fdQryTree set t_sort = ''' + s_max_sort + '''||substr(t_sort,' + inttostr(sortMovedLen)
  /// /  // + '+1,length(t_sort)-' + inttostr(sortMovedLen) + ') where t_sort like ' + '''' + Movedsort + '%''';
  /// /  // // sqlText := 'update fdQryTree set t_sort = ''' + s_max_sort + '''' +' where t_sort = ' + '''' + sortMoved + '''';
  /// /  // fdQryMov.Close;
  /// /  // fdQryMov.SQL.Clear;
  /// /  // fdQryMov.SQL.Add(sqlText);
  /// /  // fdQryMov.ExecSQL;     //??????????????????????????
  /// /  // fdQryMov.Close;
  /// /
  /// /  // ??????????????????????
  /// /  fdQryTree.Filtered := False;
  /// /  fdQryTree.Filter := 't_sort like ''' + Movedsort + '%''';
  /// /  fdQryTree.Filtered := True;
  /// /  fdQryTree.First;
  /// /  while not fdQryTree.eof do
  /// /  begin
  /// /    fdQryTree.Edit;
  /// /    fdQryTree['t_sort'] := s_max_sort + copy(fdQryTree['t_sort'], sortMovedLen + 1,
  /// /      Length(fdQryTree['t_sort'] - fdQryTree['t_sort']));
  /// /    fdQryTree.Next;
  /// /  end;
  /// /
  /// /  fdQryTree.Filtered := False;
  /// /
  /// /
  /// /
  /// /  // + QuotedStr( Movedsort) + ' OR ' + 'State = ' + QuotedStr('CA');
  /// /
  /// /  // fdQryTree.Edit;
  /// /  // fdQryTree.Post;
  /// /  isBatch := True; // ???????????? ????????????????????false
  /// /  fdQryTitle.Refresh;
  /// /  fdQryTree.EnableControls;
  //
  // // ---------
  //
  // // fdQryTree.EnableControls;
  // // OnDataChange(nil, nil);
  // // ShowMessage(inttostr(parentIdBefore));
  // // ShowMessage(inttostr(parentIdAfter));

end;

procedure TFModMaintain.fdQryTreeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TFModMaintain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdQryTree.State in [dsEdit, dsInsert] then
    fdQryTree.Post;
  if fdQryTree.UpdatesPending then
  begin

    case MessageDlg('??????????????????????????????', mtInformation, mbYesNoCancel, 0) of
      mrCancel:
        begin
          abort;
        end;
      mrYes:
        begin
          bitbtnSaveClick(Sender);
        end;
      mrNo:
        begin

        end;
    end;
    fdQryTree.Close;
    fdQryTree.Free;
  end;
  Action := caFree;
end;

procedure TFModMaintain.FormCreate(Sender: TObject);
var
  sqltext: string;
begin
  DBSynEditCode.UseCodeFolding := True;
  SynEditCode.Lines.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'ModTemplate.txt');
  // LoadFromFile('ModTemplate.txt');
  isBatch := False;
  // sqltext := 'SELECT * FROM "X_menus" where t_hide =' + '''' + '1' + '''' + ' and (len(isnull(t_right,' + '''' + '''' + '))=0 or t_right=' + '''' + t_database_ver + '''' + ')' + ' and t_type =' + '''' + t_type + '''' + ' order by t_sort';
  sqltext := 'SELECT * FROM X_menus where t_type =' + '''' + t_type + '''' + ' order by t_sort';
  fdQryTree.Close;
  // fdQryTree=ADOQ2
  fdQryTree.DisableControls;
  fdQryTree.Connection := F_DT.FDConSYS;
  fdQryTree.SQL.Clear;
  fdQryTree.SQL.ADD(sqltext);
  fdQryTree.Prepared := True;
  fdQryTree.Open;
  fdQryTree.EnableControls;
  fdQryTree.UpdateOptions.AutoCommitUpdates := True;
  fdQryTree.CachedUpdates := True;

  FDMtblTree.CloneCursor(fdQryTree);

  F_DT.FDConSQLite.Connected := False;
  FDLocalSQL1.Connection := F_DT.FDConSQLite;
  F_DT.FDConSQLite.Connected := True;
  FDLocalSQL1.Active := True;
  fdQryTitle.Close;
  fdQryTitle.DisableControls;
  fdQryTitle.Connection := F_DT.FDConSQLite;
  fdQryTitle.SQL.Clear;
  // fdQryTitle.SQL.Add('SELECT t_id,t_parent_id,t_name,t_sort FROM  fdQryTree where t_parent_id=0 or isClass=' + '''' +
  // '1' + '''' + ' union SELECT 0,0,' + '''' + '*==============*' + '''' + ','''' ' + 'FROM fdQryTree order by t_sort');
  //
  fdQryTitle.SQL.ADD('SELECT t_id,t_parent_id,repeat('' '',length(t_sort)*2)||''????????''||t_name as t_name,t_sort FROM  fdQryTree where t_parent_id=0 or isClass=' + '''' + '1' + ''''
    + ' union SELECT 0,0,' + '''' + '????????????????????' + '''' + ','''' ' + 'FROM fdQryTree order by t_sort');
  fdQryTitle.Prepared := True;
  fdQryTitle.Open;
  fdQryTitle.EnableControls;
  // MainFrm.fdQryTree.CachedUpdates := True;
  // fdmtblTree.CloneCursor(MainFrm.fdQryTree, True, False);

end;

procedure TFModMaintain.FormShow(Sender: TObject);
begin
  // DBSynEditCode.RightEdge := DBSynEditCode.Width; // ????????????????????
  // SynEditCode.RightEdge := SynEditCode.Width; // ????????????????????
  // cxdbtxtdt3.Width:=pnl3.Width-cxdbtxtdt3.left-10;
  // cxdbtxtdt4.Width:=pnl3.Width-cxdbtxtdt4.left-10;
end;

procedure TFModMaintain.MoveItem(UpDown: Char);
var
  cur_sort, next_sort, sqltext: string;
  sortLen: integer;
  bk: TbookMark;
begin
  fdQryTree.DisableControls;
  bk := fdQryTree.Bookmark;
  // select t_id,t_parent_id,t_sort from fdqryTree where length(t_sort)=length('010202') and substr(t_sort,1,length(t_sort)-2)= substr('010202',1,length('010202')-2) order by t_sort
  cur_sort := fdQryTree['t_sort'];
  sqltext := 'select t_id,t_parent_id,t_sort from fdqryTree where length(t_sort)=length(''' + cur_sort + ''') and substr(t_sort,1,length(t_sort)-2)= substr(''' + cur_sort +
    ''',1,length(''' + cur_sort + ''')-2) order by t_sort';
  fdQrySameLev.Close;
  fdQrySameLev.Prepared := False;
  fdQrySameLev.SQL.Clear;
  fdQrySameLev.SQL.ADD(sqltext);
  fdQrySameLev.Prepared := True;
  fdQrySameLev.Open;
  cur_sort := fdQryTree['t_sort'];
  fdQrySameLev.Locate('t_sort', cur_sort, []);

  if UpDown = '1' then
  begin
    fdQrySameLev.Prior;
    if fdQrySameLev.Bof then
    begin
      fdQrySameLev.Close;
      fdQryTree.EnableControls;
      MessageDlg('????????????????????', mtWarning, [mbOK], 0);
      exit;
    end;
    next_sort := fdQrySameLev['t_sort'];
    fdQrySameLev.Close;
  end
  else
  begin
    fdQrySameLev.Next;
    if fdQrySameLev.Eof then
    begin
      fdQrySameLev.Close;
      fdQryTree.EnableControls;
      MessageDlg('??????????????????????', mtWarning, [mbOK], 0);
      exit;
    end;
    next_sort := fdQrySameLev['t_sort'];
    fdQrySameLev.Close;
  end;

  // ShowMessage(cur_sort + '|' + next_sort);

  // ????????????????????
  sqltext := 'select t_id,t_parent_id,t_name,t_sort from  fdQryTree where t_sort like ' + '''' + cur_sort + '%''';

  fdQryCur.Close;
  fdQryCur.Prepared := False;
  fdQryCur.SQL.Clear;
  fdQryCur.SQL.ADD(sqltext);
  fdQryCur.Prepared := True;
  fdQryCur.Open;

  sqltext := 'select t_id,t_parent_id,t_name,t_sort from  fdQryTree where t_sort like ' + '''' + next_sort + '%''';
  fdQryNext.Close;
  fdQryCur.Prepared := False;
  fdQryNext.SQL.Clear;
  fdQryNext.SQL.ADD(sqltext);
  fdQryNext.Prepared := True;
  fdQryNext.Open;
  // ????????????????????????

  var
    tmpId: integer;
  var
    tmpSort: string;
  sortLen := Length(next_sort);
  fdQryCur.First;
  while not fdQryCur.Eof do
  begin
    tmpId := fdQryCur['t_id'];
    if fdQryTree.Locate('t_id', tmpId, []) then
    begin
      tmpSort := fdQryTree['t_sort'];
      fdQryTree.Edit;
      fdQryTree['t_sort'] := next_sort + copy(tmpSort, sortLen + 1, Length(tmpSort) - sortLen);
    end;
    fdQryCur.Next;
  end;
  fdQryCur.Close;
  sortLen := Length(cur_sort);
  fdQryNext.First;
  while not fdQryNext.Eof do
  begin
    tmpId := fdQryNext['t_id'];
    if fdQryTree.Locate('t_id', tmpId, []) then
    begin
      tmpSort := fdQryTree['t_sort'];
      fdQryTree.Edit;
      fdQryTree['t_sort'] := cur_sort + copy(tmpSort, sortLen + 1, Length(tmpSort) - sortLen);
    end;
    fdQryNext.Next;
  end;
  fdQryNext.Close;
  isBatch := True; // ???????????? ????????????????????false
  fdQryTitle.Refresh;
  fdQryTree.EnableControls;
  fdQryTree.GotoBookmark(bk);
end;

procedure TFModMaintain.N2Click(Sender: TObject);
begin
  FModMaintain.bitbtnAddBrotherClick(Sender);
end;

procedure TFModMaintain.N3Click(Sender: TObject);
begin
  FModMaintain.bitbtnAddChildClick(Sender);
end;

procedure TFModMaintain.N4Click(Sender: TObject);
begin
  FModMaintain.bitbtnDeleteClick(Sender);
end;

procedure TFModMaintain.N6Click(Sender: TObject);
begin
  FModMaintain.MenuItem3Click(Sender);
end;

procedure TFModMaintain.N7Click(Sender: TObject);
begin
  FModMaintain.MenuItem4Click(Sender);
end;

procedure TFModMaintain.N8Click(Sender: TObject);
begin
  FModMaintain.bitbtnImportClick(Sender);
end;

procedure TFModMaintain.MnExpandClick(Sender: TObject);
begin
  cxdbtrlst1.FullExpand;
end;

procedure TFModMaintain.MenuItem3Click(Sender: TObject);
var
  s_filename, sqltext, cur_sort: string;
begin
  // ???????? ??????????????????????????
  // ActiveControl:=dbgrdh1;
  if fdQryTree.UpdatesPending then
  begin
    MessageDlg('??????????????????????????????????????????????????????', mtWarning, [mbOK], 0);
    exit;
  end;
  dlgSaveExport.FileName := DateToStr(Now) + 'All.Mod';
  if dlgSaveExport.Execute then
  begin
    s_filename := Trim(dlgSaveExport.FileName);
    if FileExists(s_filename) then
    begin
      if MessageDlg('????????????????????????', mtWarning, [mbYes, mbNo], 0) = mrNo then
      begin
        exit;
      end;
    end;
    try
      dlgSaveExport.FileName := dlgSaveExport.FileName;
      fdQryExport.Close;
      fdQryExport.Prepared := False;
      // fdqryExport.DisableControls;
      fdQryExport.Connection := F_DT.FDConSYS;
      fdQryExport.SQL.Clear;
      sqltext := 'SELECT * FROM "X_menus" order by t_sort';
      fdQryExport.SQL.ADD(sqltext);
      fdQryExport.Prepared := True;
      fdQryExport.Open;
      fdQryExport.FetchAll;
      fdQryExport.SaveToFile(dlgSaveExport.FileName, sfBinary);
      MessageDlg('????????????????' + dlgSaveExport.FileName, mtInformation, [mbOK], 0);
    finally
      fdQryExport.Close;
    end;
  end;

end;

procedure TFModMaintain.MenuItem4Click(Sender: TObject);
var
  s_filename, sqltext, cur_sort: string;
begin
  // ?????????????? ??????????????????????????
  // ActiveControl:=dbgrdh1;
  if fdQryTree.UpdatesPending then
  begin
    MessageDlg('??????????????????????????????????????????????????????', mtWarning, [mbOK], 0);
    exit;
  end;

  cur_sort := fdQryTree['t_sort'];
  dlgSaveExport.FileName := DateToStr(Now) + 'Part.Mod';
  if dlgSaveExport.Execute then
  begin
    s_filename := Trim(dlgSaveExport.FileName);
    if FileExists(s_filename) then
    begin
      if MessageDlg('????????????????????????', mtWarning, [mbYes, mbNo], 0) = mrNo then
      begin
        exit;
      end;
    end;
    try
      dlgSaveExport.FileName := dlgSaveExport.FileName;
      fdQryExport.Close;
      fdQryExport.Prepared := False;
      // fdqryExport.DisableControls;
      fdQryExport.Connection := F_DT.FDConSYS;
      fdQryExport.SQL.Clear;
      sqltext := 'SELECT * FROM "X_menus" where t_sort like ''' + cur_sort + '%'' order by t_sort';
      fdQryExport.SQL.ADD(sqltext);
      fdQryExport.Prepared := True;
      fdQryExport.Open;
      fdQryExport.FetchAll;
      fdQryExport.SaveToFile(dlgSaveExport.FileName, sfBinary);
      MessageDlg('????????????????????????' + dlgSaveExport.FileName, mtInformation, [mbOK], 0);
    finally
      fdQryExport.Close;
    end;
  end;
end;

procedure TFModMaintain.MnCollapseClick(Sender: TObject);
begin
  cxdbtrlst1.FullCollapse;
end;

procedure TFModMaintain.OnDataChange(Sender: TObject; Field: TField);
begin

  if (fdQryTree.UpdateStatus = usModified) then
    StatusBar1.SimpleText := 'Old t_parent_id: ' + inttostr(fdQryTree.FieldByName('t_parent_id').OldValue) + ', New t_parent_id: ' +
      inttostr(fdQryTree.FieldByName('t_parent_id').CurValue)
  else
    StatusBar1.SimpleText := '';

{$IF CompilerVersion >= 29.0}
  ToggleButtons(fdQryTree.UpdatesPending);
  // if fdQryTree.UpdatesPending then
  // StatusBar1.SimpleText := '?????????? ' + fdQryTree.ChangeCount.ToString + ' ??????????.'
  // else
{$ENDIF}
  // StatusBar1.SimpleText := '??????????????????';
end;

procedure TFModMaintain.pnl3Resize(Sender: TObject);
begin
  DBSynEditCode.RightEdge := DBSynEditCode.Width; // ????????????????????
  SynEditCode.RightEdge := SynEditCode.Width; // ????????????????????
  dbmmot_memo.Width := pnl3.Width - dbmmot_memo.left - 10;
  cxdbtxtdt4.Width := pnl3.Width - cxdbtxtdt4.left - 10;
end;

procedure TFModMaintain.SynEditCodeExit(Sender: TObject);
begin
  if SynEditCode.modified then
  begin
    fdQryTree.Edit;
    fdQryTree['t_proc'] := SynEditCode.Text;
  end;
end;

procedure TFModMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;

  bitbtnUndoOnce.Enabled := Enable and (not isBatch);

  bitbtnUndoAll.Enabled := Enable;

  cxbtnExp.Enabled := Not Enable;

  bitbtnImport.Enabled := Not Enable;

end;

procedure TFModMaintain.AddNode(IsChild: Boolean);
var
  cur_id, cur_par_id, cur_level, max_id, i, pare_id_tmp: integer;
  s_cur_sort, s_max_sort, s_sort_num: string;
begin
  // cxdbtrlst1.FindPanel.
  fdQryTree.DisableControls;
  // ??????????????????????
  if fdQryTree.Eof then
  begin
    cur_id := 0;
    cur_par_id := 0;
    cur_level := 0;
    s_cur_sort := '0';
  end
  else
  begin
    cur_id := fdQryTree['t_id'];
    cur_par_id := fdQryTree['t_parent_id'];
    cur_level := cxdbtrlst1.FocusedNode.Level;
    s_cur_sort := fdQryTree['t_sort'];
  end;

  // ???????????? ????????????????????
  if (IsChild) and (cur_level >= 3) then
  begin
    fdQryTree.EnableControls;
    MessageDlg('??????????????????????????????', mtInformation, [mbOK], 0);
    exit;
  end;

  // ?????????????????????????? ??????????????
  if (IsChild) then
    if fdQryTree['isClass'] <> '1' then
    begin
      fdQryTree.Edit;
      fdQryTree['isClass'] := '1';
      // ????????????
      fdQryTree['t_hide'] := '1';
      fdQryTitle.Refresh;
    end;
  // ????????????????????????????????
  pare_id_tmp := cur_par_id;
  for i := 1 to cur_level do
  begin
    if FDMtblTree.Locate('t_id', pare_id_tmp, []) then
    begin
      if FDMtblTree['t_hide'] <> '1' then
      begin
        FDMtblTree.Edit;
        FDMtblTree['t_hide'] := '1';
      end;
    end;
    pare_id_tmp := FDMtblTree['t_parent_id'];
  end;
  if fdQryTree.State in [dsEdit, dsInsert] then
    fdQryTree.Post;
  if FDMtblTree.State in [dsEdit, dsInsert] then
    FDMtblTree.Post;

  // ??????????  ????????????
  FDMtblTree.IndexFieldNames := 't_id';
  FDMtblTree.Filter := '';
  FDMtblTree.filtered := False;
  FDMtblTree.IndexesActive := True;
  FDMtblTree.Last;
  if not FDMtblTree.Bof then
    max_id := FDMtblTree.FieldByName('t_id').Asinteger
  else
    max_id := 0;

  if IsChild then
    FDMtblTree.Filter := 't_parent_id=' + inttostr(cur_id)
  else
    FDMtblTree.Filter := 't_parent_id=' + inttostr(cur_par_id);
  FDMtblTree.IndexFieldNames := 't_sort';
  FDMtblTree.filtered := True;
  FDMtblTree.IndexesActive := True;
  FDMtblTree.Last;
  if not FDMtblTree.Bof then
    s_max_sort := FDMtblTree.FieldByName('t_sort').AsString
  else
    s_max_sort := '0';
  FDMtblTree.Filter := '';
  FDMtblTree.filtered := False;
  //
  // fdQryMaxSort.Filter := '';
  // FDMtblTree.IndexFieldNames := 't_id';
  // FDMtblTree.Last;

  {

    FDLocalSQL1.Active := False;
    FDLocalSQL1.Active := True;
    fdQryMaxID.Close;
    fdQryMaxID.Connection := F_DT.FDConSQLite;
    fdQryMaxID.SQL.Clear;
    fdQryMaxID.SQL.ADD('SELECT max(t_id) as i_max FROM fdQryTree');
    fdQryMaxID.Prepared;
    fdQryMaxID.Open;
    fdQryMaxID.EnableControls;
    fdQryMaxID.First;
    if not fdQryMaxID.Eof then
    max_id := fdQryMaxID.FieldByName('i_max').Asinteger
    else
    max_id := 0;
    fdQryMaxID.Close;

    fdQryMaxSort.Close;
    fdQryMaxSort.Connection := F_DT.FDConSQLite;
    fdQryMaxSort.SQL.Clear;
    if IsChild then
    fdQryMaxSort.SQL.ADD('SELECT max(t_sort) as s_max FROM fdQryTree where t_parent_id=' + inttostr(cur_id))
    else
    fdQryMaxSort.SQL.ADD('SELECT max(t_sort) as s_max FROM fdQryTree where t_parent_id=' + inttostr(cur_par_id));
    fdQryMaxSort.Prepared;
    fdQryMaxSort.Open;
    fdQryMaxSort.EnableControls;
    fdQryMaxSort.First;

    if not fdQryMaxSort.Eof then
    s_max_sort := fdQryMaxSort.FieldByName('s_max').AsString
    else
    s_max_sort := '0';
    fdQryMaxSort.Close; }

  if IsChild then
    case cur_level of
      0:
        s_sort_num := '4';
      1:
        s_sort_num := '6';
      2:
        s_sort_num := '8';
    end
  else
    case cur_level of
      0:
        s_sort_num := '2';
      1:
        s_sort_num := '4';
      2:
        s_sort_num := '6';
      3:
        s_sort_num := '8';
    end;
  if IsChild then
    s_max_sort := s_cur_sort + Format('%.2d', [(StrToIntDef(RightStr(s_max_sort, 2), 0) + 1)])
  else
    s_max_sort := Format('%.' + s_sort_num + 'd', [(StrToIntDef(s_max_sort, 0) + 1)]);

  // cxdbtrlst1.DataController.DataSource := nil;
  fdQryTree.Append;
  fdQryTree.FieldByName('t_name').AsString := '????????????';
  fdQryTree.FieldByName('t_memo').AsString := '????????';
  fdQryTree.FieldByName('t_para').AsString := '@????????!S??N??D????????????:??????????????????@????????!S??N??D????????????:??????????????????';
  if IsChild then
    fdQryTree.FieldByName('t_parent_id').Asinteger := cur_id
  else
    fdQryTree.FieldByName('t_parent_id').Asinteger := cur_par_id;
  fdQryTree.FieldByName('t_id').Asinteger := max_id + 1;
  fdQryTree.FieldByName('t_sort').AsString := s_max_sort;
  // fdQryTree.FieldByName('t_table1').AsString := '1';
  // fdQryTree.FieldByName('t_table2').AsString := '1';
  fdQryTree.FieldByName('t_auto').AsString := '0'; // 1??????????
  fdQryTree.FieldByName('t_hide').AsString := '1'; // 1??????????????
  fdQryTree.FieldByName('t_type').AsString := t_type;
  fdQryTree.FieldByName('isClass').AsString := '0';
  TBlobField(fdQryTree.FieldByName('t_proc')).LoadFromFile(ExtractFilePath(ParamStr(0)) + 'ModTemplate.txt');
  fdQryTree.Post;
  SynEditCode.Text := fdQryTree['t_proc'];
  SynEditCode.modified := False;
  fdQryTree.EnableControls;
  // AsString := 'CREATE PROCEDURE ModelName (@,@ )     With Encryption AS' + #13 + 'BEGIN' + #13#13 + 'END' + #13 + 'GO';
  // fdqryTree.UpdateBatch(arAll);
  // cxdbtrlst1.DataController.DataSource := ds1;
end;

end.
