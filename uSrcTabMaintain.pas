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

    // ����ȡ�����ţ�δ��sql�������Ϊδ����ʱ����ʹpost�������е�ֵ�޷�ȡ��
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
    fdQrySrcTab['tab_id'] := getGUID; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
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
    if MessageBox(Handle, 'ɾ�����ֵ䣬��ͬʱɾ�����ֵ�����ֵ��ȷʵҪɾ��ô��', 'ϵͳ��ʾ', MB_YESNO or MB_ICONQUESTION) = ID_NO then
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
  // ShowMessage('1��');
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

    // Ĭ���ֶ��б�
    if Length(cxLookupComboBoxDictList.Text) = 0 then
    begin
      MessageDlg('ѡ���ֶ�������Դ����������ֶ�', mtInformation, [mbOK], 0);
      cxLookupComboBoxDictList.DroppedDown := True;
      Abort;
    end;
    // ShowMessage(cxLookupComboBoxDictList.EditValue);
    // cxDBLookupComboBox.

    fdQryColType.First;
    col_type := fdQryColType['Dict_val'];
    // ����ȡ�����ţ�δ��sql�������Ϊδ����ʱ����ʹpost�������е�ֵ�޷�ȡ��
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
    fdQrySrcCol['col_id'] := getGUID; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
    fdQrySrcCol['col_sort'] := max_sort + 1;
    // Ĭ���ֶ��б�
    // fdQryDictList.First;
    fdQrySrcCol['col_type'] := col_type;
    fdQrySrcCol['col_index'] := '0'; // ǿ��У��Ĭ��Ϊ��ǿ�ƣ���У�鲻ͨ��Ҳ���Ե��룬ֻ��Ӱ�������׼��
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
  // ��ȡ��ǰĿ¼setting��ֵ dict_list_col�ֶ��������ֵ��е��б�id
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  dict_list_col := MyIniFile.ReadString('Other', 'dict_list_col', '');
  dict_list_reg := MyIniFile.ReadString('Other', 'dict_list_reg', '');
  MyIniFile.Free;
  // dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003'; // ��Ϊ��ʱ������ʱҪ��ȡini�ļ�
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
  // �ֵ��б�
  fdQryDictList.open();
  cxLookupComboBoxDictList.EditValue := dict_list_col;
  fdQryReg.open();
  cxLookupComboBoxReg.EditValue := dict_list_reg;
  // ��ʼ���б� �������onvalid�¼�  ����fdqrcoltype���¼���д��
  // //��ֵ����,���ֶ������б�
  // fdQryColType.ParamByName('Dict_type_id').AsString := dict_list_col;
  // fdQryColType.open();
  // ��������������
  CHNDBNavigator(dbnvgrDictType);
  CHNDBNavigator(dbnvgrDictVal);
end;

procedure TfrmSrcTabMaintain.bitbtn3Click(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQrySrcTab.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQrySrcTab['tab_sort'];
  bk := fdQrySrcTab.GetBookmark;
  fdQrySrcTab.Prior;
  if fdQrySrcTab.Bof then
  begin
    // MessageDlg('��һ�У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcTab['tab_sort'];
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := pre_sort;
  fdQrySrcTab.GotoBookmark(bk);
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := next_sort;
  fdQrySrcTab.Post; // post�ܹؼ���������Ż���

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
      StatusBar1.SimpleText := '��¼����δȫ������'
    else
      StatusBar1.SimpleText := NumChanges.ToString + ' ��¼�ѱ���';
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
  // ����
  if fdQrySrcTab.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQrySrcTab['tab_sort'];
  bk := fdQrySrcTab.GetBookmark;
  fdQrySrcTab.Next;
  if fdQrySrcTab.Eof then
  begin
    // MessageDlg('����У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcTab['tab_sort'];
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := pre_sort;
  fdQrySrcTab.GotoBookmark(bk);
  fdQrySrcTab.edit;
  fdQrySrcTab['tab_sort'] := next_sort;
  fdQrySrcTab.Post; // post�ܹؼ���������Ż���

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
  // ����
  if fdQrySrcCol.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQrySrcCol['col_sort'];
  bk := fdQrySrcCol.GetBookmark;
  fdQrySrcCol.Next;
  if fdQrySrcCol.Eof then
  begin
    // MessageDlg('����У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcCol['col_sort'];
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := pre_sort;
  fdQrySrcCol.GotoBookmark(bk);
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := next_sort;
  fdQrySrcCol.Post; // post�ܹؼ���������Ż���

end;

procedure TfrmSrcTabMaintain.bitbtnValUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQrySrcCol.Eof then
  begin
    Exit;
  end;

  pre_sort := fdQrySrcCol['col_sort'];
  bk := fdQrySrcCol.GetBookmark;
  fdQrySrcCol.Prior;
  if fdQrySrcCol.Bof then
  begin
    // MessageDlg('��һ�У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQrySrcCol['col_sort'];
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := pre_sort;
  fdQrySrcCol.GotoBookmark(bk);
  fdQrySrcCol.edit;
  fdQrySrcCol['col_sort'] := next_sort;
  fdQrySrcCol.Post; // post�ܹؼ���������Ż���

end;

// �������ݿ⵼����caption��ʾ
procedure TfrmSrcTabMaintain.CHNDBNavigator(ADBNavigator: TDBNavigator);
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

procedure TfrmSrcTabMaintain.cxLookupComboBoxDictListPropertiesEditValueChanged(Sender: TObject);
var
  iniFilename: string;
  MyIniFile: TIniFile;
begin
  // ShowMessage(cxLookupComboBoxDictList.EditValue);
  if dict_list_col <> cxLookupComboBoxDictList.EditValue then
  begin
    dict_list_col := cxLookupComboBoxDictList.EditValue;
    // д��ini�ļ�

    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'dict_list_col', dict_list_col);
    MyIniFile.Free; // ����
    // ShowMessage('write to ini file');
  end;
  // ��ֵ����,���ֶ������б�
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
    // д��ini�ļ�
    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'dict_list_reg', dict_list_reg);
    MyIniFile.Free; // ����
    // ShowMessage('write to ini file');
  end;
  // ��ֵ����,���ֶ������б�
  fdQryReg.close;
  fdQryReg.ParamByName('Dict_type_id').AsString := dict_list_reg;
  fdQryReg.open();
end;

procedure TfrmSrcTabMaintain.OnDataChange(Sender: TObject; Field: TField);
begin
{$IF CompilerVersion >= 29.0}
  ToggleButtons(FDSchemaAdapterAll.UpdatesPending);
  if FDSchemaAdapterAll.UpdatesPending then
    StatusBar1.SimpleText := '����ǰ���� ' + FDSchemaAdapterAll.ChangeCount.ToString + ' ����¼�ı䡣�ֵ����ͱ���' +
      fdQrySrcTab.ChangeCount.ToString + ' �����ֵ�ֵ������' + fdQrySrcCol.ChangeCount.ToString + '����'
  else
{$ENDIF}
    StatusBar1.SimpleText := '����ǰû�м�¼�ı�';
end;

procedure TfrmSrcTabMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;
  bitbtnUndoOnce.Enabled := Enable;
  bitbtnUndoAll.Enabled := Enable;
end;

end.
