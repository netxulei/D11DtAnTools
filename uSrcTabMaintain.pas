unit uSrcTabMaintain;

interface

uses
  U_DT, inifiles, U_Common, Math, Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.ODBCBase, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.DBCtrls, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TMyNavgator = class(TDBNavigator);

  TfrmSrcTabMaintain = class(TForm)
    dsSrcTabMsDt: TDataSource;
    DBGridEhSrcTab: TDBGridEh;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    dsSrcTab: TDataSource;
    dsSrcCol: TDataSource;
    DBGridEhSrcCol: TDBGridEh;
    flwpnlDt: TFlowPanel;
    dbnvgrDictVal: TDBNavigator;
    bitbtnValUp: TBitBtn;
    bitbtnValDown: TBitBtn;
    imgLstBtn: TImageList;
    flwpnlDictType: TFlowPanel;
    dbnvgrDictType: TDBNavigator;
    bitbtn3: TBitBtn;
    bitbtnTypeDown: TBitBtn;
    FDSchemaAdapterAll: TFDSchemaAdapter;
    flwpnlTop: TFlowPanel;
    bitbtnUndoOnce: TBitBtn;
    bitbtnUndoAll: TBitBtn;
    bitbtnExport: TBitBtn;
    bitbtnSave: TBitBtn;
    bitbtnExit: TBitBtn;
    StatusBar1: TStatusBar;
    imgLstStat: TImageList;
    fdQrySrcTab: TFDQuery;
    fdQrySrcCol: TFDQuery;
    fdQrySrcTabmodiState: TStringField;
    fdQrySrcColmodiState: TStringField;
    fdQrySrcTabtab_name_cn: TStringField;
    fdQrySrcTabtab_name_en: TStringField;
    fdQrySrcTabtab_memo: TStringField;
    fdQryColType: TFDQuery;
    fdQryDictList: TFDQuery;
    dsDictList: TDataSource;
    dsColType: TDataSource;
    FlowPanel1: TFlowPanel;
    cxLookupComboBoxDictList: TcxLookupComboBox;
    lblDict: TLabel;
    fdQrySrcTabtab_XLS: TStringField;
    fdQrySrcTabtab_TXT: TStringField;
    fdQrySrcTabtab_id: TStringField;
    fdQrySrcTabtab_sort: TIntegerField;
    fdQrySrcTabchn_col: TStringField;
    fdQrySrcTabGloImp: TStringField;
    lblReg: TLabel;
    cxLookupComboBoxReg: TcxLookupComboBox;
    fdQryReg: TFDQuery;
    fdQrySrcColcol_Id: TStringField;
    fdQrySrcColtab_id: TStringField;
    fdQrySrcColcol_name_cn: TStringField;
    fdQrySrcColcol_name_en: TStringField;
    fdQrySrcColcol_type: TStringField;
    fdQrySrcColcol_all_len: TIntegerField;
    fdQrySrcColcol_dot_len: TIntegerField;
    fdQrySrcColcol_Dict: TStringField;
    fdQrySrcColcol_date_deal: TStringField;
    fdQrySrcColcol_xls_loc: TStringField;
    fdQrySrcColcol_reg: TStringField;
    fdQrySrcColcol_reg_str: TStringField;
    fdQrySrcColcol_reg_ok: TStringField;
    fdQrySrcColcol_memo: TStringField;
    fdQrySrcColcol_sort: TIntegerField;
    fdQrySrcColcol_rept: TStringField;
    fdQrySrcColcol_index: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbnvgrDictTypeClick(Sender: TObject; Button: TNavigateBtn);
    procedure dbnvgrDictTypeBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bitbtnUndoOnceClick(Sender: TObject);
    procedure OnDataChange(Sender: TObject; Field: TField);
    procedure bitbtnUndoAllClick(Sender: TObject);
    procedure bitbtnSaveClick(Sender: TObject);
    procedure StatusCalcFields(DataSet: TDataSet);
    procedure dbnvgrDictValBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bitbtnTypeDownClick(Sender: TObject);
    procedure bitbtn3Click(Sender: TObject);
    procedure bitbtnValUpClick(Sender: TObject);
    procedure bitbtnValDownClick(Sender: TObject);
    procedure bitbtnExitClick(Sender: TObject);
    procedure fdQrySrcTabUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure fdQrySrcColUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure cxLookupComboBoxDictListPropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBoxRegPropertiesEditValueChanged(Sender: TObject);
  private { Private declarations }
    procedure CHNDBNavigator(ADBNavigator: TDBNavigator);
    procedure ToggleButtons(Enable: Boolean);
  public { Public declarations }
  end;

var
  frmSrcTabMaintain: TfrmSrcTabMaintain;

implementation

{$R *.dfm}

procedure TfrmSrcTabMaintain.dbnvgrDictTypeBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
  max_sort: Integer;
