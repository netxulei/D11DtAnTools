unit uDictMaintain;

interface

uses
  U_DT, U_Common, Math, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.ODBCBase, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, LibXL, System.RegularExpressions, ShellAPI, System.Zip, Vcl.Grids, Vcl.DBGrids;

type
  TMyNavgator = class(TDBNavigator);

  TfrmDictMaintain = class(TForm)
    dsDictTypeMsDt: TDataSource;
    DBGridEhSrcTab: TDBGridEh;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    dsDictType: TDataSource;
    dsDictVal: TDataSource;
    DBGridEhSrcCol: TDBGridEh;
    flwpnlDt: TFlowPanel;
    dbnvgrDictVal: TDBNavigator;
    bitbtnValUp: TBitBtn;
    bitbtnValDown: TBitBtn;
    flwpnlDictType: TFlowPanel;
    dbnvgrDictType: TDBNavigator;
    bitbtnTypeUp: TBitBtn;
    bitbtnTypeDown: TBitBtn;
    FDSchemaAdapterAll: TFDSchemaAdapter;
    flwpnlTop: TFlowPanel;
    bitbtnUndoOnce: TBitBtn;
    bitbtnUndoAll: TBitBtn;
    bitbtnSave: TBitBtn;
    StatusBar1: TStatusBar;
    fdQryDictType: TFDQuery;
    fdQryDictVal: TFDQuery;
    fdQryDictValmodiState: TStringField;
    FlowPanel1: TFlowPanel;
    fdQryDictTypedict_type_id: TStringField;
    fdQryDictTypedict_type_name_cn: TStringField;
    fdQryDictTypedict_type_name_en: TStringField;
    fdQryDictTypedict_type_sort: TIntegerField;
    fdQryDictTypemodiState: TStringField;
    fdQryDictValdict_val_id: TStringField;
    fdQryDictValdict_type_id: TStringField;
    fdQryDictValdict_lable: TStringField;
    fdQryDictValdict_val_sort: TIntegerField;
    fdQryDictTypedict_type_memo: TStringField;
    fdQryDictValdict_val_memo: TStringField;
    dlgSave1: TSaveDialog;
    bitbtnExport: TBitBtn;
    chkOpen: TCheckBox;
    fdQryDictValdict_val: TStringField;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    fdQryDictValList: TFDQuery;
    fdQrySrcCol: TFDQuery;
    btnUpdateSrcCol: TButton;
    fdQryDictTypeList: TFDQuery;
    BitBtnBackUP: TBitBtn;
    BitBtnRestore: TBitBtn;
    bitbtnExit: TBitBtn;
    FDQryBKMaster: TFDQuery;
    FDQryBKDetail: TFDQuery;
    dlgSaveExport: TSaveDialog;
    dlgOpenRestore: TOpenDialog;
    fdmtblImp: TFDMemTable;
    FDQryTmp: TFDQuery;
    fDCmndUpdateSrc: TFDCommand;
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
    procedure bitbtnTypeUpClick(Sender: TObject);
    procedure bitbtnValUpClick(Sender: TObject);
    procedure bitbtnValDownClick(Sender: TObject);
    procedure bitbtnExitClick(Sender: TObject);
    procedure fdQryDictTypeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure fdQryDictValUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitbtnExportClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnUpdateSrcColClick(Sender: TObject);
    procedure BitBtnBackUPClick(Sender: TObject);
    procedure BitBtnRestoreClick(Sender: TObject);
  private { Private declarations }
    procedure CHNDBNavigator(ADBNavigator: TDBNavigator);
    procedure ToggleButtons(Enable: Boolean);
  public { Public declarations }
  end;

var
  frmDictMaintain: TfrmDictMaintain;

implementation

{$R *.dfm}

procedure TfrmDictMaintain.dbnvgrDictTypeBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
  max_sort: Integer;
