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
  Vcl.Buttons, Vcl.ComCtrls, LibXL, System.RegularExpressions, ShellAPI;

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
    imgLstBtn: TImageList;
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
    imgLstStat: TImageList;
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
    fdQryDictValdict_val: TStringField;
    fdQryDictValdict_lable: TStringField;
    fdQryDictValdict_val_sort: TIntegerField;
    fdQryDictTypedict_type_memo: TStringField;
    fdQryDictValdict_val_memo: TStringField;
    dlgSave1: TSaveDialog;
    bitbtnExport: TBitBtn;
    chkOpen: TCheckBox;
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
    procedure bitbtnTypeUpClick(Sender: TObject);
    procedure bitbtnValUpClick(Sender: TObject);
    procedure bitbtnValDownClick(Sender: TObject);
    procedure bitbtnExitClick(Sender: TObject);
    procedure fdQryDictTypeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure fdQryDictValUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitbtnExportClick(Sender: TObject);
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

    // ����ȡ�����ţ�δ��sql�������Ϊδ����ʱ����ʹpost�������е�ֵ�޷�ȡ��
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
    fdQryDictType['Dict_type_id'] := getGUID; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
    fdQryDictType['dict_type_sort'] := max_sort + 1;
    fdQryDictType.Post;
    DBGridEhSrcTab.SetFocus;
    Abort;
  end;

  if Button = nbDelete then
  begin
    if MessageBox(Handle, 'ɾ�����ֵ䣬��ͬʱɾ�����ֵ�����ֵ��ȷʵҪɾ��ô��', 'ϵͳ��ʾ', MB_YESNO or MB_ICONQUESTION) = ID_NO then
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
  // ShowMessage('1��');
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

    // ����ȡ�����ţ�δ��sql�������Ϊδ����ʱ����ʹpost�������е�ֵ�޷�ȡ��
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
    fdQryDictVal['dict_val_id'] := getGUID; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
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
    // DataSet.Fields[0].AsString := 'δ��';
    // usModified:
    // DataSet.Fields[0].AsString := '�޸�';
    // usInserted:
    // DataSet.Fields[0].AsString := '����';
    // usDeleted:
    // DataSet.Fields[0].AsString := 'ɾ��';
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

procedure TfrmDictMaintain.fdQryDictTypeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmDictMaintain.fdQryDictValUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmDictMaintain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDSchemaAdapterAll.UpdatesPending then
  begin

    case MessageDlg('����޸�δ���棡������˳���', mtInformation, mbYesNoCancel, 0) of
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

end;

procedure TfrmDictMaintain.FormCreate(Sender: TObject);
begin
  // dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003'; // ��Ϊ��ʱ������ʱҪ��ȡini�ļ�
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
end;

