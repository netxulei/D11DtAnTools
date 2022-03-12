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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxGridDBTableView;

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
    fdQryTmp: TFDQuery;
    cxspltr1: TcxSplitter;
    pnl3: TPanel;
    lbl6: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cxdbtxtdt2: TcxDBTextEdit;
    cxdbtxtdt3: TcxDBTextEdit;
    grp1: TGroupBox;
    cxdbchckbx1: TcxDBCheckBox;
    cxdbchckbx2: TcxDBCheckBox;
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
    fdQryTreet_table1: TStringField;
    fdQryTreet_table2: TStringField;
    fdQryTreet_auto: TStringField;
    fdQryTreet_hide: TStringField;
    fdQryTreet_type: TStringField;
    cxdbtrlst1t_name: TcxDBTreeListColumn;
    fdQryTreemodiState2: TStringField;
    cxdbtrlst1modiState: TcxDBTreeListColumn;
    imgLstBtn: TImageList;
    ImageList1: TImageList;
    FDLocalSQL1: TFDLocalSQL;
    pm1: TPopupMenu;
    N24: TMenuItem;
    N25: TMenuItem;
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
    cxDBLkUpComClass: TcxDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxdbtrlst1GetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
    procedure fdQryTreeCalcFields(DataSet: TDataSet);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
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
    procedure cxDBLkUpComClassExit(Sender: TObject);
    procedure cxdbchkbxIsClassEditing(Sender: TObject; var CanEdit: Boolean);
  private { Private declarations }
  var
    isBatch: Boolean; // 是否做过批量变更，主要是变更有子项的所属类别、移动有子项的项目
    procedure ToggleButtons(Enable: Boolean);
    procedure AddNode(IsChild: Boolean);
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
  NumErrors: Integer;
  NumChanges: Integer;
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
      StatusBar1.SimpleText := '记录可能未全部保存'
    else
    begin
      StatusBar1.SimpleText := NumChanges.ToString + ' 记录已保存';
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
    MessageDlg('本类别下没有子项时才能删除！', mtInformation, [mbOK], 0)
  else
  begin
    if MessageBox(Handle, '将删除该模型，确定么？', '系统提示', MB_YESNO or MB_ICONQUESTION) = ID_YES then
      fdQryTree.Delete;
      fdQryTitle.Refresh;
  end;
end;

procedure TFModMaintain.bitbtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFModMaintain.bitbtnAddBrotherClick(Sender: TObject);
begin
  AddNode(False);
end;

procedure TFModMaintain.btnTestClick(Sender: TObject);
begin
  ModlCodeValid(fdQryTree, False, False);
end;

procedure TFModMaintain.cxdbchkbxIsClassEditing(Sender: TObject; var CanEdit: Boolean);
begin

  if cxdbtrlst1.FocusedNode.HasChildren and cxdbchkbxIsClass.Checked then
  begin
    MessageDlg('该项有子项时，不能更改为非类别！', mtInformation, [mbOK], 0);
    Abort;
  end;

end;

procedure TFModMaintain.cxdbchkbxIsClassExit(Sender: TObject);
begin

  fdQryTitle.Refresh;
end;

procedure TFModMaintain.cxDBLkUpComClassEnter(Sender: TObject);
var
  sqlText: string;
begin
  // ShowMessage('onenter');
  // fdQryTitle.Refresh;
  // StatusBar1.SimpleText := '刷新标题';
  // ShowMessage(inttostr(fdQryTree['t_parent_id']));
  // parentIdOld := fdQryTree['t_parent_id'];
  // sortMoved := fdQryTree['t_sort'];  //被移动项目及子集按照t_sort提取出来
  // sqlText := 'select t_id,t_parent_id,t_sort from fdQryTree where t_sort like ' + '''' + sortMoved + '%'' order by t_sort';
  // fdQryMov.Close;
  // fdQryMov.SQL.Clear;
  // fdQryMov.SQL.Add(sqlText);
  // fdQryMov.Prepared;
  // fdQryMov.Open;
  // //
  // sqlText := 'select max(length(t_sort))max_len from fdQryTree where t_sort like ' + '''' + sortMoved + '%'' order by t_sort';
  // fdQryMaxLen.Close;
  // fdQryMaxLen.SQL.Clear;
  // fdQryMaxLen.SQL.Add(sqlText);
  // fdQryMaxLen.Prepared;
  // fdQryMaxLen.Open;

end;

procedure TFModMaintain.cxDBLkUpComClassExit(Sender: TObject);
var
  sortMoved, sortNewParent: string; // 记录被移动项序号和目标父项的序号
  parentIdOld, parentIdNew, newParentId: Integer;
  s_max_sort, sqlText: string;
  max_len, i_max_sort, sortMovedLen,sortNewParentLen,level_old, level_new: Integer;