begin
  if Button = nbInsert then
  begin

    // 遍历取最大序号，未用sql语句是因为未保存时，即使post，缓存中的值无法取得
    with fdQrySrcTab do
    begin
      First;
      DisableControls;
      max_sort := 0;
      while not Eof do
      begin
        max_sort := Max(max_sort, fdQrySrcTab['tab_sort']);
        Next;
      end;
      EnableControls;
    end;
    fdQrySrcTab.Append;
    fdQrySrcTab['tab_id'] := getGUID; // 自增量字段不能修改   ，但主表未存盘之前，从表无法增加记录
    fdQrySrcTab['tab_sort'] := max_sort + 1;
    fdQrySrcTab['tab_xls'] := '0';
    fdQrySrcTab['tab_txt'] := '1';
    fdQrySrcTab['chn_col'] := '1';
    fdQrySrcTab['GloImp'] := '0';
    fdQrySrcTab.Post;
    DBGridEhSrcTab.SetFocus;
    Abort;
  end;

  if Button = nbDelete then
  begin
    if MessageBox(Handle, '删除该字典，将同时删除该字典所有值，确实要删除么？', '系统提示', MB_YESNO or MB_ICONQUESTION) = ID_NO then
      Abort
    else
    begin
      fdQrySrcTab.Delete;
      Abort;
    end;
  end;

end;

procedure TfrmSrcTabMaintain.dbnvgrDictTypeClick(Sender: TObject; Button: TNavigateBtn);
begin
  // showmessage(fdQrySrcTab['Dict_type_name_cn']);
  // case Button of
  // nbFirst:
  // ShowMessage('1条');
  // nbNext:
  // ShowMessage(fdQrySrcTab['Dict_type_name_cn']);
  /// /      fdQrySrcTab['Dict_type_name_cn']:='';
  // nbPrior:
  // ShowMessage('3');
  // nbLast:
  // ShowMessage('4');
  // nbDelete:
  // ShowMessage('5');
  // end;
end;

procedure TfrmSrcTabMaintain.dbnvgrDictValBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
  max_sort: Integer;
  col_type: string;
begin
  if Button = nbInsert then
  begin

    // 默认字段列表
    if Length(cxLookupComboBoxDictList.Text) = 0 then
    begin
      MessageDlg('选择字段类型来源后才能增加字段', mtInformation, [mbOK], 0);
      cxLookupComboBoxDictList.DroppedDown := True;
      Abort;
    end;
    // ShowMessage(cxLookupComboBoxDictList.EditValue);
    // cxDBLookupComboBox.

    fdQryColType.First;
    col_type := fdQryColType['Dict_val'];
    // 遍历取最大序号，未用sql语句是因为未保存时，即使post，缓存中的值无法取得
    with fdQrySrcCol do
    begin
      First;
      DisableControls;
      max_sort := 0;
      while not Eof do
      begin
        max_sort := Max(max_sort, fdQrySrcCol['col_sort']);
        Next;
      end;
      EnableControls;
    end;
    fdQrySrcCol.Append;
    fdQrySrcCol['col_id'] := getGUID; // 自增量字段不能修改   ，但主表未存盘之前，从表无法增加记录
    fdQrySrcCol['col_sort'] := max_sort + 1;
    // 默认字段列表
    // fdQryDictList.First;
    fdQrySrcCol['col_type'] := col_type;
    fdQrySrcCol['col_index'] := '0'; // 强制校验默认为不强制，即校验不通过也可以导入，只是影响分析精准度
    fdQrySrcCol['col_rept'] := '0';
    fdQrySrcCol['col_date_deal'] := '0';
    fdQrySrcCol['col_reg_ok'] := '0';
    fdQrySrcCol.Post;
    DBGridEhSrcCol.SetFocus;
    Abort;
  end;

end;

procedure TfrmSrcTabMaintain.StatusCalcFields(DataSet: TDataSet);
begin
  case DataSet.UpdateStatus of
    // usUnmodified:
    // DataSet.Fields[0].AsString := '未改';
    // usModified:
    // DataSet.Fields[0].AsString := '修改';
    // usInserted:
    // DataSet.Fields[0].AsString := '新增';
    // usDeleted:
    // DataSet.Fields[0].AsString := '删除';
    usUnmodified:
      DataSet.Fields[0].AsString := '0';
    usModified:
      DataSet.Fields[0].AsString := '1';
    usInserted:
      DataSet.Fields[0].AsString := '2';
    usDeleted:
      DataSet.Fields[0].AsString := '3';
  end;
end;

procedure TfrmSrcTabMaintain.fdQrySrcTabUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmSrcTabMaintain.fdQrySrcColUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmSrcTabMaintain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDSchemaAdapterAll.UpdatesPending then
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
    fdQrySrcTab.close;
    fdQrySrcCol.close;
    fdQryDictList.close;
    fdQryColType.close;
  end;
