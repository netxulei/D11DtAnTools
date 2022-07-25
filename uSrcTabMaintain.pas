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
    // procedure CreateParams(var Params: TCreateParams); override; // ���ش˷���,ͼ����ʾ��������
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
      // EnableControls;          // append��������could not convert variant of type into type (OleStr),�ŵ�����
    end;
    fdQrySrcTab.Append;
    fdQrySrcTab['tab_id'] := getGUID; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
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
    if MessageBox(Handle, 'ɾ���ýӿڹ淶���ݱ���ͬʱɾ���ñ��ֶζ��壬ȷʵҪɾ��ô��', 'ϵͳ��ʾ', MB_YESNO or MB_ICONQUESTION) = ID_NO then
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
  Action := caFree;
end;

procedure TfrmSrcTabMaintain.FormCreate(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
begin
  // SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);  //��������ʾͼ��
  // ��ȡ��ǰĿ¼setting��ֵ dict_list_col�ֶ��������ֵ��е��б�id
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  dict_list_col := MyIniFile.ReadString('Other', 'dict_list_col', '');
  dict_list_reg := MyIniFile.ReadString('Other', 'dict_list_reg', '');
  dict_list_type := MyIniFile.ReadString('Other', 'dict_list_type', '');
  MyIniFile.Free;
  // dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003'; // ��Ϊ��ʱ������ʱҪ��ȡini�ļ�
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

  // �ֵ��б�
  fdQryDictList.Open();
  // �ֶ�����id
  fdQryColType.Open();
  cxLookupComboBoxDictList.EditValue := dict_list_col;
  // ����ID
  fdQryReg.Open();
  cxLookupComboBoxReg.EditValue := dict_list_reg;
  // ��ҵ���ID
  FDQryTabType.Open();
  cxLookupComboBoxType.EditValue := dict_list_type;

  FDQryCurColLst.Open();

  DBSynEditComInd.Height := lblComIndex.Height;

  // �޸�lookUpֵʱ�������onvalid�¼� ��ÿ���¼�Ӧд�������������fdqrcoltype���¼���д�� ��
  // //��ֵ����,���ֶ������б�
  // fdQryColType.ParamByName('Dict_type_id').AsString := dict_list_col;
  // fdQryColType.open();
  // ��������������
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

procedure TfrmSrcTabMaintain.BitBtnBackUPClick(Sender: TObject);
var
  sFilename, sSrcTabName, sSrcColName, sPath: String;
  Zip: TZipFile;
begin
  if FDSchemaAdapterAll.UpdatesPending then
  begin
    MessageDlg('����޸�δ���棡��ȷ����Ϣ����������޸ĺ����е�����', mtWarning, [mbOK], 0);
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
      if MessageDlg('�ӿڹ淶�����ļ��Ѵ��ڣ�������', mtWarning, [mbYes, mbNo], 0) = mrNo then
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
      Zip.Open(sFilename, TZipMode.zmWrite); // ׼��Ҫѹ��ΪsFileName
      Zip.Add(sSrcTabName, 'SrcTab.Src'); // ��1��Ҫѹ�����ļ�; ��2��Ҫʹ�õ��ļ���; ����3��ָ��ѹ���㷨
      Zip.Add(sSrcColName, 'SrcCol.Src');
      // zip.Add...
      // zip.Close; //Close ʱ��ִ��ʵ��ѹ������; ����������ǰ�������
      Zip.Free;
      if FileExists(sSrcTabName) then
        DeleteFile(sSrcTabName);
      if FileExists(sSrcColName) then
        DeleteFile(sSrcColName);

      MessageDlg('�ӿڹ淶�ѵ�����' + dlgSaveExport.FileName, mtInformation, [mbOK], 0);
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
  // table�����ֶ�
  tab_id, tab_name_cn, tab_name_en, tab_memo, tab_XLS, tab_TXT, txt_split, txt_qualifier, chn_col, GloImp: string;
  tab_sort: Integer;
  tb_type, combIndex: string;
  // col���ֶμ�¼����¼�ӱ����м�¼
  SrcColRec: array of TSrcColRec; // �ֶζ�������
begin

  // ShowMessage(fdQrySrcTab['tab_id']);
  // ShowMessage(IntToStr(fdQrySrcCol.RecordCount));
  // ���table��ǰ��¼ֵ
  if fdQrySrcTab.Eof then
  begin
    MessageDlg('��ѡ��Ҫ���ƵĽӿڹ淶���Ժ����и���', mtInformation, [mbOK], 0);
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

  // ���tabe�����ӱ�����м�¼
  rec_no := fdQrySrcCol.RecordCount;
  if rec_no > 0 then
  begin
    SetLength(SrcColRec, rec_no); // �������鳤��Ϊ�ӱ��¼��
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

    // ���col��������    ������������Ŵ�1��ʼ���ɣ������±�+1����
    // fdQrySrcCol.Last;
    // col_max_sort := fdQrySrcCol['col_sort'];
  end;

  // ����ȡtab�����ţ�δ��sql�������Ϊδ����ʱ����ʹpost�������е�ֵ�޷�ȡ��
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
    // EnableControls;          // append��������could not convert variant of type into type (OleStr),�ŵ�����
  end;

  tab_id := getGUID; // �¼�¼id

  // ����src
  fdQrySrcTab.Append;
  fdQrySrcTab['tab_id'] := tab_id; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
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
  // // ����col
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
    MessageDlg('û��Ҫ���������ݣ�', mtInformation, [mbOK], 0);
    Exit;
  end;

  dlgSave1.FileName := '�ӿڹ淶����' + DateToStr(Now());
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

  SetLength(aMasterColName, masterGridLen); // ��������
  SetLength(aDetailColName, detailGridLen);
  SetLength(aMasterFieldName, masterGridLen); // �ֶ�������
  SetLength(aDetailFieldName, detailGridLen);
  fieldNamesLst := TStringList.Create;
  fieldNamesLst.Delimiter := ';';
  fieldNamesLst.StrictDelimiter := True;
  for i := 0 to masterGridLen - 1 do // ע���һ��״̬�����治ʹ��
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
    if k > 1 then // ��gridvisible����2�������ֶ�  ��ȡ��һ���ֶ�
    begin
      aDetailFieldName[i] := fieldNamesLst[0];
      aDetailColName[i] := DBGridEhSrcCol.VisibleColumns[j].Title.Caption;
      // detailGridLen := detailGridLen + (k - 1); // excel����Ҫ+1
      // SetLength(aDetailColName, detailGridLen); // ����ҲҪ+1
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
  SetLength(a_max_width, gridLen); // ��¼ÿ�п��

  // --------׼��Excel����
  if (Ext = 'XLS') then
    xlBook := TBinBook.Create;
  if (Ext = 'XLSX') then
    xlBook := TXmlBook.Create;
  xlBook.setKey('TommoT', 'windows-2421220b07c2e10a6eb96768a2p7r6gc');
  xlSheet := xlBook.addSheet('�ӿڹ淶����');

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
  xlSheet.writeStr(0, 0, PWideChar('�ӿڹ淶���嵼��' + DateToStr(Now())), titleFormat);
  // �����ֶ�
  for i := 0 to masterGridLen - 1 do
  begin
    xlSheet.writeStr(1, i, PWideChar(aMasterColName[i]), headerFormat);
  end;
  // ѭ������ ����Ƕ��ѭ���ӱ�
  i := 2;
  // fdQrySrcTab.DisableControls;  ��ʱ��disable���ӱ��޷�����
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

  while not fdQrySrcTab.Eof do // ѭ������
  begin
    for ci := 0 to masterGridLen - 1 do
    begin
      FieldType := DBGridEhSrcTab.VisibleColumns[ci + 1].Field.DataType;
      if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
        isNum := True
      else
        isNum := false;
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
    fdQrySrcCol.First;
    i := i + 1;
    while not fdQrySrcCol.Eof do
    // ѭ���ӱ�  ,�ӱ�û�м�ʱ��ʾ���������ݼ�
    begin
      for ci := 0 to detailGridLen - 1 do
      begin
        // FieldType := DBGridEhSrcCol.VisibleColumns[ci + 1].Field.DataType;
        FieldType := fdQrySrcCol.FieldByName(aDetailFieldName[ci]).DataType;
        if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
          isNum := True
        else
          isNum := false;
        // �ֶ�Ϊ�յĴ���
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
            ValueStr := VarToStrDef(DBGridEhSrcCol.VisibleColumns[ci + 1].GetLookupValue, ''); // ȡlookup��ֵ
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
  // ���ÿ��
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
  if MessageDlg('�ָ��󣬵�ǰ���ݽӿڹ淶�������ǣ�ȷ����', mtWarning, [mbYes, mbNo], 0) = mrNo then
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
        MessageDlg('ѡ�е��ļ��������ݽӿڹ淶�����ļ���', mtWarning, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      MessageDlg('���ݽӿڹ淶�����ļ������ڣ�', mtWarning, [mbOK], 0);
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
    // ----��ѹ��-----
    Zip := TZipFile.Create;
    Zip.Open(sFilename, TZipMode.zmRead); // ��ѹ�����ļ�sFileName
    Zip.ExtractAll(sPath);
    // zip.Close; //Close ʱ��ִ��ʵ��ѹ������; ����������ǰ�������
    Zip.Free;
    // ----------------
    try
      fdQrySrcTab.close;
      fdQrySrcCol.close;
      F_DT.FDconSYS.StartTransaction;
      // ------ɾ��ԭ��----------
      FDQryTmp.close;
      FDQryTmp.Connection := F_DT.FDconSYS;
      FDQryTmp.SQL.Clear;
      FDQryTmp.SQL.Add('TRUNCATE TABLE src_column');
      FDQryTmp.Prepared;
      FDQryTmp.ExecSQL;
      FDQryTmp.close;

      FDQryTmp.Connection := F_DT.FDconSYS;
      FDQryTmp.SQL.Clear;
      FDQryTmp.SQL.Add('DELETE From src_table'); // ���Լ��������truncate
      FDQryTmp.Prepared;
      FDQryTmp.ExecSQL;
      FDQryTmp.close;
      // ----------------------------------
      // ---�Ȼָ�����------------------------------------------------

      FDQryBKMaster.Connection := F_DT.FDconSYS;
      FDQryBKMaster.CachedUpdates := True;
      FDQryBKMaster.Prepared;
      FDQryBKMaster.Open();
      FDQryBKMaster.FetchAll;
      // �����������ļ�
      fdmtblImp.close;
      fdmtblImp.LoadFromFile(sSrcTabName, sfBinary);
      fdmtblImp.Open;
      fdmtblImp.DisableControls;
      // �ָ�������
      fdmtblImp.First;
      while not fdmtblImp.Eof do
      begin
        FDQryBKMaster.Append;
        for i := 0 to fdmtblImp.FieldCount - 1 do
          FDQryBKMaster.Fields[i].Value := fdmtblImp.Fields[i].Value;
        fdmtblImp.Next;
      end;
      FDQryBKMaster.ApplyUpdates; // �������

      // ---�ٻָ��ӱ�------------------------------------------------

      FDQryBKDetail.Connection := F_DT.FDconSYS;
      FDQryBKDetail.CachedUpdates := True;
      FDQryBKDetail.Prepared;
      FDQryBKDetail.Open();
      FDQryBKDetail.FetchAll;
      // �����ӱ����ļ�
      fdmtblImp.close;
      fdmtblImp.LoadFromFile(sSrcColName, sfBinary);
      fdmtblImp.Open;
      fdmtblImp.DisableControls;
      // �ָ����ӱ�
      fdmtblImp.First;
      while not fdmtblImp.Eof do
      begin
        FDQryBKDetail.Append;
        for i := 0 to fdmtblImp.FieldCount - 1 do
          FDQryBKDetail.Fields[i].Value := fdmtblImp.Fields[i].Value;
        fdmtblImp.Next;
      end;
      FDQryBKDetail.ApplyUpdates; // �ӱ����
      // ---------------------------------------------------------------
      F_DT.FDconSYS.commit;
      if FileExists(sSrcTabName) then
        DeleteFile(sSrcTabName);
      if FileExists(sSrcColName) then
        DeleteFile(sSrcColName);
      // MessageDlg('�����ֵ��ѻָ���', mtInformation, [mbOK], 0);

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

procedure TfrmSrcTabMaintain.btnDependClick(Sender: TObject);
var
  cur_tab_id, cur_chn_col, sqlText: string; // ��ǰ��id��ʹ����Ӣ���ֶ�
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
    // д��ini�ļ�
    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'dict_list_type', dict_list_type);
    MyIniFile.Free; // ����
    // ShowMessage('write to ini file');
  end;
  // ��ֵ����,���ֶ������б�
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
    StatusBar1.SimpleText := '����ǰ���� ' + FDSchemaAdapterAll.ChangeCount.ToString + ' ����¼�ı䡣���ݱ���' + fdQrySrcTab.ChangeCount.ToString + ' �����ֶζ�������' +
      fdQrySrcCol.ChangeCount.ToString + '����'
  else
{$ENDIF}
    StatusBar1.SimpleText := '����ǰû�м�¼�ı�';

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
