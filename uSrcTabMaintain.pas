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
  cxDBLookupEdit, cxDBLookupComboBox, LibXL, Winapi.ShellAPI, System.RegularExpressions, System.Zip, SynEdit, SynDBEdit, Vcl.Mask, DBCtrlsEh,
  FireDAC.Phys.SQLiteVDataSet, Vcl.Grids, Vcl.DBGrids, Vcl.Samples.Spin;

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
    flwpnlDictType: TFlowPanel;
    dbnvgrDictType: TDBNavigator;
    bitbtn3: TBitBtn;
    bitbtnTypeDown: TBitBtn;
    FDSchemaAdapterAll: TFDSchemaAdapter;
    flwpnlTop: TFlowPanel;
    bitbtnUndoOnce: TBitBtn;
    bitbtnUndoAll: TBitBtn;
    bitbtnSave: TBitBtn;
    StatusBar1: TStatusBar;
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
    fdQrySrcTabtab_XLS: TStringField;
    fdQrySrcTabtab_TXT: TStringField;
    fdQrySrcTabtab_id: TStringField;
    fdQrySrcTabtab_sort: TIntegerField;
    fdQrySrcTabchn_col: TStringField;
    fdQrySrcTabGloImp: TStringField;
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
    dlgSave1: TSaveDialog;
    FDQryBKMaster: TFDQuery;
    FDQryBKDetail: TFDQuery;
    fdmtblImp: TFDMemTable;
    FDQryTmp: TFDQuery;
    dlgSaveExport: TSaveDialog;
    dlgOpenRestore: TOpenDialog;
    fdQrySrcTabtxt_split: TStringField;
    fdQrySrcTabtxt_qualifier: TStringField;
    fdQrySrcColcol_regName: TStringField;
    fdQrySrcTabtype: TStringField;
    fdQrySrcTabcombIndex: TMemoField;
    lblDict: TLabel;
    cxLookupComboBoxDictList: TcxLookupComboBox;
    lblReg: TLabel;
    cxLookupComboBoxReg: TcxLookupComboBox;
    lblTabType: TLabel;
    cxLookupComboBoxType: TcxLookupComboBox;
    DBSynEditComInd: TDBSynEdit;
    lblComIndex: TLabel;
    dsTabType: TDataSource;
    FDQryTabType: TFDQuery;
    fdQrySrcColcol_reg_depcol: TStringField;
    fdQrySrcColcol_reg_depval: TStringField;
    FDLocalSQL1: TFDLocalSQL;
    FDQryCurColLst: TFDQuery;
    ds1: TDataSource;
    dsCurColLst: TDataSource;
    btnDepend: TButton;
    spnBtn1: TSpinButton;
    bitbtnCopy: TBitBtn;
    bitbtnExport: TBitBtn;
    chkOpen: TCheckBox;
    BitBtnBackUP: TBitBtn;
    BitBtnRestore: TBitBtn;
    bitbtnExit: TBitBtn;
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
    procedure fdQrySrcTabUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure fdQrySrcColUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure cxLookupComboBoxDictListPropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBoxRegPropertiesEditValueChanged(Sender: TObject);
    procedure bitbtnExportClick(Sender: TObject);
    procedure BitBtnBackUPClick(Sender: TObject);
    procedure BitBtnRestoreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBoxTypePropertiesEditValueChanged(Sender: TObject);
    procedure fdQrySrcColAfterScroll(DataSet: TDataSet);
    procedure btnDependClick(Sender: TObject);
    procedure DBGridEhSrcColColumns12OpenDropDownForm(Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure spnBtn1DownClick(Sender: TObject);
    procedure spnBtn1UpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsSrcTabMsDtDataChange(Sender: TObject; Field: TField);
    procedure bitbtnCopyClick(Sender: TObject);
  private { Private declarations }
    procedure CHNDBNavigator(ADBNavigator: TDBNavigator);
    procedure ToggleButtons(Enable: Boolean);
  public { Public declarations }
    // protected
    // procedure CreateParams(var Params: TCreateParams); override; // 重载此方法,图标显示再任务栏
  end;

var
  frmSrcTabMaintain: TfrmSrcTabMaintain;
  frmCrtOK: string = '0';

implementation

{$R *.dfm}
// procedure TfrmSrcTabMaintain.CreateParams(var Params: TCreateParams);
// begin
// inherited CreateParams(Params);
// Params.WndParent := GetDesktopWindow;
// end;

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
      // EnableControls;          // append引发错误could not convert variant of type into type (OleStr),放到后面
    end;
    fdQrySrcTab.Append;
    fdQrySrcTab['tab_id'] := getGUID; // 自增量字段不能修改   ，但主表未存盘之前，从表无法增加记录
    fdQrySrcTab['tab_sort'] := max_sort + 1;
    fdQrySrcTab['tab_xls'] := '0';
    fdQrySrcTab['tab_txt'] := '1';
    fdQrySrcTab['chn_col'] := '1';
    fdQrySrcTab['GloImp'] := '0';
    fdQrySrcTab['txt_split'] := '|';
    fdQrySrcTab['txt_qualifier'] := '"';
    fdQrySrcTab.Post;
    fdQrySrcTab.EnableControls;
    DBGridEhSrcTab.SetFocus;

    Abort;
  end;

  if Button = nbDelete then
  begin
    if MessageBox(Handle, '删除该接口规范数据表，将同时删除该表字段定义，确实要删除么？', '系统提示', MB_YESNO or MB_ICONQUESTION) = ID_NO then
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
    // DBGridEhSrcCol.Fields[0].FocusControl;
    DBGridEhSrcCol.SetFocus;
    Abort;
  end;
  // DBGridEhSrcCol.Fields[0].FocusControl;
end;

procedure TfrmSrcTabMaintain.dsSrcTabMsDtDataChange(Sender: TObject; Field: TField);
begin
  // if frmCrtOK = '1' then
  // ShowMessage(fdQrySrcTab['tab_name_cn']);
  frmSrcTabMaintain.btnDependClick(Sender);
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

procedure TfrmSrcTabMaintain.fdQrySrcTabUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmSrcTabMaintain.fdQrySrcColAfterScroll(DataSet: TDataSet);
begin
  // if FDQryCurColLst.active = True then
  // FDQryCurColLst.Refresh;
end;

procedure TfrmSrcTabMaintain.fdQrySrcColUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmSrcTabMaintain.FormActivate(Sender: TObject);
begin
  frmCrtOK := '1';
end;

procedure TfrmSrcTabMaintain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdQrySrcTab.State in [dsEdit, dsInsert] then
    fdQrySrcTab.Post;
  if fdQrySrcCol.State in [dsEdit, dsInsert] then
    fdQrySrcCol.Post;
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
  Action := caFree;
end;

procedure TfrmSrcTabMaintain.FormCreate(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
begin
  // SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);  //任务栏显示图标
  // 读取当前目录setting赋值 dict_list_col字段类型在字典中的列表id
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  dict_list_col := MyIniFile.ReadString('Other', 'dict_list_col', '');
  dict_list_reg := MyIniFile.ReadString('Other', 'dict_list_reg', '');
  dict_list_type := MyIniFile.ReadString('Other', 'dict_list_type', '');
  MyIniFile.Free;
  // dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003'; // 此为暂时，集成时要读取ini文件
{$IF CompilerVersion >= 30.0}
  FDSchemaAdapterAll.UpdateOptions.AutoCommitUpdates := True;
{$ENDIF}
  fdQrySrcTab.CachedUpdates := True;
  fdQrySrcCol.CachedUpdates := True;
  fdQrySrcTab.Connection := F_DT.FDconSYS;
  fdQrySrcCol.Connection := F_DT.FDconSYS;
  fdQrySrcTab.Open();
  fdQrySrcCol.Open();

  fdQryDictList.Connection := F_DT.FDconSYS;
  fdQryReg.Connection := F_DT.FDconSYS;
  fdQryColType.Connection := F_DT.FDconSYS;
  FDQryTabType.Connection := F_DT.FDconSYS;

  // 字典列表
  fdQryDictList.Open();
  // 字段类型id
  fdQryColType.Open();
  cxLookupComboBoxDictList.EditValue := dict_list_col;
  // 正则ID
  fdQryReg.Open();
  cxLookupComboBoxReg.EditValue := dict_list_reg;
  // 行业类别ID
  FDQryTabType.Open();
  cxLookupComboBoxType.EditValue := dict_list_type;

  FDQryCurColLst.Open();

  DBSynEditComInd.Height := lblComIndex.Height;

  // 修改lookUp值时，会产生onvalid事件 ，每个事件应写入参数，（类似fdqrcoltype在事件中写入 ）
  // //赋值参数,打开字段类型列表
  // fdQryColType.ParamByName('Dict_type_id').AsString := dict_list_col;
  // fdQryColType.open();
  // 导航条增加文字
  // CHNDBNavigator(dbnvgrDictType);
  // CHNDBNavigator(dbnvgrDictVal);
end;

procedure TfrmSrcTabMaintain.FormShow(Sender: TObject);
begin
  ShowWindow(mainHandle, SW_SHOW);
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

procedure TfrmSrcTabMaintain.BitBtnBackUPClick(Sender: TObject);
var
  sFilename, sSrcTabName, sSrcColName, sPath: String;
  Zip: TZipFile;
begin
  if FDSchemaAdapterAll.UpdatesPending then
  begin
    MessageDlg('最后修改未保存！请确认信息并保存或撤销修改后再行导出。', mtWarning, [mbOK], 0);
    Exit;
  end;

  dlgSaveExport.FileName := DateToStr(Now) + '.Srcs';
  if dlgSaveExport.Execute then
  begin
    sPath := ExtractFilePath(dlgSaveExport.FileName);
    sSrcTabName := sPath + 'SrcTab.Src';
    sSrcColName := sPath + 'SrcCol.Src';
    sFilename := Trim(dlgSaveExport.FileName);
    if FileExists(sSrcTabName) then
      DeleteFile(sSrcTabName);
    if FileExists(sSrcColName) then
      DeleteFile(sSrcColName);
    if FileExists(sFilename) then
    begin
      if MessageDlg('接口规范备份文件已存在，覆盖吗？', mtWarning, [mbYes, mbNo], 0) = mrNo then
      begin
        Exit;
      end;
    end;
    try
      FDQryBKMaster.close;
      FDQryBKDetail.close;

      FDQryBKMaster.Connection := F_DT.FDconSYS;
      FDQryBKMaster.Prepared;
      FDQryBKMaster.Open();
      FDQryBKMaster.FetchAll;
      FDQryBKMaster.SaveToFile(sSrcTabName, sfBinary);

      FDQryBKDetail.Connection := F_DT.FDconSYS;
      FDQryBKDetail.Prepared;
      FDQryBKDetail.Open();
      FDQryBKDetail.FetchAll;
      FDQryBKDetail.SaveToFile(sSrcColName, sfBinary);

      Zip := TZipFile.Create;
      Zip.Open(sFilename, TZipMode.zmWrite); // 准备要压缩为sFileName
      Zip.Add(sSrcTabName, 'SrcTab.Src'); // 参1是要压缩的文件; 参2是要使用的文件名; 参数3可指定压缩算法
      Zip.Add(sSrcColName, 'SrcCol.Src');
      // zip.Add...
      // zip.Close; //Close 时才执行实际压缩过程; 不过在销毁前会调用它
      Zip.Free;
      if FileExists(sSrcTabName) then
        DeleteFile(sSrcTabName);
      if FileExists(sSrcColName) then
        DeleteFile(sSrcColName);

      MessageDlg('接口规范已导出到' + dlgSaveExport.FileName, mtInformation, [mbOK], 0);
    finally
      FDQryBKMaster.close;
      FDQryBKDetail.close;
    end;
  end;

end;

procedure TfrmSrcTabMaintain.bitbtnCopyClick(Sender: TObject);
type
  TSrcColRec = record
    // col_Id,
    tab_id, col_name_cn, col_name_en, col_type: string;
    col_all_len, col_dot_len: Integer;
    col_index, col_rept, col_Dict, col_date_deal, col_xls_loc, col_regName, col_reg, col_reg_str, col_reg_ok, col_reg_depCol, col_reg_depVal, col_memo: string;
    // col_sort: Integer;
  end;
var
  i, rec_no, tab_max_sort, col_max_sort: Integer;
  // table所有字段
  tab_id, tab_name_cn, tab_name_en, tab_memo, tab_XLS, tab_TXT, txt_split, txt_qualifier, chn_col, GloImp: string;
  tab_sort: Integer;
  tb_type, combIndex: string;
  // col表字段记录，记录子表所有记录
  SrcColRec: array of TSrcColRec; // 字段定义数组
begin

  // ShowMessage(fdQrySrcTab['tab_id']);
  // ShowMessage(IntToStr(fdQrySrcCol.RecordCount));
  // 获得table当前记录值
  if fdQrySrcTab.Eof then
  begin
    MessageDlg('请选中要复制的接口规范表以后再行复制', mtInformation, [mbOK], 0);
    Exit;
  end;

  if VarIsNull(fdQrySrcTab['tab_name_cn']) then
    tab_name_cn := ''
  else
    tab_name_cn := fdQrySrcTab['tab_name_cn'];

  if VarIsNull(fdQrySrcTab['tab_name_en']) then
    tab_name_en := ''
  else
    tab_name_en := fdQrySrcTab['tab_name_en'];

  if VarIsNull(fdQrySrcTab['tab_memo']) then
    tab_memo := ''
  else
    tab_memo := fdQrySrcTab['tab_memo'];

  if VarIsNull(fdQrySrcTab['tab_XLS']) then
    tab_XLS := '0'
  else
    tab_XLS := fdQrySrcTab['tab_XLS'];

  if VarIsNull(fdQrySrcTab['tab_TXT']) then
    tab_TXT := '1'
  else
    tab_TXT := fdQrySrcTab['tab_TXT'];

  if VarIsNull(fdQrySrcTab['txt_split']) then
    txt_split := ''
  else
    txt_split := fdQrySrcTab['txt_split'];

  if VarIsNull(fdQrySrcTab['txt_qualifier']) then
    txt_qualifier := ''
  else
    txt_qualifier := fdQrySrcTab['txt_qualifier'];
  if VarIsNull(fdQrySrcTab['chn_col']) then
    chn_col := '1'
  else
    chn_col := fdQrySrcTab['chn_col'];
  if VarIsNull(fdQrySrcTab['GloImp']) then
    GloImp := '0'
  else
    GloImp := fdQrySrcTab['GloImp'];
  // tab_sort := fdQrySrcTab[''];
  if VarIsNull(fdQrySrcTab['type']) then
    tb_type := '0'
  else
    tb_type := fdQrySrcTab['type'];
  if VarIsNull(fdQrySrcTab['combIndex']) then
    combIndex := ''
  else
    combIndex := fdQrySrcTab['combIndex'];

  // 获得tabe关联子表的所有记录
  rec_no := fdQrySrcCol.RecordCount;
  if rec_no > 0 then
  begin
    SetLength(SrcColRec, rec_no); // 定义数组长度为子表记录数
    col_max_sort := 0;
    fdQrySrcCol.First;
    for i := 0 to rec_no - 1 do
    begin
      if VarIsNull(fdQrySrcCol['col_name_cn']) then
        SrcColRec[i].col_name_cn := ''
      else
        SrcColRec[i].col_name_cn := fdQrySrcCol['col_name_cn'];

      if VarIsNull(fdQrySrcCol['col_name_en']) then
        SrcColRec[i].col_name_en := ''
      else
        SrcColRec[i].col_name_en := fdQrySrcCol['col_name_en'];

      if VarIsNull(fdQrySrcCol['col_type']) then
        SrcColRec[i].col_type := 'varchar'
      else
        SrcColRec[i].col_type := fdQrySrcCol['col_type'];

      if VarIsNull(fdQrySrcCol['col_all_len']) then
        SrcColRec[i].col_all_len := 80
      else
        SrcColRec[i].col_all_len := fdQrySrcCol['col_all_len'];

      if VarIsNull(fdQrySrcCol['col_dot_len']) then
        SrcColRec[i].col_dot_len := 0
      else
        SrcColRec[i].col_dot_len := fdQrySrcCol['col_dot_len'];

      if VarIsNull(fdQrySrcCol['col_index']) then
        SrcColRec[i].col_index := '0'
      else
        SrcColRec[i].col_index := fdQrySrcCol['col_index'];

      if VarIsNull(fdQrySrcCol['col_rept']) then
        SrcColRec[i].col_rept := '0'
      else
        SrcColRec[i].col_rept := fdQrySrcCol['col_rept'];

      if VarIsNull(fdQrySrcCol['col_Dict']) then
        SrcColRec[i].col_Dict := ''
      else
        SrcColRec[i].col_Dict := fdQrySrcCol['col_Dict'];

      if VarIsNull(fdQrySrcCol['col_date_deal']) then
        SrcColRec[i].col_date_deal := '0'
      else
        SrcColRec[i].col_date_deal := fdQrySrcCol['col_date_deal'];

      if VarIsNull(fdQrySrcCol['col_xls_loc']) then
        SrcColRec[i].col_xls_loc := ''
      else
        SrcColRec[i].col_xls_loc := fdQrySrcCol['col_xls_loc'];

      if VarIsNull(fdQrySrcCol['col_regName']) then
        SrcColRec[i].col_regName := ''
      else
        SrcColRec[i].col_regName := fdQrySrcCol['col_regName'];
      if VarIsNull(fdQrySrcCol['col_reg']) then
        SrcColRec[i].col_reg := ''
      else
        SrcColRec[i].col_reg := fdQrySrcCol['col_reg'];

      if VarIsNull(fdQrySrcCol['col_reg_str']) then
        SrcColRec[i].col_reg_str := ''
      else
        SrcColRec[i].col_reg_str := fdQrySrcCol['col_reg_str'];

      if VarIsNull(fdQrySrcCol['col_reg_ok']) then
        SrcColRec[i].col_reg_ok := '0'
      else
        SrcColRec[i].col_reg_ok := fdQrySrcCol['col_reg_ok'];

      if VarIsNull(fdQrySrcCol['col_reg_depCol']) then
        SrcColRec[i].col_reg_depCol := ''
      else
        SrcColRec[i].col_reg_depCol := fdQrySrcCol['col_reg_depCol'];

      if VarIsNull(fdQrySrcCol['col_reg_depVal']) then
        SrcColRec[i].col_reg_depVal := ''
      else
        SrcColRec[i].col_reg_depVal := fdQrySrcCol['col_reg_depVal'];

      if VarIsNull(fdQrySrcCol['col_memo']) then
        SrcColRec[i].col_memo := ''
      else
        SrcColRec[i].col_memo := fdQrySrcCol['col_memo'];
      fdQrySrcCol.Next;
    end;

    // 获得col的最大序号    无需获列最大序号从1开始即可，数组下标+1即可
    // fdQrySrcCol.Last;
    // col_max_sort := fdQrySrcCol['col_sort'];
  end;

  // 遍历取tab最大序号，未用sql语句是因为未保存时，即使post，缓存中的值无法取得
  with fdQrySrcTab do
  begin
    First;
    DisableControls;
    tab_max_sort := 0;
    while not Eof do
    begin
      tab_max_sort := Max(tab_max_sort, fdQrySrcTab['tab_sort']);
      Next;
    end;
    // EnableControls;          // append引发错误could not convert variant of type into type (OleStr),放到后面
  end;

  tab_id := getGUID; // 新纪录id

  // 新增src
  fdQrySrcTab.Append;
  fdQrySrcTab['tab_id'] := tab_id; // 自增量字段不能修改   ，但主表未存盘之前，从表无法增加记录
  fdQrySrcTab['tab_sort'] := tab_max_sort + 1;
  fdQrySrcTab['tab_name_cn'] := tab_name_cn;
  fdQrySrcTab['tab_name_en'] := tab_name_en;
  fdQrySrcTab['tab_memo'] := tab_memo;
  fdQrySrcTab['tab_XLS'] := tab_XLS;
  fdQrySrcTab['tab_TXT'] := tab_TXT;
  fdQrySrcTab['txt_split'] := txt_split;
  fdQrySrcTab['txt_qualifier'] := txt_qualifier;
  fdQrySrcTab['chn_col'] := chn_col;
  fdQrySrcTab['GloImp'] := GloImp;
  fdQrySrcTab['type'] := tb_type;
  fdQrySrcTab['combIndex'] := combIndex;
  fdQrySrcTab.Post;
  fdQrySrcTab.EnableControls;
  // // 新增col
  if rec_no > 0 then
  begin
    // col_max_sort := 1;
    fdQrySrcCol.DisableControls;
    for i := 0 to rec_no - 1 do
    begin
      fdQrySrcCol.Append;
      fdQrySrcCol['col_name_cn'] := SrcColRec[i].col_name_cn;
      fdQrySrcCol['col_name_en'] := SrcColRec[i].col_name_en;
      fdQrySrcCol['col_type'] := SrcColRec[i].col_type;
      fdQrySrcCol['col_all_len'] := SrcColRec[i].col_all_len;
      fdQrySrcCol['col_dot_len'] := SrcColRec[i].col_dot_len;
      fdQrySrcCol['col_index'] := SrcColRec[i].col_index;
      fdQrySrcCol['col_rept'] := SrcColRec[i].col_rept;
      fdQrySrcCol['col_Dict'] := SrcColRec[i].col_Dict;
      fdQrySrcCol['col_date_deal'] := SrcColRec[i].col_date_deal;
      fdQrySrcCol['col_xls_loc'] := SrcColRec[i].col_xls_loc;
      fdQrySrcCol['col_regName'] := SrcColRec[i].col_regName;
      fdQrySrcCol['col_reg'] := SrcColRec[i].col_reg;
      fdQrySrcCol['col_reg_str'] := SrcColRec[i].col_reg_str;
      fdQrySrcCol['col_reg_ok'] := SrcColRec[i].col_reg_ok;
      fdQrySrcCol['col_reg_depCol'] := SrcColRec[i].col_reg_depCol;
      fdQrySrcCol['col_reg_depVal'] := SrcColRec[i].col_reg_depVal;
      fdQrySrcCol['col_memo'] := SrcColRec[i].col_memo;
      fdQrySrcCol['col_id'] := getGUID;
      fdQrySrcCol['tab_id'] := tab_id;
      fdQrySrcCol['col_sort'] := i + 1;
    end;
    fdQrySrcCol.Post;
    fdQrySrcCol.EnableControls;
  end;
  DBGridEhSrcTab.SetFocus;
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

procedure TfrmSrcTabMaintain.bitbtnExportClick(Sender: TObject);
var
  aMasterColName: array of string;
  aDetailColName: array of string;
  aMasterFieldName: array of string;
  aDetailFieldName: array of string;
  fieldNamesStr: string;
  fieldNamesLst: TStringList;
  i, j, k, ci, i_pos, masterGridLen, detailGridLen, gridLen: Integer;
  FieldType: TFieldType;
  isNum: Boolean;
  ValueNum: Double;
  ValueStr: string;
  s_filename, Ext: string;
  xlBook: TXLBook;
  xlSheet: TXLSheet;
  titleFont, headerFont, cellsFont: TXLFont;
  titleFormat, headerFormat, cellsFormat: TXLFormat;
  a_max_width: array of Integer;
begin
  if fdQrySrcTab.RecordCount = 0 then
  begin
    MessageDlg('没有要导出的数据！', mtInformation, [mbOK], 0);
    Exit;
  end;

  dlgSave1.FileName := '接口规范定义' + DateToStr(Now());
  if not dlgSave1.Execute then
  begin
    // ShowMessage('exit');
    Exit;
  end;
  case dlgSave1.FilterIndex of
    1:
      Ext := 'XLSX';
    2:
      Ext := 'XLS';
  else
    Ext := '';
  end;
  if Length(Ext) = 0 then
    Exit;
  // 保存的文件名---------------------------
  s_filename := Trim(dlgSave1.FileName);
  // 若匹配.XLS,则文件名不变，且不管 SaveDialog1.FilterIndex的选择
  if (TRegEx.IsMatch(UpperCase(s_filename), '^[\S]+\.XLS$')) then
    Ext := 'XLS'
  else // 若不匹配.XLS,再看是否匹配XLSX
    if (TRegEx.IsMatch(UpperCase(s_filename), '^[\S]+\.XLSX$')) then
      Ext := 'XLSX'
    else
      s_filename := s_filename + '.' + Ext;

  if FileExists(s_filename) then
  begin
    if MessageDlg('导出的Excel文件已存在，覆盖吗？', mtWarning, [mbYes, mbNo], 0) = mrNo then
    begin
      Exit;
    end;
  end;

  // 读取grid有关信息
  masterGridLen := DBGridEhSrcTab.VisibleColumns.Count - 1; // 字段个数 ，第一列不使用
  detailGridLen := DBGridEhSrcCol.VisibleColumns.Count - 1;

  SetLength(aMasterColName, masterGridLen); // 列名数组
  SetLength(aDetailColName, detailGridLen);
  SetLength(aMasterFieldName, masterGridLen); // 字段名数组
  SetLength(aDetailFieldName, detailGridLen);
  fieldNamesLst := TStringList.Create;
  fieldNamesLst.Delimiter := ';';
  fieldNamesLst.StrictDelimiter := True;
  for i := 0 to masterGridLen - 1 do // 注意第一列状态栏下面不使用
  begin
    aMasterColName[i] := DBGridEhSrcTab.VisibleColumns[i + 1].Title.Caption;
    aMasterFieldName[i] := DBGridEhSrcTab.VisibleColumns[i + 1].FieldName;
  end;

  i := 0;
  j := 1;
  while i <= detailGridLen - 1 do
  begin
    fieldNamesStr := DBGridEhSrcCol.VisibleColumns[j].FieldName;
    fieldNamesLst.DelimitedText := fieldNamesStr;
    k := fieldNamesLst.Count;
    if k > 1 then // 若gridvisible含有2个以上字段  ，取第一个字段
    begin
      aDetailFieldName[i] := fieldNamesLst[0];
      aDetailColName[i] := DBGridEhSrcCol.VisibleColumns[j].Title.Caption;
      // detailGridLen := detailGridLen + (k - 1); // excel列数要+1
      // SetLength(aDetailColName, detailGridLen); // 数组也要+1
      // SetLength(aDetailFieldName, detailGridLen);
      // for ci := 0 to k - 1 do
      // begin
      // aDetailFieldName[i + ci] := fieldNamesLst[ci];
      // aDetailColName[i + ci] := DBGridEhSrcCol.VisibleColumns[j].Title.Caption;
      // end;
      // i := i + k;
    end
    else
    begin
      aDetailFieldName[i] := fieldNamesStr;
      aDetailColName[i] := DBGridEhSrcCol.VisibleColumns[j].Title.Caption;
    end;
    i := i + 1;
    j := j + 1;
  end;
  fieldNamesLst.Free;

  gridLen := Max(masterGridLen, detailGridLen);
  SetLength(a_max_width, gridLen); // 记录每列宽度

  // --------准备Excel导入
  if (Ext = 'XLS') then
    xlBook := TBinBook.Create;
  if (Ext = 'XLSX') then
    xlBook := TXmlBook.Create;
  xlBook.setKey('TommoT', 'windows-2421220b07c2e10a6eb96768a2p7r6gc');
  xlSheet := xlBook.addSheet('接口规范定义');

  titleFont := xlBook.addFont;
  titleFont.name := '微软雅黑';
  titleFont.size := 12;
  titleFormat := xlBook.addFormat();
  titleFormat.alignH := ALIGNH_CENTER;
  titleFormat.alignV := ALIGNV_CENTER;
  titleFormat.font := titleFont;

  headerFont := xlBook.addFont;
  headerFont.name := '微软雅黑';
  headerFont.size := 10;
  headerFont.bold := True;
  headerFormat := xlBook.addFormat();
  headerFormat.alignH := ALIGNH_CENTER;
  headerFormat.alignV := ALIGNV_CENTER;
  headerFormat.font := headerFont;
  headerFormat.setBorder(BORDERSTYLE_THIN);

  cellsFont := xlBook.addFont;
  cellsFont.name := '微软雅黑';
  cellsFont.size := 9;
  cellsFormat := xlBook.addFormat();
  cellsFormat.alignH := ALIGNH_LEFT;
  cellsFormat.alignV := ALIGNV_CENTER;
  cellsFormat.font := cellsFont;
  cellsFormat.setBorder(BORDERSTYLE_THIN);

  // 主表标题
  xlSheet.setMerge(0, 0, 0, masterGridLen - 1);
  xlSheet.writeStr(0, 0, PWideChar('接口规范定义导出' + DateToStr(Now())), titleFormat);
  // 主表字段
  for i := 0 to masterGridLen - 1 do
  begin
    xlSheet.writeStr(1, i, PWideChar(aMasterColName[i]), headerFormat);
  end;
  // 循环主表 ，内嵌套循环子表
  i := 2;
  // fdQrySrcTab.DisableControls;  此时若disable，从表无法更新
  fdQrySrcCol.DisableControls;
  DBGridEhSrcTab.Visible := false;
  // DBGridEhSrcTab.Enabled := False;
  fdQrySrcTab.First;
  ValueNum := 0;
  ValueStr := '';
  // while not fdQrySrcTab.Eof do
  // begin
  // fdQrySrcCol.Refresh;
  // fdQrySrcCol.First;
  // while not fdQrySrcCol.Eof do
  // begin
  // ShowMessage(fdQrySrcTab['Dict_type_name_cn']);
  // ShowMessage(VarToStrDef(fdQrySrcCol['Dict_val'], ''));
  // fdQrySrcCol.Next;
  // end;
  // fdQrySrcTab.Next;
  // end;

  while not fdQrySrcTab.Eof do // 循环主表
  begin
    for ci := 0 to masterGridLen - 1 do
    begin
      FieldType := DBGridEhSrcTab.VisibleColumns[ci + 1].Field.DataType;
      if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
        isNum := True
      else
        isNum := false;
      // 字段为空的处理
      if VarIsNull(DBGridEhSrcTab.VisibleColumns[ci + 1].Field.Value) then
      begin
        if isNum then
          ValueNum := 0
        else
          ValueStr := '';
      end
      else
      begin
        if isNum then
          ValueNum := DBGridEhSrcTab.VisibleColumns[ci + 1].Field.Value
        else
          ValueStr := DBGridEhSrcTab.VisibleColumns[ci + 1].Field.Value;
      end;
      if isNum then
        xlSheet.writeNum(i, ci, ValueNum, headerFormat)
      else
        xlSheet.writeStr(i, ci, PWideChar(ValueStr), headerFormat);
      a_max_width[ci] := Max(a_max_width[ci], Length(ValueStr));

    end;

    i := i + 1;
    // 子表字段
    for ci := 0 to detailGridLen - 1 do
    begin
      xlSheet.writeStr(i, ci, PWideChar(aDetailColName[ci]), headerFormat);
    end;
    fdQrySrcCol.First;
    i := i + 1;
    while not fdQrySrcCol.Eof do
    // 循环子表  ,子表没有及时显示，试着数据集
    begin
      for ci := 0 to detailGridLen - 1 do
      begin
        // FieldType := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.DataType;
        FieldType := fdQrySrcCol.FieldByName(aDetailFieldName[ci]).DataType;
        if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
          isNum := True
        else
          isNum := false;
        // 字段为空的处理
        // if VarIsNull(DBGridEhSrcCol.VisibleColumns[ci + 1].Field.Value) then
        if VarIsNull(fdQrySrcCol.FieldByName(aDetailFieldName[ci]).Value) then
        begin
          if isNum then
            ValueNum := 0
          else
            ValueStr := '';
        end
        else
        begin
          if isNum then
            ValueNum := fdQrySrcCol.FieldByName(aDetailFieldName[ci]).Value
            // ValueNum := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.Value
          else
          begin
            ValueStr := VarToStrDef(DBGridEhSrcCol.VisibleColumns[ci + 1].GetLookupValue, ''); // 取lookup的值
            if Length(ValueStr) = 0 then
              ValueStr := fdQrySrcCol.FieldByName(aDetailFieldName[ci]).Value;
            // ValueStr := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.Value;
          end;

        end;
        if isNum then
          xlSheet.writeNum(i, ci, ValueNum, cellsFormat)
        else
          xlSheet.writeStr(i, ci, PWideChar(ValueStr), cellsFormat);
        a_max_width[ci] := Max(a_max_width[ci], Length(ValueStr));
      end;
      i := i + 1;
      fdQrySrcCol.Next;
    end;
    i := i + 1;
    fdQrySrcTab.Next;
  end;
  // 设置宽度
  for i := 0 to gridLen - 1 do
  begin
    xlSheet.setCol(i, i, a_max_width[i]);
  end;
  //
  xlBook.save(PWideChar(s_filename));
  xlBook.Free;
  fdQrySrcTab.First;
  // fdQrySrcTab.EnableControls;
  fdQrySrcCol.EnableControls;
  DBGridEhSrcTab.Visible := True;
  // DBGridEhSrcTab.Enabled := True;

  if (chkOpen.Checked) then
    ShellExecute(Application.Handle, 'Open', pchar(s_filename), nil, nil, SW_SHOWNORMAL)
  else
    ShellExecute(Application.Handle, 'Open', 'explorer.exe', pchar('/select,"' + s_filename + '"'), nil, SW_SHOWNORMAL);

end;

procedure TfrmSrcTabMaintain.BitBtnRestoreClick(Sender: TObject);
var
  sFilename, sSrcTabName, sSrcColName, sPath: String;
  Zip: TZipFile;
  i: Integer;
begin
  if MessageDlg('恢复后，当前数据接口规范将被覆盖，确定吗？', mtWarning, [mbYes, mbNo], 0) = mrNo then
  begin
    Exit;
  end;

  if dlgOpenRestore.Execute then
  begin
    sFilename := dlgOpenRestore.FileName;
    if FileExists(sFilename) then
    begin
      if not TZipFile.IsValid(sFilename) then
      begin
        MessageDlg('选中的文件不是数据接口规范备份文件！', mtWarning, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      MessageDlg('数据接口规范备份文件不存在！', mtWarning, [mbOK], 0);
      Exit;
    end;
    sFilename := Trim(dlgOpenRestore.FileName);
    sPath := ExtractFilePath(sFilename);
    sSrcTabName := sPath + 'SrcTab.Src';
    sSrcColName := sPath + 'SrcCol.Src';
    if FileExists(sSrcTabName) then
      DeleteFile(sSrcTabName);
    if FileExists(sSrcColName) then
      DeleteFile(sSrcColName);
    // ----解压缩-----
    Zip := TZipFile.Create;
    Zip.Open(sFilename, TZipMode.zmRead); // 解压缩的文件sFileName
    Zip.ExtractAll(sPath);
    // zip.Close; //Close 时才执行实际压缩过程; 不过在销毁前会调用它
    Zip.Free;
    // ----------------
    try
      fdQrySrcTab.close;
      fdQrySrcCol.close;
      F_DT.FDconSYS.StartTransaction;
      // ------删除原表----------
      FDQryTmp.close;
      FDQryTmp.Connection := F_DT.FDconSYS;
      FDQryTmp.SQL.Clear;
      FDQryTmp.SQL.Add('TRUNCATE TABLE src_column');
      FDQryTmp.Prepared;
      FDQryTmp.ExecSQL;
      FDQryTmp.close;

      FDQryTmp.Connection := F_DT.FDconSYS;
      FDQryTmp.SQL.Clear;
      FDQryTmp.SQL.Add('DELETE From src_table'); // 外键约束，不能truncate
      FDQryTmp.Prepared;
      FDQryTmp.ExecSQL;
      FDQryTmp.close;
      // ----------------------------------
      // ---先恢复主表------------------------------------------------

      FDQryBKMaster.Connection := F_DT.FDconSYS;
      FDQryBKMaster.CachedUpdates := True;
      FDQryBKMaster.Prepared;
      FDQryBKMaster.Open();
      FDQryBKMaster.FetchAll;
      // 调入主表备份文件
      fdmtblImp.close;
      fdmtblImp.LoadFromFile(sSrcTabName, sfBinary);
      fdmtblImp.Open;
      fdmtblImp.DisableControls;
      // 恢复到主表
      fdmtblImp.First;
      while not fdmtblImp.Eof do
      begin
        FDQryBKMaster.Append;
        for i := 0 to fdmtblImp.FieldCount - 1 do
          FDQryBKMaster.Fields[i].Value := fdmtblImp.Fields[i].Value;
        fdmtblImp.Next;
      end;
      FDQryBKMaster.ApplyUpdates; // 主表存盘

      // ---再恢复子表------------------------------------------------

      FDQryBKDetail.Connection := F_DT.FDconSYS;
      FDQryBKDetail.CachedUpdates := True;
      FDQryBKDetail.Prepared;
      FDQryBKDetail.Open();
      FDQryBKDetail.FetchAll;
      // 调入子表备份文件
      fdmtblImp.close;
      fdmtblImp.LoadFromFile(sSrcColName, sfBinary);
      fdmtblImp.Open;
      fdmtblImp.DisableControls;
      // 恢复到子表
      fdmtblImp.First;
      while not fdmtblImp.Eof do
      begin
        FDQryBKDetail.Append;
        for i := 0 to fdmtblImp.FieldCount - 1 do
          FDQryBKDetail.Fields[i].Value := fdmtblImp.Fields[i].Value;
        fdmtblImp.Next;
      end;
      FDQryBKDetail.ApplyUpdates; // 子表存盘
      // ---------------------------------------------------------------
      F_DT.FDconSYS.commit;
      if FileExists(sSrcTabName) then
        DeleteFile(sSrcTabName);
      if FileExists(sSrcColName) then
        DeleteFile(sSrcColName);
      // MessageDlg('数据字典已恢复。', mtInformation, [mbOK], 0);

    finally
      FDQryBKMaster.close;
      FDQryBKDetail.close;
      fdmtblImp.close;
      fdQrySrcTab.Open();
      fdQrySrcCol.Open();
    end;
  end;

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
    F_DT.FDconSYS.commit;
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

procedure TfrmSrcTabMaintain.btnDependClick(Sender: TObject);
var
  cur_tab_id, cur_chn_col, sqlText: string; // 当前表id和使用中英文字段
begin
  cur_chn_col := fdQrySrcTab['chn_col'];
  cur_tab_id := fdQrySrcTab['tab_id'];
  if cur_chn_col = '1' then
    sqlText := 'select col_name_cn as col_name from fdQrySrcCol where tab_id = :cur_tab_id order by col_sort'
  else
    sqlText := 'select col_name_en as col_name from fdQrySrcCol where tab_id = :cur_tab_id order by col_sort';
  FDQryCurColLst.close;
  FDQryCurColLst.SQL.Clear;
  FDQryCurColLst.SQL.Add(sqlText);
  // FDQryCurColLst.Prepared := True;
  FDQryCurColLst.ParamByName('cur_tab_id').AsString := cur_tab_id;
  FDQryCurColLst.Open();
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
  fdQryColType.Open();

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
  fdQryReg.Open();
end;

procedure TfrmSrcTabMaintain.cxLookupComboBoxTypePropertiesEditValueChanged(Sender: TObject);
var
  iniFilename: string;
  MyIniFile: TIniFile;
begin
  // ShowMessage(cxLookupComboBoxDictList.EditValue);
  if dict_list_type <> cxLookupComboBoxType.EditValue then
  begin
    dict_list_type := cxLookupComboBoxType.EditValue;
    // 写入ini文件
    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'dict_list_type', dict_list_type);
    MyIniFile.Free; // ……
    // ShowMessage('write to ini file');
  end;
  // 赋值参数,打开字段类型列表
  FDQryTabType.close;
  FDQryTabType.ParamByName('Dict_type_id').AsString := dict_list_type;
  FDQryTabType.Open();
end;

procedure TfrmSrcTabMaintain.DBGridEhSrcColColumns12OpenDropDownForm(Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
  DynParams: TDynVarsEh);
begin
  frmSrcTabMaintain.btnDependClick(self);
end;

procedure TfrmSrcTabMaintain.OnDataChange(Sender: TObject; Field: TField);
begin
{$IF CompilerVersion >= 29.0}
  ToggleButtons(FDSchemaAdapterAll.UpdatesPending);
  if FDSchemaAdapterAll.UpdatesPending then
    StatusBar1.SimpleText := '存盘前存在 ' + FDSchemaAdapterAll.ChangeCount.ToString + ' 条记录改变。数据表有' + fdQrySrcTab.ChangeCount.ToString + ' 条，字段定义中有' +
      fdQrySrcCol.ChangeCount.ToString + '条。'
  else
{$ENDIF}
    StatusBar1.SimpleText := '存盘前没有记录改变';

end;

procedure TfrmSrcTabMaintain.spnBtn1DownClick(Sender: TObject);
begin
  if DBSynEditComInd.Height < lblComIndex.Height * 4 then
    DBSynEditComInd.Height := DBSynEditComInd.Height + lblComIndex.Height;
end;

procedure TfrmSrcTabMaintain.spnBtn1UpClick(Sender: TObject);
begin
  // DBSynEditComInd.Height := lblComIndex.Height;
  if DBSynEditComInd.Height > lblComIndex.Height then
    DBSynEditComInd.Height := DBSynEditComInd.Height - lblComIndex.Height;
end;

procedure TfrmSrcTabMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;
  bitbtnUndoOnce.Enabled := Enable;
  bitbtnUndoAll.Enabled := Enable;
  BitBtnBackUP.Enabled := not Enable;
  BitBtnRestore.Enabled := not Enable;
  bitbtnCopy.Enabled := not Enable;
  bitbtnExport.Enabled := not Enable;
end;

end.