procedure TfrmDictMaintain.bitbtnTypeUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQryDictType.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictType['dict_type_sort'];
  bk := fdQryDictType.GetBookmark;
  fdQryDictType.Prior;
  if fdQryDictType.Bof then
  begin
    // MessageDlg('��һ�У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictType['dict_type_sort'];
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := pre_sort;
  fdQryDictType.GotoBookmark(bk);
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := next_sort;
  fdQryDictType.Post; // post�ܹؼ���������Ż���

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
    MessageDlg('û��Ҫ���������ݣ�', mtInformation, [mbOK], 0);
    Exit;
  end;

  dlgSave1.FileName := '�����ֵ�' + datetostr(Now());
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
  // ������ļ���---------------------------
  s_filename := Trim(dlgSave1.FileName);
  // ��ƥ��.XLS,���ļ������䣬�Ҳ��� SaveDialog1.FilterIndex��ѡ��
  if (TRegEx.IsMatch(UpperCase(s_filename), '^[\S]+\.XLS$')) then
    Ext := 'XLS'
  else // ����ƥ��.XLS,�ٿ��Ƿ�ƥ��XLSX
    if (TRegEx.IsMatch(UpperCase(s_filename), '^[\S]+\.XLSX$')) then
      Ext := 'XLSX'
    else
      s_filename := s_filename + '.' + Ext;

  if FileExists(s_filename) then
  begin
    if MessageDlg('������Excel�ļ��Ѵ��ڣ�������', mtWarning, [mbYes, mbNo], 0) = mrNo then
    begin
      Exit;
    end;
  end;

  // ��ȡgrid�й���Ϣ
  masterGridLen := DBGridEhSrcTab.VisibleColumns.Count - 1; // �ֶθ��� ����һ�в�ʹ��
  detailGridLen := DBGridEhSrcCol.VisibleColumns.Count - 1;
  gridLen := Max(masterGridLen, detailGridLen);
  SetLength(a_max_width, gridLen); // ��¼ÿ�п��

  SetLength(aMasterColName, masterGridLen); // ��������
  SetLength(aDetailColName, detailGridLen);
  SetLength(aMasterFieldName, masterGridLen); // �ֶ�������
  SetLength(aDetailFieldName, detailGridLen);

  for i := 0 to masterGridLen - 1 do // ע���һ��״̬�����治ʹ��
  begin
    aMasterColName[i] := DBGridEhSrcTab.VisibleColumns[i + 1].Title.Caption;
    aMasterFieldName[i] := DBGridEhSrcTab.VisibleColumns[i + 1].FieldName;
  end;

  for i := 0 to detailGridLen - 1 do
  begin
    aDetailColName[i] := DBGridEhSrcCol.VisibleColumns[i + 1].Title.Caption;
    aDetailFieldName[i] := DBGridEhSrcCol.VisibleColumns[i + 1].FieldName;
  end;
  // --------׼��Excel����
  if (Ext = 'XLS') then
    xlBook := TBinBook.Create;
  if (Ext = 'XLSX') then
    xlBook := TXmlBook.Create;
  xlBook.setKey('TommoT', 'windows-2421220b07c2e10a6eb96768a2p7r6gc');
  xlSheet := xlBook.addSheet('���ݷ������');

  titleFont := xlBook.addFont;
  titleFont.name := '΢���ź�';
  titleFont.size := 12;
  titleFormat := xlBook.addFormat();
  titleFormat.alignH := ALIGNH_CENTER;
  titleFormat.alignV := ALIGNV_CENTER;
  titleFormat.font := titleFont;

  headerFont := xlBook.addFont;
  headerFont.name := '΢���ź�';
  headerFont.size := 10;
  headerFont.bold := True;
  headerFormat := xlBook.addFormat();
  headerFormat.alignH := ALIGNH_CENTER;
  headerFormat.alignV := ALIGNV_CENTER;
  headerFormat.font := headerFont;
  headerFormat.setBorder(BORDERSTYLE_THIN);

  cellsFont := xlBook.addFont;
  cellsFont.name := '΢���ź�';
  cellsFont.size := 9;
  cellsFormat := xlBook.addFormat();
  cellsFormat.alignH := ALIGNH_LEFT;
  cellsFormat.alignV := ALIGNV_CENTER;
  cellsFormat.font := cellsFont;
  cellsFormat.setBorder(BORDERSTYLE_THIN);

  // �������
  xlSheet.setMerge(0, 0, 0, masterGridLen - 1);
  xlSheet.writeStr(0, 0, PWideChar('�����ֵ䵼��' + datetostr(Now())), titleFormat);
  // �����ֶ�
  for i := 0 to masterGridLen - 1 do
  begin
    xlSheet.writeStr(1, i, PWideChar(aMasterColName[i]), headerFormat);
  end;
  // ѭ������ ����Ƕ��ѭ���ӱ�
  i := 2;
  // fdQryDictType.DisableControls;  ��ʱ��disable���ӱ��޷�����
  // fdQryDictVal.DisableControls;
  DBGridEhSrcTab.Enabled := False;
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

  while not fdQryDictType.Eof do // ѭ������
  begin
    for ci := 0 to masterGridLen - 1 do
    begin
      FieldType := DBGridEhSrcTab.VisibleColumns[ci + 1].Field.DataType;
      if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
        isNum := True
      else
        isNum := False;
      // �ֶ�Ϊ�յĴ���
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
    // �ӱ��ֶ�
    for ci := 0 to detailGridLen - 1 do
    begin
      xlSheet.writeStr(i, ci, PWideChar(aDetailColName[ci]), headerFormat);
    end;
    fdQryDictVal.First;
    i := i + 1;
    while not fdQryDictVal.Eof do
    // ѭ���ӱ�  ,�ӱ�û�м�ʱ��ʾ���������ݼ�
    begin
      for ci := 0 to detailGridLen - 1 do
      begin
        FieldType := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.DataType;
        // FieldType := fdQryDictVal.FieldByName(aDetailFieldName[ci]).DataType;
        if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
          isNum := True
        else
          isNum := False;
        // �ֶ�Ϊ�յĴ���
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
  // ���ÿ��
  for i := 0 to gridLen - 1 do
  begin
    xlSheet.setCol(i, i, a_max_width[i]);
  end;
  //
  xlBook.save(PWideChar(s_filename));
  xlBook.Free;
  fdQryDictType.First;
  // fdQryDictType.EnableControls;
  // fdQryDictVal.EnableControls;
  DBGridEhSrcTab.Enabled := True;

  if (chkOpen.Checked) then
    ShellExecute(Application.Handle, 'Open', pchar(s_filename), nil, nil, SW_SHOWNORMAL)
  else
    ShellExecute(Application.Handle, 'Open', 'explorer.exe', pchar('/select,"' + s_filename + '"'), nil, SW_SHOWNORMAL);

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
    F_DT.FDConSYS.Commit;
    if NumErrors > 0 then
      StatusBar1.SimpleText := '��¼����δȫ������'
    else
      StatusBar1.SimpleText := NumChanges.ToString + ' ��¼�ѱ���';
  except
    F_DT.FDConSYS.Rollback;
  end;
  OnDataChange(nil, nil);
