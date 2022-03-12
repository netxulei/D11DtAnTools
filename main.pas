unit main;

interface

uses
  U_ShowError, FindPublic, FormColSelect, U_DT, U_float, U_Common, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, DBGridEhGrouping, MemTableDataEh, DB,
  ADODB, PropFilerEh, PropStorageEh, DataDriverEh, ADODataDriverEh, MemTableEh,
  Dialogs, Classes, ActnList, StdActns, Menus, ImgList, Controls, StdCtrls,
  cxSplitter, cxTextEdit, GridsEh, DBGridEh, Buttons, cxContainer, cxEdit,
  cxDBEdit, ExtCtrls, cxInplaceContainer, cxDBTL, cxControls, cxTLData, U_item,
  DBGridEhImpExp, EhLibADO, U_mode, UF_CHG_PASS, U_user, U_import, ShellAPI,
  Windows, Messages, SysUtils, Variants, Graphics, Forms, Mask, DBCtrlsEh,
  cxLabel, cxMemo, StrUtils, DBCtrls, ComCtrls, cxNavigator, cxDBNavigator,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  IniFiles, cxLookAndFeels, cxLookAndFeelPainters, cxTLdxBarBuiltInMenu,
  dxSkinsCore, dxSkinsDefaultPainters, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  cxClasses, System.Actions, System.ImageList, EhLibVCL, DBAxisGridsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, EhLibMTE,
  cxImageComboBox;