begin
  if Button = nbInsert then
  begin

    // 遍历取最大序号，未用sql语句是因为未保存时，即使post，缓存中的值无法取得
    with fdQryDictType do
    begin
      First;
      DisableControls;
      max_sort := 0;
      while not Eof do
      begin
        max_sort := Max(max_sort, fdQryDictType['Dict_type_sort']);
        Next;
      end;
      EnableControls;
    end;
    fdQryDictType.Append;
    fdQryDictType['Dict_type_id'] := getGUID; // 自增量字段不能修改   ，但主表未存盘之前，从表无法增加记录
    fdQryDictType['dict_type_sort'] := max_sort + 1;
    fdQryDictType.Post;
    DBGridEhSrcTab.SetFocus;
    Abort;
  end;

  if Button = nbDelete then
  begin
    if MessageBox(Handle, '删除该字典，将同时删除该字典所有值，确实要删除么？', '系统提示', MB_YESNO or MB_ICONQUESTION) = ID_NO then
      Abort
    else
    begin
      fdQryDictType.Delete;
      Abort;
    end;
  end;

end;

procedure TfrmDictMaintain.dbnvgrDictTypeClick(Sender: TObject; Button: TNavigateBtn);
begin
  // showmessage(fdQryDictType['Dict_type_name_cn']);
  // case Button of
  // nbFirst:
  // ShowMessage('1条');
  // nbNext:
  // ShowMessage(fdQryDictType['Dict_type_name_cn']);
  // ShowMessage(fdQryDictVal['Dict_val']);
  // nbPrior:
  // ShowMessage('3');
  // nbLast:
  // ShowMessage('4');
  // nbDelete:
  // ShowMessage('5');
  // end;
end;

procedure TfrmDictMaintain.dbnvgrDictValBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
  max_sort: Integer;
begin
  if Button = nbInsert then
  begin

    // 遍历取最大序号，未用sql语句是因为未保存时，即使post，缓存中的值无法取得
    with fdQryDictVal do
    begin
      First;
      DisableControls;
      max_sort := 0;
      while not Eof do
      begin
        max_sort := Max(max_sort, fdQryDictVal['dict_val_sort']);
        Next;
      end;
      EnableControls;
    end;
    fdQryDictVal.Append;
    fdQryDictVal['dict_val_id'] := getGUID; // 自增量字段不能修改   ，但主表未存盘之前，从表无法增加记录
    fdQryDictVal['dict_val_sort'] := max_sort + 1;
    fdQryDictVal.Post;
    DBGridEhSrcCol.SetFocus;
    Abort;
  end;

end;

procedure TfrmDictMaintain.StatusCalcFields(DataSet: TDataSet);
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

procedure TfrmDictMaintain.fdQryDictTypeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmDictMaintain.fdQryDictValUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmDictMaintain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdQryDictType.State in [dsEdit, dsInsert] then
    fdQryDictType.Post;
  if fdQryDictVal.State in [dsEdit, dsInsert] then
    fdQryDictVal.Post;

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
    fdQryDictType.close;
    fdQryDictVal.close;
  end;

  Action := caFree;
end;

procedure TfrmDictMaintain.FormCreate(Sender: TObject);
begin
  // dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003'; // 此为暂时，集成时要读取ini文件
{$IF CompilerVersion >= 30.0}
  FDSchemaAdapterAll.UpdateOptions.AutoCommitUpdates := True;
{$ENDIF}
  fdQryDictType.CachedUpdates := True;
  fdQryDictVal.CachedUpdates := True;
  fdQryDictType.Connection := F_DT.FDConSYS;
  fdQryDictVal.Connection := F_DT.FDConSYS;
  fdQryDictType.open();
  fdQryDictVal.open();
  CHNDBNavigator(dbnvgrDictType);
  CHNDBNavigator(dbnvgrDictVal);
  // DBGridEhSrcTab.Columns[0].width:=40;
  // DBGridEhSrcCol.Columns[0].width:=20;
end;

procedure TfrmDictMaintain.bitbtnTypeUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 上移
  if fdQryDictType.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictType['dict_type_sort'];
  bk := fdQryDictType.GetBookmark;
  fdQryDictType.Prior;
  if fdQryDictType.Bof then
  begin
    // MessageDlg('第一行，不能上移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictType['dict_type_sort'];
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := pre_sort;
  fdQryDictType.GotoBookmark(bk);
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := next_sort;
  fdQryDictType.Post; // post很关键，否则序号会乱

end;