end;

procedure TfrmSrcTabMaintain.FormCreate(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
begin
  // 读取当前目录setting赋值 dict_list_col字段类型在字典中的列表id
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  dict_list_col := MyIniFile.ReadString('Other', 'dict_list_col', '');
  dict_list_reg := MyIniFile.ReadString('Other', 'dict_list_reg', '');
  MyIniFile.Free;
  // dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003'; // 此为暂时，集成时要读取ini文件
{$IF CompilerVersion >= 30.0}
  FDSchemaAdapterAll.UpdateOptions.AutoCommitUpdates := True;
{$ENDIF}
  fdQrySrcTab.CachedUpdates := True;
  fdQrySrcCol.CachedUpdates := True;
  fdQrySrcTab.Connection := F_DT.FDconSYS;
  fdQrySrcCol.Connection := F_DT.FDconSYS;
  fdQryDictList.Connection := F_DT.FDconSYS;
  fdQryReg.Connection := F_DT.FDconSYS;
  fdQryColType.Connection := F_DT.FDconSYS;
  fdQrySrcTab.open();
  fdQrySrcCol.open();
  // 字典列表
  fdQryDictList.open();
  cxLookupComboBoxDictList.EditValue := dict_list_col;
  fdQryReg.open();
  cxLookupComboBoxReg.EditValue := dict_list_reg;
  // 初始化列表 ，会产生onvalid事件  以下fdqrcoltype在事件中写入
  // //赋值参数,打开字段类型列表
  // fdQryColType.ParamByName('Dict_type_id').AsString := dict_list_col;
  // fdQryColType.open();
  // 导航条增加文字
  CHNDBNavigator(dbnvgrDictType);
  CHNDBNavigator(dbnvgrDictVal);
end;

procedure TfrmSrcTabMaintain.bitbtn3Click(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 上移
  if fdQrySrcTab.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQrySrcTab['tab_sort'];
  bk := fdQrySrcTab.GetBookmark;
  fdQrySrcTab.Prior;
  if fdQrySrcTab.Bof then
  begin
    // MessageDlg('第一行，不能上移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcTab['tab_sort'];
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := pre_sort;
  fdQrySrcTab.GotoBookmark(bk);
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := next_sort;
  fdQrySrcTab.Post; // post很关键，否则序号会乱

end;

procedure TfrmSrcTabMaintain.bitbtnExitClick(Sender: TObject);
begin
  close;
  // dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003';
  // fdQryDictList.locate('dict_type_id', dict_list_col, []);
  // cxLookupComboBoxDictList.EditValue := '9DA1A56BB935419182BDAB4C86ABF003';
  // cxLookupComboBoxDictList.
  // ShowMessage(cxLookupComboBoxDictList.EditText);
  // FDConnection1.GetLastAutoGenValue('Dict_type');
end;

procedure TfrmSrcTabMaintain.bitbtnSaveClick(Sender: TObject);
var
  NumErrors: Integer;
  NumChanges: Integer;
begin
  // Ensure that all edits have been posted
  if fdQrySrcTab.State in dsEditModes then
    fdQrySrcTab.Post;
  if fdQrySrcCol.State in dsEditModes then
    fdQrySrcCol.Post;
  F_DT.FDconSYS.StartTransaction;
  try
{$IF CompilerVersion >= 29.0}
    NumChanges := FDSchemaAdapterAll.ChangeCount;
{$ELSE}
    NumChanges := -1;
{$ENDIF}
    NumErrors := FDSchemaAdapterAll.ApplyUpdates(-1);
    F_DT.FDconSYS.Commit;
    if NumErrors > 0 then
      StatusBar1.SimpleText := '记录可能未全部保存'
    else
      StatusBar1.SimpleText := NumChanges.ToString + ' 记录已保存';
  except
    F_DT.FDconSYS.Rollback;
  end;
  OnDataChange(nil, nil);
end;

procedure TfrmSrcTabMaintain.bitbtnTypeDownClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 下移
  if fdQrySrcTab.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQrySrcTab['tab_sort'];
  bk := fdQrySrcTab.GetBookmark;
  fdQrySrcTab.Next;
  if fdQrySrcTab.Eof then
  begin
    // MessageDlg('最后行，不能下移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcTab['tab_sort'];
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := pre_sort;
  fdQrySrcTab.GotoBookmark(bk);
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := next_sort;
  fdQrySrcTab.Post; // post很关键，否则序号会乱

end;

procedure TfrmSrcTabMaintain.bitbtnUndoAllClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  FDSchemaAdapterAll.CancelUpdates;
{$ENDIF}
  OnDataChange(nil, nil);
end;

procedure TfrmSrcTabMaintain.bitbtnUndoOnceClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  FDSchemaAdapterAll.UndoLastChange;
{$ENDIF}
  OnDataChange(nil, nil);
end;

procedure TfrmSrcTabMaintain.bitbtnValDownClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 下移
  if fdQrySrcCol.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQrySrcCol['col_sort'];
  bk := fdQrySrcCol.GetBookmark;
  fdQrySrcCol.Next;
  if fdQrySrcCol.Eof then
  begin
    // MessageDlg('最后行，不能下移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcCol['col_sort'];
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := pre_sort;
  fdQrySrcCol.GotoBookmark(bk);
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := next_sort;
  fdQrySrcCol.Post; // post很关键，否则序号会乱

end;

procedure TfrmSrcTabMaintain.bitbtnValUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 上移
  if fdQrySrcCol.Eof then
  begin
    Exit;
  end;

  pre_sort := fdQrySrcCol['col_sort'];
  bk := fdQrySrcCol.GetBookmark;
  fdQrySrcCol.Prior;
  if fdQrySrcCol.Bof then
  begin
    // MessageDlg('第一行，不能上移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcCol['col_sort'];
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := pre_sort;
  fdQrySrcCol.GotoBookmark(bk);
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := next_sort;
  fdQrySrcCol.Post; // post很关键，否则序号会乱

end;

// 增加数据库导航条caption显示
procedure TfrmSrcTabMaintain.CHNDBNavigator(ADBNavigator: TDBNavigator);
begin
  TMyNavgator(ADBNavigator).Buttons[nbFirst].Caption := '首条 ';
  TMyNavgator(ADBNavigator).Buttons[nbPrior].Caption := '上条 ';
  TMyNavgator(ADBNavigator).Buttons[nbNext].Caption := '下条 ';
  TMyNavgator(ADBNavigator).Buttons[nbLast].Caption := '末条 ';
  TMyNavgator(ADBNavigator).Buttons[nbInsert].Caption := '添加 ';
  TMyNavgator(ADBNavigator).Buttons[nbDelete].Caption := '删除 ';
  TMyNavgator(ADBNavigator).Buttons[nbEdit].Caption := '修改 ';
  TMyNavgator(ADBNavigator).Buttons[nbPost].Caption := '提交 ';
  TMyNavgator(ADBNavigator).Buttons[nbCancel].Caption := '撤销 ';
  TMyNavgator(ADBNavigator).Buttons[nbRefresh].Caption := '刷新 ';
end;

procedure TfrmSrcTabMaintain.cxLookupComboBoxDictListPropertiesEditValueChanged(Sender: TObject);
var
  iniFilename: string;
  MyIniFile: TIniFile;
begin
  // ShowMessage(cxLookupComboBoxDictList.EditValue);
  if dict_list_col <> cxLookupComboBoxDictList.EditValue then
  begin
    dict_list_col := cxLookupComboBoxDictList.EditValue;
    // 写入ini文件

    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'dict_list_col', dict_list_col);
    MyIniFile.Free; // ……
    // ShowMessage('write to ini file');
  end;
  // 赋值参数,打开字段类型列表
  fdQryColType.close;
  fdQryColType.ParamByName('Dict_type_id').AsString := dict_list_col;
  fdQryColType.open();

end;

procedure TfrmSrcTabMaintain.cxLookupComboBoxRegPropertiesEditValueChanged(Sender: TObject);
var
  iniFilename: string;
  MyIniFile: TIniFile;
begin
  // ShowMessage(cxLookupComboBoxDictList.EditValue);
  if dict_list_reg <> cxLookupComboBoxReg.EditValue then
  begin
    dict_list_reg := cxLookupComboBoxReg.EditValue;
    // 写入ini文件
    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'dict_list_reg', dict_list_reg);
    MyIniFile.Free; // ……
    // ShowMessage('write to ini file');
  end;
  // 赋值参数,打开字段类型列表
  fdQryReg.close;
  fdQryReg.ParamByName('Dict_type_id').AsString := dict_list_reg;
  fdQryReg.open();
end;

procedure TfrmSrcTabMaintain.OnDataChange(Sender: TObject; Field: TField);
begin
{$IF CompilerVersion >= 29.0}
  ToggleButtons(FDSchemaAdapterAll.UpdatesPending);
  if FDSchemaAdapterAll.UpdatesPending then
    StatusBar1.SimpleText := '存盘前存在 ' + FDSchemaAdapterAll.ChangeCount.ToString + ' 条记录改变。字典类型表有' +
      fdQrySrcTab.ChangeCount.ToString + ' 条，字典值表中有' + fdQrySrcCol.ChangeCount.ToString + '条。'
  else
{$ENDIF}
    StatusBar1.SimpleText := '存盘前没有记录改变';
end;

procedure TfrmSrcTabMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;
  bitbtnUndoOnce.Enabled := Enable;
  bitbtnUndoAll.Enabled := Enable;
end;

end.