end;

procedure TfrmDictMaintain.bitbtnTypeDownClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQryDictType.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictType['dict_type_sort'];
  bk := fdQryDictType.GetBookmark;
  fdQryDictType.Next;
  if fdQryDictType.Eof then
  begin
    // MessageDlg('����У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictType['dict_type_sort'];
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := pre_sort;
  fdQryDictType.GotoBookmark(bk);
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := next_sort;
  fdQryDictType.Post; // post�ܹؼ���������Ż���

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
  // ����
  if fdQryDictVal.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictVal['dict_val_sort'];
  bk := fdQryDictVal.GetBookmark;
  fdQryDictVal.Next;
  if fdQryDictVal.Eof then
  begin
    // MessageDlg('����У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictVal['dict_val_sort'];
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := pre_sort;
  fdQryDictVal.GotoBookmark(bk);
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := next_sort;
  fdQryDictVal.Post; // post�ܹؼ���������Ż���

end;

procedure TfrmDictMaintain.bitbtnValUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQryDictVal.Eof then
  begin
    Exit;
  end;

  pre_sort := fdQryDictVal['dict_val_sort'];
  bk := fdQryDictVal.GetBookmark;
  fdQryDictVal.Prior;
  if fdQryDictVal.Bof then
  begin
    // MessageDlg('��һ�У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictVal['dict_val_sort'];
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := pre_sort;
  fdQryDictVal.GotoBookmark(bk);
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := next_sort;
  fdQryDictVal.Post; // post�ܹؼ���������Ż���

end;

// �������ݿ⵼����caption��ʾ
procedure TfrmDictMaintain.CHNDBNavigator(ADBNavigator: TDBNavigator);
begin
  TMyNavgator(ADBNavigator).Buttons[nbFirst].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbPrior].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbNext].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbLast].Caption := 'ĩ�� ';
  TMyNavgator(ADBNavigator).Buttons[nbInsert].Caption := '��� ';
  TMyNavgator(ADBNavigator).Buttons[nbDelete].Caption := 'ɾ�� ';
  TMyNavgator(ADBNavigator).Buttons[nbEdit].Caption := '�޸� ';
  TMyNavgator(ADBNavigator).Buttons[nbPost].Caption := '�ύ ';
  TMyNavgator(ADBNavigator).Buttons[nbCancel].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbRefresh].Caption := 'ˢ�� ';
end;

procedure TfrmDictMaintain.OnDataChange(Sender: TObject; Field: TField);
begin
{$IF CompilerVersion >= 29.0}
  ToggleButtons(FDSchemaAdapterAll.UpdatesPending);
  if FDSchemaAdapterAll.UpdatesPending then
    StatusBar1.SimpleText := '����ǰ���� ' + FDSchemaAdapterAll.ChangeCount.ToString + ' ����¼�ı䡣�ֵ����ͱ���' +
      fdQryDictType.ChangeCount.ToString + ' �����ֵ�ֵ������' + fdQryDictVal.ChangeCount.ToString + '����'
  else
{$ENDIF}
    StatusBar1.SimpleText := '����ǰû�м�¼�ı�';
end;

procedure TfrmDictMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;
  bitbtnUndoOnce.Enabled := Enable;
  bitbtnUndoAll.Enabled := Enable;
end;

end.