procedure TfrmDictMaintain.BitBtnBackUPClick(Sender: TObject);
var
  sFilename, sDictTypeName, sDictValName, sPath: String;
  Zip: TZipFile;
begin
  if FDSchemaAdapterAll.UpdatesPending then
  begin
    MessageDlg('最后修改未保存！请确认信息并保存或撤销修改后再行导出。', mtWarning, [mbOK], 0);
    Exit;
  end;

  dlgSaveExport.FileName := DateToStr(Now) + '.Dict';
  if dlgSaveExport.Execute then
  begin
    sPath := ExtractFilePath(dlgSaveExport.FileName);
    sDictTypeName := sPath + 'DictType.Dic';
    sDictValName := sPath + 'DictVal.Dic';
    sFilename := Trim(dlgSaveExport.FileName);
    if FileExists(sDictTypeName) then
      DeleteFile(sDictTypeName);
    if FileExists(sDictValName) then
      DeleteFile(sDictValName);
    if FileExists(sFilename) then
    begin
      if MessageDlg('字典备份文件已存在，覆盖吗？', mtWarning, [mbYes, mbNo], 0) = mrNo then
      begin
        Exit;
      end;
    end;
    try
      FDQryBKMaster.close;
      FDQryBKDetail.close;

      FDQryBKMaster.Connection := F_DT.FDConSYS;
      FDQryBKMaster.Prepared;
      FDQryBKMaster.open();
      FDQryBKMaster.FetchAll;
      FDQryBKMaster.SaveToFile(sDictTypeName, sfBinary);

      FDQryBKDetail.Connection := F_DT.FDConSYS;
      FDQryBKDetail.Prepared;
      FDQryBKDetail.open();
      FDQryBKDetail.FetchAll;
      FDQryBKDetail.SaveToFile(sDictValName, sfBinary);

      Zip := TZipFile.Create;
      Zip.open(sFilename, TZipMode.zmWrite); // 准备要压缩为sFileName
      Zip.Add(sDictTypeName, 'DictType.Dic'); // 参1是要压缩的文件; 参2是要使用的文件名; 参数3可指定压缩算法
      Zip.Add(sDictValName, 'DictVal.Dic');
      // zip.Add...
      // zip.Close; //Close 时才执行实际压缩过程; 不过在销毁前会调用它
      Zip.Free;
      if FileExists(sDictTypeName) then
        DeleteFile(sDictTypeName);
      if FileExists(sDictValName) then
        DeleteFile(sDictValName);

      MessageDlg('数据字典已导出到' + dlgSaveExport.FileName, mtInformation, [mbOK], 0);
    finally
      FDQryBKMaster.close;
      FDQryBKDetail.close;
    end;
  end;

end;

