unit uDataImport1;

interface

uses
  IniFiles, u_dt, DateUtils, RegularExpressions, Math, U_Common, Winapi.Windows,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.ValEdit, Vcl.CustomizeDlg, Vcl.ActnMan, Vcl.ActnColorMaps,
  Vcl.Tabs, Vcl.DockTabSet, Vcl.CategoryButtons, Vcl.ComCtrls, Vcl.ExtDlgs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.Mask, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  FireDAC.Comp.UI, LibXL, System.Diagnostics, U_ShowError, FireDAC.VCLUI.Async;

type
  TFrmDataImport = class(TForm)
    fdQrySrcTab: TFDQuery;
    pnl1: TPanel;
    lblSrcTab: TLabel;
    pnl2: TPanel;
    lbledtFileName: TLabeledEdit;
    spbtnFileName: TSpeedButton;
    btnExit: TBitBtn;
    pnl3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblCheck: TLabel;
    pnl4: TPanel;
    Splitter2: TSplitter;
    edt_start: TEdit;
    edt_num: TEdit;
    edt2: TEdit;
    mmo2: TRichEdit;
    dlgOpenDataFile: TOpenDialog;
    cbbCode: TComboBox;
    cxLCbBSrcTab: TcxLookupComboBox;
    dsSrcTab: TDataSource;
    fdQrySrcTabtab_id: TStringField;
    fdQrySrcTabtab_name_cn: TStringField;
    fdQrySrcTabtab_name_en: TStringField;
    fdQrySrcTabtab_XLS: TStringField;
    fdQrySrcTabtab_TXT: TStringField;
    fdQrySrcTabchn_col: TStringField;
    fdQrySrcTabtab_memo: TStringField;
    fdQrySrcTabGloImp: TStringField;
    fdQrySrcTabtab_sort: TIntegerField;
    FDQrySrcCol: TFDQuery;
    chkXLS: TCheckBox;
    chkChnCol: TCheckBox;
    chkTXT: TCheckBox;
    pnlTop: TPanel;
    rgSelSrc: TRadioGroup;
    btnImpTxt: TBitBtn;
    chkForceCode: TCheckBox;
    chkTitle: TCheckBox;
    lblEdtSplt: TLabeledEdit;
    lblEdtQalif: TLabeledEdit;
    btnInfo: TButton;
    lbl2: TLabel;
    Label1: TLabel;
    lbl3: TLabel;
    lbl_line: TLabel;
    strngrd1: TAdvStringGrid;
    lbledtValNo: TLabeledEdit;
    bitbtnErr: TBitBtn;
    rb1: TRadioButton;
    rb2: TRadioButton;
    fdQryExec: TFDQuery;
    fdqryTmp: TFDQuery;
    chkReptCol: TCheckBox;
    fdgxwtcrsr1: TFDGUIxWaitCursor;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdQrySrcTabtxt_split: TStringField;
    fdQrySrcTabtxt_qualifier: TStringField;
    pnlProj: TPanel;
    lblProj: TLabel;
    lblTip: TLabel;
    pnl5: TPanel;
    cxLookupComboBoxType: TcxLookupComboBox;
    lblTabType: TLabel;
    FDQryTabType: TFDQuery;
    dsTabType: TDataSource;
    fdQrySrcTabtype: TStringField;
    fdQrySrcTabcombIndex: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure spbtnFileNameClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnViewClick(Sender: TObject);
    procedure cxLCbBSrcTabPropertiesEditValueChanged(Sender: TObject);
    procedure rgSelSrcClick(Sender: TObject);
    procedure strngrd1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure btnImpTxtClick(Sender: TObject);
    procedure btnValidClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitbtnErrClick(Sender: TObject);
    procedure cxLookupComboBoxTypePropertiesEditValueChanged(Sender: TObject);
    procedure lbledtFileNameDblClick(Sender: TObject);
  private { Private declarations }
    type

    TCol_record = record
      col_name_cn: string; // �ֶ�������������
      col_name_en: string; // ��Ӣ������������
      col_type: string; // �ֶγ�������
      col_all_len: string; // �ֶξ�������
      col_dot_len: string; // �ֶ���������
      col_index: string; // �����ֶ� ��������
      col_rept: string; // �����ֶ�
      col_Dict: string; // ���봦��
      col_date_deal: string; // ���ڴ���
      col_xls_loc: string; // Excel����
      col_reg: string; // ������ʽ�Ĺ�����
      col_reg_str: string; // ������ʽ�Ĺ�����
      col_reg_ok: string; // ������ʽУ�����ͨ��
      col_reg_depcol: string; // У�������ֶ�
      col_reg_depval: string; // �����ֶ�ֵ
      col_name: string; // �����Ƿ������ֶθ�ֵcol_name_cn��col_name_enֵ���������ɽ������
      col_len: string; // �ֶγ��ȣ���������ֶΣ���ֵ��Ҫ����С����
      xls_col_no: Integer; // ��¼Excelÿ����������Ӧ�к�
    end;

  var
    tab_id, tab_name_en, tab_comIndex, is_chn_col, is_XLS, is_TXT: string;
    val_warn: Char; // ָʾ����У�龯���Դ���0�ޣ�1�в�Ӱ�쵼�룬��ѡ��У����̷���
    val_falt: Char; // ָʾ����У��֪���Դ���0�ޣ�1�У�Ӱ�쵼�룬�˳�������� ��У����̷���
    a_Col_record: array of TCol_record; // �ֶ�����      ��У����̷���
    procedure ValidData(s_filename: string; i_start, i_max_count: Integer; dis_or_Val: Char); // �ı��������ʾ����
    procedure ValidDataXLS(s_filename: string; i_start, i_max_count: Integer; dis_or_Val: Char); // Excel�������ʾ����
    procedure ImportTxt;
    procedure ImportExcelDML;
    procedure TxtInfo;
    procedure ExcelInfo;

  public { Public declarations }
  end;

var
  FrmDataImport: TFrmDataImport;

implementation

{$R *.dfm}

procedure TFrmDataImport.btnValidClick(Sender: TObject);
var
  FileExt, s_filename: string; // �ļ������ļ���������
  i, i_start, i_max_count: Integer;
  dis_or_Val: Char;
  str: string;