begin
  //
  // ShowMessage('FieldChange');
  // cxdbtrlst1.Refresh;
  if fdQryTitle.Eof then
    Abort;

  parentIdOld := fdQryTree.FieldByName('t_parent_id').OldValue;
  parentIdNew := fdQryTree.FieldByName('t_parent_id').CurValue;

  if parentIdNew = parentIdOld then // 如果新旧值相同，退出
  begin
    fdQryTree.Cancel;
    fdQryMov.Close;
    fdQryMaxLen.Close;
    Exit;
  end;

  sortMoved := fdQryTree['t_sort']; // 被移动项目t_sort

  if fdQryTitle.Locate('t_id', parentIdNew, []) then
  begin
    // 新父项的t_id
    newParentId := fdQryTitle['t_id'];     //此时被移动项目的 parentID已经修改为新父项的ID，后续要注意
    sortNewParent := fdQryTitle['t_sort'] // 目标项目t_sort
  end
  else
    MessageDlg('目标目录有错！', mtWarning, [mbOK], 0); // 此项应该不会执行
 sortMovedLen := Length(sortMoved); // 被移动项目的T_sort,准备其子项目的前sortMovedLen位替换为新的父项的t_sort
 sortNewParentLen:=Length(sortNewParent); // 新的父项的长度

  // 子集t_sort最大长度，用于计算级次
  sqlText := 'select max(length(t_sort))max_len from fdQryTree where t_sort like ' + '''' + sortMoved + '%'' order by t_sort';
  fdQryMaxLen.Close;
  fdQryMaxLen.SQL.Clear;
  fdQryMaxLen.SQL.Add(sqlText);
  fdQryMaxLen.Prepared;
  fdQryMaxLen.Open;
  fdQryMaxLen.First;

  level_old := fdQryMaxLen['max_len'] div 2 - sortMovedLen div 2 + 1; // 没移动记录的级次
  level_new := sortNewParentLen div 2;
  if level_old + level_new > 4 then
  begin
{$IF CompilerVersion >= 29.0}
    fdQryTree.UndoLastChange(True);
{$ENDIF}
    // OnDataChange(nil, nil);
    // fdQryMov.Close;
    fdQryMaxLen.Close;
    MessageDlg('变更所属类别后，目录超过4级，不能变更级！', mtWarning, [mbOK], 0);
    Exit;
  end;

  // 新父节点下最大t_sort
  fdQryMaxSort.Close;
  fdQryMaxSort.Connection := F_DT.FDConSQLite;
  fdQryMaxSort.SQL.Clear;
  fdQryMaxSort.SQL.Add('SELECT max(cast(t_sort as int)) as i_SortMax FROM fdQryTree where t_sort like '''
  + sortNewParent+'%'' and length(t_sort)='+inttostr(sortNewParentLen+2));