procedure TfrmDictMaintain.bitbtnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDictMaintain.bitbtnExportClick(Sender: TObject);
var
  aMasterColName: array of string;
  aDetailColName: array of string;
  aMasterFieldName: array of string;
  aDetailFieldName: array of string;
  i, ci, i_pos, masterGridLen, detailGridLen, gridLen: Integer;
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
  if fdQryDictType.RecordCount = 0 then
  begin
    MessageDlg('没有要导出的数据！', mtInformation, [mbOK], 0);
    Exit;
  end;

  dlgSave1.FileName := '数据字典定义' + DateToStr(Now());
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
  gridLen := Max(masterGridLen, detailGridLen);
  SetLength(a_max_width, gridLen); // 记录每列宽度

  SetLength(aMasterColName, masterGridLen); // 列名数组
  SetLength(aDetailColName, detailGridLen);
  SetLength(aMasterFieldName, masterGridLen); // 字段名数组
  SetLength(aDetailFieldName, detailGridLen);

  for i := 0 to masterGridLen - 1 do // 注意第一列状态栏下面不使用
  begin
    aMasterColName[i] := DBGridEhSrcTab.VisibleColumns[i + 1].Title.Caption;
    aMasterFieldName[i] := DBGridEhSrcTab.VisibleColumns[i + 1].FieldName;
  end;

  for i := 0 to detailGridLen - 1 do
  begin
    aDetailColName[i] := DBGridEhSrcCol.VisibleColumns[i + 1].Title.Caption;
    aDetailFieldName[i] := DBGridEhSrcCol.VisibleColumns[i + 1].FieldName;
  end;
  // --------准备Excel导入
  if (Ext = 'XLS') then
    xlBook := TBinBook.Create;
  if (Ext = 'XLSX') then
    xlBook := TXmlBook.Create;
  xlBook.setKey('TommoT', 'windows-2421220b07c2e10a6eb96768a2p7r6gc');
  xlSheet := xlBook.addSheet('数据分析结果');

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
  xlSheet.writeStr(0, 0, PWideChar('数据字典定义导出' + DateToStr(Now())), titleFormat);
  // 主表字段
  for i := 0 to masterGridLen - 1 do
  begin
    xlSheet.writeStr(1, i, PWideChar(aMasterColName[i]), headerFormat);
  end;
  // 循环主表 ，内嵌套循环子表
  i := 2;
  // fdQryDictType.DisableControls;  //此时若disable，从表无法更新
  fdQryDictVal.DisableControls;
  DBGridEhSrcTab.Visible := False;
  // DBGridEhSrcTab.Enabled := False;
  // DBGridEhSrcCol.Enabled := False;
  fdQryDictType.First;
  ValueNum := 0;
  ValueStr := '';
  // while not fdQryDictType.Eof do
  // begin
  // fdQryDictVal.Refresh;
  // fdQryDictVal.First;
  // while not fdQryDictVal.Eof do
  // begin
  // ShowMessage(fdQryDictType['Dict_type_name_cn']);
  // ShowMessage(VarToStrDef(fdQryDictVal['Dict_val'], ''));
  // fdQryDictVal.Next;
  // end;
  // fdQryDictType.Next;
  // end;

  while not fdQryDictType.Eof do // 循环主表
  begin
    for ci := 0 to masterGridLen - 1 do
    begin
      FieldType := DBGridEhSrcTab.VisibleColumns[ci + 1].Field.DataType;
      if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
        isNum := True
      else
        isNum := False;
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
    fdQryDictVal.First;
    i := i + 1;
    while not fdQryDictVal.Eof do
    // 循环子表  ,子表没有及时显示，试着数据集
    begin
      for ci := 0 to detailGridLen - 1 do
      begin
        FieldType := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.DataType;
        // FieldType := fdQryDictVal.FieldByName(aDetailFieldName[ci]).DataType;
        if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
          isNum := True
        else
          isNum := False;
        // 字段为空的处理
        if VarIsNull(DBGridEhSrcCol.VisibleColumns[ci + 1].Field.Value) then
        begin
          if isNum then
            ValueNum := 0
          else
            ValueStr := '';
        end
        else
        begin
          if isNum then
            // ValueNum := fdQryDictVal.FieldByName(aDetailFieldName[ci]).Value
            ValueNum := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.Value
          else
            // ValueStr := fdQryDictVal.FieldByName(aDetailFieldName[ci]).Value;
            ValueStr := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.Value;
        end;
        if isNum then
          xlSheet.writeNum(i, ci, ValueNum, cellsFormat)
        else
          xlSheet.writeStr(i, ci, PWideChar(ValueStr), cellsFormat);
        a_max_width[ci] := Max(a_max_width[ci], Length(ValueStr));
      end;
      i := i + 1;
      fdQryDictVal.Next;
    end;
    i := i + 1;
    fdQryDictType.Next;
  end;
  // 设置宽度
  for i := 0 to gridLen - 1 do
  begin
    xlSheet.setCol(i, i, a_max_width[i]);
  end;
  //
  xlBook.save(PWideChar(s_filename));
  xlBook.Free;
  fdQryDictType.First;
  // fdQryDictType.EnableControls;
  fdQryDictVal.EnableControls;
  // DBGridEhSrcTab.Enabled := True;
  // DBGridEhSrcCol.Enabled := True;
  DBGridEhSrcTab.Visible := True;

  if (chkOpen.Checked) then
    ShellExecute(Application.Handle, 'Open', pchar(s_filename), nil, nil, SW_SHOWNORMAL)
  else
    ShellExecute(Application.Handle, 'Open', 'explorer.exe', pchar('/select,"' + s_filename + '"'), nil, SW_SHOWNORMAL);

end;