type
  TMainFrm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    MnPass: TMenuItem;
    MnUser: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    cxDBTreeList1: TcxDBTreeList;
    dsTree: TDataSource;
    cxDBTreeList1t_name: TcxDBTreeListColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    N11: TMenuItem;
    MnOpenMode: TMenuItem;
    MnModBack: TMenuItem;
    MnModRest: TMenuItem;
    ImageList1: TImageList;
    pm1: TPopupMenu;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    ds1: TDataSource;
    pnl3: TPanel;
    cxdbtxtdt1: TcxDBTextEdit;
    actlst1: TActionList;
    edtcpy1: TEditCopy;
    pm2: TPopupMenu;
    Copy1: TMenuItem;
    N27: TMenuItem;
    N17: TMenuItem;
    pnl1: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    btn2: TBitBtn;
    pnl4: TPanel;
    dbgrdh1: TDBGridEh;
    SaveDialog1: TSaveDialog;
    N18: TMenuItem;
    N19: TMenuItem;
    btn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    SaveDialog2: TSaveDialog;
    N20: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    mtblh1: TMemTableEh;
    adtdrvrh1: TADODataDriverEh;
    AdoEx1: TADOQuery;
    ds2: TDataSource;
    MnOpen: TMenuItem;
    cxspltr2: TcxSplitter;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    ds3: TDataSource;
    pnl9: TPanel;
    dbgrdh2: TDBGridEh;
    pnl10: TPanel;
    dbgrdh3: TDBGridEh;
    cxspltr4: TcxSplitter;
    pnl2: TPanel;
    cxtxtdt1: TcxTextEdit;
    qry_aoto: TADOQuery;
    prpstrgh1: TPropStorageEh;
    inprpstrgmnh1: TIniPropStorageManEh;
    pm3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    N301: TMenuItem;
    N302: TMenuItem;
    pm4: TPopupMenu;
    N50: TMenuItem;
    N51: TMenuItem;
    N401: TMenuItem;
    N402: TMenuItem;
    pm5: TPopupMenu;
    N49: TMenuItem;
    N53: TMenuItem;
    N15: TMenuItem;
    N48: TMenuItem;
    qrygd2: TADOQuery;
    qrygd3: TADOQuery;
    N_Proj: TMenuItem;
    pnl7: TPanel;
    mniN38: TMenuItem;
    Panel3: TPanel;
    chk2: TCheckBox;
    Panel4: TPanel;
    chk1: TCheckBox;
    btn_jy: TButton;
    N38: TMenuItem;
    N39: TMenuItem;
    N_Err: TMenuItem;
    N40: TMenuItem;
    lblHlp: TLabel;
    lblResult: TLabel;
    lblInfo: TLabel;
    lblMemo: TLabel;
    spbtnFormat: TSpeedButton;
    cxspltr3: TcxSplitter;
    fdSPRun: TFDStoredProc;
    fdSPAuto: TFDStoredProc;
    N2: TMenuItem;
    MnModel: TMenuItem;
    MnRule: TMenuItem;
    MnDict: TMenuItem;
    fdQryTree: TFDQuery;
    fdqryTmp: TFDQuery;
    Button1: TButton;
    fdmtblRun: TFDMemTable;
    Excel1: TMenuItem;
    fdqryAuto: TFDQuery;
    fdQryTreet_id: TIntegerField;
    fdQryTreet_parent_id: TIntegerField;
    fdQryTreet_name: TStringField;
    fdQryTreet_memo: TStringField;
    fdQryTreet_para: TStringField;
    fdQryTreet_proc: TMemoField;
    fdQryTreet_right: TStringField;
    fdQryTreet_order: TIntegerField;
    fdQryTreet_table1: TStringField;
    fdQryTreet_table2: TStringField;
    fdQryTreet_auto: TStringField;
    fdQryTreet_hide: TStringField;
    fdQryTreet_type: TStringField;
    function SaveGridIni(ADBGridEhNameStr: string; ADBGridEh: TDBGridEh): Boolean;
    function RestoreGridIni(ADBGridEhNameStr: string; ADBGridEh: TDBGridEh): Boolean;
    // function cre_V_bank_bm(): Boolean;
    function del_proc(): Boolean;
    // function def_fun(): Boolean;   //��������ŵ��߼����Զ�ִ�ж��壬���ٴ���ʵ��
    function DispInfo(): Boolean;
    function Auto_proc(): Boolean;
    function Disp_txn(): Boolean;
    function table_visable(): Boolean;
    procedure N10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure pnl2Resize(Sender: TObject);
    procedure pnl3Resize(Sender: TObject);
    procedure pnl4Resize(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure excel1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure MnPassClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure MnModBackClick(Sender: TObject);
    procedure MnModRestClick(Sender: TObject);
    procedure MnUserClick(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure pm2Popup(Sender: TObject);
    procedure N_Excel_DwClick(Sender: TObject);
    procedure cxDBTreeList1DblClick(Sender: TObject);
    procedure MnOpenClick(Sender: TObject);
    procedure dbgrdh1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgrdh1DblClick(Sender: TObject);
    procedure N301Click(Sender: TObject);
    procedure N302Click(Sender: TObject);
    procedure N401Click(Sender: TObject);
    procedure N402Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure cxDBTreeList1CustomDrawCell(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure pm3Popup(Sender: TObject);
    procedure pm4Popup(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N_ProjClick(Sender: TObject);
    procedure btn_jyClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure M_DR_SAZH1Click(Sender: TObject);
    procedure dbgrdh1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N_ErrClick(Sender: TObject);
    procedure M_DR_FXZHClick(Sender: TObject);
    procedure M_DR_FXDWClick(Sender: TObject);
    procedure M_DR_FXGRClick(Sender: TObject);
    procedure cxDBTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure cxDBTreeList1GetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode;
      AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
    procedure spbtnFormatClick(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure MnModelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrdh1TitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
    procedure MnDictClick(Sender: TObject);
    procedure MnRuleClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private { Private declarations }

  public { Public declarations }

  end;

var
  MainFrm: TMainFrm;

implementation

uses
  log4me, U_Proj, uDictMaintain, uDataImport1, uSrcTabMaintain, uModMaintain;
{$R *.dfm}
// ���������Ŀɼ��Ժ���

function TMainFrm.table_visable(): Boolean;
begin
  // MessageDlg('��Ҫȷ��table��ʾ');
  pnl10.Visible := False;
  cxspltr4.Visible := False;
  pnl9.Visible := False;
  cxspltr3.Visible := False;
  if fdQryTree['t_table2'] = '1' then
  begin
    pnl10.Visible := True;
    cxspltr4.Visible := True;
  end
  else
  begin
    pnl10.Visible := False;
    cxspltr4.Visible := False;
  end;

  if fdQryTree['t_table1'] = '1' then
  begin
    pnl9.Visible := True;
    cxspltr3.Visible := True;
  end
  else
  begin
    pnl9.Visible := False;
    cxspltr3.Visible := False;
  end;

  // if  pnl9.top<pnl10.Top then pnl9.top:=pnl10.Top-1;
  if cxspltr3.Top < cxspltr4.Top then
    cxspltr3.Top := cxspltr4.Top;
  cxspltr3.Top := pnl9.Top;
  cxspltr4.Top := pnl10.Top;

end;

function TMainFrm.SaveGridIni(ADBGridEhNameStr: string; ADBGridEh: TDBGridEh): Boolean;
var
  IniFileNameStr: string;
begin
  IniFileNameStr := ExtractFileDir(ParamStr(0)) + '\' + 'DBGirdConfig.ini';
  ADBGridEh.SaveGridLayoutIni(IniFileNameStr, ADBGridEhNameStr, False);
end;

procedure TMainFrm.spbtnFormatClick(Sender: TObject);
begin
  spbtnFormat.PopupMenu.Popup(spbtnFormat.Left, spbtnFormat.Top);
end;

function TMainFrm.RestoreGridIni(ADBGridEhNameStr: string; ADBGridEh: TDBGridEh): Boolean;
var
  IniFileNameStr: string;
  RestoreParams: TDBGridEhRestoreParams;
begin
  IniFileNameStr := ExtractFileDir(ParamStr(0)) + '\' + 'DBGirdConfig.ini';
  ADBGridEh.RestoreGridLayoutIni(IniFileNameStr, ADBGridEhNameStr, RestoreParams);
end;

function TMainFrm.DispInfo(): Boolean;
// ��ʾ��ʼ��Ϣͬʱ���ά��ģ�ʹ����漰�����仯ʱ���������⣨�˳��ؽ��Ͳ������ˣ�msp1
type
  TProcRec = record
    s_para_tip: string;
    s_para_lx: string;
    s_para_name: string;
    s_para_value: string;
  end;
var
  // pt: TPoint;
  R_proc: array of TProcRec;
  s1, s2, s3: string;
  s_filename: string;
  sqlname, sqltext, sqltext_bank, s_key_name: string;
  sqlfile: TextFile;
  i, ii: Integer;
  i_len: Integer;
  i_pos1, i_pos2: Integer;
  i_cnt1, i_cnt2, i_cnt3, i_cnt4: Integer;
  is_exist, is_exist_v: Integer; // 0 false,1 true
  ClickedOK: Boolean;
  tmpi: LongInt;
  tmpf: Double;
  tmps1, tmps2: string;
  i_col: Integer;
  a_s: TStringList;
  a_i, t_time: Integer;
  a_ss: array of string;
  MyRestoreParams: TDBGridEhRestoreParams;
begin
  s_filename := ExtractFilePath(ParamStr(0)) + 'sql_DispInfo';
  sqlname := 'P_DispInfo';
  F_DT.ADOconGD2.Connected := False;
  F_DT.ADOconGD3.Connected := False;
  dbgrdh1.Color := clWindow;
  sqltext := 'select name from sysobjects where Name =' + '''' + sqlname + '''' + ' and type =' + '''' + 'P' + '''';
  fdqryTmp.close;
  fdqryTmp.Connection := F_DT.FDConSYS;
  fdqryTmp.SQL.Clear;
  fdqryTmp.SQL.Add(sqltext);
  fdqryTmp.Prepared;
  fdqryTmp.Open;
  if fdqryTmp.RecordCount = 0 then
    is_exist := 0
  else
    is_exist := 1;
  fdqryTmp.close;
  // �洢���̲�����Ҫ����������ʱ����Ҫ�ع�
  if is_exist = 0 then
  begin
    fdqryTmp.SQL.LoadFromFile(s_filename);
    // fdqrytmp.SQL.SaveToFile(s_filename+'.txt');
    fdqryTmp.ExecSQL;
    fdqryTmp.close;
  end;
  // �洢���̽�������
  // ��������ִ��
  // �������������������ִ��
  // ShowWaitText('���Ժ�����ִ�м��ģ�͹��ܡ���');
  dbgrdh1.Enabled := False;
  fdSPRun.Connection := F_DT.FDConSYS;
  dbgrdh1.Enabled := False;
  // mtblh1.Active := False;
  fdSPRun.DisableControls;
  fdSPRun.close;
  fdSPRun.Active := False;

  fdSPRun.Filtered := False;
  fdSPRun.Filter := '';
  // mtblh1.Filtered := False;
  // mtblh1.Filter := '';
  fdSPRun.StoredProcName := sqlname;
  // fdspRun.Params.refresh; //���������ã����������Ҫ
  // fdspRun;
  // fdspRun.Active := True;
  // ���ж��Ƿ���Ҫ����
  // ShowMessage(IntToStr(fdspRun.Params.Count));
  // fdspRun.ParamCheck := False;
  // fdspRun.ParamCheck := True;
  // ɾ��grid�ֶΣ�Ϊ�µĲ�ѯ����
  i_col := dbgrdh1.Columns.Count;
  for i := 0 to i_col - 1 do
  begin
    dbgrdh1.Columns.Delete(0);
  end;
  fdSPRun.Prepared;
  fdSPRun.Open;
  fdmtblRun.close;
  fdmtblRun.data := fdSPRun.data;
  // fdSPRun.enableControls;
  // mtblh1.SortOrder := ''; // ������²�ѯ����������
  // mtblh1.Active := True;
  dbgrdh1.Enabled := True;
  // rxgfnmtrBar.Animate := False;
  // OptimizeGrid(dbgrdh1);
end;

function TMainFrm.del_proc(): Boolean;
var
  sqltext: string;
begin
  // ע�����Ʋ�Ҫɾ����ϵͳ�Ĵ洢����
  // ShowWaitText('���Ժ����ڳ�ʼ����鹦��...');
  dbgrdh1.Enabled := False;
  try
    // ɾ�����ݿ��еĴ洢���� ��������Ϊ��Ŀ�Ȳ���ȷ����Ȼ����
    fdqryTmp.Connection := F_DT.fdconProj;
    fdqryTmp.close;
    fdqryTmp.DisableControls;
    fdqryTmp.SQL.Clear;
    sqltext := 'declare @procName varchar(500)';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'declare cur cursor';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'for select name from sysobjects where type =' + '''' + 'p' + '''' + 'and schema_ver=0';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'open cur';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'fetch next from cur into @procName';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'while @@fetch_status=0';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'begin';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'exec(' + '''' + 'drop procedure ' + '''' + '+@procName)';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'fetch next from cur into @procName';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'end';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'close cur';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'deallocate cur';
    fdqryTmp.SQL.Add(sqltext);
    fdqryTmp.Prepared;
    fdqryTmp.ExecSQL;
    fdqryTmp.close;
  finally
    fdqryTmp.close;
    F_DT.fdconProj.Connected := False;
    // ShowWaitText; //���������,���ǹرյȴ�����
  end;
end;

function TMainFrm.Auto_proc(): Boolean;
type
  TProcRec = record
    s_para_tip: string;
    s_para_lx: string;
    s_para_name: string;
    s_para_value: string;
  end;
var
  R_proc: array of TProcRec;
  s1, s2, s3: string;
  s_filename: string;
  sqlname, sqltext, sqltext_bank: string;
  sqlfile: TextFile;
  i, ii: Integer;
  i_len: Integer;
  i_pos1, i_pos11, i_pos2: Integer;
  i_cnt, i_cnt1, i_cnt2, i_cnt3, i_cnt4: Integer;
  is_exist, is_exist_v: Integer; // 0 false,1 true
  ClickedOK, ClickNO: Boolean;
  tmpi: LongInt;
  tmpf: Double;
  tmps1, tmps2: string;
  i_col: Integer;
  a_s: TStringList;
  a_i: Integer;
  a_ss: array of string;
begin
  // �Զ�ִ�д洢���̻�����Ŀ��һ�����������Ŀ��ִ�У�1.ά����Ŀ��������ɾ�����޸ģ���2.ά��ģ�ͺ�3.����ģ�ͺ�
  // ׼������F_DT.FDConGen��F_DT.FDConSYS��login�׶����������趨��F_DT.fdconProj��login�׶ζ�ȡt_database����Ŀά�������ı�
  F_DT.FDConGen.Connected := False;
  // F_DT.FDConGen.ConnectionString := t_connect;  //�������ݿ����Ƶ�����
  fdqryTmp.Connection := F_DT.FDConGen;
  F_DT.fdconProj.Connected := False;
  // ׼��������Ŀ������
  F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';';

  // �ж���Ŀ���ݿ��Ƿ����--------------

  fdqryTmp.SQL.Clear;
  fdqryTmp.SQL.Text := 'select name from master..sysdatabases where name = ' + '''' + t_Database + '''';
  fdqryTmp.Open;
  if fdqryTmp.RecordCount <= 0 then
  begin
    fdqryTmp.close;
    F_DT.FDConGen.Connected := False;
    Exit;
  end;
  // --------------------------------------
  // ---------��ȡ�Զ����к�����洢����---���ޣ����˳�---------------------------
  fdqryAuto.close;
  fdqryAuto.Connection := F_DT.FDConSYS; // ϵͳ���ݿ�
  fdqryAuto.SQL.Clear;
  sqltext := 'SELECT * FROM "X_menus" where t_auto =' + '''' + '1' + '''' + ' and (len(isnull(t_right,' + '''' + '''' +
    '))=0 or t_right=' + '''' + t_database_ver + '''' + ')' + ' and t_type = ' + '''' + t_type + '''' +
    ' order by t_order';
  fdqryAuto.SQL.Add(sqltext);
  // FdqryAuto.sql.SaveToFile('d:\x.sql');
  fdqryAuto.Prepared;
  fdqryAuto.Open;
  i_cnt := fdqryAuto.RecordCount;
  if i_cnt = 0 then
  begin
    fdqryAuto.close;
    Exit;
  end;
  // ------------------------------------------------------------------
  // ====ѭ��ִ����Ҫ�Զ�ִ�еĴ洢���̻���=============================
  fdqryAuto.First;
  while not fdqryAuto.Eof do // ѭ��ִ����Ҫ�Զ�ִ�еĴ洢����
  begin
    ClickNO := False; // ȡ������¼��ʱ��Ϊtrue���ú�����洢���̲�ִ��
    // ShowWaitText(Trim(FdqryAuto.FieldByName('t_name').AsString));
    // ��ȡ�ļ�ֱ�������ݵĵ�һ��
    s_filename := ExtractFilePath(ParamStr(0)) + 'x_sql.txt';
    s2 := Trim(fdqryAuto.FieldByName('t_para').AsString);
    s2 := StringReplace(s2, ' ', '', [rfReplaceAll]);
    s2 := StringReplace(s2, '��', '@', [rfReplaceAll]);
    s2 := StringReplace(s2, '��', ':', [rfReplaceAll]);
    // ShowMessage('will proc');
    TBlobField(fdqryAuto.FieldByName('t_proc')).SaveToFile(s_filename);
    AssignFile(sqlfile, s_filename);
    FileMode := 0;
    Reset(sqlfile);
    while not Eof(sqlfile) do
    begin
      Readln(sqlfile, s1);
      if Length(Trim(s1)) <> 0 then
        Break;
    end;
    CloseFile(sqlfile);
    s1 := UpperCase(Trim(s1));

    i_pos11 := Pos('FUNCTION', s1);
    i_pos1 := Pos('PROCEDURE', s1);
    if (i_pos11 = 0) and (i_pos1 = 0) then
    begin
      // ShowWaitText;
      MessageDlg('�Զ�ִ�е�ģ�ʹ���ȱ��PROCEDURE��FUNCTION�ؼ��֣�', mtInformation, [mbOK], 0);
      Exit;
    end;

    // �����Զ��庯����ʼ
    if i_pos11 > 0 then
    begin
      // ��ȡ������
      Delete(s1, 1, i_pos11 + 7);
      s1 := Trim(s1);
      i_len := Length(s1);
      sqlname := '';
      for ii := 1 to i_len do
      begin
        if (s1[ii] <> ' ') and (s1[ii] <> '(') then
          sqlname := sqlname + s1[ii]
        else
          Break;
      end;
      // ɾ�������е���������"dbo."��

      sqlname := StringReplace(sqlname, 'dbo.', '', [rfReplaceAll]);
      // showmessage(sqlname);
      sqlname := StringReplace(sqlname, '[', '', [rfReplaceAll]);
      sqlname := StringReplace(sqlname, ']', '', [rfReplaceAll]);

      // �����Զ��庯���Ƿ����
      try
        sqltext := 'select name from sysobjects where Name =' + '''' + sqlname + '''' + ' and (type =' + '''' + 'AF' +
          '''' + ' or type =' + '''' + 'FN' + '''' + ' or type =' + '''' + 'FS' + '''' + ' or type =' + '''' + 'FT' +
          '''' + ' or type =' + '''' + 'IF' + '''' + ' or type =' + '''' + 'TF' + '''' + ')';
        fdqryTmp.Connection := F_DT.fdconProj;
        fdqryTmp.close;
        fdqryTmp.SQL.Clear;
        fdqryTmp.SQL.Add(sqltext);
        fdqryTmp.Prepared;
        fdqryTmp.Open;
      except
        fdqryTmp.close;
        // ShowWaitText;
        raise Exception.Create('��Ŀ���ݿ�����𻵣�������Ŀ������ɾ����Ŀ�����½���!');
        Exit;
      end;
      if fdqryTmp.RecordCount = 0 then
        is_exist := 0
      else
        is_exist := 1;
      fdqryTmp.close;
      // ��������ɾ��
      if is_exist = 1 then
      begin
        sqltext := 'drop Function ' + '[dbo].[' + sqlname + ']';
        // showmessage(sqltext);
        fdqryTmp.close;
        fdqryTmp.SQL.Clear;
        fdqryTmp.SQL.Add(sqltext);
        fdqryTmp.Prepared;
        fdqryTmp.ExecSQL;
        fdqryTmp.close;
      end;
      // �����Զ��庯��������Ҫ�ع�
      s1 := '';
      sqltext := '';
      AssignFile(sqlfile, s_filename);
      FileMode := 0;
      Reset(sqlfile);
      try
        F_DT.fdconProj.StartTransaction;
        fdqryTmp.close;
        fdqryTmp.SQL.Clear;
        while not Eof(sqlfile) do
        begin
          Readln(sqlfile, sqltext);
          if Length(Trim(sqltext)) <> 0 then
            fdqryTmp.SQL.Add(sqltext);
          while (not Eof(sqlfile)) and (UpperCase(Trim(sqltext)) <> 'GO') do
          begin
            Readln(sqlfile, sqltext);
            if (UpperCase(Trim(sqltext)) <> 'GO') then
              fdqryTmp.SQL.Add(sqltext);
          end;
        end;
        CloseFile(sqlfile);
        // fdqryTmp.SQL.LoadFromFile(s_filename); ִ�г�������Ϊ�ֹ����ļ�������sql���
        DeleteFile(s_filename);
        fdqryTmp.ExecSQL; // ִ��
        F_DT.fdconProj.Commit;
        fdqryTmp.close;
      except
        CloseFile(sqlfile);
        F_DT.fdconProj.Rollback;
        fdqryTmp.close;
        // ShowWaitText;
        raise Exception.Create('�Զ������Զ��庯��ʱ�����������ڿ���ģʽ��ά��!');
        Exit;
      end;
      fdqryTmp.close;
      // ������������
    end;
    // �Զ��庯������
    // ======= �洢���̿�ʼ================
    if i_pos1 > 0 then
    begin
      // ��ȡ�洢������
      Delete(s1, 1, i_pos1 + 8);
      s1 := Trim(s1);
      i_len := Length(s1);
      sqlname := '';
      for ii := 1 to i_len do
      begin
        if (s1[ii] <> ' ') and (s1[ii] <> '(') then
          sqlname := sqlname + s1[ii]
        else
          Break;
      end;
      // MessageDlg(sqlname);
      // ɾ���洢�����е���������"dbo."��
      i_pos1 := Pos('.', sqlname);
      if i_pos1 > 0 then
        Delete(sqlname, 1, i_pos1);
      // ��ȡ�������������������������飿��
      i_pos1 := Pos('@', s1);
      Delete(s1, 1, i_pos1 - 1);
      s1 := Trim(s1);
      i_len := Length(s1);
      // ͳ��@���ֵĴ���
      i_cnt1 := 0;
      for ii := 1 to i_len do
        if s1[ii] = '@' then
          Inc(i_cnt1);
      i_cnt2 := 0;
      for ii := 1 to Length(s2) do
        if s2[ii] = '@' then
          Inc(i_cnt2);
      i_cnt3 := 0;
      for ii := 1 to Length(s2) do
        if s2[ii] = '!' then
          Inc(i_cnt3);
      i_cnt4 := 0;
      for ii := 1 to Length(s2) do
        if s2[ii] = ':' then
          Inc(i_cnt4);

      if (i_cnt2 <> i_cnt3) or (i_cnt3 <> i_cnt4) or (i_cnt2 <> i_cnt4) then
      begin
        // ShowWaitText;
        MessageDlg('������Ϣ���岻��ȷ�����ڼ��ģ��ά���м�������Ϣ��', mtInformation, [mbOK], 0);
        Exit;
      end;
      if i_cnt1 <> i_cnt2 then
      begin
        // ShowWaitText;
        MessageDlg('������Ϣ�еĲ�����������ģ�ʹ����еĲ���������һ�£����ڼ��ģ��ά���м�飡', mtInformation, [mbOK], 0);
        Exit;
      end;
      // s1="@aa int,@bb char(8),@cc string )"   ȡ�������ַ�����ȡ������
      // s2="@��ʾ:20090101@��ʾ2:20091231"
      s1 := StringReplace(s1, ')', '', [rfReplaceAll]);
      s1 := StringReplace(s1, '(', '', [rfReplaceAll]);

      // ���i_cnt1>0������ÿһ����������¼����
      if i_cnt1 > 0 then
      begin
        SetLength(R_proc, i_cnt1);
        s3 := '';
        for i := 1 to i_cnt1 do
        begin
          // i_pos1:=Pos('@',s1);
          i_pos2 := Pos(' ', s1);
          if i_pos2 = 0 then
            i_pos2 := Length(s1);
          s3 := Copy(s1, 1, i_pos2 - 1);
          R_proc[i - 1].s_para_name := s3;
          Delete(s1, 1, i_pos2);
          i_pos1 := Pos('@', s1);
          Delete(s1, 1, i_pos1 - 1);
          s1 := Trim(s1);
          // i_pos1:=Pos('@',s2);
          i_pos2 := Pos('!', s2);
          s3 := Copy(s2, 2, i_pos2 - 2);
          R_proc[i - 1].s_para_tip := s3;
          Delete(s2, 1, i_pos2 - 1);
          i_pos2 := Pos(':', s2);
          s3 := Copy(s2, 2, i_pos2 - 2);
          s3 := UpperCase(s3);
          if (s3 <> 'N') and (s3 <> 'D') and (s3 <> 'S') then
          begin
            // ShowWaitText;
            MessageDlg('���ģ���в�����Ϣ�е���������ֻ����N��S��D�����ڼ��ģ��ά���м�飡', mtInformation, [mbOK], 0);
            Exit;
          end;
          R_proc[i - 1].s_para_lx := s3;
          Delete(s2, 1, i_pos2 - 1);
          i_pos2 := Pos('@', s2);
          if i_pos2 = 0 then
          begin
            i_pos2 := Length(s2);
            s3 := Copy(s2, 2, i_pos2 - 1);
          end
          else
            s3 := Copy(s2, 2, i_pos2 - 2);
          R_proc[i - 1].s_para_value := StringReplace(s3, '@', '', [rfReplaceAll]);
          Delete(s2, 1, i_pos2 - 1);
        end;
      end;
      // MessageDlg(IntToStr(i_cnt1));
      // MessageDlg(sqlname);
      // �������ݿ�洢�����Ƿ����
      try
        sqltext := 'select name from sysobjects where Name =' + '''' + sqlname + '''' + ' and type =' + '''' +
          'P' + '''';
        // fdqryTmp.Connection := F_DT.fdconProj;
        fdqryTmp.close;
        fdqryTmp.SQL.Clear;
        fdqryTmp.SQL.Add(sqltext);
        fdqryTmp.Prepared;
        fdqryTmp.Open;
      except
        fdqryTmp.close;
        // ShowWaitText;
        raise Exception.Create('��Ŀ���ݿ�����𻵣�������Ŀ������ɾ����Ŀ�����½���!');
        Exit;
      end;
      if fdqryTmp.RecordCount = 0 then
        is_exist := 0
      else
        is_exist := 1;
      fdqryTmp.close;

      // ------------�洢���̲�����Ҫ����������ʱ����Ҫ�ع� ----------------------
      if is_exist = 0 then
      begin
        sqltext := '';
        AssignFile(sqlfile, s_filename);
        FileMode := 0;
        Reset(sqlfile);
        try
          F_DT.fdconProj.StartTransaction;
          fdqryTmp.close;
          fdqryTmp.SQL.Clear;
          while not Eof(sqlfile) do
          begin
            Readln(sqlfile, sqltext);
            if Length(Trim(sqltext)) <> 0 then
              fdqryTmp.SQL.Add(sqltext);
            while (not Eof(sqlfile)) and (UpperCase(Trim(sqltext)) <> 'GO') do
            begin
              Readln(sqlfile, sqltext);
              if (UpperCase(Trim(sqltext)) <> 'GO') then
                fdqryTmp.SQL.Add(sqltext);
            end;
          end;
          CloseFile(sqlfile);
          // fdqryTmp.SQL.LoadFromFile(s_filename); ִ�г�������Ϊ�ֹ����ļ�������sql���
          DeleteFile(s_filename);
          fdqryTmp.ExecSQL; // ִ��
          F_DT.fdconProj.Commit;
          fdqryTmp.close;
        except
          CloseFile(sqlfile);
          F_DT.fdconProj.Rollback;
          fdqryTmp.close;
          // ShowWaitText;
          raise Exception.Create('�Զ���������ģ�ʹ���������������ģ�ʹ���!');
          Exit;
        end;
        fdqryTmp.close;
      end;
      // ----------------------�洢���̽�������-----------------------------------------
      // ��������ִ��
      // �������������������ִ��
      if i_cnt1 > 0 then
      begin
        i := 1;
        while (i <= i_cnt1) do
        begin
          ClickedOK := InputQuery('�������', R_proc[i - 1].s_para_tip + '            ', R_proc[i - 1].s_para_value);
          if ClickedOK then { NewString contains new input string }
          begin
            // ������ʾ���������ڡ����������ж������Ƿ�������ȷ
            if R_proc[i - 1].s_para_lx = 'D' then
            begin
              // �ж��Ƿ�����
              try
                tmps1 := Copy(R_proc[i - 1].s_para_value, 1, 4) + '-' + Copy(R_proc[i - 1].s_para_value, 5, 2) + '-' +
                  Copy(R_proc[i - 1].s_para_value, 7, 2);
                StrToDate(tmps1);
              except
                MessageDlg('��������ڸ�ʽ,��ȷ�����ڸ�ʽӦΪ��20090228����', mtInformation, [mbOK], 0);
                Continue;
              end;
            end;
            // ������ʾ���������ڡ����������ж������Ƿ�������ȷ
            if R_proc[i - 1].s_para_lx = 'N' then
            begin
              // �ж��Ƿ�����
              if not(TryStrToInt(R_proc[i - 1].s_para_value, tmpi) or TryStrToFloat(R_proc[i - 1].s_para_value, tmpf))
              then
              begin
                MessageDlg('Ӧ���������֣�', mtInformation, [mbOK], 0);
                Continue;
              end;
            end;
          end
          else
          begin
            // MessageDlg('ȡ������¼��');
            ClickNO := True;
            Break;
          end;
          i := i + 1;
        end;
        // ���¿�ʼ�µ��Զ��洢����
        if ClickNO then
        begin
          fdqryAuto.Next;
          Continue;
        end;
        // ��ס���������ֵ
        tmps1 := '';
        tmps2 := '';
        for i := 1 to i_cnt1 do
        begin
          tmps1 := tmps1 + '@' + R_proc[i - 1].s_para_tip + '!' + R_proc[i - 1].s_para_lx + ':' +
            R_proc[i - 1].s_para_value;
          tmps2 := tmps2 + R_proc[i - 1].s_para_tip + R_proc[i - 1].s_para_value;
        end;
        fdqryAuto.Edit;
        fdqryAuto.FieldByName('t_para').AsString := tmps1;
        fdqryAuto.Post;
        // cxtxtdt1.Text := Trim(FdqryAuto.FieldByName('t_name').AsString) + '-' + tmps2;
      end
      else;
      // cxtxtdt1.Text := Trim(FdqryAuto.FieldByName('t_name').AsString);
      // ShowWaitText('���Ժ����ڴ�����ѯ�������������' + t_timeout +
      // '�룬û�з��ؽ����ϵͳ�Զ����ء����Ż�����������ڲ��������мӴ��ѯ���ʱ������');
      try
        try

          fdSPAuto.Connection := F_DT.fdconProj;
          fdSPAuto.StoredProcName := sqlname;
          // msp1.Params.Refresh; //���������ã����������Ҫ
          fdSPAuto.Prepare;
          // ���ж��Ƿ���Ҫ����
          if i_cnt1 > 0 then // ��Ҫ����
          begin
            for i := 1 to i_cnt1 do
            begin
              fdSPAuto.Params.ParamByName(R_proc[i - 1].s_para_name).Value := R_proc[i - 1].s_para_value;
            end;
          end;
          // MessageDlg('ִ�д洢����');
          fdSPAuto.Prepared;
          fdSPAuto.Open;
          // FDSPAuto.enableControls;
        finally
          // FDSPAuto.DisableControls;
          fdSPAuto.close;
          // ShowWaitText; //���������,���ǹرյȴ�����
        end;
      except
        // ShowWaitText; //���������,���ǹرյȴ�����
        raise Exception.Create('ִ�з���ģ�͹���ʱ��������ȷ�������Ƿ���ɹ���');
        Exit;
      end;
    end;
    fdqryAuto.Next;
  end;
  fdqryAuto.close;
  F_DT.fdconProj.Connected := False;
  // ShowWaitText;
end;

function TMainFrm.Disp_txn(): Boolean;
var
  s_key_name, sqltext1, sqltext2: string;
begin
  // if (adoq2['t_table2'] <> '1') or (adoq2['t_table1'] <> '1') then //��ʾ�����˻������н���
  // Exit;
  if chk2.Checked and (fdQryTree['t_table1'] = '1') then
  begin
    try
      // ����˺�
      s_key_name := mtblh1.FieldByName(t_key_nameLS[0]).AsString;

      F_DT.ADOconGD2.Connected := False;
      F_DT.ADOconGD2.Connectiontimeout := StrToInt(t_TimeOut) * 1000;
      F_DT.ADOconGD2.ConnectionString :=
        'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_Database +
        ';Data Source=' + sComputerName + t_connect;
      if (t_modl_type = '1') or (t_modl_type = '2') or (t_modl_type = '4') or (t_modl_type = '5') then
        sqltext1 := t_table1_sql_dw + ' where ' + t_key_nameLS[1] + ' = ' + '''' + s_key_name + '''';
      if (t_modl_type = '3') or (t_modl_type = '6') then
        sqltext1 := t_table1_sql_gr + ' where ' + t_key_nameLS[1] + ' = ' + '''' + s_key_name + '''';
      if (t_modl_type = '7') then
        sqltext1 := t_table1_sql_other + ' where ' + t_key_nameLS[1] + ' = ' + '''' + s_key_name + '''';

      // ShowMessage(sqltext2);
      // exit ;
      qrygd2.Connection := F_DT.ADOconGD2;
      qrygd2.close;
      qrygd2.DisableControls;
      qrygd2.SQL.Clear;
      qrygd2.SQL.Add(sqltext1);
      // ShowMessage(qrygd2.SQL.Text);
      qrygd2.Prepared;
      qrygd2.Open;
      qrygd2.enableControls;
      F_DT.ADOconGD2.Connected := True;
      dbgrdh2.Enabled := True;
      // OptimizeGrid(dbgrdh2);
    except
      dbgrdh2.Enabled := False;
      qrygd2.close;
      qrygd2.DisableControls;
      raise Exception.Create('��ȷ���������и����˻������Ƿ����setting��table1_sql����ȷ!');
    end;
  end;

  // ��ʾͬ����ʾ����
  if chk1.Checked and (fdQryTree['t_table2'] = '1') then
  begin
    try
      // ����˺�
      s_key_name := mtblh1.FieldByName(t_key_nameLS[0]).AsString;

      F_DT.ADOconGD3.Connected := False;
      F_DT.ADOconGD3.Connectiontimeout := StrToInt(t_TimeOut) * 1000;
      F_DT.ADOconGD3.ConnectionString :=
        'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_Database +
        ';Data Source=' + sComputerName + t_connect;
      // sqltext2 := t_table2_sql + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' + t_table2_sql_order;
      if (t_modl_type = '1') or (t_modl_type = '2') or (t_modl_type = '4') or (t_modl_type = '5') then
        sqltext2 := t_table2_sql_dw + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
          t_table2_sql_order;
      if (t_modl_type = '3') or (t_modl_type = '6') then
        sqltext2 := t_table2_sql_gr + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
          t_table2_sql_order;
      if (t_modl_type = '7') then
        sqltext2 := t_table2_sql_other + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
          t_table2_other_order;

      // ShowMessage(sqltext2);
      // exit;
      qrygd3.Connection := F_DT.ADOconGD3;
      qrygd3.close;
      qrygd3.DisableControls;
      qrygd3.SQL.Clear;
      qrygd3.SQL.Add(sqltext2);
      qrygd3.Prepared;
      qrygd3.Open;
      qrygd3.enableControls;
      F_DT.ADOconGD3.Connected := True;
      dbgrdh3.Enabled := True;
      // OptimizeGrid(dbgrdh3);
    except
      dbgrdh3.Enabled := False;
      qrygd3.close;
      qrygd3.DisableControls;
      raise Exception.Create('��ȷ��ͬ����ʾ�����ݱ��Ƿ���!');
      Exit;
    end;
  end;
end;

procedure TMainFrm.N10Click(Sender: TObject);
begin
  close;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
var
  s_filename, sqltext: string;
  i: Integer;
begin
  i := t_ver_noLS.IndexOf(t_type); // ϵͳ�汾��������
  MainFrm.Caption := t_ver_nameLS[i] + t_ver + '---' + User_info;
  // ������ʾϵͳ�汾���û���Ϣ
  cxDBTreeList1t_name.Caption.Text := '���ݷ�����˫��ִ�У�' + '��' + '�汾��' + t_Jclj_Ver;
  // ģ���б�������ʾģ�ͣ�����߼����汾��
  // ��ʾ��ǰ��Ŀ����
  if Length(Trim(t_proj_no)) = 0 then
    lblInfo.Caption := '---�������õ�ǰ��Ŀ������ʵʩ����---'
  else
    lblInfo.Caption := '��ǰ��Ŀ��' + t_proj_no + '_' + t_proj_name + '_' + t_Database;
  // ������checkBox����
  chk2.Caption := t_table1_name;
  chk1.Caption := t_table2_name;
  btn_jy.Left := chk1.Left + chk1.Width;
  // ������ʾ���װ�ť����Ϊ���δӱ���ʾ������delphi11fireDac�����»��ƿ��Բ��ô˰�ť��
  cxspltr3.Hint := '������ʾ�����ػ��ƶ�' + t_table1_name;
  cxspltr4.Hint := '������ʾ�����ػ��ƶ�' + t_table2_name;
  s_filename := ExtractFilePath(ParamStr(0));
  inprpstrgmnh1.IniFileName := s_filename + 'zh_layout'; // �����drid��ʽ
  // prpstrgh1.LoadProperties;
  // cxspltr3.CloseSplitter;
  // ϵͳ����Ա
  if (User_can = '2') then // ����Ա
  begin
    MnModBack.Enabled := True;
    MnModRest.Enabled := True;
    MnUser.Enabled := True;
    MnOpen.Enabled := True;
  end
  else // ��ͨ�û�
  begin
    MnModBack.Enabled := False;
    MnModRest.Enabled := False;
    MnUser.Enabled := False;
    MnOpen.Enabled := False;
  end;
  // ���ݼ��ģʽȷ���г���ģ�͹���  δ���� �����ݿ�汾��ָ���汾=t_database_ver    �汾֮�䲻�ڻ�������ģ��
  sqltext := 'SELECT * FROM "X_menus" where t_hide =' + '''' + '1' + '''' + ' and (len(isnull(t_right,' + '''' + '''' +
    '))=0 or t_right=' + '''' + t_database_ver + '''' + ')' + ' and t_type =' + '''' + t_type + '''' +
    ' order by t_order';
  fdQryTree.close; // fdQryTree=ADOQ2
  fdQryTree.DisableControls;
  fdQryTree.Connection := F_DT.FDConSYS;
  // FDQryTree.CursorLocation := clUseClient;
  // FDQryTree.CursorType := ctStatic;
  // FDQryTree.LockType := ltBatchOptimistic;
  fdQryTree.SQL.Clear;
  fdQryTree.SQL.Add(sqltext);
  fdQryTree.Prepared;
  fdQryTree.Open;
  fdQryTree.enableControls;
  // if (adoq1.Locate('t_parent_id', 66, [])) then
  // MessageDlg('ok')
  // else
  // MessageDlg('not');
  // cxDBTreeList1.FullExpand;
  Application.HintHidePause := 10000;
  // dbgrdh1.Hint:='�ڱ�����ѡ�к��Ҽ��ɸ���'+#13#10+'�㰴���������';
end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  s_filename: string;
begin
  // s_filename := ExtractFilePath(ParamStr(0));
  // inprpstrgmnh1.IniFileName := s_filename + 'zh_layout';
  // prpstrgh1.SaveProperties;
  // ADOQ1.close;
  // ADOQ2.close;
  F_DT.FDConSYS.Connected := False;
  F_DT.fdconProj.Connected := False;

  fdQryTree.close;
  AdoEx1.close;
  F_DT.ADOCN1.Connected := False;
  F_DT.ADOCN2.Connected := False;
  F_DT.ADOCN3.Connected := False;
  F_DT.ADOCN4.Connected := False;

  // Application.Terminate;
end;

procedure TMainFrm.N24Click(Sender: TObject);
begin
  cxDBTreeList1.FullExpand;
end;

procedure TMainFrm.N25Click(Sender: TObject);
begin
  cxDBTreeList1.FullCollapse;
end;

procedure TMainFrm.btn1Click(Sender: TObject);
var
  s1, s2, s3: string;
  s_filename: string;
  sqlname, sqltext, sqltext_bank, s_key_name: string;
  sqlfile: TextFile;
  i, ii: Integer;
  i_len: Integer;
  i_pos1, i_pos2: Integer;
  i_cnt1, i_cnt2, i_cnt3, i_cnt4: Integer;
  is_exist, is_exist_v: Integer; // 0 false,1 true
  ClickedOK: Boolean;
  tmpi: LongInt;
  tmpf: Double;
  tmps1, tmps2: string;
  i_col: Integer;
  a_s: TStringList;
  a_i, t_time: Integer;
  a_ss: array of string;
  MyRestoreParams: TDBGridEhRestoreParams;
begin
  if Length(t_proj_no) = 0 then
  begin
    Application.MessageBox('�����õ�ǰ��Ŀ����ִ������ģ�ͣ�', '��Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST);
    Exit;
  end;
  F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';';
  dbgrdh1.Color := clWindow;
  // У�� ���ȫ��R_proc��t_ProcFunName������ִ��
  ModlCodeValid(fdQryTree, True, False);

  // �����ڻ����ɹ���ִ��
{$REGION '�������¼�롢У��ͱ���'}
  // ѭ�����������������ͬʱУ�����
  i_cnt1 := Length(R_proc);
  if i_cnt1 > 0 then
  begin
    i := 1;
    while (i <= i_cnt1) do
    begin
      ClickedOK := InputQuery('�������', R_proc[i - 1].s_para_tip + '            ', R_proc[i - 1].s_para_value);
      if ClickedOK then { NewString contains new input string }
      begin
        // ������ʾ���������ڡ����������ж������Ƿ�������ȷ
        if R_proc[i - 1].s_para_lx = 'D' then
        begin
          // �ж��Ƿ�����
          try
            tmps1 := Copy(R_proc[i - 1].s_para_value, 1, 4) + '-' + Copy(R_proc[i - 1].s_para_value, 5, 2) + '-' +
              Copy(R_proc[i - 1].s_para_value, 7, 2);
            StrToDate(tmps1);
          except
            MessageDlg('��������ڸ�ʽ,��ȷ�����ڸ�ʽӦΪ��20090228����', mtInformation, [mbOK], 0);
            Continue;
          end;
        end;
        // ������ʾ���������ڡ����������ж������Ƿ�������ȷ
        if R_proc[i - 1].s_para_lx = 'N' then
        begin
          // �ж��Ƿ�����
          if not(TryStrToInt(R_proc[i - 1].s_para_value, tmpi) or TryStrToFloat(R_proc[i - 1].s_para_value, tmpf)) then
          begin
            MessageDlg('Ӧ���������֣�', mtInformation, [mbOK], 0);
            Continue;
          end;
        end;
      end
      else
        Exit;
      i := i + 1;
    end;
    // ������ϣ�ִ����ǰ����¼���������ֵ
    tmps1 := '';
    tmps2 := '';
    for i := 1 to i_cnt1 do
    begin
      tmps1 := tmps1 + '@' + R_proc[i - 1].s_para_tip + '!' + R_proc[i - 1].s_para_lx + ':' +
        R_proc[i - 1].s_para_value;
      tmps2 := tmps2 + R_proc[i - 1].s_para_tip + R_proc[i - 1].s_para_value;
    end;
    fdQryTree.Edit;
    fdQryTree.FieldByName('t_para').AsString := tmps1;
    // FDQryTree.UpdateBatch(arAll);
    cxtxtdt1.Text := Trim(fdQryTree.FieldByName('t_name').AsString) + '-' + tmps2;
  end
  else
    cxtxtdt1.Text := Trim(fdQryTree.FieldByName('t_name').AsString);
{$ENDREGION}
  t_time := GetTickCount(); // ��¼��ʼʱ��
  dbgrdh1.Enabled := False;
  fdSPRun.DisableControls;
  fdSPRun.close;
  // FdSPRun.CommandTimeout:=StrToInt(t_TimeOut)*1000;
  // sp1�Ĺ���Ҫȡ�����ܼ�����ѯ�������������������������������������������
  fdSPRun.Filtered := False;
  fdSPRun.Filter := '';
  t_new_filter := True;
  fdSPRun.Connection := F_DT.fdconProj;
  fdSPRun.StoredProcName := t_ProcFunName;
  // FdSPRun.Params.Refresh; //���������ã����������Ҫ
  fdSPRun.Prepare;
  // ���ж��Ƿ���Ҫ����
  if i_cnt1 > 0 then // ��Ҫ����
  begin
    for i := 1 to i_cnt1 do
    begin
      fdSPRun.Params.ParamByName(R_proc[i - 1].s_para_name).Value := R_proc[i - 1].s_para_value;
    end;
  end;
  // ɾ��grid�ֶΣ�Ϊ�µĲ�ѯ����
  i_col := dbgrdh1.Columns.Count;
  for i := 0 to i_col - 1 do
  begin
    dbgrdh1.Columns.Delete(0);
  end;

  fdSPRun.Prepared;
  fdSPRun.Open;
  // fdSPRun.enableControls;
  fdmtblRun.close;
  fdmtblRun.data := fdSPRun.data;
  // fdmtblRun.CloneCursor(fdSPRun,False,False);
  // mtblh1.SortOrder := ''; // ������²�ѯ����������
  // mtblh1.Active := True;
  for i := 0 to dbgrdh1.Columns.Count - 1 do
  begin
    if (dbgrdh1.DataSource.DataSet.Fields[i].DataType = ftFloat) then
      dbgrdh1.Columns[i].DisplayFormat := '#,####,####,##0.00';
    if (dbgrdh1.DataSource.DataSet.Fields[i].DataType = ftInteger) or
      (dbgrdh1.DataSource.DataSet.Fields[i].DataType = ftSmallint) then
      dbgrdh1.Columns[i].DisplayFormat := '#,####,####,##0';
  end;
  dbgrdh1.Enabled := True;
  // ���ȴ������ɼ���
  table_visable();
  s_filename := ExtractFilePath(ParamStr(0));
  inprpstrgmnh1.IniFileName := s_filename + 'zh_layout';
  prpstrgh1.LoadProperties;
  // ��ʾִ��ʱ��
  cxtxtdt1.Text := cxtxtdt1.Text + '(' + FloatToStr((GetTickCount() - t_time) / 1000) + '��)';
  // ��¼�ɹ���־
  log4info(cxtxtdt1.Text);
end;

procedure TMainFrm.btn2Click(Sender: TObject);
var
  ExpClass: TDBGridEhExportClass;
  Ext: string;
  // Dg2E: TDBGridToExcel;
begin
  if not fdmtblRun.Active then
  begin
    MessageDlg('û��Ҫ���������ݣ�', mtInformation, [mbOK], 0);
    Exit;
  end
  else if fdmtblRun.RecordCount = 0 then
  begin
    MessageDlg('û��Ҫ���������ݣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  SaveDialog1.FileName := Trim(StringReplace(cxtxtdt1.Text, '|', '', [rfReplaceAll]));
  if SaveDialog1.Execute then
  begin

  end;

  // ActiveControl := dbgrdh1;
  // if (ActiveControl is TDBGridEh) then
  // if SaveDialog1.Execute then
  // begin
  // // ShowWaitText('���Ժ����ڽ������ݵ���...');
  // try
  // case SaveDialog1.FilterIndex of
  // 1:
  // begin
  // ExpClass := TDBGridEhExportAsXLS;
  // Ext := 'xlsx';
  // end;
  // 2:
  // begin
  // ExpClass := TDBGridEhExportAsXLS;
  // Ext := 'xls';
  // end;
  // 3:
  // begin
  // ExpClass := TDBGridEhExportAsText;
  // Ext := 'txt';
  // end;
  // 4:
  // begin
  // ExpClass := TDBGridEhExportAsRTF;
  // Ext := 'rtf';
  // end;
  // // 3:begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
  // else
  // ExpClass := nil;
  // Ext := '';
  // end;
  // if ExpClass <> nil then
  // begin
  // if UpperCase(Copy(SaveDialog1.FileName, Length(SaveDialog1.FileName) -
  // 2, 4)) <> UpperCase(Ext) then
  // SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
  //
  // if (Ext = 'xls') or (Ext = 'xlsx') then
  // begin
  // ShowMessage('Ҫ��дŶ');
  //
  // // Dg2E := TDBGridToExcel.Create(nil);
  // // Dg2E.FileName := SaveDialog1.FileName;
  // // Dg2E.grid := true;
  // // Dg2E.TitleFont.Style := [fsBold];
  // // Dg2E.HeadFont.Style := [fsBold];
  // // Dg2E.TitleFont.Size := 10;
  // // Dg2E.HeadFont.Size := 10;
  // // Dg2E.DataFont.Size := 10;
  // // Dg2E.TitleFont.name := '����';
  // // Dg2E.HeadFont.name := '����';
  // // Dg2E.DataFont.name := '����';
  // // Dg2E.Title := Dg2E.FileName;
  // // Dg2E.TitleRow := 0;
  // // Dg2E.TitleCol := 0;
  // // Dg2E.MergeTitle := True;
  // // Dg2E.ExportToExcel(dbgrdh1);
  // // Dg2E.Free;
  // // DBGridToExcel(dbgrdh1,SaveDialog1.FileName);
  // end
  // else
  // SaveDBGridEhToExportFile(ExpClass, TDBGridEh(ActiveControl),
  // SaveDialog1.FileName, True);
  // end;
  // finally
  //
  // // ShowWaitText; //���������,���ǹرյȴ�����
  // end;
  // end;
end;

procedure TMainFrm.N19Click(Sender: TObject);
begin
  btn1.Click;
end;

procedure TMainFrm.pnl2Resize(Sender: TObject);
begin
  cxtxtdt1.Top := 0;
  cxtxtdt1.Left := lblResult.Width;
  cxtxtdt1.Width := pnl2.Width - lblResult.Width;
  cxtxtdt1.Height := pnl2.Height;
end;

procedure TMainFrm.pnl3Resize(Sender: TObject);
begin
  cxdbtxtdt1.Top := 0;
  cxdbtxtdt1.Left := 0;
  cxdbtxtdt1.Width := pnl3.Width;
  cxdbtxtdt1.Height := pnl3.Height;
end;

procedure TMainFrm.pnl4Resize(Sender: TObject);
begin
  // lblInfo.Top:=0;
  // lblInfo.Left:=0;
  // lblInfo.Width:=pnl4.Width;
  // lblInfo.Height:=pnl4.Height;
end;

procedure TMainFrm.N27Click(Sender: TObject);
begin
  // F_float:=F_float.CreateParented(MainFrm.Handle);
  if F_float.Showing then
    F_float.Hide
  else
    F_float.Show;
  // SendMessage(F_float.Handle,WM_NCACTIVATE,Ord(True),0);
end;

procedure TMainFrm.N2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmDataImport, FrmDataImport);
  FrmDataImport.ShowModal;
end;

procedure TMainFrm.FormShow(Sender: TObject);
begin
  lblInfo.Top := 0;
  lblInfo.Left := 0;
  pnl4.Width := lblInfo.Width;
  // if not Assigned(F_float) then
  // F_float:=F_float.CreateParented(GetDesktopWindow);
  F_float.Hide;
end;

procedure TMainFrm.excel1Click(Sender: TObject);
var
  ExpClass: TDBGridEhExportClass;
  Ext: string;
begin
  btn2.Click;
  // if not fdSPRun.Active then
  // begin
  // MessageDlg('û��Ҫ���������ݣ�', mtInformation, [mbOK], 0);
  // Exit;
  // end
  // else if fdSPRun.RecordCount = 0 then
  // begin
  // MessageDlg('û��Ҫ���������ݣ�', mtInformation, [mbOK], 0);
  // Exit;
  // end;
  // if dbgrdh1.Selection.SelectionType = gstNon then
  // begin
  // MessageDlg('û��ѡ�е�����Ҫ������', mtInformation, [mbOK], 0);
  // Exit;
  // end;
  // SaveDialog1.FileName := Trim(cxtxtdt1.Text);
  // if (ActiveControl is TDBGridEh) then
  // if SaveDialog1.Execute then
  // begin
  // case SaveDialog1.FilterIndex of
  // 1:
  // begin
  // ExpClass := TDBGridEhExportAsXLS;
  // Ext := 'xls';
  // end;
  // 2:
  // begin
  // ExpClass := TDBGridEhExportAsXLS;
  // Ext := 'xlsx';
  // end;
  // 3:
  // begin
  // ExpClass := TDBGridEhExportAsText;
  // Ext := 'txt';
  // end;
  // 4:
  // begin
  // ExpClass := TDBGridEhExportAsRTF;
  // Ext := 'rtf';
  // end;
  // // 3:begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
  // else
  // ExpClass := nil;
  // Ext := '';
  // end;
  // if ExpClass <> nil then
  // begin
  // if UpperCase(Copy(SaveDialog1.FileName, Length(SaveDialog1.FileName) -
  // 2, 3)) <> UpperCase(Ext) then
  // SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
  // SaveDBGridEhToExportFile(ExpClass, TDBGridEh(ActiveControl),
  // SaveDialog1.FileName, False);
  // end;
  // end;
end;

procedure TMainFrm.N8Click(Sender: TObject);
var
  s: string;
  i: Integer;
begin
  // ActiveControl := dbgrdh1;
  if ActiveControl is TDBGridEh then
    FindPublicShow(TDBGridEh(ActiveControl).DataSource.DataSet, s, i);
end;

procedure TMainFrm.N6Click(Sender: TObject);
begin
  ShowGridColEditor(dbgrdh1);
end;

procedure TMainFrm.N18Click(Sender: TObject);
begin
  ActiveControl := dbgrdh1;
  if not(ActiveControl is TDBGridEh) then
    Exit;
  dbgrdh1.AutoFitColWidths := False;
  N20.Checked := dbgrdh1.AutoFitColWidths;
  N18.Checked := not N20.Checked;
  // ShowWaitText('���ڴ���������λ�������Ż�...');
  // try
  // OptimizeGrid(TDBGridEh(ActiveControl));
  // finally
  // ShowWaitText;//���������,���ǹرյȴ�����
  // end;
end;

procedure TMainFrm.MnPassClick(Sender: TObject);
begin
  Application.CreateForm(TF_CHG_PASS, F_CHG_PASS);
  F_CHG_PASS.ShowModal;
end;

procedure TMainFrm.MnRuleClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSrcTabMaintain, frmSrcTabMaintain);
  frmSrcTabMaintain.ShowModal;
end;

procedure TMainFrm.N9Click(Sender: TObject);
begin
  // Application.CreateForm(Tf_about, f_about);
  // f_about.ShowModal;
end;

procedure TMainFrm.MnDictClick(Sender: TObject);
begin
  Application.CreateForm(TfrmDictMaintain, frmDictMaintain);
  frmDictMaintain.ShowModal;
end;

procedure TMainFrm.MnModBackClick(Sender: TObject);
var
  s_filename: string;
begin
  // ActiveControl:=dbgrdh1;
  SaveDialog2.FileName := DateToStr(Now) + '.zh';
  if SaveDialog2.Execute then
  begin
    s_filename := Trim(SaveDialog2.FileName);
    if FileExists(s_filename) then
    begin
      if Application.MessageBox('�����ļ��Ѵ��ڣ�������', 'ע��', MB_YESNO + MB_ICONWARNING) = IDNO then
      begin
        Exit;
      end;
    end;

    // ShowWaitText('���Ժ����ڽ��й��ܵ���...');
    try
      SaveDialog2.FileName := SaveDialog2.FileName;
      AdoEx1.close;
      AdoEx1.DisableControls;
      AdoEx1.Connection := F_DT.ADOCN1;
      AdoEx1.CursorLocation := clUseClient;
      AdoEx1.CursorType := ctStatic;
      AdoEx1.LockType := ltBatchOptimistic;
      AdoEx1.SQL.Clear;
      AdoEx1.SQL.Add('SELECT * FROM "X_menus" order by t_order');
      AdoEx1.Prepared;
      AdoEx1.Open;
      AdoEx1.enableControls;
      AdoEx1.SaveToFile(SaveDialog2.FileName, pfXML);
      // ShowWaitText;
      MessageDlg('���������ѵ�����' + SaveDialog2.FileName, mtInformation, [mbOK], 0);
    finally
      AdoEx1.close;
      AdoEx1.DisableControls;
      // ShowWaitText; //���������,���ǹرյȴ�����
    end;
  end;
end;

procedure TMainFrm.MnModRestClick(Sender: TObject);
begin
  Application.CreateForm(TF_import, F_import);
  F_import.ShowModal;
  if Length(Trim(t_proj_no)) > 0 then
  begin
    del_proc(); // ɾ���洢����
    Auto_proc() // �Զ�ִ�еĴ洢����
  end;
  // ADOQ1.close;
  // ADOQ1.Open;
  fdQryTree.close;
  fdQryTree.Open;

  cxDBTreeList1.FullExpand;
  // cre_zhsys();
  // del_proc();
  // def_fun();
  // Auto_proc();
  cxDBTreeList1t_name.Caption.Text := '��鹦�ܣ�˫��ִ�У�' + '��' + '�汾��' + t_Jclj_Ver;
end;

procedure TMainFrm.MnUserClick(Sender: TObject);
begin
  Application.CreateForm(TF_user, F_user);
  F_user.ShowModal;
end;

procedure TMainFrm.N20Click(Sender: TObject);
begin
  dbgrdh1.AutoFitColWidths := True;
  N20.Checked := dbgrdh1.AutoFitColWidths;
  N18.Checked := not N20.Checked
end;

procedure TMainFrm.N22Click(Sender: TObject);
begin

end;

// procedure TMainFrm.NSHSJ_DBFClick(Sender: TObject);
// begin
// if Application.MessageBox('�����ܵ����κ���MDF��LDF��β��SQL Server���ݿ��ļ��������ݿ����ݷ��ϼ��淶���ݣ��������ݷ����õ�������������ִ��󡣼���������', '�������ݿ�', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDNO then
// begin
// exit;
// end;
//
// if Length(t_proj_no) = 0 then
// begin
// Application.MessageBox('�����õ�ǰ��Ŀ���ٵ������ݣ�', '��Ϣ', MB_OK + MB_ICONWARNING + MB_TOPMOST);
// Exit;
// end;
// //  def_fun();
// //dbgrdh1.Enabled := False;
// //  FdSPRun.DisableControls;
// //  FdSPRun.Close;
// Application.CreateForm(TF_attach_db, F_attach_db);
// F_attach_db.ShowModal;
// // lblInfo.Caption := '�ȶԲ��������������ݣ�' + t_Database + ')(���л������룺' +
// //   t_bank_code + ')(�ȶ��˻���ֹ���ڣ�' + t_ZHSys_Date + ')';
// // cre_zhsys();
// // del_proc();
// // Auto_proc();
// end;

procedure TMainFrm.pm2Popup(Sender: TObject);
begin
  N20.Checked := dbgrdh1.AutoFitColWidths;
  N18.Checked := not N20.Checked
end;

procedure TMainFrm.N_Excel_DwClick(Sender: TObject);
begin
  // ��������excel�˻���Ϣ��ִ��
  // def_fun();

end;

procedure TMainFrm.cxDBTreeList1DblClick(Sender: TObject);
var
  i_id, i_parent_id: Integer;
begin
  // i_id := fdQryTree['t_id'];
  i_parent_id := fdQryTree['t_parent_id'];
  if (cxDBTreeList1.FocusedNode.Count > 0) or (i_parent_id = 0) then
  begin
    btn1.Enabled := False;
  end
  else
  begin
    btn1.Enabled := True;
    btn1.Click;
  end;
end;

procedure TMainFrm.cxDBTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList;
  APrevFocusedNode, AFocusedNode: TcxTreeListNode);
// var
// i_id, i_parent_id: Integer;
begin
  // ShowMessage(IntToStr(AFocusedNode.Count));
  // ShowMessage(IntToStr(AFocusedNode.ChildVisibleCount));
  // i_id := fdQryTree['t_id'];
  // i_parent_id := fdQryTree['t_parent_id'];
  // if (AFocusedNode.Count> 0) or (i_parent_id = 0) then
  // �������û�нڵ��Ϊ���ڵ㣬��ִ�� ��ִ�а�ť���飩--��汾�»�õ��б�Ӧ
  // btn1.Enabled := False
  // else
  // btn1.Enabled := True;
  // try
  // try
  // i_id := FDQryTree['t_id'];
  // i_parent_id := FDQryTree['t_parent_id'];
  // except
  // // MessageDlg('ddd');
  // end;
  // finally
  // ADOQ1.close;    //�жϽڵ����Ƿ��нڵ㣬ȷ��ִ�а�ť�Ƿ���Ч��ȷ���Ƿ�ִ��
  // ADOQ1.DisableControls;
  // ADOQ1.Connection := F_DT.ADOCN3;
  // ADOQ1.CursorLocation := clUseClient;
  // ADOQ1.CursorType := ctStatic;
  // ADOQ1.LockType := ltBatchOptimistic;
  // ADOQ1.SQL.Clear;
  // // ADOQ1.SQL.Add('SELECT * FROM "X_menus" where t_memo not like' + '''' +
  // // '%����%'
  // // + '''' + 'order by t_order');
  // ADOQ1.SQL.Add('SELECT * FROM "X_menus" where t_hide =' + '''' + '1' + '''' + 'order by t_order');
  // // --��汾�»�õ��б�Ӧ����t_type��t_datebase_ver�����
  // ADOQ1.Prepared;
  // ADOQ1.Open;
  // ADOQ1.enableControls;
  // // adoq1.Open;
  // if (ADOQ1.Locate('t_parent_id', i_id, [])) or (i_parent_id = 0) then
  // // �������û�нڵ��Ϊ���ڵ㣬��ִ�� ��ִ�а�ť���飩--��汾�»�õ��б�Ӧ
  // btn1.Enabled := False
  // else
  // btn1.Enabled := True;
  // end;
end;

procedure TMainFrm.cxDBTreeList1GetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode;
  AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
begin
  if AIndexType = tlitStateIndex then
    Exit;

  if ANode.Expanded then
    AIndex := 1
  else
    AIndex := 0;
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

procedure TMainFrm.MnOpenClick(Sender: TObject);
begin
  if t_mode = '1' then
  begin
    t_mode := '0';
    MnOpen.Checked := False;
    MnOpen.Caption := '�򿪿���ģʽ';
    // N13.Visible := False;
    MnOpenMode.Visible := False;
    // N_DrOther.Visible := False;
  end
  else
  begin
    Application.CreateForm(TF_mode, F_mode);
    F_mode.ShowModal;
    if t_mode = '1' then
    begin
      MnOpen.Checked := True;
      MnOpen.Caption := '�رտ���ģʽ';
      MnOpenMode.Visible := True;
      // N13.Visible := true;
      // N_DrOther.Visible := True;
    end;
  end;

end;

procedure TMainFrm.dbgrdh1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Disp_txn();
end;

procedure TMainFrm.dbgrdh1TitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
var
  i: Integer;
  sIndex, sFieldName: string;
  oField: TField;
begin
  // if dbgrdh1.SortMarkedColumns.Count > 0 then
  // begin
  // sIndex := '';
  // for i := 0 to dbgrdh1.SortMarkedColumns.Count - 1 do
  // begin
  // sFieldName := dbgrdh1.SortMarkedColumns[i].FieldName;
  // oField := dbgrdh1.DataSource.DataSet.FieldByName(sFieldName);
  // if (oField.FieldKind = fkLookup) and (Pos(';', oField.KeyFields) = 0) then
  // sFieldName := oField.KeyFields;
  // if sIndex <> '' then
  // sIndex := sIndex + ';';
  // sIndex := sIndex + sFieldName;
  // if dbgrdh1.SortMarkedColumns[i].Title.SortMarker = smUpEh then
  // sIndex := sIndex + ':D';
  // end;
  // fdmtblRun.IndexFieldNames := sIndex;
  // end
  // else
  // fdmtblRun.IndexFieldNames := '';
  case Column.Title.SortMarker of
    smNoneEh:
      begin
        Column.Title.SortMarker := smUpEh;
        fdmtblRun.IndexFieldNames := Column.FieldName;
      end;
    smUpEh:
      begin
        Column.Title.SortMarker := smDownEh;
        // /// /        mtblh1.SortOrder := Column.FieldName + ' DESC';
        fdmtblRun.IndexFieldNames := Column.FieldName + ':D';
      end;
    smDownEh:
      begin
        Column.Title.SortMarker := smNoneEh;
        // /// /        mtblh1.SortOrder := Column.FieldName + '';
        fdmtblRun.IndexFieldNames := '';
      end;
  end;

end;

procedure TMainFrm.dbgrdh1DblClick(Sender: TObject);
begin
  // OptimizeGrid(dbgrdh1);
  if pnl9.Visible = True then
    // OptimizeGrid(dbgrdh2);
    if pnl10.Visible = True then
      // OptimizeGrid(dbgrdh3);

end;

procedure TMainFrm.N301Click(Sender: TObject);
begin
  ActiveControl := dbgrdh2;
  if not(ActiveControl is TDBGridEh) then
    Exit;
  dbgrdh2.AutoFitColWidths := False;
  N302.Checked := dbgrdh2.AutoFitColWidths;
  N301.Checked := not N302.Checked;
end;

procedure TMainFrm.N302Click(Sender: TObject);
begin
  ActiveControl := dbgrdh2;
  if not(ActiveControl is TDBGridEh) then
    Exit;
  dbgrdh2.AutoFitColWidths := True;
  N302.Checked := dbgrdh2.AutoFitColWidths;
  N301.Checked := not N302.Checked;
end;

procedure TMainFrm.N401Click(Sender: TObject);
begin
  ActiveControl := dbgrdh3;
  if not(ActiveControl is TDBGridEh) then
    Exit;
  dbgrdh3.AutoFitColWidths := False;
  N402.Checked := dbgrdh3.AutoFitColWidths;
  N401.Checked := not N402.Checked;
end;

procedure TMainFrm.N402Click(Sender: TObject);
begin
  ActiveControl := dbgrdh3;
  if not(ActiveControl is TDBGridEh) then
    Exit;
  dbgrdh3.AutoFitColWidths := True;
  N402.Checked := dbgrdh3.AutoFitColWidths;
  N401.Checked := not N402.Checked;
end;

procedure TMainFrm.N49Click(Sender: TObject);
var
  s_filename: string;
begin
  s_filename := ExtractFilePath(ParamStr(0));
  inprpstrgmnh1.IniFileName := s_filename + 'zh_layout';
  prpstrgh1.SaveProperties;
end;

procedure TMainFrm.N53Click(Sender: TObject);
var
  s_filename: string;
  MyRestoreParams: TDBGridEhRestoreParams;
begin
  s_filename := ExtractFilePath(ParamStr(0));
  inprpstrgmnh1.IniFileName := s_filename + 'zh_layout';
  prpstrgh1.LoadProperties;
end;

procedure TMainFrm.cxDBTreeList1CustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
  // inherited;
  // if   adoq2['t_parent_id']   =   0   then
  // ACanvas.Brush.Color   :=   clMoneyGreen
  // else     ACanvas.Brush.Color   :=   clSkyBlue
  // ;

end;

procedure TMainFrm.pm3Popup(Sender: TObject);
begin
  N302.Checked := dbgrdh2.AutoFitColWidths;
  N301.Checked := not N302.Checked
end;

procedure TMainFrm.pm4Popup(Sender: TObject);
begin
  N402.Checked := dbgrdh3.AutoFitColWidths;
  N401.Checked := not N402.Checked
end;

procedure TMainFrm.N15Click(Sender: TObject);
begin
  ShowGridColEditor(dbgrdh3);
end;

procedure TMainFrm.N48Click(Sender: TObject);
begin
  ShowGridColEditor(dbgrdh2);
end;

procedure TMainFrm.N_ProjClick(Sender: TObject);
begin
  F_DT.ADOCN4.Connected := False;
  F_DT.ADOconGD2.Connected := False;
  F_DT.ADOconGD3.Connected := False;
  Application.CreateForm(TF_Proj, F_Proj);
  F_Proj.ShowModal;
  if Length(Trim(t_proj_no)) = 0 then
    lblInfo.Caption := '---�������õ�ǰ��Ŀ������ʵʩ���ݷ���---'
  else
    lblInfo.Caption := '��ǰ��Ŀ��' + t_proj_no + '_' + t_proj_name + '_' + t_Database;
  // if Length(Trim(t_proj_no)) <> 0 then
  // begin
  // del_proc();
  // Auto_proc();
  // F_DT.mscon1.Connected := False;
  // F_DT.MScon2.Connected := False;
  // F_DT.ADOCN4.Connected := False;
  // end;

end;

procedure TMainFrm.btn_jyClick(Sender: TObject);
var
  s_key_name, sqltext2: string;
begin
  // ��Ϊ������߼�����ʾ��˰�ť����ִ�У����Դ˴������ж�
  // if (adoq2['t_table2'] <> '1') or (adoq2['t_table1'] <> '1') then
  // Exit;
  try
    // ����˺�
    s_key_name := mtblh1.FieldByName(t_key_nameLS[0]).AsString;

    F_DT.ADOconGD3.Connected := False;
    F_DT.ADOconGD3.Connectiontimeout := StrToInt(t_TimeOut) * 1000;
    F_DT.ADOconGD3.ConnectionString :=
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_Database +
      ';Data Source=' + sComputerName + t_connect;

    // sqltext2 := t_table2_sql + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' + t_table2_sql_order;
    if (t_modl_type = '1') or (t_modl_type = '2') or (t_modl_type = '4') or (t_modl_type = '5') then
      sqltext2 := t_table2_sql_dw + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
        t_table2_sql_order;
    if (t_modl_type = '3') or (t_modl_type = '6') then
      sqltext2 := t_table2_sql_gr + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
        t_table2_sql_order;
    if (t_modl_type = '7') then
      sqltext2 := t_table2_sql_other + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
        t_table2_other_order;

    // MessageDlg(sqltext2);
    qrygd3.Connection := F_DT.ADOconGD3;
    qrygd3.close;
    qrygd3.DisableControls;
    qrygd3.SQL.Clear;
    qrygd3.SQL.Add(sqltext2);
    qrygd3.Prepared;
    qrygd3.Open;
    qrygd3.enableControls;
    F_DT.ADOconGD3.Connected := True;
  except
    dbgrdh3.Enabled := False;
    qrygd3.close;
    qrygd3.DisableControls;
    raise Exception.Create('��ȷ��ͬ����ʾ�����ݱ��Ƿ���!');
    Exit;
  end;
  dbgrdh3.Enabled := True;
  // OptimizeGrid(dbgrdh3);

end;

procedure TMainFrm.Button1Click(Sender: TObject);
begin
ShowMessage(format('%.4d',[2]));
//  DispInfo();
  // Auto_proc;
end;

procedure TMainFrm.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
    btn_jy.Visible := False
  else
  begin
    btn_jy.Visible := True;
    btn_jy.Left := chk1.Left + chk1.Width;
  end;

end;

procedure TMainFrm.M_DR_SAZH1Click(Sender: TObject);
begin
  ShowMessage('�ȴ��������');
end;

procedure TMainFrm.dbgrdh1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) or (Key = VK_PRIOR) or (Key = VK_NEXT) then
    Disp_txn();
end;

procedure TMainFrm.N_ErrClick(Sender: TObject);
begin
  Application.CreateForm(TF_showError, F_showError);
  F_showError.ShowModal;
end;

procedure TMainFrm.M_DR_FXZHClick(Sender: TObject);
begin
  ShowMessage('�ȴ��������');
end;

procedure TMainFrm.MnModelClick(Sender: TObject);
begin
  // Application.MessageBox('���԰棡ĳЩ���ܿ��ܾ��в�ȷ���ԣ���ӭ������������',
  // '���԰�', MB_OK + MB_ICONINFORMATION);
  is_ini := False;
  // �����ݿⶨ�庯�� def_fun();
  // Application.CreateForm(Tf_item, f_item);
  // f_item.ShowModal;

  Application.CreateForm(TFModMaintain, FModMaintain);
  FModMaintain.ShowModal;
  // ADOQ1.close;
  // ADOQ1.Open;
  // fdQryTree.close;
  // fdQryTree.Open;
  // cre_zhsys();   //�����˻���ͼ
  { if Length(Trim(t_proj_no)) > 0 then
    begin
    del_proc(); // ɾ���洢����
    Auto_proc() // �Զ�ִ�еĴ洢����
    end;
    DispInfo(); }
  // �й��������ݿⷽ��Ĳ��������½���Ŀ�����õ�ǰ��Ŀʱִ�� ���� ��ʱ�ж������ڵ�ǰ��Ŀ����ִ��
  // cxDBTreeList1.FullExpand;

end;

procedure TMainFrm.M_DR_FXDWClick(Sender: TObject);
begin
  ShowMessage('�ȴ��������');
end;

procedure TMainFrm.M_DR_FXGRClick(Sender: TObject);
begin
  ShowMessage('�ȴ��������');
end;

initialization

DBGridEhCenter.FilterEditCloseUpApplyFilter := True;

end.