//    fdQryMaxSort.SQL.Add('SELECT count(t_sort) as i_SortMax FROM fdQryTree where t_sort like '''
//  + sortNewParent+'%'' and length(t_sort)='+inttostr(sortNewParentLen+2));
  //此时把新增节点也放进来了，可能需要在enter阶段就要取值  ，但此阶段并不知道新父项？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
  //使用新父项的t_sort取值？？？？？？？？？？？？？？？？？？？？？？？？？？
  // fdQryMaxSort.SQL.Add('SELECT count(t_sort) as i_SortMax FROM fdQryTree where t_parent_id=' + IntToStr(parentIdNew));
  fdQryMaxSort.Open;
  fdQryMaxSort.First;
  try
    i_max_sort := fdQryMaxSort.FieldByName('i_SortMax').Asinteger
  except
    i_max_sort:=0
  end;

  fdQryMaxSort.Close;
  if i_max_sort = 0 then
    s_max_sort := sortNewParent + Format('%.2d', [(i_max_sort + 1)])
  else
    s_max_sort := Format('%.' + (IntToStr(Length(sortNewParent) + 2)) + 'd', [(i_max_sort + 1)]);

  // ------local update，才能真正修改

  // update test1 set t_sort= '0103'||substr(t_sort,4+1,length(t_sort)-4) where t_sort like '0201%'
  sqlText := 'update fdQryTree set t_sort = ''' + s_max_sort + '''||substr(t_sort,' + IntToStr(sortMovedLen) + '+1,length(t_sort)-' + IntToStr(sortMovedLen) +
    ') where t_sort like ' + '''' + sortMoved + '%''';
  fdQryMov.Close;
  fdQryMov.SQL.Clear;
  fdQryMov.SQL.Add(sqlText);
  fdQryMov.ExecSQL;
  fdQryMov.Close;

//  fdQryTree.Edit;
//  fdQryTree.Post;
  isBatch := True; // 批量变更标志 存盘和全部取消后变为false
  fdQryTitle.Refresh;

//  bitbtnSaveClick(self);

  // fdQryMov.First;
  // if not fdQryMov.eof then
  // begin
  // fdQryMov.Edit;
  // fdQryMov['t_sort']:=sortNewParent + Copy(fdQryMov['t_sort'],sortMovedLen,Length(fdQryMov['t_sort'])-sortMovedLen);
  // end;
  // 修改子集t_sort适应新的parent的t_sort  sortNewParent   sortMoved
  // fdQryTree.Edit; // 为了更新修改状态
  // fdQryTree.Post;
end;

procedure TFModMaintain.cxdbtrlst1GetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
  var AIndex: TImageIndex);
begin
  if AIndexType = tlitStateIndex then
    Exit;

  if ANode.Expanded then
    AIndex := 1
  else
    AIndex := 0;
  // if AIndexType = tlitStateIndex then
  // exit;
  //
  // if ANode.Level = 0 then
  // begin
  // AIndex := 0;
  // if ANode.Expanded then
  // AIndex := 1;
  // end
  // else
  // AIndex := 2;
  // if ANode.HotTrack then
  // if ANode.Level = 0 then
  // AIndex := 1
  // else
  // AIndex := 0;
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
    // DataSet.Fields[0].AsString := '未改';
    // usModified:
    // DataSet.Fields[0].AsString := '修改';
    // usInserted:
    // DataSet.Fields[0].AsString := '新增';
    // usDeleted:
    // DataSet.Fields[0].AsString := '删除';
    // usUnmodified:
    // DataSet.Fields[0].AsInteger := 0;
    // usModified:
    // DataSet.Fields[0].AsInteger := 1;
    // usInserted:
    // DataSet.Fields[0].AsInteger := 2;
    // usDeleted:
    // DataSet.Fields[0].AsInteger := 3;
  end;
  // StatusBar1.SimpleText := DataSet.Fields[0].AsString+'计算一次'+datetimetostr(now());
end;

procedure TFModMaintain.fdQryTreeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TFModMaintain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdQryTree.UpdatesPending then
  begin

    case MessageDlg('最后修改未保存！保存后退出吗？', mtInformation, mbYesNoCancel, 0) of
      mrCancel:
        begin
          Abort;
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
  end;
end;

procedure TFModMaintain.FormCreate(Sender: TObject);
var
  sqlText: string;
begin
  isBatch := False;
  // sqltext := 'SELECT * FROM "X_menus" where t_hide =' + '''' + '1' + '''' + ' and (len(isnull(t_right,' + '''' + '''' + '))=0 or t_right=' + '''' + t_database_ver + '''' + ')' + ' and t_type =' + '''' + t_type + '''' + ' order by t_sort';
  sqlText := 'SELECT * FROM X_menus where t_type =' + '''' + t_type + '''' + ' order by t_sort';
  fdQryTree.Close;
  // fdQryTree=ADOQ2
  fdQryTree.DisableControls;
  fdQryTree.Connection := F_DT.FDConSYS;
  fdQryTree.SQL.Clear;
  fdQryTree.SQL.Add(sqlText);
  fdQryTree.Prepared;
  fdQryTree.Open;
  fdQryTree.enableControls;
  fdQryTree.UpdateOptions.AutoCommitUpdates := True;
  fdQryTree.CachedUpdates := True;

  FDLocalSQL1.Connection := F_DT.FDConSQLite;
  F_DT.FDConSQLite.Connected := True;
  FDLocalSQL1.Active := True;
  fdQryTitle.Close;
  fdQryTitle.DisableControls;
  fdQryTitle.Connection := F_DT.FDConSQLite;
  fdQryTitle.SQL.Clear;
  fdQryTitle.SQL.Add('SELECT t_id,t_parent_id,repeat(''.'',length(t_sort)*2)||t_name as t_name,t_sort FROM  fdQryTree where t_parent_id=0 or isClass=' + '''' +
    '1' + '''' + ' union SELECT 0,0,' + '''' + '*==============*' + '''' + ','''' ' + 'FROM fdQryTree order by t_sort');
  fdQryTitle.Prepared;
  fdQryTitle.Open;
  fdQryTitle.enableControls;
  // MainFrm.fdQryTree.CachedUpdates := True;
  // fdmtblTree.CloneCursor(MainFrm.fdQryTree, True, False);

end;