procedure TfrmDictMaintain.BitBtnRestoreClick(Sender: TObject);
var
  sFilename, sDictTypeName, sDictValName, sPath: String;
  Zip: TZipFile;
  i: Integer;
begin
  if MessageDlg('字典数据恢复后，当前字典数据将被覆盖，确定吗？', mtWarning, [mbYes, mbNo], 0) = mrNo then
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
        MessageDlg('选中的文件不是字典数据文件！', mtWarning, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      MessageDlg('字典数据备份文件不存在！', mtWarning, [mbOK], 0);
      Exit;
    end;
    sFilename := Trim(dlgOpenRestore.FileName);
    sPath := ExtractFilePath(sFilename);
    sDictTypeName := sPath + 'DictType.Dic';
    sDictValName := sPath + 'DictVal.Dic';
    if FileExists(sDictTypeName) then
      DeleteFile(sDictTypeName);
    if FileExists(sDictValName) then
      DeleteFile(sDictValName);
    // ----解压缩-----
    Zip := TZipFile.Create;
    Zip.open(sFilename, TZipMode.zmRead); // 解压缩的文件sFileName
    Zip.ExtractAll(sPath);
    // zip.Close; //Close 时才执行实际压缩过程; 不过在销毁前会调用它
    Zip.Free;
    // ----------------
    try
      fdQryDictType.close;
      fdQryDictVal.close;
      F_DT.FDConSYS.StartTransaction;
      // ------删除原表----------
      FDQryTmp.close;
      FDQryTmp.Connection := F_DT.FDConSYS;
      FDQryTmp.SQL.Clear;
      FDQryTmp.SQL.Add('TRUNCATE TABLE Dict_Val');
      FDQryTmp.Prepared;
      FDQryTmp.ExecSQL;
      FDQryTmp.close;

      FDQryTmp.Connection := F_DT.FDConSYS;
      FDQryTmp.SQL.Clear;
      FDQryTmp.SQL.Add('DELETE From Dict_type'); // 外键约束，不能truncate
      FDQryTmp.Prepared;
      FDQryTmp.ExecSQL;
      FDQryTmp.close;
      // ----------------------------------
      // ---先恢复主表------------------------------------------------

      FDQryBKMaster.Connection := F_DT.FDConSYS;
      FDQryBKMaster.CachedUpdates := True;
      FDQryBKMaster.Prepared;
      FDQryBKMaster.open();
      FDQryBKMaster.FetchAll;
      // 调入主表备份文件
      fdmtblImp.close;
      fdmtblImp.LoadFromFile(sDictTypeName, sfBinary);
      fdmtblImp.open;
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

      FDQryBKDetail.Connection := F_DT.FDConSYS;
      FDQryBKDetail.CachedUpdates := True;
      FDQryBKDetail.Prepared;
      FDQryBKDetail.open();
      FDQryBKDetail.FetchAll;
      // 调入子表备份文件
      fdmtblImp.close;
      fdmtblImp.LoadFromFile(sDictValName, sfBinary);
      fdmtblImp.open;
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
      F_DT.FDConSYS.commit;
      if FileExists(sDictTypeName) then
        DeleteFile(sDictTypeName);
      if FileExists(sDictValName) then
        DeleteFile(sDictValName);
      // MessageDlg('数据字典已恢复。', mtInformation, [mbOK], 0);

    finally
      FDQryBKMaster.close;
      FDQryBKDetail.close;
      fdmtblImp.close;
      fdQryDictType.open();
      fdQryDictVal.open();
    end;
  end;

end;

procedure TfrmDictMaintain.bitbtnSaveClick(Sender: TObject);
var
  NumErrors: Integer;
  NumChanges: Integer;
begin
  // Ensure that all edits have been posted
  if fdQryDictType.State in dsEditModes then
    fdQryDictType.Post;
  if fdQryDictVal.State in dsEditModes then
    fdQryDictVal.Post;
  F_DT.FDConSYS.StartTransaction;
  try
{$IF CompilerVersion >= 29.0}
    NumChanges := FDSchemaAdapterAll.ChangeCount;
{$ELSE}
    NumChanges := -1;
{$ENDIF}
    NumErrors := FDSchemaAdapterAll.ApplyUpdates(-1);
    F_DT.FDConSYS.commit;
    if NumErrors > 0 then
      StatusBar1.SimpleText := '记录可能未全部保存'
    else
      StatusBar1.SimpleText := NumChanges.ToString + ' 记录已保存';
  except
    F_DT.FDConSYS.Rollback;
  end;
  OnDataChange(nil, nil);
  //更新数据接口表：sql语句卸载控件里
  try
    fDCmndUpdateSrc.Connection := F_DT.FDConSYS;
    fDCmndUpdateSrc.Execute;
    F_DT.FDConSYS.commit;
  except
    F_DT.FDConSYS.Rollback;
  end;

  // btnUpdateSrcCol.Click();
  // btnUpdateSrcColClick(Sender);
end;

procedure TfrmDictMaintain.bitbtnTypeDownClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 下移
  if fdQryDictType.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictType['dict_type_sort'];
  bk := fdQryDictType.GetBookmark;
  fdQryDictType.Next;
  if fdQryDictType.Eof then
  begin
    // MessageDlg('最后行，不能下移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictType['dict_type_sort'];
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := pre_sort;
  fdQryDictType.GotoBookmark(bk);
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := next_sort;
  fdQryDictType.Post; // post很关键，否则序号会乱

end;

procedure TfrmDictMaintain.bitbtnUndoAllClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  FDSchemaAdapterAll.CancelUpdates;
{$ENDIF}
  OnDataChange(nil, nil);
end;

procedure TfrmDictMaintain.bitbtnUndoOnceClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  FDSchemaAdapterAll.UndoLastChange;
{$ENDIF}
  OnDataChange(nil, nil);
end;

procedure TfrmDictMaintain.bitbtnValDownClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 下移
  if fdQryDictVal.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictVal['dict_val_sort'];
  bk := fdQryDictVal.GetBookmark;
  fdQryDictVal.Next;
  if fdQryDictVal.Eof then
  begin
    // MessageDlg('最后行，不能下移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictVal['dict_val_sort'];
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := pre_sort;
  fdQryDictVal.GotoBookmark(bk);
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := next_sort;
  fdQryDictVal.Post; // post很关键，否则序号会乱

end;

procedure TfrmDictMaintain.bitbtnValUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // 上移
  if fdQryDictVal.Eof then
  begin
    Exit;
  end;

  pre_sort := fdQryDictVal['dict_val_sort'];
  bk := fdQryDictVal.GetBookmark;
  fdQryDictVal.Prior;
  if fdQryDictVal.Bof then
  begin
    // MessageDlg('第一行，不能上移！', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictVal['dict_val_sort'];
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := pre_sort;
  fdQryDictVal.GotoBookmark(bk);
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := next_sort;
  fdQryDictVal.Post; // post很关键，否则序号会乱

end;

procedure TfrmDictMaintain.btn1Click(Sender: TObject);
// var
// m: TMatch;
begin
  // m := TRegEx.Match(edt2.text, edt1.text);
  // if m.Success then
  // ShowMessage('OK')
  // else
  // ShowMessage('No')
  // if TRegEx.IsMatch(edt2.text, edt1.text,[roIgnorePatternSpace]) then
  // ShowMessage('OK匹配')
  // else
  // ShowMessage('No不匹配')
end;

procedure TfrmDictMaintain.btnUpdateSrcColClick(Sender: TObject);
var
  srcColID, srcColReg, srcColRegName, dictId, dictVal: string;
begin
{$REGION '存盘后修改源表相关内容,更改三个字段到next时出错，但内容也更改过来了，两个字段没问题，后台表连接方式解决吧'}
  // // 存盘后，源表字段col_dict编码关联、col_reg、col_reg_str  应同时更新
  // fdQryDictTypeList.Connection := F_DT.FDConSYS; // 字典类型列表
  // fdQryDictValList.Connection := F_DT.FDConSYS; // 字典值列表 （子表所有内容）
  // fdQrySrcCol.Connection := F_DT.FDConSYS; // 源表欲修改字段列表
  // fdQryDictTypeList.IndexFieldNames := 'dict_type_id';
  // fdQryDictValList.IndexFieldNames := 'dict_val_id';
  // fdQryDictTypeList.open;
  // fdQryDictValList.open;
  // // fdQrySrcCol.CachedUpdates:=True;
  // // fdQrySrcCol.UpdateOptions.FastUpdates := True;
  // // fdQrySrcCol.Prepared;
  // fdQrySrcCol.close;
  // fdQrySrcCol.open;
  // fdQrySrcCol.First;
  // while not fdQrySrcCol.Eof do // 源表字段逐条处理
  // begin
  // srcColID := VarToStrDef(fdQrySrcCol['col_dict'], '');
  // srcColReg := VarToStrDef(fdQrySrcCol['col_reg'], '');
  // srcColRegName:= VarToStrDef(fdQrySrcCol['col_regName'], '');
  // // fdQrySrcCol.edit;
  // // fdQrySrcCol['col_dict'] := srcColID;
  // // fdQrySrcCol['col_reg'] := srcColReg;
  //
  // if Length(srcColID) > 0 then // 编码关联有内容才处理
  // begin
  // // if not fdQryDictList.LocateEX('col_dict', srcColID, [lxoCheckOnly]) then
  // // 只搜索看看要搜索的数据存在不存在,而不改变当前记录位置 ,找不到清空，找到不处理
  // if not fdQryDictTypeList.findkey([srcColID]) then
  // begin
  // fdQrySrcCol.edit;
  // fdQrySrcCol['col_dict'] := '';
  // // fdQrySrcCol.Post;
  // end;
  // end;
  //
  // if Length(srcColReg) > 0 then // 正则表达式有内容更新，无内容清空col_reg_str
  // begin
  // if not fdQryDictValList.findkey([srcColReg]) then // 若未找到同时清空col_reg和col_reg_str,找到则更新col_reg_str
  // begin
  // fdQrySrcCol.edit;
  // fdQrySrcCol['col_reg'] := '';
  // fdQrySrcCol['col_reg_str'] := '';
  // fdQrySrcCol['col_reg_ok'] := '0';
  // fdQrySrcCol['col_regName'] := '';
  // // fdQrySrcCol.Post;
  // end
  // else
  // begin
  // fdQrySrcCol.edit;
  // fdQrySrcCol['col_reg_str'] := VarToStrDef(fdQryDictValList['dict_val'], '');
  // fdQrySrcCol['col_regName'] := VarToStrDef(fdQryDictValList['dict_lable'], '');;
  // // fdQrySrcCol.Post;
  // end;
  // end
  // else
  // begin
  // fdQrySrcCol.edit;
  // fdQrySrcCol['col_reg_str'] := '';
  // fdQrySrcCol['col_reg_ok'] := '0';
  // fdQrySrcCol['col_regName'] := '';
  // // fdQrySrcCol.Post;
  // end;
  // fdQrySrcCol.Next;
  // end;
  // // fdQrySrcCol.Post;
  // // fdQrySrcCol.ApplyUpdates;
  // fdQryDictTypeList.close;
  // fdQryDictValList.close;
  // fdQrySrcCol.close;
{$ENDREGION}
end;

// 增加数据库导航条caption显示
procedure TfrmDictMaintain.CHNDBNavigator(ADBNavigator: TDBNavigator);
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

procedure TfrmDictMaintain.OnDataChange(Sender: TObject; Field: TField);
begin
{$IF CompilerVersion >= 29.0}
  ToggleButtons(FDSchemaAdapterAll.UpdatesPending);
  if FDSchemaAdapterAll.UpdatesPending then
    StatusBar1.SimpleText := '存盘前存在 ' + FDSchemaAdapterAll.ChangeCount.ToString + ' 条记录改变。字典类型表有' + fdQryDictType.ChangeCount.ToString + ' 条，字典值表中有' +
      fdQryDictVal.ChangeCount.ToString + '条。'
  else
{$ENDIF}
    StatusBar1.SimpleText := '存盘前没有记录改变';
end;

procedure TfrmDictMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;
  bitbtnUndoOnce.Enabled := Enable;
  bitbtnUndoAll.Enabled := Enable;
  BitBtnBackUP.Enabled := not Enable;
  BitBtnRestore.Enabled := not Enable;
end;

end.