begin
  dis_or_Val := '1'; // У�� // dis_or_Val:0��ʾ��1У��
  i_start := StrToInt(edt_start.Text);
  i_max_count := StrToInt(edt_num.Text);
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('û��ѡ�������ļ���', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (FileExt = '.TXT') or (FileExt = '.CSV') then
  begin
    if chkTXT.Checked then
    begin
      // �ж��ļ��Ƿ���ʹ�û򲻴���
      if IsFileInUse(s_filename) then
      begin
        MessageDlg('�ļ����ڱ���������ʹ�û򲻴��ڣ��ر���������򿪵ı��ļ����ٵ��룡', mtWarning, [mbOK], 0);
        Abort;
      end;
      ValidData(s_filename, i_start, i_max_count, dis_or_Val)
    end
    else
    begin
      MessageDlg('δѡ��Դ���ݱ������ݲ��ܵ����ı��ļ���', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    if (FileExt = '.XLS') or (FileExt = '.XLSX') then
      if chkXLS.Checked then
      begin
        ValidDataXLS(s_filename, i_start, i_max_count, dis_or_Val);
        MessageDlg('Excel�ļ�ֻ��ʾ���ݹ淶Ҫ����Ϣ������У���ڵ�������ʱ���С�', mtInformation, [mbOK], 0);
      end
      else
      begin
        MessageDlg('δѡ��Դ���ݱ������ݲ��ܵ���Excel�ļ���', mtInformation, [mbOK], 0);
        Abort;
      end
    else
    begin
      lbledtFileName.setfocus;
      MessageDlg('�ļ�����ΪTXT��CSV��XLS��XLSX��ʽ����׺��ʶ����', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  // ShowMessage(IntToStr( mmo2.Lines.Count));
  mmo2.setfocus;
  SendMessage(mmo2.Handle, EM_SCROLLCARET, 0, 0);
end;

procedure TFrmDataImport.btnViewClick(Sender: TObject);
var
  FileExt, s_filename: string; // �ļ������ļ���������
  i_start, i_max_count: Integer;
  dis_or_Val: Char;
begin
  dis_or_Val := '0'; // ��ʾ
  i_start := StrToInt(edt_start.Text);
  i_max_count := StrToInt(edt_num.Text);
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('û��ѡ�������ļ���', mtInformation, [mbOK], 0);
    Abort;
  end;

  if (FileExt = '.TXT') or (FileExt = '.CSV') then
  begin
    // �ж��ļ��Ƿ���ʹ�û򲻴���
    if IsFileInUse(s_filename) then
    begin
      MessageDlg('�ļ����ڱ���������ʹ�û򲻴��ڣ��ر���������򿪵ı��ļ����ٵ��룡', mtWarning, [mbOK], 0);
      Abort;
    end;
    ValidData(s_filename, i_start, i_max_count, dis_or_Val)
  end
  else if (FileExt = '.XLS') or (FileExt = '.XLSX') then
  begin
    ValidDataXLS(s_filename, i_start, i_max_count, dis_or_Val);
    MessageDlg('Excel�ļ�ֻ��ʾ���ݹ淶Ҫ����Ϣ������Ԥ����Ϣ����WPS��Excel��', mtInformation, [mbOK], 0);
  end
  else
  begin
    lbledtFileName.setfocus;
    MessageDlg('�ļ�����ΪTXT��CSV��XLS��XLSX��ʽ����׺��ʶ����', mtInformation, [mbOK], 0);
    Abort;
  end;

  ;
  // dis_or_Val:0��ʾ��1У��
  strngrd1.setfocus;
end;

procedure TFrmDataImport.bitbtnErrClick(Sender: TObject);
begin
  if cbbCode.ItemIndex = 1 then
    t_cbbCode := '1'
  else
    t_cbbCode := '0';
  Application.CreateForm(TF_showError, F_showError);
  F_showError.ShowModal;
end;

procedure TFrmDataImport.btnExitClick(Sender: TObject);
var
  s: string;
  sl: TStringList;
  sa: array of string;
  i: Integer;
begin
  close;
  //
  // if TRegEx.IsMatch(Edit1.Text, Edit2.Text) then
  // begin
  // ShowMessage('Yes��ƥ�䵽')
  // end
  // else
  // ShowMessage('Noδƥ�䵽');
end;

procedure TFrmDataImport.btnImpTxtClick(Sender: TObject);
var
  FileExt, s_filename: string; // �ļ������ļ���������
  // ���Ŀ����Ƿ���ڡ��Ƿ��½�����յ�����һ���������룩�����ǣ��Ͳ���tb_tab���ɣ��ӿ��ٶ�
begin
  if (globle_tab = '0') and (Length(t_proj_no) = 0) then
  begin
    MessageDlg('������Ŀ�й����ݱ�������õ�ǰ���ݷ�������飩��Ŀ��', mtWarning, [mbOK], 0);
    Abort;
  end;
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('û��ѡ�������ļ���', mtInformation, [mbOK], 0);
    Abort;
  end;

  if (FileExt = '.TXT') or (FileExt = '.CSV') then
  begin
    if chkTXT.Checked then
    begin
      // ������
      // ���ϸ���Ԥ���趨�ķָ���ȥ�ָ��ַ�,��֮����ʹ���趨�ָ������ո�tab. ֮�಻�ɼ����ַ�ͬʱ���ַ����ָ�
      if Length(Trim(lblEdtSplt.Text[1])) = 0 then
      begin
        MessageDlg('�뵼���ı��ļ����ָ�������ָ�������ݽӿ�ά���п�����ָ������', mtWarning, [mbOK], 0);
        Abort;
      end;

      // �ж��ļ��Ƿ���ʹ�û򲻴���
      if IsFileInUse(s_filename) then
      begin
        MessageDlg('�ļ����ڱ���������ʹ�û򲻴��ڣ��ر���������򿪵ı��ļ����ٵ��룡', mtWarning, [mbOK], 0);
        Abort;
      end;

      // �����ı�-------------------------------
      ImportTxt;
    end
    else
    begin
      MessageDlg('δѡ��Դ���ݱ������ݲ��ܵ����ı��ļ���', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    if (FileExt = '.XLS') or (FileExt = '.XLSX') then
      if chkXLS.Checked then
        // ImportExcel --------------------------------
        ImportExcelDML
      else
      begin
        MessageDlg('δѡ��Դ���ݱ������ݲ��ܵ���Excel�ļ���', mtInformation, [mbOK], 0);
        Abort;
      end
    else
    begin
      lbledtFileName.setfocus;
      MessageDlg('�ļ�����ΪTXT��CSV��XLS��XLSX��ʽ����׺��ʶ����', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  mmo2.setfocus;
  SendMessage(mmo2.Handle, EM_SCROLLCARET, 0, 0);
end;

procedure TFrmDataImport.btnInfoClick(Sender: TObject);
var
  FileExt, s_filename, txt_type: string;
  is_utf8: Boolean;
  i: Integer;
  rText: TextFile;
  sColumName: string;
  SR: TStreamReader;
begin
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('û��ѡ�������ļ���', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (FileExt = '.TXT') or (FileExt = '.CSV') then
  begin
    TxtInfo
  end
  else
  begin
    if (FileExt = '.XLS') or (FileExt = '.XLSX') then
      ExcelInfo
    else
    begin
      lbledtFileName.setfocus;
      MessageDlg('�ļ�����ΪTXT��CSV��XLS��XLSX��ʽ����׺��ʶ����', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
end;

procedure TFrmDataImport.cxLCbBSrcTabPropertiesEditValueChanged(Sender: TObject);
begin
  // ѡ���б�󣬻�ȡ��Ӧֵ
  tab_id := cxLCbBSrcTab.EditValue;
  if fdQrySrcTab.Locate('tab_id', tab_id, []) then
  begin
    tab_name_en := Trim(VarToStrDef(fdQrySrcTab['tab_name_en'], ''));
    tab_comIndex := Trim(VarToStrDef(fdQrySrcTab['combIndex'], '')); // �������  ���У�ÿ��|�����ָ�
    is_chn_col := Trim(VarToStrDef(fdQrySrcTab['chn_col'], ''));
    is_XLS := Trim(VarToStrDef(fdQrySrcTab['tab_xls'], ''));
    is_TXT := Trim(VarToStrDef(fdQrySrcTab['tab_txt'], ''));
    lblEdtSplt.Text := Trim(VarToStrDef(fdQrySrcTab['txt_split'], ''));
    lblEdtQalif.Text := Trim(VarToStrDef(fdQrySrcTab['txt_qualifier'], ''));

    if is_chn_col = '1' then
      chkChnCol.Checked := True
    else
      chkChnCol.Checked := False;
    if is_XLS = '1' then
      chkXLS.Checked := True
    else
      chkXLS.Checked := False;
    if is_TXT = '1' then
      chkTXT.Checked := True
    else
      chkTXT.Checked := False;

    // ��ֵ����,���ֶ������б�
    FDQrySrcCol.close;
    FDQrySrcCol.ParamByName('tab_id').AsString := tab_id;
    // cxLCbBSrcTab.EditValue;
    FDQrySrcCol.Open();
  end;
end;

procedure TFrmDataImport.cxLookupComboBoxTypePropertiesEditValueChanged(Sender: TObject);
var
  iniFilename: string;
  MyIniFile: TIniFile;
begin
  // ShowMessage(cxLookupComboBoxDictList.EditValue);
  if table_type <> cxLookupComboBoxType.EditValue then
  begin
    table_type := cxLookupComboBoxType.EditValue;
    // д��ini�ļ�
    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'table_type', table_type);
    MyIniFile.Free; // ����
    // ShowMessage('write to ini file');
    FrmDataImport.rgSelSrcClick(Self); // ���µ����
  end;
  // ���µ�����б�
  // todo
  // ��ֵ����,���ֶ������б�
  // FDQryTabType.close;
  // FDQryTabType.ParamByName('Dict_type_id').AsString := dict_list_type;
  // FDQryTabType.open();

end;

procedure TFrmDataImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdQrySrcTab.close;
  FDQrySrcCol.close;
  FDQryTabType.close;
end;

procedure TFrmDataImport.FormCreate(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
begin
  // SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);  //��������ʾͼ��
  // ��ȡ��ǰĿ¼setting��ֵ dict_list_col�ֶ��������ֵ��е��б�id
  globle_tab := '0'; // Ĭ����Ŀ��
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  dict_list_type := MyIniFile.ReadString('Other', 'dict_list_type', '');
  table_type := MyIniFile.ReadString('Other', 'table_type', '0');
  MyIniFile.Free;
  FDQryTabType.Connection := F_DT.FDconSYS;
  FDQryTabType.close;
  FDQryTabType.ParamByName('Dict_type_id').AsString := dict_list_type; // ����dict_list_type��ȡ��ҵ�����б�
  FDQryTabType.Open();
  cxLookupComboBoxType.EditValue := table_type; // ��λ����ҵ����

  if Length(Trim(t_proj_no)) = 0 then
    lblProj.Caption := '---�������õ�ǰ��Ŀ������ʵʩ���ݷ���---'
  else
    lblProj.Caption := '��ǰ��Ŀ��' + t_proj_no + '_' + t_proj_name + '_' + t_Database;
  // // ȫ�ֱ�
  // t_sys_dbname := 'hnxlsys';

  fdQrySrcTab.Connection := F_DT.FDconSYS;
  FDQrySrcCol.Connection := F_DT.FDconSYS;
  // fdQrySrcTab.Open();
  // FDQrySrcCol.Open();
  // ��Ŀ��
  // t_Database := 'ZH_20210813102357';
  F_DT.FDConProj.Connected := False;
  F_DT.FDConProj.ConnectionString := t_connect + t_Database + ';';

  // FDConProj.Params.Add('DriverID=MSSQL');
  // FDConProj.Params.Add('Server=.');
  // FDConProj.Params.Add('Database=' + t_Database);
  // FDConProj.Params.Add('OSAuthent=Yes');
  // FDConProj.Connected := True;
  // ���ô�ģ��ǰ��ֵȷ������ȫ�ֻ��ǻ�����Ŀ�����ݱ�
  FrmDataImport.rgSelSrcClick(Self);

  // if globle_tab = '0' then
  // begin
  // FrmDataImport.Caption := '������Ŀ�����ݲɼ������ݴ�����Ŀ ������Ŀ���ã�';
  // end
  // else
  // begin
  // FrmDataImport.Caption := 'ȫ�����ݲɼ������ݴ���ϵͳ ������Ŀ���ã�';
  // end;
end;

procedure TFrmDataImport.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_ESCAPE) then
    // ������esc,������stopΪtrue
    b_stop := True;
  if Key = Chr(VK_SPACE) then // ������esc,������stopΪtrue
    edt_start.setfocus;
end;

procedure TFrmDataImport.rb1Click(Sender: TObject);
begin
  chkReptCol.Enabled := False;
end;

procedure TFrmDataImport.rb2Click(Sender: TObject);
begin
  chkReptCol.Enabled := True;
end;

procedure TFrmDataImport.rgSelSrcClick(Sender: TObject);
var
  sqltext: string;
begin
  if rgSelSrc.ItemIndex = 0 then
  begin
    globle_tab := '0';
    FrmDataImport.Caption := '��Ŀ���ݵ��루���ݴ�����Ŀ���ݿ� ������Ŀ���ã�';
    sqltext := 'select * from src_table where GloImp = ' + QuotedStr(globle_tab) + ' AND type= ' + QuotedStr(table_type) + ' order by tab_sort';
  end;
  if rgSelSrc.ItemIndex = 1 then // ȫ�ֱ�������ҵ
  begin
    globle_tab := '1';
    FrmDataImport.Caption := 'ȫ�����ݵ��루���ݴ���ϵͳ���ݿ� ����ϵͳ���ݿ�ʹ�ã�';
    sqltext := 'select * from src_table where GloImp = ' + QuotedStr(globle_tab) + ' order by tab_sort';
  end;

  fdQrySrcTab.close;
  fdQrySrcTab.SQL.Clear;
  fdQrySrcTab.SQL.Add(sqltext);
  fdQrySrcTab.Open();
end;

procedure TFrmDataImport.spbtnFileNameClick(Sender: TObject);
begin
  if (chkTXT.Checked) and (not chkXLS.Checked) then
    dlgOpenDataFile.FilterIndex := 2
  else if (not chkTXT.Checked) and (chkXLS.Checked) then
    dlgOpenDataFile.FilterIndex := 3
  else
    dlgOpenDataFile.FilterIndex := 1;

  if dlgOpenDataFile.Execute then
  begin
    lbledtFileName.Text := dlgOpenDataFile.FileName;
    // showmessage(OpenTextFileDialog1.FileName);
  end;
end;

procedure TFrmDataImport.strngrd1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  s: string;
  R: TRect;
begin
  s := Trim(strngrd1.Cells[ACol, ARow]);
  R := Rect;
  with strngrd1 do
  begin
    Canvas.fillRect(Rect);
    // �Ȱ����CELL�ϵ��ָ�Ĩ����Ȼ���ٻ�һ�Σ���֪���ǲ���������������������⡣ϣ��֪����ȷ������������ʾһ��
    DrawText(Canvas.Handle, PChar(s), Length(s), R, DT_WORDBREAK);
  end;
end;

procedure TFrmDataImport.ValidData(s_filename: string; i_start, i_max_count: Integer; dis_or_Val: Char);
// dis_or_Val:0Ԥ����1У��
var
  col_num, // column's amount    //Դ���ݱ��ֶθ�����У��ʱ�Ƚ������ֶγ���ʹ��
  title_count // �����ļ������л��һ�У��ޱ����У��ֶθ���
    : Integer;
  FileExt, txt_type: string; // �ļ������ļ���������
  is_utf8: Boolean;
  dis_ok: Char; // У�����ʱΪ1����ʾ��grid
  i_row, // ��¼������
  i_row_real, // ��¼�ȼ������ݳ�Ϊһ��������
  i_row_real_ini, i_repeat, // ��¼�����ļ�������ʱ��������
  i_a_col_len, i_col_len, i, i_len, i_len_no, i_col, grd_col, grd_row, grd_col_count, grd_row_count, sl_col, sl_count: Integer;
  dis_col: Integer;
  // 0 false,1 true
  rText: TextFile;
  sColumName, sColumName_tmp: string;
  // ��ȡһ������,tmp���������ļ�һ�в�ȫ����һ���ˣ��ٶ�һ�Σ��൱�ڿո���Ҳ������
  slColumName, slColumNameOK: TStringList; // ��ȡ������ת��Ϊ�ַ����б��൱�ڷָ�������
  a_col_len, MaxColLen, // ��¼ÿ���������ĳ���
  MaxColLen_no //
    : array of Integer;
  sqltext: string;
  i_reg: Integer; // ѭ�������ֶ�
begin
  val_falt := '0';
  // �ж�У��ʱ�Ƿ��������Դ����������ֶγ��ȣ��������˳��������
  val_warn := '0'; // �����Դ���
{$REGION ' �ж������ļ��ö�Դ���ݱ������'}
  // s_filename := Trim(lbledtFileName.Text);   //��ڲ���
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  if IfIncludeKG(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('�ļ���������Ŀ¼���а����ո��������ļ������ļ����ڲ����ո��Ŀ¼�У���', mtInformation, [mbOK], 0);
    Abort;
  end;
  if not FileExists(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('�ļ������ڣ�', mtInformation, [mbOK], 0);
    Abort;
  end;

  // У�����ݱ�����Դ���ݱ���Դ���ݱ������� -----------------
  // Դ���ݱ���ѡ���ֶ��б������ݲ���ʾ�ֶ�
  if Length(Trim(VarToStrDef(cxLCbBSrcTab.EditValue, ''))) = 0 then
  begin
    dis_col := 0; // �Ƿ���ʾԴ���ݱ���Ϣ
    if dis_or_Val = '1' then // ��ΪУ�������ѡ��Դ���ݱ�
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('δѡ��Դ���ݱ�����У�飨��Ԥ�������ļ���', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else if FDQrySrcCol.RecordCount <= 0 then
  begin
    dis_col := 0;
    if dis_or_Val = '1' then // ��ΪУ�������ѡ��Դ���ݱ�
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('Դ���ݱ�û��ά��������У�飨��Ԥ�������ļ���', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
    dis_col := 1; // ��ʾԴ���ݱ���Ϣ
{$ENDREGION}
{$REGION '---�ֶ���Ϣ��������a_Col_record,VarToStrDef��ֵתΪ���ַ�---'}
  if dis_col = 1 then
  begin
    // ------------------����Դ���ݱ������Ϣ---------------------------
    col_num := FDQrySrcCol.RecordCount; // Դ���ݱ��ֶ���
    SetLength(a_Col_record, col_num); // �������鳤��
    FDQrySrcCol.First;
    i_col := 0;
    while not FDQrySrcCol.eof do
    begin
      a_Col_record[i_col].col_name_cn := Trim(VarToStrDef(FDQrySrcCol['col_name_cn'], ''));
      a_Col_record[i_col].col_name_en := Trim(VarToStrDef(FDQrySrcCol['col_name_en'], ''));
      a_Col_record[i_col].col_type := Trim(VarToStrDef(FDQrySrcCol['col_type'], ''));
      a_Col_record[i_col].col_all_len := Trim(VarToStrDef(FDQrySrcCol['col_all_len'], ''));
      a_Col_record[i_col].col_dot_len := Trim(VarToStrDef(FDQrySrcCol['col_dot_len'], ''));
      a_Col_record[i_col].col_Dict := Trim(VarToStrDef(FDQrySrcCol['col_Dict'], ''));
      a_Col_record[i_col].col_index := Trim(VarToStrDef(FDQrySrcCol['col_index'], ''));
      a_Col_record[i_col].col_rept := Trim(VarToStrDef(FDQrySrcCol['col_rept'], ''));
      a_Col_record[i_col].col_date_deal := Trim(VarToStrDef(FDQrySrcCol['col_date_deal'], ''));
      a_Col_record[i_col].col_xls_loc := Trim(VarToStrDef(FDQrySrcCol['col_xls_loc'], ''));
      a_Col_record[i_col].col_reg := Trim(VarToStrDef(FDQrySrcCol['col_regName'], ''));
      a_Col_record[i_col].col_reg_str := Trim(VarToStrDef(FDQrySrcCol['col_reg_str'], ''));
      a_Col_record[i_col].col_reg_ok := Trim(VarToStrDef(FDQrySrcCol['col_reg_ok'], ''));
      a_Col_record[i_col].col_reg_depcol := Trim(VarToStrDef(FDQrySrcCol['col_reg_depcol'], ''));
      a_Col_record[i_col].col_reg_depval := Trim(VarToStrDef(FDQrySrcCol['col_reg_depval'], ''));

      // --------------------
      // �ж����ơ����͡����Ȳ���Ϊ�գ����򷵻�
      // ----
      if (is_chn_col = '1') and (Length(a_Col_record[i_col].col_name_cn) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��ֶ��������ơ�δָ�����޷��������ݣ�');
      end;

      if (is_chn_col <> '1') and (Length(a_Col_record[i_col].col_name_en) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��ֶ�Ӣ�����ơ�δָ�����޷��������ݣ�');
      end;

      if Length(a_Col_record[i_col].col_type) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��������͡�δָ�����޷��������ݣ�');
      end;

      if Length(a_Col_record[i_col].col_all_len) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��ֶγ��ȡ�δָ�����޷��������ݣ�');
      end;

      if (LowerCase(a_Col_record[i].col_type) = 'decimal') and (Length(a_Col_record[i_col].col_dot_len) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С�С���㳤�ȡ�δָ�����޷��������ݣ�');
      end;
      if val_falt = '1' then
        exit;

      if is_chn_col = '1' then // col_name�������ʹ�ã�ȷ���˴����Ļ�Ӣ���ֶ�
        a_Col_record[i_col].col_name := a_Col_record[i_col].col_name_cn
      else
        a_Col_record[i_col].col_name := a_Col_record[i_col].col_name_cn;

      if Length(a_Col_record[i_col].col_dot_len) = 0 then
        a_Col_record[i_col].col_len := a_Col_record[i_col].col_all_len
      else
        a_Col_record[i_col].col_len := IntToStr(StrToIntDef(a_Col_record[i_col].col_all_len, 0) + StrToIntDef(a_Col_record[i_col].col_dot_len, 0) + 1);
      FDQrySrcCol.Next;
      Inc(i_col);
    end;
  end;
{$ENDREGION}
  // --------����ǰ��ʼ��----------------------
  // ��ͣ��Ļ��Ӧ
  pnl1.Enabled := False;
  pnl2.Enabled := False;
  pnl3.Enabled := False;
  strngrd1.Visible := False;

  for i := 0 to strngrd1.ColCount - 1 do
    strngrd1.cols[i].Clear; // ���ÿ������

  strngrd1.RowCount := 1; // �к�
  strngrd1.ColCount := 1; // �к�

  strngrd1.ColWidths[0] := 132; // grid��һ�п������
  strngrd1.Cells[0, 0] := '�����к�(ʵ���к�)';
  mmo2.Clear; // �����Ϣ
  mmo2.Visible := True;
  // У���ļ�ʱgrid��ʾ����Ҫ��һЩ
  if dis_or_Val = '1' then
    strngrd1.Height := strngrd1.RowHeights[0] * 5
  else
    strngrd1.Height := pnl4.Height - strngrd1.RowHeights[0] * 5;


  // -------------------------------------------------
{$REGION '----����dis_col��ʾԴ���ֶ���Ϣ-----'}
  if dis_col = 1 then
  begin
    strngrd1.ColCount := col_num + 1;
    // ����Դ���ݱ��ֶ�������ʼ��Grid���� �� +1���ӹ̶�����ʾ��ź�����
    for i_col := 1 to col_num do // 0 ��д���к�
    begin
      strngrd1.Cells[i_col, 0] := IntToStr(i_col);
    end;

    // grid����һ��
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid����һ��
    for i_col := 1 to col_num do // 1��д�����ı���
    begin
      strngrd1.Cells[0, 1] := 'Դ�������ֶ�����';
      strngrd1.Cells[i_col, 1] := a_Col_record[i_col - 1].col_name_cn;
    end;
    // grid����һ��
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid����һ��
    for i_col := 1 to col_num do // 2��д��Ӣ�ı���
    begin
      strngrd1.Cells[0, 2] := 'Դ��Ӣ���ֶ�����';
      strngrd1.Cells[i_col, 2] := a_Col_record[i_col - 1].col_name_en;
    end;
  end;
{$ENDREGION}// -----Դ���ֶ���ʾ����
{$REGION'---������ǿ�Ʊ��룬���жϲ��޸��б�����ֱ��ʹ��CBBCODE��INDEX�����ʽ��ȡ�ļ�--'}
  if not chkForceCode.Checked then
  begin
    txt_type := GetTextType(s_filename);
    if txt_type = 'Utf8' then
    begin
      txt_type := 'BOM����Ϊ' + txt_type + '�����ʽ';
      is_utf8 := True;
    end
    else
    begin
      if txt_type = 'Ansi' then
      // ���BOM��ʽ�ж�ΪAnsi��Ҳ�������ļ�ͷ����Ҫȫ���ж�
      begin
        // ȫ���ж��ַ��������ʽ ----------------------------------
        if IsUtf8File(s_filename) then
        begin
          txt_type := 'ȫ�Ĳ���Ϊutf8����';
          is_utf8 := True;
        end
        else
        begin
          txt_type := 'ȫ�Ĳ���ΪAnsi����';
          is_utf8 := False;
        end
      end
      else
      begin
        txt_type := 'BOM����Ϊ' + txt_type + '�����ʽ';
        is_utf8 := False;
      end;
    end;
    // �趨�������
    if is_utf8 then
    begin
      cbbCode.ItemIndex := 1;
      mmo2.Lines.Add('uft8�����ȡ�ļ�����');
    end
    else
    begin
      cbbCode.ItemIndex := 0;
      mmo2.Lines.Add('ANSI�����ȡ�ļ�����');
    end;

  end
  else
    mmo2.Lines.Add('ǿ�Ʊ����ȡ�ļ�����');
{$ENDREGION}
{$REGION ' ���ݱ����ʽ�����ļ�'}
  if cbbCode.ItemIndex = 1 then
    // SR := TStreamReader.Create(s_filename, TEncoding.UTF8, True)
    AssignFile(rText, s_filename, 65001)
  else
    AssignFile(rText, s_filename);
  // SR := TStreamReader.Create(s_filename, TEncoding.ansi, True);
  Reset(rText);
{$ENDREGION}
  // ��ʼ���ַ����б�
  slColumName := TStringList.Create;
  slColumName.StrictDelimiter := True;
  // ���ϸ���Ԥ���趨�ķָ���ȥ�ָ��ַ�,��֮����ʹ���趨�ָ������ո�tab. ֮�಻�ɼ����ַ�ͬʱ���ַ����ָ�
  slColumName.Delimiter := lblEdtSplt.Text[1];
  if Length(Trim(lblEdtQalif.Text)) > 0 then // ����û���޶����ŵ����
    slColumName.QuoteChar := lblEdtQalif.Text[1];
  // slColumName.QuoteChar := #0; // ���˫�����Զ��ָ���,delphi�߰汾��ͨ�� StrictDelimiter���
  // Ĭ��ֵΪ"�����ܷ���"aaa"|"bbb"|"ccc"�����������⣿����������������
  // slColumName.;
{$REGION'---��һ�����Ǳ��⣬�������ʾ������ʼ�����ӵ�2�п�ʼ---'}
  if chkTitle.Checked then
  begin
    mmo2.Lines.Add('�����ļ����������С���');
    // ��ȡ�����ļ���һ��
    // sColumName := SR.ReadLine;
    Readln(rText, sColumName);
    slColumName.DelimitedText := sColumName; // ���ݵ�������
    // grd_col_count := strngrd1.ColCount; //��ǰ������� ��ֵ������
    sl_count := slColumName.Count; // ��ǰ��������  ��ֵ������
    if strngrd1.ColCount <= sl_count then
      // ���������С�ڵ���������������grid������ȫ��ʾ���ݣ�grid�������ܱȵ�ǰ���������ࣩ
      strngrd1.ColCount := sl_count + 1; // �����������ӵ�������+1�������һ����ʾ����
    // ��¼�������ֶθ��������ڶ�ȡ����������һ�����ݱ����з��ָ�������sqlserver����ȷ���룬delphi�ָ��ˣ�
    title_count := sl_count;
    // ���ݱ����г��ȣ�У��ʱ�Ƚ�col_numʹ�ã�ȷ����ȡ�����ļ�����ҲҪʵ��----------------------------------------------------------------У��-----------------
    strngrd1.RowCount := strngrd1.RowCount + 1; // grid����һ��д�����
    strngrd1.Cells[0, strngrd1.RowCount - 1] := '�����ļ�������'; // �����ļ��б���
    for i_col := 1 to sl_count do // 1��д�����,ͬʱд���кţ���Ϊ���ݿ��ܸ���
    begin
      strngrd1.Cells[i_col, 0] := IntToStr(i_col);
      strngrd1.Cells[i_col, strngrd1.RowCount - 1] := slColumName[i_col - 1];
    end;

    if dis_or_Val = '1' then
      // У�������
      if col_num <> title_count then
      begin
        val_falt := '1';
        mmo2.Lines.Add('�����С�|���ŷָ�ı�ͷ��������ȷ��' + IntToStr(title_count) + '�У���ӦΪ' + IntToStr(col_num) + '�С������޷����룡');
      end

  end
  else
    mmo2.Lines.Add('�����ļ������������У����ݿ��Ե��롭��');
{$ENDREGION}
  // ----------------�������ʾ�����ļ�----------------
  // ���������ļ�
  if dis_or_Val = '1' then
    mmo2.Lines.Add('У���ļ����ݣ�ESC���жϡ���')
  else
    mmo2.Lines.Add('��ʾ�ļ����ݣ�ESC���жϡ���');
  i_row := 1; // ����������1��ʼ  ��ʾʱ�����в�������
  i_row_real := 1; // ��¼�����ļ�ʵ������
  if chkTitle.Checked then
    i_row_real_ini := 1
  else // ��¼�����ļ�ʵ������
    i_row_real_ini := 0;
  i_repeat := 0;
  // i_start := StrToInt(edt_start.Text); // ���ݴ������ʼ����  ����ڲ�����
  i_max_count := i_start + i_max_count; // ���ݴ��������������ʼ��+��������ڲ�����
  b_stop := False;
  try
    while (not eof(rText)) and (i_row < i_max_count) do
    // ע���� EndOfStream ״̬
    begin
      if b_stop then
        Break;
      Application.ProcessMessages;
      // ��һ������
      // sColumName := SR.ReadLine; // �ٶ�һ�����ݣ������Ƿ�������У���ʱ�������еĵ�һ��
      Readln(rText, sColumName);
      slColumName.DelimitedText := sColumName;

{$REGION '�ٶ����ֶκ��ʲ���ȷ������ʱ����'}
      // �������ֶθ���С�ڱ����ֶΣ���һ�У��������ࣨ2�������ٶ���һ�У����롣���Դ�����е����⣿
      // i_repeat := 0;//Ӧ���Ƶ�ѭ��ǰ
      while (slColumName.Count < title_count - 2) and (not eof(rText)) do
      // �����ֶθ�����������ֶθ����Ƚϣ�ȷ���Ƿ��������� .���ޱ����У���һ�����ݲ�������
      begin
        // sColumName_tmp := SR.ReadLine();
        Readln(rText, sColumName_tmp);
        slColumName.DelimitedText := sColumName + sColumName_tmp;
        i_repeat := i_repeat + 1;
      end;
{$ENDREGION}
      // ���i_rowС��i_start���Ͳ�У�� ����ʾ��������һ��ѭ�������ļ���Ҫ˳���ȡ
      if i_row < i_start then
      begin
        i_row := i_row + 1;
        i_row_real := i_row + i_repeat; // ʵ������
        Continue;
      end;
      sl_count := slColumName.Count; // ��ǰ��������

{$REGION 'У������'}
      if dis_or_Val = '1' then
      begin
        dis_ok := '0'; // У��ʱ���������Ƿ���ʾ����
        // 1 �жϱ����Ƿ������ݣ��������ݣ����������жϣ��������
        if sl_count = 0 then
        begin
          mmo2.Lines.Add(IntToStr(i_row) + '��û�����ݣ�Ӧɾ����');
          i_row := i_row + 1;
          Continue;
        end;
        // 2 �ж��ֶ������Ƿ�ƥ��
        if sl_count <> col_num then
        begin
          dis_ok := '1';
          val_falt := '1';
          mmo2.Lines.Add(IntToStr(i_row) + '�����ݷָ������������ȷ��' + IntToStr(sl_count) + '�У���ӦΪ' + IntToStr(col_num) + '�С������޷����룡');
        end;

        // 3 �ж�ÿ���ֶγ����Ƿ���Ϲ淶������Ӱ�쵼�� ;ͬʱÿ���ֶ�У��������ʽ
        for i := 0 to col_num - 1 do
        begin
          if i > sl_count - 1 then
            // �������ֶεĸ�������Դ�������ֶεĸ��������ټ���
            Break;
          // ����������

          if a_Col_record[i].col_date_deal = '1' then
          begin
            var
              m: TMatch;
            var
              sYear, sMonth, sDay: string;
            m := TRegEx.Match(slColumName[i], '^(\d{4})[|\-|\/|\.|��]?(\d{1,2})[|\-|\/|\.|��]?(\d{1,2})[��]?$');
            // �˴�ֻ������ȡ�����յ����ֲ��γ�yyymmdd��ʽ�������Ǻ����ԣ������Կ����ֵ��е�У����ʽ����
            if m.Groups.Count = 4 then // ��ƥ��ֵ��������4������cell_str������������ʽʱҲ����ͨ��
            begin
              // cell_str := m.Groups.Item[0].Value;
              // ��ȡ�����е�����
              sYear := m.Groups.Item[1].Value;
              sMonth := m.Groups.Item[2].Value;
              sDay := m.Groups.Item[3].Value;
              // �����λ����0
              slColumName[i] := StringOfChar('0', 4 - Length(sYear)) + sYear + StringOfChar('0', 2 - Length(sMonth)) + sMonth + StringOfChar('0', 2 - Length(sDay)) + sDay;
            end
            else
            begin
              if (Length(slColumName[i]) <> 0) and (UpperCase(slColumName[i]) <> '@N') then
                mmo2.Lines.Add(IntToStr(i_row) + '�е�' + IntToStr(i + 1) + '�С�' + a_Col_record[i].col_name_cn + '������Ϊ��' + Trim(slColumName[i]) +
                  '�������������ڱ��ʽ�淶yyyymmdd��yyyy-mm-dd��yyyy/mm/dd��yyyy.mm.dd��yyyy��mm��dd�գ�');
            end;
          end;

          // ���һ�����ݳ������ֶ�Ҫ�󳤶�һ�£�sql server�Գ����ֶνضϴ���,�������ִ���ʽ
          // ʵ���ϵ�������������Format='CSV'�����ƾ�û�������ˣ�ͬʱ�������˫�������� ����ʱ���⴦�����һ�У�
          if (i < col_num - 1) and (Length(ansistring(Trim(slColumName[i]))) > StrToInt(a_Col_record[i].col_len)) and (StrToInt(a_Col_record[i].col_len) > 0) then
          // col_len��ת��Ϊ�����֡�Դ�������ֶκ��г���ʱ���жϳ��ȣ��޳�����Ϣ�����������ж�
          begin
            dis_ok := '1';
            val_falt := '1';
            mmo2.Lines.Add(IntToStr(i_row) + '�е�' + IntToStr(i + 1) + '�С�' + a_Col_record[i].col_name_cn + '������Ϊ��' + Trim(slColumName[i]) + '��������' +
              IntToStr(Length(ansistring(Trim(slColumName[i])))) + '�������ݹ淶���ȣ������޷����룡');
          end;

          // �²�sql���������ݵ������⣺���һ�����ݳ������ֶ�Ҫ�󳤶�һ�£�sql server�Գ����ֶνضϴ������һ�����һ�з���û���⣩
          // ���һ�����⴦��һ��
          if (i = col_num - 1) and (Length(ansistring(Trim(slColumName[i]))) >= StrToInt(a_Col_record[i].col_len)) and (StrToInt(a_Col_record[i].col_len) > 0) then
          // col_len��ת��Ϊ�����֡�Դ�������ֶκ��г���ʱ���жϳ��ȣ��޳�����Ϣ�����������ж�
          begin
            dis_ok := '1';
            val_falt := '1';
            mmo2.Lines.Add(IntToStr(i_row) + '�е�' + IntToStr(i + 1) + '��(���һ�У�' + a_Col_record[i].col_name_cn + '����Ϊ��' + Trim(slColumName[i]) + '��������' +
              IntToStr(Length(ansistring(Trim(slColumName[i])))) + '���ڵ������ݹ淶���ȣ������޷����룡');
          end;

          // ������ʽУ�飨�������͵�������ʽ������У�����Ҳ�޷����룩
          // a_Col_record[i].col_reg_str������a_Col_record[i].col_reg_depcolΪ�գ�ֱ��У��
          // a_Col_record[i].col_reg_str������a_Col_record[i].col_reg_depcol���� ��  col_reg_depcol��ʾ���ֶ�����Ϊ����У�飬��Ϊ����col_reg_depvalΪ����ֱ��У�飻
          // �� ��Ϊ����col_reg_depval��Ϊ�գ����ж�col_reg_depcol��ʾ���ֶ������ֶ�ֵΪcol_reg_depval��У�飻
          var
            regValid: string;
          regValid := '0';
          // a_Col_record[i].col_reg_str���ա�a_Col_record[i].col_reg_depcol�գ�У��
          if (Length(a_Col_record[i].col_reg_str) <> 0) and (Length(a_Col_record[i].col_reg_depcol) = 0) then
            regValid := '1';
          // a_Col_record[i].col_reg_str���ա�a_Col_record[i].col_reg_depcol���� ��col_reg_depval�գ�����ֶ�ֵ���� ��У��
          if (Length(a_Col_record[i].col_reg_str) <> 0) and (Length(a_Col_record[i].col_reg_depcol) <> 0) and (Length(a_Col_record[i].col_reg_depval) = 0) then
          begin
            // ѭ���ҵ�����ֶ�
            for i_reg := 0 to col_num - 1 do
              if a_Col_record[i_reg].col_name = Trim(a_Col_record[i].col_reg_depcol) then
                Break;
            if (i_reg < col_num) and (Length(Trim(slColumName[i_reg])) > 0) then
              regValid := '1';
          end;

          // a_Col_record[i].col_reg_str���ա�a_Col_record[i].col_reg_depcol���� ��col_reg_depval���ա�����ֶ�ֵ= col_reg_depval����У��
          if (Length(a_Col_record[i].col_reg_str) <> 0) and (Length(a_Col_record[i].col_reg_depcol) <> 0) and (Length(a_Col_record[i].col_reg_depval) <> 0) then
          // ѭ���ҵ�����ֶ�
          begin
            // ѭ���ҵ�����ֶ�
            for i_reg := 0 to col_num - 1 do
              if a_Col_record[i_reg].col_name = Trim(a_Col_record[i].col_reg_depcol) then
                Break;
            if (i_reg < col_num) and (Trim(slColumName[i_reg]) = a_Col_record[i].col_reg_depval) then
              regValid := '1';
          end;

          if regValid = '1' then
          begin
            if not TRegEx.IsMatch(Trim(slColumName[i]), a_Col_record[i].col_reg_str, [roIgnorePatternSpace]) then
            begin
              dis_ok := '1';
              if a_Col_record[i].col_reg_ok = '1' then
              begin
                mmo2.Lines.Add(IntToStr(i_row) + '�е�' + IntToStr(i + 1) + '��' + a_Col_record[i].col_name_cn + '���ݡ�' + Trim(slColumName[i]) + '���������ϡ�' + a_Col_record[i].col_reg +
                  '��У����������޷����룡');
                val_falt := '1';
              end
              else
              begin
                mmo2.Lines.Add(IntToStr(i_row) + '�е�' + IntToStr(i + 1) + '��' + a_Col_record[i].col_name_cn + '���ݡ�' + Trim(slColumName[i]) + '���������ϡ�' + a_Col_record[i].col_reg +
                  '��У����򡣿��Ե������ݣ���Ӱ�����ݷ���׼ȷ�ԣ�');
                val_warn := '1';
              end;
            end
          end;
        end;
      end;
{$ENDREGION}
      if (dis_or_Val = '1') and (dis_ok = '1') or (dis_or_Val = '0') then
      // ��ʾ�����л����к�
      begin
        // ��Χ���ֶ���󳤶�
        if sl_count > Length(MaxColLen) then
        // �������������ڵ�ǰ�ֶγ�������ĸ����������������鳤�ȣ��Ա�洢�ֶγ���
        begin
          SetLength(MaxColLen, sl_count); // �������ݳ������飨���ո�
          SetLength(MaxColLen_no, sl_count); // �������ݳ������飨�����ո�
        end;

        if strngrd1.ColCount <= sl_count then
          // �������С�ڵ��������У�������ȫ��ʾ���ݣ���Ҫ�������У�grid�������ܱȵ�ǰ���������ࣩ
          strngrd1.ColCount := sl_count + 1; // grid����Ҫ��stringlist��1�� ��0����ʾ����
        grd_row := strngrd1.RowCount;
        strngrd1.RowCount := grd_row + 1; // grid����һ��
        // ������1��grid�к����һ����ʾ������
        strngrd1.Cells[0, grd_row] := IntToStr(i_row) + '(' + IntToStr(i_row_real + i_row_real_ini) + ')'; // д�� ��ʵ���к�
        for i_col := 1 to sl_count do // д������ ͬʱ�����¼ÿ���ֶεĳ��ȵ�����
        begin
          strngrd1.Cells[i_col, grd_row] := slColumName[i_col - 1];
          i_len := Length(ansistring(slColumName[i_col - 1])); // �ֶγ���(���ո�
          i_len_no := Length(ansistring(StringReplace(slColumName[i_col - 1], ' ', '', [rfReplaceAll]))); // �ֶγ���(�����ո�
          // ÿ�����鳤�ȱȽϺ����������������
          if (i_len > MaxColLen[i_col - 1]) or (MaxColLen[i_col - 1] = Null) then
            MaxColLen[i_col - 1] := i_len;
          if (i_len > MaxColLen_no[i_col - 1]) or (MaxColLen_no[i_col - 1] = Null) then
            MaxColLen_no[i_col - 1] := i_len_no;
        end;
      end;

      i_row := i_row + 1;
      i_row_real := i_row + i_repeat; // ʵ������
    end;

    // ��ʾ�����ֶγ���
    i_a_col_len := Length(MaxColLen); // ���鳤��
    if i_a_col_len > 0 then
    begin
      grd_row := strngrd1.RowCount;
      strngrd1.RowCount := grd_row + 2; // grid����2��
      strngrd1.Cells[0, grd_row] := '���ֶγ���(���ո�)';
      strngrd1.Cells[0, grd_row + 1] := '���ֶγ���(�޿ո�)';

      for i_col := 1 to i_a_col_len do // д�볤������
      begin
        strngrd1.Cells[i_col, grd_row] := IntToStr(MaxColLen[i_col - 1]);
        strngrd1.Cells[i_col, grd_row + 1] := IntToStr(MaxColLen_no[i_col - 1]);
        strngrd1.ColWidths[i_col] := Max(MaxColLen_no[i_col - 1] * 7, 80);
        // ����ÿ�п��
      end;
    end;

    if dis_col = 1 then // �����ʾԴ���ݱ��ֶ�������
    begin
      grd_row := strngrd1.RowCount;
      strngrd1.RowCount := grd_row + 1;
      // grid����1��
      strngrd1.Cells[0, grd_row] := 'Դ���ֶγ���';
      for i_col := 1 to col_num do
      // �����д��Դ���ݱ��ܳ���
      begin
        strngrd1.Cells[i_col, grd_row] := a_Col_record[i_col - 1].col_len;
      end;
    end;
    strngrd1.FixedCols := 1;
    if dis_col = 1 then // ѡ��Դ��ʱ0��1��2����Ϊ�̶���
    begin
      if chkTitle.Checked then
        strngrd1.FixedRows := 4
      else
        strngrd1.FixedRows := 3
    end
    else
    begin
      if chkTitle.Checked then
        strngrd1.FixedRows := 2
      else
        strngrd1.FixedRows := 1
    end;

  finally
    // SR.Free;
    CloseFile(rText);
    if b_stop then
      if dis_or_Val = '1' then
      begin
        mmo2.Lines.Add('!!!����У���ж�!!!')
      end
      else
      begin
        mmo2.Lines.Add('!!!������ʾ�ж�!!!')
      end
    else if dis_or_Val = '1' then
    begin
      mmo2.Lines.Add('OK!!!����У�����!!!')
    end
    else
    begin
      mmo2.Lines.Add('OK!!!������ʾ���!!!')
    end;
    mmo2.Lines.Add('ע�⣺ ��ʾ��У�鷢���������󣬿���UltraEdit�ȹ���ȥ��������������ʱ���������ṩ�����ļ���');
    mmo2.Lines.Add('       һ������£�������ȷ�������ڹ淶��Χ��ʱ�����ݿ����������룬������Ӱ�����ģ�͵ľ�׼�ԡ�');
    pnl1.Enabled := True;
    pnl2.Enabled := True;
    pnl3.Enabled := True;
    strngrd1.Visible := True;
  end;
  // �ͷ��ڴ�
  slColumName.Clear;
  slColumName.Free;
  // if slColumName <> nil then
  // FreeAndNil(slColumName);
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
end;

procedure TFrmDataImport.ValidDataXLS(s_filename: string; i_start, i_max_count: Integer; dis_or_Val: Char);
// dis_or_Val:0��ʾ��1У��
var
  col_num, // column's amount    //Դ���ݱ��ֶθ�����У��ʱ�Ƚ������ֶγ���ʹ��
  title_count // �����ļ������л��һ�У��ޱ����У��ֶθ���
    : Integer;
  FileExt, txt_type: string; // �ļ������ļ���������
  is_utf8: Boolean;
  dis_ok: Char; // У�����ʱΪ1����ʾ��grid
  i_row, // ��¼������
  i_row_real, // ��¼�ȼ������ݳ�Ϊһ��������
  i_row_real_ini, i_repeat, // ��¼�����ļ�������ʱ��������
  i_a_col_len, i_col_len, i_len, i_len_no, i_col, grd_col, grd_row, grd_col_count, grd_row_count, sl_col, sl_count: Integer;
  dis_col: Integer;
  // 0 false,1 true
  rText: TextFile;
  sColumName, sColumName_tmp: string;
  // ��ȡһ������,tmp���������ļ�һ�в�ȫ����һ���ˣ��ٶ�һ�Σ��൱�ڿո���Ҳ������
  slColumName, slColumNameOK: TStringList; // ��ȡ������ת��Ϊ�ַ����б��൱�ڷָ�������
  a_col_len, MaxColLen, // ��¼ÿ���������ĳ���
  MaxColLen_no //
    : array of Integer;
  sqltext: string;
  xlBook: TXLBook;
  xlSheet: TXLSheet;
  // strFormat, numFormat: TFormat;
  xlCellType: CellType;
  xld: Double;
  xls: string;
  i, j, xl_page, xl_row_cnt, xl_col_cnt: Integer;
begin
  val_falt := '0';
  // �ж�У��ʱ�Ƿ��������Դ����������ֶγ��ȣ��������˳��������
  val_warn := '0'; // �����Դ���
{$REGION ' �ж������ļ���Դ���ݱ������'}
  // s_filename := Trim(lbledtFileName.Text);   //��ڲ���
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  if IfIncludeKG(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('�ļ���������Ŀ¼���а����ո��������ļ������ļ����ڲ����ո��Ŀ¼�У���', mtInformation, [mbOK], 0);
    Abort;
  end;
  if not FileExists(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('�ļ������ڣ�', mtInformation, [mbOK], 0);
    Abort;
  end;

  // У�����ݱ�����Դ���ݱ���Դ���ݱ������� -----------------
  // Դ���ݱ���ѡ���ֶ��б������ݲ���ʾ�ֶ�
  if Length(Trim(VarToStrDef(cxLCbBSrcTab.EditValue, ''))) = 0 then
  begin
    dis_col := 0; // �Ƿ���ʾԴ���ݱ���Ϣ
    if dis_or_Val = '1' then // ��ΪУ�������ѡ��Դ���ݱ�
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('δѡ��Դ���ݱ�����У����루��Ԥ�������ļ���', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else if FDQrySrcCol.RecordCount <= 0 then
  begin
    dis_col := 0;
    if dis_or_Val = '1' then // ��ΪУ�������ѡ��Դ���ݱ�
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('Դ���ݱ�û��ά��������У����루��Ԥ�������ļ���', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
    dis_col := 1; // ��ʾԴ���ݱ���Ϣ
{$ENDREGION}
{$REGION '---�ֶ���Ϣ��������a_Col_record,VarToStrDef��ֵתΪ���ַ�---'}
  if dis_col = 1 then
  begin
    // ------------------����Դ���ݱ������Ϣ---------------------------
    col_num := FDQrySrcCol.RecordCount; // Դ���ݱ��ֶ���
    SetLength(a_Col_record, col_num); // �������鳤��
    FDQrySrcCol.First;
    i_col := 0;
    while not FDQrySrcCol.eof do
    begin
      a_Col_record[i_col].col_name_cn := VarToStrDef(FDQrySrcCol['col_name_cn'], '');
      a_Col_record[i_col].col_name_en := VarToStrDef(FDQrySrcCol['col_name_en'], '');
      a_Col_record[i_col].col_type := VarToStrDef(FDQrySrcCol['col_type'], '');
      a_Col_record[i_col].col_all_len := VarToStrDef(FDQrySrcCol['col_all_len'], '');
      a_Col_record[i_col].col_dot_len := VarToStrDef(FDQrySrcCol['col_dot_len'], '');
      a_Col_record[i_col].col_Dict := VarToStrDef(FDQrySrcCol['col_Dict'], '');
      a_Col_record[i_col].col_index := VarToStrDef(FDQrySrcCol['col_index'], '');
      a_Col_record[i_col].col_rept := VarToStrDef(FDQrySrcCol['col_rept'], '');
      a_Col_record[i_col].col_date_deal := VarToStrDef(FDQrySrcCol['col_date_deal'], '');
      a_Col_record[i_col].col_xls_loc := VarToStrDef(FDQrySrcCol['col_xls_loc'], '');
      a_Col_record[i_col].col_reg := VarToStrDef(FDQrySrcCol['col_regName'], '');
      a_Col_record[i_col].col_reg_str := VarToStrDef(FDQrySrcCol['col_reg_str'], '');
      a_Col_record[i_col].col_reg_ok := VarToStrDef(FDQrySrcCol['col_reg_ok'], '');
      // --------------------
      if (is_chn_col = '1') and (Length(a_Col_record[i_col].col_name_cn) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��ֶ��������ơ�δָ�����޷��������ݣ�');
      end;

      if (is_chn_col <> '1') and (Length(a_Col_record[i_col].col_name_en) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��ֶ�Ӣ�����ơ�δָ�����޷��������ݣ�');
      end;

      if Length(a_Col_record[i_col].col_type) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��������͡�δָ�����޷��������ݣ�');
      end;

      if Length(a_Col_record[i_col].col_all_len) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С��ֶγ��ȡ�δָ�����޷��������ݣ�');
      end;

      if (LowerCase(a_Col_record[i].col_type) = 'decimal') and (Length(a_Col_record[i_col].col_dot_len) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('��' + cxLCbBSrcTab.Text + '�����ݽӿڶ����С�С���㳤�ȡ�δָ�����޷��������ݣ�');
      end;
      if val_falt = '1' then
        exit;

      if is_chn_col = '1' then // col_name�������ʹ�ã�ȷ���˴����Ļ�Ӣ���ֶ�
        a_Col_record[i_col].col_name := a_Col_record[i_col].col_name_cn
      else
        a_Col_record[i_col].col_name := a_Col_record[i_col].col_name_cn;

      if Length(a_Col_record[i_col].col_dot_len) = 0 then
        a_Col_record[i_col].col_len := a_Col_record[i_col].col_all_len
      else
        a_Col_record[i_col].col_len := IntToStr(StrToIntDef(a_Col_record[i_col].col_all_len, 0) + StrToIntDef(a_Col_record[i_col].col_dot_len, 0) + 1);
      FDQrySrcCol.Next;
      Inc(i_col);
    end;
  end;
{$ENDREGION}
  // --------����ǰ��ʼ��----------------------
  // ��ͣ��Ļ��Ӧ
  // pnl1.Enabled := False;
  // pnl2.Enabled := False;
  // pnl3.Enabled := False;
  // strngrd1.Visible := False;
  for i := 0 to strngrd1.ColCount - 1 do
    strngrd1.cols[i].Clear; // ���ÿ������
  strngrd1.RowCount := 1; // �к�
  strngrd1.ColCount := 1; // �к�
  strngrd1.ColWidths[0] := 132; // grid��һ�п������
  strngrd1.Cells[0, 0] := '�����к�(ʵ���к�)';
  mmo2.Clear; // �����Ϣ
  mmo2.Visible := True;
  // У���ļ�ʱgrid��ʾ����Ҫ��һЩ
  if dis_or_Val = '1' then
    strngrd1.Height := strngrd1.RowHeights[0] * 5
  else
    strngrd1.Height := pnl4.Height - strngrd1.RowHeights[0] * 5;


  // -------------------------------------------------
{$REGION '----����dis_col��ʾԴ���ֶ���Ϣ-----'}
  if dis_col = 1 then
  begin
    strngrd1.ColCount := col_num + 1;
    // ����Դ���ݱ��ֶ�������ʼ��Grid���� �� +1���ӹ̶�����ʾ��ź�����
    for i_col := 1 to col_num do // 0 ��д���к�
    begin
      strngrd1.Cells[i_col, 0] := IntToStr(i_col);
    end;

    // grid����һ��
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid����һ��
    for i_col := 1 to col_num do // 1��д�����ı���
    begin
      strngrd1.Cells[0, 1] := 'Դ�������ֶ�����';
      strngrd1.Cells[i_col, 1] := a_Col_record[i_col - 1].col_name_cn;
    end;
    // grid����һ��
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid����һ��
    for i_col := 1 to col_num do // 2��д��Ӣ�ı���
    begin
      strngrd1.Cells[0, 2] := 'Դ��Ӣ���ֶ�����';
      strngrd1.Cells[i_col, 2] := a_Col_record[i_col - 1].col_name_en;
    end;
  end;
{$ENDREGION}// -----Դ���ֶ���ʾ����

  if dis_col = 1 then // �����ʾԴ���ݱ��ֶ�������
  begin
    grd_row := strngrd1.RowCount;
    strngrd1.RowCount := grd_row + 1;
    // grid����1��
    strngrd1.Cells[0, grd_row] := 'Դ���ֶγ���';
    for i_col := 1 to col_num do
    // �����д��Դ���ݱ��ܳ���
    begin
      strngrd1.Cells[i_col, grd_row] := a_Col_record[i_col - 1].col_len;
    end;
  end;
  strngrd1.FixedCols := 1;
  // if dis_col = 1 then // ѡ��Դ��ʱ0��1��2����Ϊ�̶���
  // begin
  // if chkTitle.Checked then
  // strngrd1.FixedRows := 4
  // else
  // strngrd1.FixedRows := 3
  // end
  // else
  // begin
  // if chkTitle.Checked then
  // strngrd1.FixedRows := 2
  // else
  // strngrd1.FixedRows := 1
  // end;
  // �ͷ��ڴ�
  // slColumName.Clear;
  // slColumName.Free;
  // if slColumName <> nil then
  // FreeAndNil(slColumName);
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
end;

procedure TFrmDataImport.ImportTxt;
var
  FileExt, s_filename, s_error: string; // �ļ������ļ���������
  i, i_start, i_max_count: Integer;
  dis_or_Val: Char;
  col_tmp_str, rept_tmp_where: string;
  col_name_def, col_name_insert, col_name_deal, sqltext: string;
  col_rept_name_s, col_rept_type_s, col_ind_name_s: string; // �����ֶκ������ֶ� ��|�� ����
  col_rept_name_ls, col_rept_type_ls, col_ind_name_ls: TStringList; // ����ʹ��
  t1, t2: TDateTime;
  r1: Real;
  s_codepage: string;
  Sw: TStreamWriter;
  s_type: string;
  is_exist: Char;
  i_dst_cnt, // ԭ���ݵļ�¼��
  i_tmp_cnt, // ��ʱ���¼��
  i_dst_cnt_all: Integer; // ������¼��
  // ���Ŀ����Ƿ���ڡ��Ƿ��½�����յ�����һ���������룩�����ǣ��Ͳ���tb_tab���ɣ��ӿ��ٶ�
  import_OK: Char;
  ErrMsg: string;
begin
  if rb1.Checked then
  begin
    if MessageDlg('ԭ�����ݽ�ȫ����ղ����������滻���Ƿ�ȷ����', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end
  else
  begin
    if MessageDlg('׷�ӷ�ʽ���룬��ϵͳ���жϲ��أ��������ϴ�ʱ���ٶȽ����������Ƿ�ȷ����', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end;
  s_error := ExtractFilePath(ParamStr(0)) + 'error.txt'; // ��¼����ʱ�ĳ�����Ϣ
  try
    if FileExists(s_error) then
    begin
      DeleteFile(s_error);
      DeleteFile(s_error + '.Error.Txt');
    end;
  finally
  end;

  dis_or_Val := '1'; // У��
  i_start := 1;
  i_max_count := Min(StrToInt(lbledtValNo.Text), 1000); // ����ʱ���У��1000��
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  ValidData(s_filename, i_start, i_max_count, dis_or_Val); // ------------------У���ı�����

  if val_falt = '1' then // ���������Դ���
  begin
    mmo2.Lines.Add('�ı��ļ�����У����������Դ��󣨾��������Ϣ���ϣ������ܵ��룡');
    mmo2.Lines.Add('--X--����ʧ��--X--');
    MessageDlg('�ı��ļ�����У����������Դ��������������е��룡', mtError, [mbOK], 0);
    exit;
  end;
  if val_warn = '1' then // ���ھ����Դ���
  begin
    if MessageDlg('�ı��ļ�����У����ڲ�����У��������ݣ��Ƿ�������룿', mtWarning, [mbYes, mbNo], 0) = mrNo then
    begin
      mmo2.Lines.Add('�ı��ļ�����У����ڲ�����У��������ݣ�ѡ���˲��ټ������롣');
      mmo2.Lines.Add('--X--����ʧ��--X--');
      exit;
    end;
  end;

  mmo2.Lines.Add('У����ǰ' + IntToStr(i_max_count) + '�����ݣ�������Ӱ�����ݵ��루ȫ��У���뷵�غ�ʹ��У�鹦�ܣ������濪ʼ���������ļ�����'); // 1.�������ݱ�
  // ��ͣ��Ļ��Ӧ
  // pnl1.Enabled := False;
  // pnl2.Enabled := False;
  // pnl3.Enabled := False;
  fdqryTmp.Connection := F_DT.FDconSYS;
  col_name_def := '(';
  col_name_insert := '';
  col_name_deal := '';
  col_rept_name_s := '';
  col_rept_type_s := '';
  col_ind_name_s := '';
  // ��ȡ�ֶζ����ַ���
  for i := 0 to Length(a_Col_record) - 1 do
  begin
    // -----�ֶζ���---------------------------------------->col_name_def
    col_tmp_str := '';
    // ÿ���ֶ������������ͼ����ȣ����ж����ݳ����Ƿ���ڣ����ж�С���㳤���Ƿ����
    if StrToIntDef(a_Col_record[i].col_all_len, 0) > 0 then
    begin
      col_tmp_str := col_tmp_str + '(' + a_Col_record[i].col_all_len;
      if StrToIntDef(a_Col_record[i].col_dot_len, 0) > 0 then
        col_tmp_str := col_tmp_str + ',' + a_Col_record[i].col_dot_len;
      col_tmp_str := col_tmp_str + ')';
    end;
    col_name_def := col_name_def + '[' + a_Col_record[i].col_name + '] [' + a_Col_record[i].col_type + '] ' + col_tmp_str + ',';

    // ------------------------------------------------------> col_name_def
    //
    // ----�����ֶ�----------------------------------------> col_name_insert
    if i = Length(a_Col_record) - 1 then
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + ']'
    else
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + '],';
    // ----------------------------------------------------> col_name_insert
    // ========�����ֶ�==========================
    if a_Col_record[i].col_rept = '1' then
    begin
      col_rept_name_s := col_rept_name_s + '[' + a_Col_record[i].col_name + '],';
      if (LowerCase(a_Col_record[i].col_type) = 'varchar') then
        col_rept_type_s := col_rept_type_s + '0,' // �ַ�Ϊ0
      else if (LowerCase(a_Col_record[i].col_type) = 'decimal') then
        col_rept_type_s := col_rept_type_s + '1,' // ������1
      else
        col_rept_type_s := col_rept_type_s + '2,'; // ����2
    end;

    // ===================================
    // ========�����ֶ�==========================
    if a_Col_record[i].col_index = '1' then
      col_ind_name_s := col_ind_name_s + '[' + a_Col_record[i].col_name + '],';
    // ===================================
    // ---openrowset���ݼ�ѡ���ֶΣ����Դ���---------------->col_name_deal

    if Length(a_Col_record[i].col_Dict) > 0 then // �����ֶδ���
    begin
      // col_name_deal := '(Case trim(' + a_Col_record[i].col_name + ')';
      sqltext := 'select dict_val,dict_lable from dict_val where dict_type_id = ' + a_Col_record[i].col_Dict.QuotedString;
      // ShowMessage(sqltext);
      // exit;
      fdqryTmp.close;
      fdqryTmp.SQL.Clear;
      fdqryTmp.SQL.Add(sqltext);
      fdqryTmp.Open;
      fdqryTmp.First;
      if not fdqryTmp.eof then
      begin
        col_tmp_str := '(CASE Trim([' + a_Col_record[i].col_name + '])';
        while not fdqryTmp.eof do // ����
        begin
          col_tmp_str := col_tmp_str + ' WHEN ' + '''' + fdqryTmp['dict_val'] + '''' + ' THEN ' + '''' + fdqryTmp['dict_lable'] + ''' ';
          fdqryTmp.Next;
        end;
        col_tmp_str := col_tmp_str + ' ELSE Trim([' + a_Col_record[i].col_name + ']) END) [' + a_Col_record[i].col_name + ']';
        if i = Length(a_Col_record) - 1 then
          col_name_deal := col_name_deal + col_tmp_str
        else
          col_name_deal := col_name_deal + col_tmp_str + ',';
      end
      else
      begin // �������ֵ�û��׼���ã���ֱ��ȡ�ֶ���
        if i = Length(a_Col_record) - 1 then
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + ']'
        else
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + '],';
      end;
      fdqryTmp.close;
    end
    else // �Ǳ����ֶδ���
    begin
      if a_Col_record[i].col_date_deal = '1' then // �����ֶδ��� ��һ��Ǳ����ֶβ����������ֶ�
      begin
        // �����ֶδ��� REgex??????��δ���
        col_tmp_str := 'trim(Replace([' + a_Col_record[i].col_name + '],' + '''' + '-' + '''' + ',' + '''''' + ')) [' + a_Col_record[i].col_name + ']';

        if i = Length(a_Col_record) - 1 then
          col_name_deal := col_name_deal + col_tmp_str
        else
          col_name_deal := col_name_deal + col_tmp_str + ',';

      end
      else
      begin // �������ֶΣ�ֱ��ȡ�ֶ�
        // �����ֶκ���@N�Ĵ���
        if LowerCase(a_Col_record[i].col_type) = 'decimal' then
        begin
          // col_tmp_str := 'trim(Replace([' + a_Col_record[i].col_name + '],' + '''' + '-' + '''' + ',' + '''''' + ')) [' + a_Col_record[i].col_name + ']';
          col_tmp_str := '(CASE ISNUMERIC([' + a_Col_record[i].col_name + ']) WHEN 0 THEN 0 ELSE  cast([' + a_Col_record[i].col_name + '] AS numeric) END) [' +
            a_Col_record[i].col_name + ']';
          if i = Length(a_Col_record) - 1 then
            col_name_deal := col_name_deal + col_tmp_str
          else
            col_name_deal := col_name_deal + col_tmp_str + ',';
        end
        else
        begin
          if LowerCase(a_Col_record[i].col_type) = 'int' then
          begin
            // col_tmp_str := 'trim(Replace([' + a_Col_record[i].col_name + '],' + '''' + '-' + '''' + ',' + '''''' + ')) [' + a_Col_record[i].col_name + ']';
            col_tmp_str := '(CASE ISNUMERIC([' + a_Col_record[i].col_name + ']) WHEN 0 THEN 0 ELSE  cast([' + a_Col_record[i].col_name + '] AS int) END) [' +
              a_Col_record[i].col_name + ']';
            if i = Length(a_Col_record) - 1 then
              col_name_deal := col_name_deal + col_tmp_str
            else
              col_name_deal := col_name_deal + col_tmp_str + ',';
          end
          else
          begin // ���϶����ǣ�Ϊ�����ֶ�
            col_tmp_str := 'trim([' + a_Col_record[i].col_name + ']) [' + a_Col_record[i].col_name + ']';
            if i = Length(a_Col_record) - 1 then
              col_name_deal := col_name_deal + col_tmp_str
            else
              col_name_deal := col_name_deal + col_tmp_str + ',';

            // if i = Length(a_Col_record) - 1 then
            // col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + ']'
            // else
            // col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + '],';
          end;

        end;
      end;
    end;

  end;
  // ----------------------------------------------
  if Length(col_rept_name_s) > 0 then // ׼����stringList��
    col_rept_name_s := Copy(col_rept_name_s, 1, Length(col_rept_name_s) - 1);
  if Length(col_rept_type_s) > 0 then //
    col_rept_type_s := Copy(col_rept_type_s, 1, Length(col_rept_type_s) - 1);
  // ȥ�����һ���ַ�
  if Length(col_ind_name_s) > 0 then
    col_ind_name_s := Copy(col_ind_name_s, 1, Length(col_ind_name_s) - 1);
  // ȥ�����һ���ַ�
  // --------------------------------
  col_name_def := col_name_def + '[id] [bigint] IDENTITY(1,1) not null) ';

  // ����Դ��ѡ�����ݿ�����

  if globle_tab = '0' then
    fdQryExec.Connection := F_DT.FDConProj
  else
    fdQryExec.Connection := F_DT.FDconSYS;

  t1 := Now(); // ��ȡ��ʼ��ʱʱ��
  // -------------------------ɾ����ʱ��-------������ʱ���趨Ϊ�˿�����������---------------
  fdQryExec.DisableControls;
  fdQryExec.close;
  fdQryExec.SQL.Clear;
  sqltext := 'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N' + '''' + '[dbo].[tb_tmp]' + '''' + ') AND type in (N' + '''' + 'U' + '''' + '))' +
    ' DROP TABLE [dbo].[tb_tmp]';
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.ExecSQL;
  // fdQryExec.DisableControls;
  // fdQryExec.Close;
  // ----------------------------------------------------------------------------------------
  // -------------������ʱ�����------------------------------------
  fdQryExec.SQL.Clear;
  sqltext := 'Create table [tb_tmp] ' + col_name_def;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.ExecSQL;
  // fdQryExec.Close;
  // ---------------------------------------------------------------
  // ------------�жϵ�����Ƿ���ڣ��ٸ�����ջ���������ѡ��ȷ���Ƿ�ɾ��------------------------------
  sqltext := 'select name from sysobjects where Name =' + '''' + tab_name_en + '''' + ' and type =' + '''' + 'U' + '''';
  fdQryExec.SQL.Clear;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.Open;
  if fdQryExec.RecordCount > 0 then
    is_exist := '1' // Ŀ���ԭ���Ѵ���
  else
    is_exist := '0';

  // fdQryExec.EnableControls;
  // ������ڲ�����յ��룬��ɾ�����������±�
  if (is_exist = '1') and (rb1.Checked) then
  begin
    // ֱ��ɾ��tb_shzh_gr
    mmo2.Lines.Add('ɾ��ԭ������......');
    fdQryExec.SQL.Clear;
    sqltext := 'drop TABLE [' + tab_name_en + ']';
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    // ���Ŀ���ԭ������
    is_exist := '0';
    // fdQryExec.Close;
  end;
  // // -------------------------------------------------------------------------------------------------------
  // �������ڣ�����׷�ӵ�������������յ���ģ��ؽ��±�
  if is_exist = '0' then
  begin
    // ���������
    mmo2.Lines.Add('�������ݱ�......');
    fdQryExec.SQL.Clear;
    sqltext := 'CREATE TABLE [' + tab_name_en + '] ' + col_name_def;
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    fdQryExec.close;
  end;

  if cbbCode.ItemIndex = 0 then
    s_codepage := '936'
  else
    s_codepage := '65001';

{$REGION '---bcp�ⲿ�������ɸ�ʽ���ļ�---'}
  // ---2.����xml��ʽ���ļ� bcp hnxlsys.dbo.dict_Type format nul -c -x -f dict_type.xml -t "|" -T------------
  // var
  // full_tab_name: string;
  // if globle_tab = '1' then
  // full_tab_name := t_sys_dbname + '.dbo.' + tab_name_en
  // else
  // full_tab_name := t_Database + '.dbo.' + tab_name_en;
  // sqltext := 'bcp ' + full_tab_name + ' format nul -c -x -f format.xml -t "' +
  // Trim(lblEdtSplt.Text) + '" -T';
  // WinExec(PAnsiChar(AnsiString(sqltext)), SW_HIDE);
{$ENDREGION}
{$REGION '===�ֶ�����xml�ļ�==='}
  try
    Sw := TStreamWriter.Create('impFormat.xml');
    Sw.WriteLine('<?xml version="1.0"?>');
    Sw.WriteLine('<BCPFORMAT xmlns="http://schemas.microsoft.com/sqlserver/2004/bulkload/format" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">');
    Sw.WriteLine(' <RECORD>');
    for i := 1 to Length(a_Col_record) do
    begin
      if i < Length(a_Col_record) then
        Sw.WriteLine('  <FIELD ID="' + IntToStr(i) + '" xsi:type="CharTerm" TERMINATOR="' + Trim(lblEdtSplt.Text) + '" MAX_LENGTH="' + a_Col_record[i - 1].col_len + '"/>')
      else
        Sw.WriteLine('  <FIELD ID="' + IntToStr(i) + '" xsi:type="CharTerm" TERMINATOR="\n" MAX_LENGTH="' + a_Col_record[i - 1].col_len + '"/>');
    end;
    Sw.WriteLine(' </RECORD>');
    Sw.WriteLine(' <ROW>');
    for i := 1 to Length(a_Col_record) do
    begin
      // if LowerCase(a_Col_record[i - 1].col_type) = 'int' then
      // s_type := '"SQLINT"'
      // else if LowerCase(a_Col_record[i - 1].col_type) = 'bigint' then
      // s_type := '"SQLBIGINT"'
      // else if LowerCase(a_Col_record[i - 1].col_type) = 'decimal' then
      // s_type := '"SQLDECIMAL" PRECISION="' + a_Col_record[i - 1].col_all_len + '" SCALE="' + a_Col_record[i - 1].col_dot_len + '"'
      // else
      s_type := '"SQLVARYCHAR"';
      Sw.WriteLine(' <COLUMN SOURCE="' + IntToStr(i) + '" NAME="' + a_Col_record[i - 1].col_name + '" xsi:type=' + s_type + '/>')
    end;
    Sw.WriteLine(' </ROW>');
    Sw.WriteLine('</BCPFORMAT>');
  finally
    Sw.Free;
  end;
{$ENDREGION}
  // ��������--------------------------------------------------------------------
  var
    first_row: Integer;
  if chkTitle.Checked then
    first_row := 2
  else
    first_row := 1;

  // ��յ��룬ֱ�ӵ��뵽���У����������й�tmp����ɣ��и����ص�����
  var
    impTab: string;
  if is_exist = '0' then // Ŀ���ԭ�������ڣ�����tmp����
  begin
    impTab := tab_name_en;
    i_dst_cnt := 0;
  end
  else
  begin
    impTab := 'tb_tmp';
    fdQryExec.SQL.Clear;
    sqltext := 'SELECT Count(*) cnt From ' + tab_name_en;
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.Open;
    i_dst_cnt := fdQryExec['cnt']; // ԭ������¼��
    mmo2.Lines.Add('ɾ��ԭ������׼���ؽ���������');
    // ���ԭ������----------------------------
    fdqryTmp.Connection := fdQryExec.Connection;
    fdqryTmp.SQL.Clear;
    sqltext := ' SELECT i.[name] AS indexName  FROM sys.objects t INNER JOIN sys.indexes i ON t.object_id=i.object_id ';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'WHERE t.is_ms_shipped<>1 AND index_id>0 and t.name=' + tab_name_en.QuotedString;
    fdqryTmp.SQL.Add(sqltext);
    fdqryTmp.Prepared;
    fdqryTmp.Open;
    if fdqryTmp.RecordCount > 0 then
    begin
      fdqryTmp.First;
      // --ѭ�����������,----------------------
      fdQryExec.SQL.Clear;
      while not fdqryTmp.eof do
      begin
        sqltext := 'drop index [' + fdqryTmp['indexName'] + '] on [' + tab_name_en + '];';
        fdQryExec.SQL.Add(sqltext);
        fdqryTmp.Next;
      end;
      fdQryExec.Prepared;
      fdQryExec.ExecSQL;
    end;
    fdqryTmp.close;
  end;
  mmo2.Lines.Add('����������⡭��');

  try
    fdQryExec.Connection.StartTransaction;
    // --------insert from bulk---------�����ֶΣ���col_name_deal��������col_name_insert-------------------
    fdQryExec.SQL.Clear;
    sqltext := 'SET ANSI_WARNINGS OFF;'; // �ضϴ���
    fdQryExec.SQL.Add(sqltext);

    sqltext := 'INSERT INTO [' + impTab + ' ](' + col_name_insert + ') ';
    fdQryExec.SQL.Add(sqltext);
    sqltext := 'select ' + col_name_deal;
    fdQryExec.SQL.Add(sqltext);
    // ���޶�����û���޶���Ҫ���֡���ָ��format��fieldqote���ָ���֮��Ļس������ַ���������ָ��������������� ���˻�ϵͳ�����ļ���Ӫ��Χ���ַ�ֶξ������س����з��ŷָ���
    // ��ָ��csv��ʽ��sql�Ĵ��������������ݸ�ʽ�ļ��Զ��ҵ���ȷ��������
    if Length(Trim(lblEdtQalif.Text)) = 0 then
      sqltext := ' FROM OPENROWSET( BULK ''' + s_filename + ''',' + 'FORMATFILE = ''' + ExtractFilePath(ParamStr(0)) + 'impFormat.xml' + ''',firstrow=' + IntToStr(first_row) +
        ',ERRORFILE =''' + s_error + ''',CODEPAGE =''' + s_codepage + ''') AS a'
    else
      sqltext := ' FROM OPENROWSET( BULK ''' + s_filename + ''',' + 'FORMAT=''CSV'',FORMATFILE = ''' + ExtractFilePath(ParamStr(0)) + 'impFormat.xml' + ''',firstrow=' +
        IntToStr(first_row) + ',ERRORFILE =''' + s_error + ''',FIELDQUOTE =''' + Trim(lblEdtQalif.Text) + ''',CODEPAGE =''' + s_codepage + ''') AS a';

    fdQryExec.SQL.Add(sqltext);
    // -------hulk insert --------------------
    // ToDo
    // ---------------------------------------
    // fdQryExec.SQL.SaveToFile('importSQL.txt');
    // Exit;
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    // ----------------------��յ������ԭʼ���ݵĵ��룬��ʱ���빤������--------------------------------------------------------------
    // ��������ʽ��������tmp���ص�Ŀ���
    if is_exist = '1' then // ������ʽ������ԭ���б�����
    begin
      fdQryExec.SQL.Clear;
      // ====��������2 �����ò����ֶ�============
      if (Length(col_rept_name_s) > 0) and (chkReptCol.Checked) then
      // �����ڲ����ֶβ���Ҫ���ô��ֶΣ����ò����ֶε����������������÷���һ
      begin
        col_rept_name_ls := TStringList.Create;
        col_rept_name_ls.StrictDelimiter := True;
        col_rept_name_ls.Delimiter := ',';
        col_rept_name_ls.DelimitedText := col_rept_name_s;
        col_rept_type_ls := TStringList.Create;
        col_rept_type_ls.StrictDelimiter := True;
        col_rept_type_ls.Delimiter := ',';
        col_rept_type_ls.DelimitedText := col_rept_type_s;
        var
          rept_count: Integer;
        rept_count := col_rept_name_ls.Count;
        rept_tmp_where := '';
        for i := 0 to rept_count - 1 do
        begin
          if i < rept_count - 1 then
            if col_rept_type_ls[i] = '0' then
              rept_tmp_where := rept_tmp_where + 'Isnull(a.' + col_rept_name_ls[i] + ','''') = Isnull(b.' + col_rept_name_ls[i] + ','''') AND '
            else
              rept_tmp_where := rept_tmp_where + 'a.' + col_rept_name_ls[i] + ' = b.' + col_rept_name_ls[i] + ' AND '
          else
          begin
            if col_rept_type_ls[i] = '0' then
              rept_tmp_where := rept_tmp_where + 'Isnull(a.' + col_rept_name_ls[i] + ','''') = Isnull(b.' + col_rept_name_ls[i] + ','''')'
            else
              rept_tmp_where := rept_tmp_where + 'a.' + col_rept_name_ls[i] + ' = b.' + col_rept_name_ls[i]
          end;
        end;
        sqltext := 'INSERT INTO ' + tab_name_en + ' Select ' + col_name_insert + ' From tb_tmp a ' + ' Where NOT EXISTS (SELECT ' + col_rept_name_s + ' FROM ' + tab_name_en +
          ' b WHERE ' + rept_tmp_where + ')';
      end
      else
        // ===���ò����ֶΣ���except�ķ���===
        sqltext := 'INSERT INTO ' + tab_name_en + ' Select ' + col_name_insert + ' From tb_tmp except Select ' + col_name_insert + ' From ' + tab_name_en;
      // ===============
      fdQryExec.SQL.Add(sqltext);
      // fdQryExec.SQL.SaveToFile('importSQLAdd.txt');
      fdQryExec.Prepared;
      fdQryExec.ExecSQL;

      // ��ȡtmp���¼�������ɱ�
      fdQryExec.SQL.Clear;
      sqltext := 'SELECT Count(*) cnt From tb_tmp';
      fdQryExec.SQL.Add(sqltext);
      fdQryExec.Prepared;
      fdQryExec.Open;
      i_tmp_cnt := fdQryExec['cnt']; // ���ɱ��¼��

    end;
    // ��ȡĿ�������¼��
    fdQryExec.SQL.Clear;
    sqltext := 'SELECT Count(*) cnt From ' + tab_name_en;
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.Open;
    i_dst_cnt_all := fdQryExec['cnt']; // Ŀ������ռ�¼��
    if i_dst_cnt = 0 then // Ŀ���ԭʼ��¼����Ϊ0��
      i_tmp_cnt := i_dst_cnt_all;
    fdQryExec.close;
    // -------------------------------------------------

    // ===����Ŀ���ķǾۼ�����===
    if Length(col_ind_name_s) > 0 then // ����������
    // �����ڲ����ֶβ���Ҫ���ô��ֶΣ����ò����ֶε����������������÷���һ
    begin
      mmo2.Lines.Add('����������������');
      col_ind_name_ls := TStringList.Create;
      col_ind_name_ls.StrictDelimiter := True;
      col_ind_name_ls.Delimiter := ',';
      col_ind_name_ls.DelimitedText := col_ind_name_s;
      var
        ind_count: Integer;
      ind_count := col_ind_name_ls.Count;
      fdQryExec.SQL.Clear;
      for i := 0 to ind_count - 1 do
      begin
        sqltext := 'create NONCLUSTERED index ' + 'idxIndp' + IntToStr(i) + tab_name_en + ' on ' + tab_name_en + '(' + col_ind_name_ls[i] + ');';
        fdQryExec.SQL.Add(sqltext);
      end;
      // fdQryExec.SQL.SaveToFile('CreateIndex.txt');
      fdQryExec.Prepared;
      fdQryExec.ExecSQL;
    end;
    // ===�����������===
    if Length(tab_comIndex) > 0 then // �������������
    begin

      tab_comIndex := StringReplace(tab_comIndex, #$D#$A, #$A, [rfReplaceAll]); // �滻�س�����Ϊ#$A,һ���������
      tab_comIndex := StringReplace(tab_comIndex, #$D, #$A, [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, ' ', '', [rfReplaceAll]); // ɾ���ո�
      tab_comIndex := StringReplace(tab_comIndex, '��', ',', [rfReplaceAll]); // ��������ֶ�֮��,������
      tab_comIndex := StringReplace(tab_comIndex, '��', ',', [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, '��', ',', [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, '|', ',', [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, ';', ',', [rfReplaceAll]);
      var
        tab_combIndLst: TStringList;
      tab_combIndLst := TStringList.Create;
      tab_combIndLst.StrictDelimiter := True;
      tab_combIndLst.Delimiter := #$A;
      tab_combIndLst.DelimitedText := tab_comIndex;
      mmo2.Lines.Add('���������������');
      var
        ind_count: Integer;
      ind_count := tab_combIndLst.Count;
      fdQryExec.SQL.Clear;
      for i := 0 to ind_count - 1 do
      begin
        sqltext := 'create NONCLUSTERED index ' + 'idxComb' + IntToStr(i) + tab_name_en + ' on ' + tab_name_en + '(' + tab_combIndLst[i] + ');';
        fdQryExec.SQL.Add(sqltext);
      end;
      // fdQryExec.SQL.SaveToFile('CreateIndex.txt');
      fdQryExec.Prepared;
      fdQryExec.ExecSQL;
    end;
    // =================
    fdQryExec.Connection.commit;
    import_OK := '1';
  except
    fdQryExec.Connection.rollback;
    import_OK := '0';
    ErrMsg := Exception(ExceptObject).Message;
    ErrMsg := TRegEx.Replace(ErrMsg, '\[[\S|\s]*\]', ''); // �滻֮���ַ���Ϊ��
    ErrMsg := TRegEx.Replace(ErrMsg, '����[\S|\s]*\(�ض�\).', '���ݳ��ȳ������ݹ淶���ȡ�'); //
  end;
  fdqryTmp.close;
  fdQryExec.close;
  if FileExists('impFormat.xml') then
    DeleteFile('impFormat.xml');

  if import_OK = '0' then
  begin
    mmo2.Lines.Add(ErrMsg);
    mmo2.Lines.Add('Ԥ����У��������ݣ����ڱ������в鿴���г��������');
    mmo2.Lines.Add('--X--����ʧ�ܣ�--X--');
    MessageDlg('����ʧ��:' + PChar(ErrMsg), mtError, [mbOK], 0);
  end
  else
  begin
    t2 := Now(); // ��ȡ������ʱʱ��
    r1 := SecondsBetween(t2, t1); // ȡ�ü�ʱʱ�䣬��λ��(s)
    r1 := MilliSecondsBetween(t2, t1) / 1000;
    mmo2.Lines.Add('--��--����ɹ���--��--');
    mmo2.Lines.Add('���ε��뻨��ʱ�䣨' + FormatFloat('0.00', r1) + '�룩��');
    mmo2.Lines.Add('ϵͳԭ�����ݣ�' + IntToStr(i_dst_cnt) + '���������ļ���' + IntToStr(i_tmp_cnt) + '��;����ɹ���' + IntToStr(i_dst_cnt_all - i_dst_cnt) + '����');
  end;
  mmo2.setfocus;
  SendMessage(mmo2.Handle, EM_SCROLLCARET, 0, 0);
  // ------------------------------------------------------------------------------
  pnl1.Enabled := True;
  pnl2.Enabled := True;
  pnl3.Enabled := True;
end;

procedure TFrmDataImport.lbledtFileNameDblClick(Sender: TObject);
begin
  FrmDataImport.spbtnFileNameClick(Sender);
end;

procedure TFrmDataImport.ImportExcelDML;
const
  BatchSize = 1000; // ������DML�������ݿ��ÿ�����μ�¼��
var
  FileExt, s_filename, s_error: string; // �ļ������ļ���������
  a_col_rec_len: Integer; // �淶���ֶγ���
  i, j, k, i_param, i_tmp, grd_row, i_start, i_max_count: Integer;
  dis_or_Val: Char;
  dis_ok: Char; // У�����ʱΪ1����ʾ��grid
  col_tmp_str, rept_tmp_where: string;
  col_name_def, col_name_insert, col_name_param, col_name_deal, sqltext: string;
  col_rept_name_s, col_rept_type_s, col_ind_name_s: string;
  // �����ֶκ������ֶ� ��|�� ����     ,col_rept_type_lsͬʱ��¼�����ֶε����ͣ�����ȷ����where�Ӿ�ʱ
  col_rept_name_ls, col_rept_type_ls, col_ind_name_ls: TStringList; // ����ʹ��
  t1, t2: TDateTime;
  r1: Real;
  // StopWatch: TStopWatch;
  is_exist: Char;
  i_dst_cnt, // ԭ���ݵļ�¼��
  i_tmp_cnt, // ��ʱ���¼��
  i_dst_cnt_all: Integer; // ������¼��

  xlBook: TXLBook;
  xlSheet: TXLSheet;
  xl_page, xl_row_cnt, xl_col_cnt, in_ok, in_not, batchMod: Integer;
  // batchMod Ϊxl_row_cn / BatchSize������
  // strFormat, numFormat: TFormat;
  xlCellType: CellType;
  year, month, day: Integer;
  a_colNames: array of string; // Excelÿ������
  cell_str: ansistring; // ��Ԫ������
  cell_str_all: ansistring; // �������ӵ�Ԫ�񣬸��ݳ����жϱ����Ƿ�Ϊ��
  cell_int: Integer;
  cell_float: Real;
  sl_col_xls_cloc: TStringList;
  // Դ��excel����a_Col_record[i].col_xls_loc��ֵ�� sl_xls_colNames.delimetetertetx
  Find_state: Integer; // ��¼�������в����б��״̬,��ָ�������뺯��
  colSrcYesXlsNo, // Դ���У�excel��
  colSrcNoXlsYes, // Excel�У�Դ����
  colSrcYesXlsMore // Excel�У�Դ����
    : string; // ÿ�д�����Ϣ
  // ���Ŀ����Ƿ���ڡ��Ƿ��½�����յ�����һ���������룩�����ǣ��Ͳ���tb_tab���ɣ��ӿ��ٶ�

begin
{$REGION '1.ȷ����ջ���������2.���õ�������ļ�'}
  if rb1.Checked then
  begin
    if MessageDlg('ԭ�����ݽ�ȫ����ղ����������滻���Ƿ�ȷ����', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end
  else
  begin
    if MessageDlg('׷�ӷ�ʽ���룬��ϵͳ���жϲ��أ��������ϴ�ʱ���ٶȽ����������Ƿ�ȷ����', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end;
  s_error := ExtractFilePath(ParamStr(0)) + 'error.txt'; // ��¼����ʱ�ĳ�����Ϣ
  try
    if FileExists(s_error) then
    begin
      DeleteFile(s_error);
      DeleteFile(s_error + '.Error.Txt');
    end;
  finally
  end;
{$ENDREGION}
{$REGION 'У��Excel��ĿǰУ�������Ч��������ԭ���ֶ���Ϣa_Col_record����Ҫʱ��д��'}
  dis_or_Val := '1'; // У�飬����ʱҪУ�������Ԥ�������ݸ�ValidDataXLS
  i_start := 1;
  i_max_count := Min(StrToInt(lbledtValNo.Text), 1000); // ����ʱ���У��1000��
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // �ļ���չ��
  ValidDataXLS(s_filename, i_start, i_max_count, dis_or_Val);

  // Ŀǰ����ȡ����ʾԴ���ֶ���Ϣ ����δУ�飩

  if val_falt = '1' then // ���������Դ���
  begin

    mmo2.Lines.Add('Excel�ļ�����У����������Դ��󣨣����������Ϣ���ϣ����������������е��룡');
    mmo2.Lines.Add('--X--����ʧ��--X--');
    MessageDlg('Excel�ļ�����У����������Դ����޷����룡', mtError, [mbOK], 0);
    exit;
  end;
  if val_warn = '1' then // ���ھ����Դ���
  begin
    if MessageDlg('Excel�ļ�����У����ڲ�����У��������ݣ��Ƿ�������룿', mtWarning, [mbYes, mbNo], 0) = mrNo then
    begin
      mmo2.Lines.Add('�ı��ļ�����У����ڲ�����У��������ݣ�ѡ���˲��ټ������롣');
      mmo2.Lines.Add('--X--����ʧ��--X--');
      exit;
    end;
  end;
{$ENDREGION}
{$REGION '����У�������sql���ֶ���Ϣ'}
  mmo2.Lines.Add('У����ǰ' + IntToStr(i_max_count) + '�����ݣ�������Ӱ�����ݵ��루ȫ��У���뷵�غ�ʹ��У�鹦�ܣ������濪ʼ���������ļ�����'); // 1.�������ݱ�
  // ��ͣ��Ļ��Ӧ
  // pnl1.Enabled := False;
  // pnl2.Enabled := False;
  // pnl3.Enabled := False;
  fdqryTmp.Connection := F_DT.FDconSYS;
  col_name_def := '('; // �����ֶ��б�
  col_name_insert := ''; // ����ֵ
  col_name_param := ''; // �����ֶ�
  col_name_deal := '';
  col_rept_name_s := ''; // �����ֶ�����
  col_rept_type_s := ''; // ÿ�������ֶε�����
  col_ind_name_s := ''; // �����ֶ�
  // ��ȡ�ֶζ����ַ���
  a_col_rec_len := Length(a_Col_record); // У�鷵��a_col_record�ֶ���Ϣ����
  for i := 0 to a_col_rec_len - 1 do
  begin
    // -----�ֶζ���---------------------------------------->col_name_def
    col_tmp_str := '';
    // ÿ���ֶ������������ͼ����ȣ����ж����ݳ����Ƿ���ڣ����ж�С���㳤���Ƿ����
    if StrToIntDef(a_Col_record[i].col_all_len, 0) > 0 then
    begin
      col_tmp_str := col_tmp_str + '(' + a_Col_record[i].col_all_len;
      if StrToIntDef(a_Col_record[i].col_dot_len, 0) > 0 then
        col_tmp_str := col_tmp_str + ',' + a_Col_record[i].col_dot_len;
      col_tmp_str := col_tmp_str + ')';
    end;
    // col_name_def := col_name_def + a_Col_record[i].col_name + ' ' + a_Col_record[i].col_type + ' ' + col_tmp_str + ',';
    col_name_def := col_name_def + '[' + a_Col_record[i].col_name + '] [' + a_Col_record[i].col_type + '] ' + col_tmp_str + ',';

    // ------------------------------------------------------> col_name_def
    //
    // ----�����ֶ�----------------------------------------> col_name_insert
    if i = Length(a_Col_record) - 1 then
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + ']'
    else
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + '],';
    // ----------------------------------------------------> col_name_insert
    // ----�����ֶ�----------------------------------------> col_name_param
    if i = a_col_rec_len - 1 then
      col_name_param := col_name_param + ':val' + IntToStr(i)
    else
      col_name_param := col_name_param + ':val' + IntToStr(i) + ',';
    // ----------------------------------------------------> col_name_param

    // ========�����ֶ�==========================
    if a_Col_record[i].col_rept = '1' then
    begin
      col_rept_name_s := col_rept_name_s + '[' + a_Col_record[i].col_name + '],';
      if (LowerCase(a_Col_record[i].col_type) = 'varchar') then
        col_rept_type_s := col_rept_type_s + '0,' // �ַ�Ϊ0
      else if (LowerCase(a_Col_record[i].col_type) = 'decimal') then
        col_rept_type_s := col_rept_type_s + '1,' // ������1
      else
        col_rept_type_s := col_rept_type_s + '2,'; // ����2
    end;
    // ===================================
    // ========�����ֶ�==========================
    if a_Col_record[i].col_index = '1' then
      col_ind_name_s := col_ind_name_s + '[' + a_Col_record[i].col_name + '],';
    // ===================================

    // ---openrowset���ݼ�ѡ���ֶΣ����Դ���---------------->col_name_deal

    if Length(a_Col_record[i].col_Dict) > 0 then // �����ֶδ���
    begin
      // col_name_deal := '(Case trim(' + a_Col_record[i].col_name + ')';
      sqltext := 'select dict_val,dict_lable from dict_val where dict_type_id = ' + a_Col_record[i].col_Dict.QuotedString;
      // ShowMessage(sqltext);
      // exit;
      fdqryTmp.close;
      fdqryTmp.SQL.Clear;
      fdqryTmp.SQL.Add(sqltext);
      fdqryTmp.Open;
      fdqryTmp.First;
      if not fdqryTmp.eof then
      begin
        col_tmp_str := '(CASE Trim([' + a_Col_record[i].col_name + '])';
        while not fdqryTmp.eof do // ����
        begin
          col_tmp_str := col_tmp_str + ' WHEN ' + '''' + fdqryTmp['dict_val'] + '''' + ' THEN ' + '''' + fdqryTmp['dict_lable'] + ''' ';
          fdqryTmp.Next;
        end;
        col_tmp_str := col_tmp_str + ' ELSE Trim([' + a_Col_record[i].col_name + ']) END) [' + a_Col_record[i].col_name + ']';
        if i = a_col_rec_len - 1 then
          col_name_deal := col_name_deal + col_tmp_str
        else
          col_name_deal := col_name_deal + col_tmp_str + ',';
      end
      else
      begin // �������ֵ�û��׼���ã���ֱ��ȡ�ֶ���
        if i = a_col_rec_len - 1 then
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + ']'
        else
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + '],';
      end;
      fdqryTmp.close;
    end
    else // �Ǳ����ֶδ���
    begin
      if a_Col_record[i].col_date_deal = '1' then // �����ֶδ��� ��һ��ѱ����ֶβ����������ֶ�
      begin
        col_tmp_str := 'trim(Replace([' + a_Col_record[i].col_name + '],' + '''' + '-' + '''' + ',' + '''''' + ')) [' + a_Col_record[i].col_name + ']';
        if i = a_col_rec_len - 1 then
          col_name_deal := col_name_deal + col_tmp_str
        else
          col_name_deal := col_name_deal + col_tmp_str + ',';
      end
      else
      begin // �������ֶΣ�ֱ��ȡ�ֶη�
        if i = a_col_rec_len - 1 then
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + ']'
        else
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + '],';
      end;

    end;

  end;

  // ----------------------------------------------
  if Length(col_rept_name_s) > 0 then // ׼����stringList��
    col_rept_name_s := Copy(col_rept_name_s, 1, Length(col_rept_name_s) - 1);
  if Length(col_rept_type_s) > 0 then //
    col_rept_type_s := Copy(col_rept_type_s, 1, Length(col_rept_type_s) - 1);
  // ȥ�����һ���ַ�
  if Length(col_ind_name_s) > 0 then
    col_ind_name_s := Copy(col_ind_name_s, 1, Length(col_ind_name_s) - 1);
  // ȥ�����һ���ַ�
  // --------------------------------
  col_name_def := col_name_def + '[id] [bigint] IDENTITY(1,1) not null) ';
{$ENDREGION}
  // ����Դ��ѡ�����ݿ�����

  if globle_tab = '0' then
    fdQryExec.Connection := F_DT.FDConProj
  else
    fdQryExec.Connection := F_DT.FDconSYS;

{$REGION '��ʱ����Ŀ�������ɾ���ȴ���'}
  t1 := Now(); // ��ȡ��ʼ��ʱʱ��
  // StopWatch := TStopWatch.StartNew;

  // fdQryExec.Connection.StartTransaction;
  // -------------------------ɾ����ʱ��-------������ʱ���趨Ϊ�˿�����������---------------
  fdQryExec.DisableControls;
  fdQryExec.close;
  fdQryExec.SQL.Clear;
  sqltext := 'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N' + '''' + '[dbo].[tb_tmp]' + '''' + ') AND type in (N' + '''' + 'U' + '''' + '))' +
    ' DROP TABLE [dbo].[tb_tmp]';
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.ExecSQL;
  // fdQryExec.DisableControls;
  // fdQryExec.Close;
  // ----------------------------------------------------------------------------------------
  // -------------������ʱ�����------------------------------------
  fdQryExec.SQL.Clear;
  sqltext := 'Create table tb_tmp ' + col_name_def;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.ExecSQL;
  // fdQryExec.Close;
  // ---------------------------------------------------------------
  // ------------�жϵ�����Ƿ���ڣ��ٸ�����ջ���������ѡ��ȷ���Ƿ�ɾ��------------------------------
  sqltext := 'select name from sysobjects where Name =' + '''' + tab_name_en + '''' + ' and type =' + '''' + 'U' + '''';
  fdQryExec.SQL.Clear;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.Open;
  if fdQryExec.RecordCount > 0 then
    is_exist := '1' // Ŀ���ԭ���Ѵ���
  else
    is_exist := '0';

  // fdQryExec.EnableControls;
  // ������ڲ�����յ��룬��ɾ�����������±�
  if (is_exist = '1') and (rb1.Checked) then
  begin
    // ֱ��ɾ��tb_shzh_gr
    mmo2.Lines.Add('ɾ��ԭ������......');
    fdQryExec.SQL.Clear;
    sqltext := 'drop TABLE [' + tab_name_en + ']';
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    // ���Ŀ���ԭ������
    is_exist := '0';
    fdQryExec.close;
  end;
  // // -------------------------------------------------------------------------------------------------------
  // �������ڣ�����׷�ӵ�������������յ���ģ��ؽ��±�
  if is_exist = '0' then
  begin
    // ���������
    mmo2.Lines.Add('�������ݱ�......');
    fdQryExec.SQL.Clear;
    sqltext := 'CREATE TABLE [' + tab_name_en + '] ' + col_name_def;
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    fdQryExec.close;
  end;

  // ��յ��룬ֱ�ӵ��뵽���У����������й�tmp����ɣ��и����ص�����
  var
    impTab: string;
  if is_exist = '0' then // Ŀ���ԭ�������ڣ�����tmp����
  begin
    impTab := tab_name_en;
    i_dst_cnt := 0;
  end
  else
  begin
    impTab := 'tb_tmp';
    fdQryExec.SQL.Clear;
    sqltext := 'SELECT Count(*) cnt From ' + tab_name_en;
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.Open;
    i_dst_cnt := fdQryExec['cnt']; // ԭ������¼��
    mmo2.Lines.Add('ɾ��ԭ������׼���ؽ���������');
    // ���ԭ������----------------------------
    fdqryTmp.Connection := fdQryExec.Connection;
    fdqryTmp.SQL.Clear;
    sqltext := ' SELECT i.[name] AS indexName  FROM sys.objects t INNER JOIN sys.indexes i ON t.object_id=i.object_id ';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'WHERE t.is_ms_shipped<>1 AND index_id>0 and t.name=' + tab_name_en.QuotedString;
    fdqryTmp.SQL.Add(sqltext);
    // fdqryTmp.SQL.SaveToFile('d:\x.sql');
    // exit;
    fdqryTmp.Prepared;
    fdqryTmp.Open;
    if fdqryTmp.RecordCount > 0 then
    begin
      fdqryTmp.First;
      // --ѭ�����������,----------------------
      fdQryExec.SQL.Clear;
      while not fdqryTmp.eof do
      begin
        sqltext := 'drop index [' + fdqryTmp['indexName'] + '] on [' + tab_name_en + '];';
        fdQryExec.SQL.Add(sqltext);
        fdqryTmp.Next;
      end;
      fdQryExec.Prepared;
      fdQryExec.ExecSQL;
    end;
    fdqryTmp.close;
  end;

{$ENDREGION}
  mmo2.Lines.Add('��ʼ����У�鲢��⡭��');
  // ------------------------------------------------------------------------------------------------------------
  mmo2.Lines.Add('Excel���ݹ淶��1.��һ��Ϊ��������2�б������������ݹ淶ȷ������һ�£�3.�ؼ��У�������ȱ�ٲ��ܵ��룻4.��λ�úͶ����������в�Ӱ�쵼�롭��');
  // --------------------------------page ��row��col����0��ʼ---------ע��
  if (FileExt = '.XLS') then
    xlBook := TBinBook.Create;
  if (FileExt = '.XLSX') then
    xlBook := TXmlBook.Create;
  xlBook.setKey('TommoT', 'windows-2421220b07c2e10a6eb96768a2p7r6gc');
  //
  // try
  // xlBook.load(PWideChar(s_filename));
  // Except
  // col_rept_name_ls.Free;
  // xlBook.Free;
  // fdQryExec.close;
  // mmo2.Lines.Add(s_filename + '�ļ�״̬�����������ܵ��룬����WPS��Excel�����������е��룡����');
  // MessageDlg('�ļ�״̬�����������ܵ��룬����WPS��Excel�����������е��룡����', mtError, [mbOK], 0);
  // Exit;
  // end;

  if not xlBook.load(PWideChar(s_filename)) then
  begin
    fdQryExec.Connection.rollback;
    col_rept_name_ls.Free;
    col_rept_type_ls.Free;
    col_ind_name_ls.Free;
    sl_col_xls_cloc.Free;
    xlBook.Free;
    fdQryExec.close;
    mmo2.Lines.Add(s_filename + '�ļ�״̬�����������ܵ��룬����WPS��Excel�����������е��룡����');
    mmo2.Lines.Add('--X--����ʧ��--X--');
    MessageDlg('�ļ�״̬�����������ܵ��룬����WPS��Excel�����������е��룡����', mtError, [mbOK], 0);
    // raise Exception.Create(s_filename + '�ļ����ܴ��ڱ���״̬�����ܵ��룬�����������е��룡����');

    exit;
  end;

  xl_page := xlBook.sheetCount; // excelҳ��
  in_ok := 0;
  in_not := 0;
  // i_retry := 0;
  sl_col_xls_cloc := TStringList.Create; // �����ж�excel�ֶ������Ƿ�������
  sl_col_xls_cloc.StrictDelimiter := True;
  sl_col_xls_cloc.Delimiter := '|';

  for i := 0 to xl_page - 1 do
  begin
    // һҳһҳ����
    colSrcYesXlsNo := ''; // �ֶ���Ϣ�У�Դ����excelû��
    colSrcYesXlsMore := ''; // �ֶ���Ϣ�У�Դ����excel����
    colSrcNoXlsYes := ''; // �ֶ���Ϣ�У�Դ����excel��
    // X.worksheets[j].activate;
    xlSheet := xlBook.getSheet(i);
    if xlSheet.protect then
    begin
      mmo2.Lines.Add('sheet[' + IntToStr(i + 1) + ']Ϊ����״̬�����ܵ��룬�����������ݵ��빤������');
      Continue;
    end;
    // i_count := X.ActiveSheet.usedRange.Rows.count;
    xl_row_cnt := xlSheet.lastFilledRow; // ����
    xl_col_cnt := xlSheet.lastFilledCol; // ����
    if (xl_row_cnt < 1) or (xl_col_cnt < 1) then
    begin
      mmo2.Lines.Add('sheet[' + IntToStr(i + 1) + ']û�����ݣ��Զ����ԣ�������һ��Sheet���롭��');
      Continue;
    end;
    // ShowMessage(IntToStr(i_count)+'|'+inttostr(j_count));
{$REGION '����excel�ж�Ӧ�����У��кű��浽a_col_record.xl_col_no'}
    SetLength(a_colNames, xl_col_cnt); // �趨Excel�ֶ����鳤��
    for j := 0 to xl_col_cnt - 1 do // ��ȡ��ǰsheet��һ�У����浽�ֶ����飬���Ƿ����Ҫȡ������
    begin
      a_colNames[j] := Trim(xlSheet.readStr(0, j));
      // �˴�������grid��չʾ����------------------------------------------------------------------------------------------------
      // ShowMessage(colNames[j]);
    end;

    for j := 0 to a_col_rec_len - 1 do
    // ѭ���淶���ֶ�ȷ���ı������ƣ���excel�����в��ң��ҵ�Ϊ�кţ��Ҳ���Ϊ-1���Ҷ���-2
    begin
      sl_col_xls_cloc.DelimitedText := a_Col_record[j].col_xls_loc;
      a_Col_record[j].xls_col_no := findStrList(Find_state, a_colNames, sl_col_xls_cloc);

      if Find_state = -1 then
      begin
        colSrcYesXlsNo := colSrcYesXlsNo + '<' + a_Col_record[j].col_xls_loc + '>';
        if a_Col_record[j].col_reg_ok = '1' then
          val_falt := '1'
        else
          val_warn := '1'; // ��Ϊ�ؼ��ֶΣ����������壬���˳�
      end;

      // a_Col_record[j].col_name;
      if Find_state = -2 then
        colSrcYesXlsMore := colSrcYesXlsMore + '<' + a_Col_record[j].col_xls_loc + '>';
      // a_Col_record[j].col_name;
    end;

    for j := 0 to xl_col_cnt - 1 do
    begin
      for k := 0 to a_col_rec_len - 1 do
        if j = a_Col_record[k].xls_col_no then
          Break;
      if k = a_col_rec_len then // ѭ��������ѭ��ֵ������ֵֹ��˵��δ�ҵ�
        colSrcNoXlsYes := colSrcNoXlsYes + '<' + a_colNames[j] + '>'
    end;

    if Length(colSrcYesXlsNo) > 0 then
    begin
      colSrcYesXlsNo := '_sheet[' + IntToStr(i + 1) + ']:' + colSrcYesXlsNo;
      mmo2.Lines.Add('�淶�������ֶ�Excel��δ�ṩ��' + colSrcYesXlsNo + '����');
    end;

    if Length(colSrcYesXlsMore) > 0 then
    begin
      colSrcYesXlsMore := '_sheet[' + IntToStr(i + 1) + ']:' + colSrcYesXlsMore;
      mmo2.Lines.Add('�淶�������ֶ�Excel���ṩ�ظ��ֶΣ�' + colSrcYesXlsMore + '�����һ�����Ϲ淶�������С���');
    end;

    // ��δ��¼��excel��
    if Length(colSrcNoXlsYes) > 0 then
    begin
      colSrcNoXlsYes := '_sheet[' + IntToStr(i + 1) + ']:' + colSrcNoXlsYes;
      mmo2.Lines.Add('Excel�������������в��ڹ淶�ڻ�Ϊ�ظ�������:' + colSrcNoXlsYes + '����Щ�����в����룬����Ӱ�����������еĵ��롭��');
    end;

    if val_falt = '1' then
    begin
      fdQryExec.Connection.rollback;
      col_rept_name_ls.Free;
      col_rept_type_ls.Free;
      col_ind_name_ls.Free;
      sl_col_xls_cloc.Free;
      xlBook.Free;
      fdQryExec.close;
      mmo2.Lines.Add('�淶�������ֶ�Excel��δ�ṩ��' + colSrcYesXlsNo + '�����а����ؼ��ֶΣ�����Ӱ�����ݷ��������ܵ��룡');
      mmo2.Lines.Add('--X--����ʧ��--X--');
      MessageDlg('Excel��ؼ��ֶ�δ�ṩ�����ܵ��룬���������ٵ��룡����', mtError, [mbOK], 0);
      // raise Exception.Create(s_filename + '�ļ����ܴ��ڱ���״̬�����ܵ��룬�����������е��룡����');
      exit;
    end;

{$ENDREGION}
    //
    // ׼�����ݼ������뵽tmp��

    fdQryExec.SQL.Clear;
    sqltext := 'INSERT INTO ' + impTab + ' (' + col_name_insert + ') VALUES (' + col_name_param + ')';
    fdQryExec.SQL.Text := sqltext;
    fdQryExec.Params.Bindmode := pbByNumber; { more efficient than by name }
    // fdQryExec.Params.ArraySize := xl_row_cnt - 1; { large enough to load all of them }
    batchMod := (xl_row_cnt - 1) mod BatchSize; // ���һ���ļ�¼��
    fdQryExec.Params.ArraySize := BatchSize; // ������DML��ʽ���룬1���ݶ�1000
    i_param := 0; // �������ѭ���������޳�������
    for j := 1 to xl_row_cnt - 1 do
    // ����excel��¼�ӵڶ��е����һ��   --------------------------------------������Ҫ-1
    begin

      cell_str_all := ''; // ��������excelÿ����¼���ֶΣ����ݳ����жϴ�����¼�Ƿ�Ϊ��

      for k := 0 to a_col_rec_len - 1 do // �����淶���ֶ�,ͬʱ��ò���ֵ
      begin
        // grd_row := strngrd1.RowCount;
        // strngrd1.RowCount := grd_row + 1; // grid����һ��
        // ----------------��ȡһ��cell��cell_str------------------------------
        i_tmp := a_Col_record[k].xls_col_no; // excel���к�

        if i_tmp < 0 then // ���к�С��0��ֱ�Ӹ�������������ֶ�ѭ��
        begin
          if (LowerCase(a_Col_record[k].col_type) = 'int') or (LowerCase(a_Col_record[k].col_type) = 'bigint') then
          begin
            fdQryExec.Params[k].AsIntegers[i_param] := 0;
          end
          else if LowerCase(a_Col_record[k].col_type) = 'decimal' then
          begin
            fdQryExec.Params[k].AsFloats[i_param] := 0;
          end
          else
          begin
            fdQryExec.Params[k].AsStrings[i_param] := '';
          end;
          Continue;
        end;

{$REGION 'i_tmp>=0,���ݵ�Ԫ�����ͣ���ȡ��Ԫ��У�顢������ֵ'}
        // ��������
        if a_Col_record[k].col_date_deal = '1' then
        begin
          if xlSheet.isDate(j, i_tmp) then
          begin
            xlBook.dateUnpack(xlSheet.readNum(j, i_tmp), year, month, day);
            cell_str := IntToStr(year) + StringOfChar('0', 2 - Length(IntToStr(month))) + IntToStr(month) + StringOfChar('0', 2 - Length(IntToStr(day))) + IntToStr(day);
          end
          else
          begin
            cell_str := Trim(xlSheet.readStr(j, i_tmp)); // �����ڸ�ʽֱ�Ӷ��ַ�����������Ҫ����
            // �����зָ��ֶΣ���ȡ�������պϲ�
            var
              m: TMatch;
            var
              sYear, sMonth, sDay: string;
            m := TRegEx.Match(cell_str, '^(\d{4})[|\-|\/|\.|��]?(\d{1,2})[|\-|\/|\.|��]?(\d{1,2})[��]?$');
            // �˴�ֻ������ȡ�����յ����ֲ��γ�yyymmdd��ʽ�������Ǻ����ԣ������Կ����ֵ��е�У����ʽ����
            if m.Groups.Count = 4 then // ��ƥ��ֵ��������4������cell_str������������ʽʱҲ����ͨ��
            begin
              // cell_str := m.Groups.Item[0].Value;
              // ��ȡ�����е�����
              sYear := m.Groups.Item[1].Value;
              sMonth := m.Groups.Item[2].Value;
              sDay := m.Groups.Item[3].Value;
              // �����λ����0
              cell_str := StringOfChar('0', 4 - Length(sYear)) + sYear + StringOfChar('0', 2 - Length(sMonth)) + sMonth + StringOfChar('0', 2 - Length(sDay)) + sDay;
            end
            else
            begin
              if (Length(cell_str) <> 0) and (UpperCase(cell_str) <> '@N') then
                mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:��' + IntToStr(j + 1) + '�е�' + IntToStr(i_tmp + 1) + '��' + a_Col_record[k].col_name_cn + '���ݡ�' + cell_str +
                  '�������������ڱ��ʽ�淶yyyymmdd��yyyy-mm-dd��yyyy/mm/dd��yyyy.mm.dd��yyyy��mm��dd�գ�');
            end;

          end;
        end
        else
          cell_str := Trim(xlSheet.readStr(j, i_tmp));
        // ------------------------------�ֶγ���У��-------------------------------------------------------
        if (Length(cell_str) > StrToInt(a_Col_record[k].col_len)) and (StrToInt(a_Col_record[k].col_len) > 0) then
        // col_len��ת��Ϊ�����֡�Դ�������ֶκ��г���ʱ���жϳ��ȣ��޳�����Ϣ�����������ж�
        begin
          dis_ok := '1';
          val_falt := '1';
          mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:��' + IntToStr(j) + '�е�' + IntToStr(i_tmp) + '�С�' + a_Col_record[i].col_name_cn + '������Ϊ��' + cell_str + '��������' +
            IntToStr(Length(cell_str)) + '�������ݹ淶���ȣ������޷����룡');
        end;
        // -------------------------------------------------------------------------------------------------
        // ������ʽУ�飨�������͵�������ʽ������У�����Ҳ�޷����룩-----------------------
        if Length(a_Col_record[k].col_reg_str) <> 0 then
        begin
          if not TRegEx.IsMatch(cell_str, a_Col_record[k].col_reg_str, [roIgnorePatternSpace]) then
          begin
            dis_ok := '1';
            if a_Col_record[k].col_reg_ok = '1' then // ǿ��У��
            begin
              mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:��' + IntToStr(j + 1) + '�е�' + IntToStr(i_tmp + 1) + '��' + a_Col_record[k].col_name_cn + '���ݡ�' + cell_str + '���������ϡ�' +
                a_Col_record[k].col_reg + '��ǿ��У����������޷����룡');
              val_falt := '1';
            end
            else
            begin
              mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:��' + IntToStr(j + 1) + '�е�' + IntToStr(i_tmp + 1) + '��' + a_Col_record[k].col_name_cn + '���ݡ�' + cell_str + '���������ϡ�' +
                a_Col_record[k].col_reg + '��У����򡣿��Ե������ݣ���Ӱ�����ݷ���׼ȷ�ԣ�');
              val_warn := '1';
            end;
          end
        end;
        // ------------------------------------------------------------------------------------
        // -----------���������ֵ--------
        cell_str_all := cell_str_all + cell_str; // �����������õ�Ԫ��ϲ�
        if (LowerCase(a_Col_record[k].col_type) = 'int') or (LowerCase(a_Col_record[k].col_type) = 'bigint') then
        begin
          fdQryExec.Params[k].AsIntegers[i_param] := Round(StrToFloatDef(cell_str, 0));
        end
        else if LowerCase(a_Col_record[k].col_type) = 'decimal' then
        begin
          fdQryExec.Params[k].AsFloats[i_param] := StrToFloatDef(cell_str, 0);
        end
        else
        begin
          // ����Ҫת��

          fdQryExec.Params[k].AsStrings[i_param] := cell_str;
        end
        // ------------------------------
{$ENDREGION}
      end; // �ֶ�ѭ�����

      if val_falt = '1' then
      begin
        fdQryExec.Connection.rollback;
        col_rept_name_ls.Free;
        col_rept_type_ls.Free;
        col_ind_name_ls.Free;
        sl_col_xls_cloc.Free;
        xlBook.Free;
        fdQryExec.close;
        mmo2.Lines.Add('�������ݳ��ȳ����淶�򲻷���ǿ��У���������ݣ����ܵ��룬���������ٵ��룡����');
        mmo2.Lines.Add('--X--����ʧ��--X--');
        MessageDlg('�������ݳ��ȳ����淶�򲻷���ǿ��У���������ݣ����ܵ��룬���������ٵ��룡', mtError, [mbOK], 0);
        // raise Exception.Create(s_filename + '�ļ����ܴ��ڱ���״̬�����ܵ��룬�����������е��룡����');
        exit; // ?����ǰ���ѵ��������
      end;

      // �����β����¼

      // if Length(Trim(cell_str_all)) < a_col_rec_len then
      // begin
      // fdQryExec.Params.ArraySize := fdQryExec.Params.ArraySize - 1;
      // mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:��' + IntToStr(j + 1) + '������Ϊ�գ������������롭��');
      // Continue;
      // end
      // else
      // Inc(i_param);
      if (j = xl_row_cnt - 1) then // �������һ����¼
        if j < BatchSize then
          fdQryExec.Params.ArraySize := j
        else if batchMod > 0 then
          fdQryExec.Params.ArraySize := batchMod;

      if (i_param = BatchSize - 1) or (j = xl_row_cnt - 1) then
      begin
        fdQryExec.Execute(fdQryExec.Params.ArraySize);
        // �˴�Ӧ������ִ�У�����out of memory
        i_param := 0;
      end
      else
        Inc(i_param); // ����+1

    end; // excel��¼ѭ�����
    // fdQryExec.Params.ArraySize := NumParams;  { Reset to actual number }

  end;

  sl_col_xls_cloc.Free;
  xlBook.Free;
  fdQryExec.close;

  // -------------------------------------------------------------------------------------------------------------------------------------------------
  // --------insert from bulk---------�����ֶΣ���col_name_deal��������col_name_insert-------------------
  // ----------------------��յ������ԭʼ���ݵĵ��룬��ʱ���빤������--------------------------------------------------------------
  // ��������ʽ��������tmp���ص�Ŀ���
  if is_exist = '1' then // ������ʽ������ԭ���б�����
  begin
    fdQryExec.SQL.Clear;
    // ====��������2 �����ò����ֶ�============
    if (Length(col_rept_name_s) > 0) and (chkReptCol.Checked) then
    // �����ڲ����ֶβ���Ҫ���ô��ֶΣ����ò����ֶε����������������÷���һ
    begin
      col_rept_name_ls := TStringList.Create;
      col_rept_name_ls.StrictDelimiter := True;
      col_rept_name_ls.Delimiter := ',';
      col_rept_name_ls.DelimitedText := col_rept_name_s;
      col_rept_type_ls := TStringList.Create;
      col_rept_type_ls.StrictDelimiter := True;
      col_rept_type_ls.Delimiter := ',';
      col_rept_type_ls.DelimitedText := col_rept_type_s;

      var
        rept_count: Integer;
      rept_count := col_rept_name_ls.Count;
      rept_tmp_where := '';
      for i := 0 to rept_count - 1 do
      begin
        if i < rept_count - 1 then
          if col_rept_type_ls[i] = '0' then
            rept_tmp_where := rept_tmp_where + 'Isnull(a.' + col_rept_name_ls[i] + ','''') = Isnull(b.' + col_rept_name_ls[i] + ','''') AND '
          else
            rept_tmp_where := rept_tmp_where + 'a.' + col_rept_name_ls[i] + ' = b.' + col_rept_name_ls[i] + ' AND '
        else
        begin
          if col_rept_type_ls[i] = '0' then
            rept_tmp_where := rept_tmp_where + 'Isnull(a.' + col_rept_name_ls[i] + ','''') = Isnull(b.' + col_rept_name_ls[i] + ','''')'
          else
            rept_tmp_where := rept_tmp_where + 'a.' + col_rept_name_ls[i] + ' = b.' + col_rept_name_ls[i]
        end;
      end;

      sqltext := 'INSERT INTO ' + tab_name_en + ' Select ' + col_name_insert + ' From tb_tmp a ' + ' Where NOT EXISTS (SELECT ' + col_rept_name_s + ' FROM ' + tab_name_en +
        ' b WHERE ' + rept_tmp_where + ')';
    end
    else
      // ===���ò����ֶΣ���except�ķ���===
      sqltext := 'INSERT INTO ' + tab_name_en + ' Select ' + col_name_insert + ' From tb_tmp except Select ' + col_name_insert + ' From ' + tab_name_en;
    // ===============
    fdQryExec.SQL.Add(sqltext);
    // fdQryExec.SQL.SaveToFile('importSQLAdd.txt');
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;

    // ��ȡtmp���¼�������ɱ�
    fdQryExec.SQL.Clear;
    sqltext := 'SELECT Count(*) cnt From tb_tmp';
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.Open;
    i_tmp_cnt := fdQryExec['cnt']; // ���ɱ��¼��

  end;
  // ��ȡĿ�������¼��
  fdQryExec.SQL.Clear;
  sqltext := 'SELECT Count(*) cnt From ' + tab_name_en;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.Open;
  i_dst_cnt_all := fdQryExec['cnt']; // Ŀ������ռ�¼��
  if i_dst_cnt = 0 then // Ŀ���ԭʼ��¼����Ϊ0��
    i_tmp_cnt := i_dst_cnt_all;
  fdQryExec.close;

  // ===����Ŀ���ķǾۼ�����===
  if Length(col_ind_name_s) > 0 then // ����������
  // �����ڲ����ֶβ���Ҫ���ô��ֶΣ����ò����ֶε����������������÷���һ
  begin
    mmo2.Lines.Add('������������');
    col_ind_name_ls := TStringList.Create;
    col_ind_name_ls.StrictDelimiter := True;
    col_ind_name_ls.Delimiter := ',';
    col_ind_name_ls.DelimitedText := col_ind_name_s;
    var
      ind_count: Integer;
    ind_count := col_ind_name_ls.Count;
    fdQryExec.SQL.Clear;
    for i := 0 to ind_count - 1 do
    begin
      sqltext := 'create NONCLUSTERED index ' + 'idx' + IntToStr(i) + tab_name_en + ' on ' + tab_name_en + '(' + col_ind_name_ls[i] + ');';
      fdQryExec.SQL.Add(sqltext);
    end;
    // fdQryExec.SQL.SaveToFile('CreateIndex.txt');
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
  end;
  // ============================
  // ===�����������===
  if Length(tab_comIndex) > 0 then // �������������
  begin

    tab_comIndex := StringReplace(tab_comIndex, #$D#$A, #$A, [rfReplaceAll]); // �滻�س�����Ϊ#$A,һ���������
    tab_comIndex := StringReplace(tab_comIndex, #$D, #$A, [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, ' ', '', [rfReplaceAll]); // ɾ���ո�
    tab_comIndex := StringReplace(tab_comIndex, '��', ',', [rfReplaceAll]); // ��������ֶ�֮��,������
    tab_comIndex := StringReplace(tab_comIndex, '��', ',', [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, '��', ',', [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, '|', ',', [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, ';', ',', [rfReplaceAll]);
    var
      tab_combIndLst: TStringList;
    tab_combIndLst := TStringList.Create;
    tab_combIndLst.StrictDelimiter := True;
    tab_combIndLst.Delimiter := #$A;
    tab_combIndLst.DelimitedText := tab_comIndex;
    mmo2.Lines.Add('���������������');
    var
      ind_count: Integer;
    ind_count := tab_combIndLst.Count;
    fdQryExec.SQL.Clear;
    for i := 0 to ind_count - 1 do
    begin
      sqltext := 'create NONCLUSTERED index ' + 'idxComb' + IntToStr(i) + tab_name_en + ' on ' + tab_name_en + '(' + tab_combIndLst[i] + ');';
      fdQryExec.SQL.Add(sqltext);
    end;
    // fdQryExec.SQL.SaveToFile('CreateIndex.txt');
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
  end;
  // =================
  fdQryExec.Connection.commit;
  t2 := Now(); // ��ȡ������ʱʱ��
  fdQryExec.close;

  // StopWatch.Stop;
  r1 := SecondsBetween(t2, t1); // ȡ�ü�ʱʱ�䣬��λ��(s)
  r1 := MilliSecondsBetween(t2, t1) / 1000;

  mmo2.Lines.Add('--��--����ɹ���--��--');
  mmo2.Lines.Add('���ε��뻨��ʱ�䣨' + FormatFloat('0.00', r1) + '�룩��');
  // mmo2.Lines.Add('���ε��뻨��ʱ�䣨' + IntToStr(StopWatch.ElapsedMilliseconds) + '�룩��');
  mmo2.Lines.Add('ϵͳԭ�����ݣ�' + IntToStr(i_dst_cnt) + '���������ļ���' + IntToStr(i_tmp_cnt) + '��;����ɹ���' + IntToStr(i_dst_cnt_all - i_dst_cnt) + '����');
  mmo2.setfocus;
  SendMessage(mmo2.Handle, EM_SCROLLCARET, 0, 0);
  // ------------------------------------------------------------------------------
  col_rept_name_ls.Free;
  col_rept_type_ls.Free;
  col_ind_name_ls.Free;
  fdQryExec.close;
  pnl1.Enabled := True;
  pnl2.Enabled := True;
  pnl3.Enabled := True;
end;

procedure TFrmDataImport.TxtInfo;
var
  FileExt, s_filename, txt_type: string;
  is_utf8: Boolean;
  i: Integer;
  rText: TextFile;
  sColumName: string;
  SR: TStreamReader;
begin
  lbl2.Caption := '�����ʽ��';
  Label1.Caption := '��������:';
  lbl3.Caption := '';
  lbl_line.Caption := '';
  if IfIncludeKG(lbledtFileName.Text) then
  begin
    MessageDlg('�ļ���������Ŀ¼���а����ո��������ļ������ļ����ڲ����ո��Ŀ¼�У���', mtInformation, [mbOK], 0);
    exit;
  end;
  if not FileExists(lbledtFileName.Text) then
  begin
    MessageDlg('�ļ������ڣ�', mtInformation, [mbOK], 0);
    exit;
  end;

  pnl1.Enabled := False;
  pnl2.Enabled := False;
  pnl3.Enabled := False;
  // �����ļ�ͷ�ж��Ƿ�utf8��ʽ
  txt_type := GetTextType(lbledtFileName.Text);
  if txt_type = 'Utf8' then
  begin
    txt_type := 'BOM����Ϊ' + txt_type + '�����ʽ';
    is_utf8 := True;
  end
  else
  begin
    if txt_type = 'Ansi' then
    // ���BOM��ʽ�ж�ΪAnsi��Ҳ�������ļ�ͷ����Ҫȫ���ж�
    begin
      // ȫ���ж��ַ��������ʽ ----------------------------------
      if IsUtf8File(lbledtFileName.Text) then
      begin
        txt_type := 'ȫ�Ĳ���Ϊutf8����';
        is_utf8 := True;
      end
      else
      begin
        txt_type := 'ȫ�Ĳ���ΪAnsi����';
        is_utf8 := False;
      end
    end
    else
    begin
      txt_type := 'BOM����Ϊ' + txt_type + '�����ʽ';
      is_utf8 := False;
    end;
  end;
  // ������Ϣչʾ
  lbl3.Caption := txt_type;
  // �趨�������
  if is_utf8 then
    cbbCode.ItemIndex := 1
  else
    cbbCode.ItemIndex := 0;
  // if txt_type <> 'Ansi' then
  // begin
  // Application.MessageBox('���ļ��ı������ʽ�����ϼ�����ݽӿڹ淶���޷���������У�飡��ӦΪansi��ʽ��!', '', MB_OK +
  // MB_ICONSTOP);
  // exit;
  // end;
  mmo2.Visible := True;
  // mmo1.Clear;
  mmo2.Clear;
  mmo2.Lines.Add('��ʼͳ���ı���Ϣ����');
  mmo2.Refresh;

  // ��ȡ�ļ���������     AssignFile��ʽ����Ҫ���ļ�û�б��򿪣���ȡ���ķ�ʽ�����벻��ȷ����Ҳ����ȷ
  if is_utf8 then
    SR := TStreamReader.Create(lbledtFileName.Text, TEncoding.UTF8)
  else
    SR := TStreamReader.Create(lbledtFileName.Text, TEncoding.ansi);

  i := 0;
  b_stop := False;
  try
    while not SR.EndOfStream do
    // ע���� EndOfStream ״̬
    begin
      if b_stop then
        Break;
      Application.ProcessMessages;
      SR.ReadLine;
      i := i + 1;
    end;
  finally
    SR.Free;
  end;

{$REGION '�ı��ļ���ʽע��'}
  // AssignFile(rText, lbledtFileName.Text);
  // reset(rText);
  // b_stop := False;
  // while not Eof(rText) do
  // begin
  // if b_stop then
  // break;
  // Application.ProcessMessages;
  // readln(rText, sColumName);
  // i := i + 1;
  // end;
  // CloseFile(rText);
{$ENDREGION}
  // ��������ڴ�
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
  lbl_line.Caption := FormatFloat('###,###,###', i - 1);
  if b_stop then
    lbl_line.Caption := lbl_line.Caption + '(�ж�)';
  // rxgfnmtr1.FrameIndex := 0;
  // rxgfnmtr1.Animate := False;
  pnl1.Enabled := True;
  pnl2.Enabled := True;
  pnl3.Enabled := True;

  if b_stop then
    mmo2.Lines.Add('�ı���Ϣͳ���жϣ����Կɲ鿴��У���ı��ļ�����')
  else
    mmo2.Lines.Add('OK���ı���Ϣͳ����ϡ���');
end;

procedure TFrmDataImport.ExcelInfo;
var
  FileExt, s_filename, txt_type: string;
  is_utf8: Boolean;
  i: Integer;
  rText: TextFile;
  sColumName: string;
  SR: TStreamReader;
begin
  lbl2.Caption := '������������';
  Label1.Caption := '����������:';
  lbl3.Caption := '';
  lbl_line.Caption := '';
  if IfIncludeKG(lbledtFileName.Text) then
  begin
    MessageDlg('�ļ���������Ŀ¼���а����ո��������ļ������ļ����ڲ����ո��Ŀ¼�У���', mtInformation, [mbOK], 0);
    exit;
  end;
  if not FileExists(lbledtFileName.Text) then
  begin
    MessageDlg('�ļ������ڣ�', mtInformation, [mbOK], 0);
    exit;
  end;
  // pnl1.Enabled := False;
  // pnl2.Enabled := False;
  // pnl3.Enabled := False;
  // �����ļ�ͷ�ж��Ƿ�utf8��ʽ
  // ��������ڴ�
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
  lbl_line.Caption := FormatFloat('###,###,###', i - 1);
  if b_stop then
    lbl_line.Caption := lbl_line.Caption + '(�ж�)';
  // rxgfnmtr1.FrameIndex := 0;
  // rxgfnmtr1.Animate := False;
  pnl1.Enabled := True;
  pnl2.Enabled := True;
  pnl3.Enabled := True;

  if b_stop then
    mmo2.Lines.Add('�ı���Ϣͳ���жϣ����Կɲ鿴��У���ı��ļ�����')
  else
    mmo2.Lines.Add('OK���ı���Ϣͳ����ϡ���');
end;

end.