procedure TFModMaintain.N24Click(Sender: TObject);
begin
  cxdbtrlst1.FullExpand;
end;

procedure TFModMaintain.N25Click(Sender: TObject);
begin
  cxdbtrlst1.FullCollapse;
end;

procedure TFModMaintain.OnDataChange(Sender: TObject; Field: TField);
begin

  if (fdQryTree.UpdateStatus = usModified) then
    StatusBar1.SimpleText := 'Old t_parent_id: ' + IntToStr(fdQryTree.FieldByName('t_parent_id').OldValue) + ', New t_parent_id: ' +
      IntToStr(fdQryTree.FieldByName('t_parent_id').CurValue)
  else
    StatusBar1.SimpleText := '';

{$IF CompilerVersion >= 29.0}
  ToggleButtons(fdQryTree.UpdatesPending);
  // if fdQryTree.UpdatesPending then
  // StatusBar1.SimpleText := '存盘前存在 ' + fdQryTree.ChangeCount.ToString + ' 条记录改变.'
  // else
{$ENDIF}
  // StatusBar1.SimpleText := '存盘前没有记录改变';
end;

procedure TFModMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;

  bitbtnUndoOnce.Enabled := Enable and (not isBatch);

  bitbtnUndoAll.Enabled := Enable;
end;

procedure TFModMaintain.AddNode(IsChild: Boolean);
var
  cur_id, cur_par_id, cur_level, max_id: Integer;
  s_cur_sort, s_max_sort, s_sort_num: string;
begin

  // 当前记录节点和父节点号
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

  // 新增子项判断 ，改变分类时也要判断
  if (IsChild) and (cur_level >= 3) then
  begin
    MessageDlg('已达最后一级，不能再增加子项！', mtInformation, [mbOK], 0);
    Exit;
  end;

  // 添加子项，本项自动设为类别
  if (IsChild) then
    if fdQryTree['isClass'] <> '1' then
    begin
      fdQryTree['isClass'] := '1';
      fdQryTitle.Refresh;
    end;

  // 最大节点号
  FDLocalSQL1.Active := True;
  fdQryMaxID.Close;
  fdQryMaxID.Connection := F_DT.FDConSQLite;
  fdQryMaxID.SQL.Clear;
  fdQryMaxID.SQL.Add('SELECT max(t_id) as i_max FROM fdQryTree');
  fdQryMaxID.Prepared;
  fdQryMaxID.Open;
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
    fdQryMaxSort.SQL.Add('SELECT max(t_sort) as s_max FROM fdQryTree where t_parent_id=' + IntToStr(cur_id))
  else
    fdQryMaxSort.SQL.Add('SELECT max(t_sort) as s_max FROM fdQryTree where t_parent_id=' + IntToStr(cur_par_id));
  fdQryMaxSort.Prepared;
  fdQryMaxSort.Open;
  fdQryMaxSort.First;

  if not fdQryMaxSort.Eof then
    s_max_sort := fdQryMaxSort.FieldByName('s_max').AsString
  else
    s_max_sort := '0';
  fdQryMaxSort.Close;

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
  fdQryTree.FieldByName('t_name').AsString := '模型中文名称';
  fdQryTree.FieldByName('t_memo').AsString := '功能描述';
  fdQryTree.FieldByName('t_para').AsString := '@参数提示!S或N或D（参数类型）:字符串或数字或日期@参数提示!S或N或D（参数类型）:字符串或数字或日期';
  if IsChild then
    fdQryTree.FieldByName('t_parent_id').Asinteger := cur_id
  else
    fdQryTree.FieldByName('t_parent_id').Asinteger := cur_par_id;
  fdQryTree.FieldByName('t_id').Asinteger := max_id + 1;
  fdQryTree.FieldByName('t_sort').AsString := s_max_sort;
  fdQryTree.FieldByName('t_table1').AsString := '1';
  fdQryTree.FieldByName('t_table2').AsString := '1';
  fdQryTree.FieldByName('t_auto').AsString := '0'; // 1为自动执行
  fdQryTree.FieldByName('t_hide').AsString := '1'; // 1不隐藏用户执行
  fdQryTree.FieldByName('t_type').AsString := t_type;
  fdQryTree.FieldByName('isClass').AsString := '0';
  TBlobField(fdQryTree.FieldByName('t_proc')).LoadFromFile('ModTemplate.txt');
  fdQryTree.Post;
  // AsString := 'CREATE PROCEDURE ModelName (@,@ )     With Encryption AS' + #13 + 'BEGIN' + #13#13 + 'END' + #13 + 'GO';
  // fdqryTree.UpdateBatch(arAll);
  // cxdbtrlst1.DataController.DataSource := ds1;
end;

end.
