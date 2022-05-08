unit main;

interface

uses
  RegularExpressions, FindPublic, FormColSelect, U_DT, U_float, U_Common,
  cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, DBGridEhGrouping, MemTableDataEh,
  DB,
  ADODB, PropFilerEh, PropStorageEh, DataDriverEh, ADODataDriverEh, MemTableEh,
  Dialogs, Classes, ActnList, StdActns, Menus, ImgList, Controls, StdCtrls,
  cxSplitter, cxTextEdit, GridsEh, DBGridEh, Buttons, cxContainer, cxEdit,
  cxDBEdit, ExtCtrls, cxInplaceContainer, cxDBTL, cxControls, cxTLData,
  DBGridEhImpExp, EhLibADO, U_mode, UF_CHG_PASS, U_user, U_import, ShellAPI,
  Windows, Messages, SysUtils, Variants, Graphics, Forms, Mask, DBCtrlsEh,
  cxLabel, cxMemo, StrUtils, DBCtrls, ComCtrls, cxNavigator, cxDBNavigator,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  IniFiles, cxLookAndFeels, cxLookAndFeelPainters, cxTLdxBarBuiltInMenu,
  dxSkinsCore, dxSkinsDefaultPainters, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh,
  cxClasses, System.Actions, System.ImageList, EhLibVCL, DBAxisGridsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, EhLibMTE,
  cxImageComboBox, FireDAC.Stan.StorageBin, FireDAC.Stan.StorageXML,
  FireDAC.Stan.StorageJSON, cxButtons, LibXL, math,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ActnMenus, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.ConsoleUI.Wait;

type
  TMainFrm = class(TForm)
    MainMenu1: TMainMenu;
    MnProjData: TMenuItem;
    MnPass: TMenuItem;
    MnUser: TMenuItem;
    N9: TMenuItem;
    MnExit: TMenuItem;
    cxDBTreeList1: TcxDBTreeList;
    dsTree: TDataSource;
    cxDBTreeList1t_name: TcxDBTreeListColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    N11: TMenuItem;
    MnOpenMode: TMenuItem;
    MnModBack: TMenuItem;
    MnModRest: TMenuItem;
    pm1: TPopupMenu;
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
    MnHelp: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    MnOpen: TMenuItem;
    cxspltr2: TcxSplitter;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    dsAssis: TDataSource;
    pnl9: TPanel;
    dbgrdh2: TDBGridEh;
    pnl2: TPanel;
    cxtxtdt1: TcxTextEdit;
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
    N_Proj: TMenuItem;
    mniN38: TMenuItem;
    Panel3: TPanel;
    N38: TMenuItem;
    N39: TMenuItem;
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
    fdQryTreet_auto: TStringField;
    fdQryTreet_hide: TStringField;
    fdQryTreet_type: TStringField;
    fdQryTreet_sort: TStringField;
    fdQryTreeisClass: TStringField;
    fdQryExport: TFDQuery;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    chkAssis: TCheckBox;
    cxbtnExp: TcxButton;
    pmAssis: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    lbledtKey: TLabeledEdit;
    lbledtTabName: TLabeledEdit;
    lbledtSort: TLabeledEdit;
    lbledtName: TLabeledEdit;
    dlgOpenAssis: TOpenDialog;
    pnlFields: TPanel;
    bitbtnAssis: TBitBtn;
    lblFields: TLabel;
    mmoFields: TMemo;
    lblBreak: TLabel;
    lblBk2: TLabel;
    lblbk3: TLabel;
    fdQryAssis: TFDQuery;
    dlgSaveAssis: TSaveDialog;
    chkAfterOpen: TCheckBox;
    chkAssisDis: TCheckBox;
    N5: TMenuItem;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    cxDBTreeList1isClass: TcxDBTreeListColumn;
    cxstylTraceHot: TcxStyle;
    rdbt1: TRadioButton;
    rdbt2: TRadioButton;
    function SaveGridIni(ADBGridEhNameStr: string; ADBGridEh: TDBGridEh): Boolean;
    function RestoreGridIni(ADBGridEhNameStr: string; ADBGridEh: TDBGridEh): Boolean;
    function cre_V_bank(): Boolean;
    function del_proc(): Boolean;
    // function def_fun(): Boolean;   //函数定义放到逻辑中自动执行定义，不再代码实现
    function DispInfo(): Boolean;
    function Auto_proc(): Boolean;
    function Disp_txn(): Boolean;
    function table_visable(): Boolean;
    procedure MnExitClick(Sender: TObject);
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
    procedure M_DR_SAZH1Click(Sender: TObject);
    procedure dbgrdh1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure dbgrdh1TitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
    procedure MnDictClick(Sender: TObject);
    procedure MnRuleClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure bitbtnAssisClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure mmoFieldsEnter(Sender: TObject);
    procedure mmoFieldsExit(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure chkAssisDisClick(Sender: TObject);
    procedure rdbt1Click(Sender: TObject);
    procedure rdbt2Click(Sender: TObject);
  private { Private declarations }

  public { Public declarations }

    // protected
    // procedure CreateParams(var Params: TCreateParams); override; // 重载此方法,图标显示再任务栏

  end;

var
  MainFrm: TMainFrm;

implementation

uses
  log4me, U_Proj, uDictMaintain, uDataImport1, uSrcTabMaintain, uModMaintain;
{$R *.dfm}
// procedure TMainFrm.CreateParams(var Params: TCreateParams);
// begin
// inherited CreateParams(Params);
// Params.WndParent := GetDesktopWindow;
// end;
// 处理辅表的可见性函数

// 建立银行机构代码视图

function TMainFrm.cre_V_bank: Boolean;
var
  view_name, view_sql, sqltext, sqltext_bank: string;
  i: Integer;
  i_len: Integer;
  is_exist_v: Integer; // 0 false,1 true
begin
  if rdbtCheck = '1' then
  begin
    view_name := rdbt1_name_en;
    view_sql := rdbt1_code;
  end
  else
  begin
    view_name := rdbt2_name_en;
    view_sql := rdbt2_code;
  end;
  // 删除视图
  F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';';
  F_DT.fdqryTmp.Connection := F_DT.fdconProj;
  F_DT.fdqryTmp.close;
  F_DT.fdqryTmp.DisableControls;
  F_DT.fdqryTmp.SQL.Clear;
  sqltext := 'if Exists(select * from sysobjects where name=''' + view_name + ''' AND type = ''V'') drop view ' +
    view_name + ';';
  F_DT.fdqryTmp.SQL.Add(sqltext);
  // F_DT.fdqryTmp.Prepared;
  F_DT.fdqryTmp.ExecSQL;
  F_DT.fdqryTmp.SQL.Clear;
  sqltext := 'CREATE VIEW ' + view_name + ' AS ' + view_sql;
  F_DT.fdqryTmp.SQL.Add(sqltext);
  // F_DT.fdqryTmp.Prepared;
  F_DT.fdqryTmp.ExecSQL;
  F_DT.fdqryTmp.close;
  // // 视图建立结束
end;

function TMainFrm.table_visable(): Boolean;
begin
  // // MessageDlg('将要确定table显示');
  // pnl10.Visible := False;
  // cxspltr4.Visible := False;
  // pnl9.Visible := False;
  // cxspltr3.Visible := False;
  // if fdQryTree['t_table2'] = '1' then
  // begin
  // pnl10.Visible := True;
  // cxspltr4.Visible := True;
  // end
  // else
  // begin
  // pnl10.Visible := False;
  // cxspltr4.Visible := False;
  // end;
  //
  // if fdQryTree['t_table1'] = '1' then
  // begin
  // pnl9.Visible := True;
  // cxspltr3.Visible := True;
  // end
  // else
  // begin
  // pnl9.Visible := False;
  // cxspltr3.Visible := False;
  // end;
  //
  // // if  pnl9.top<pnl10.Top then pnl9.top:=pnl10.Top-1;
  // if cxspltr3.Top < cxspltr4.Top then
  // cxspltr3.Top := cxspltr4.Top;
  // cxspltr3.Top := pnl9.Top;
  // cxspltr4.Top := pnl10.Top;

end;

function TMainFrm.SaveGridIni(ADBGridEhNameStr: string; ADBGridEh: TDBGridEh): Boolean;
var
  IniFileNameStr: string;
begin
  IniFileNameStr := ExtractFileDir(ParamStr(0)) + '\' + 'DBGirdConfig.ini';
  ADBGridEh.SaveGridLayoutIni(IniFileNameStr, ADBGridEhNameStr, False);
end;

procedure TMainFrm.spbtnFormatClick(Sender: TObject);
var
  Pt: Tpoint;
begin
  GetCursorPos(Pt); { 这是获取的相对于屏幕的坐标 }
  Pt := ScreenToClient(Pt); { 转换成本地坐标 }
  spbtnFormat.PopupMenu.Popup(Pt.X, Pt.Y);
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
// 显示初始信息同时解决维护模型代码涉及参数变化时出错的问题（退出重进就不出错了）msp1
var
  // pt: TPoint;
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
  // 存储过程不存在要建立，建立时出错要回滚
  if is_exist = 0 then
  begin
    fdqryTmp.SQL.LoadFromFile(s_filename);
    // fdqrytmp.SQL.SaveToFile(s_filename+'.txt');
    fdqryTmp.ExecSQL;
    fdqryTmp.close;
  end;
  // 存储过程建立结束
  // 若存在则执行
  // 首先输入参数，正常才执行
  // ShowWaitText('请稍后，正在执行检查模型功能……');
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
  // fdspRun.Params.refresh; //参数起作用，这个语句很重要
  // fdspRun;
  // fdspRun.Active := True;
  // 先判断是否需要参数
  // ShowMessage(IntToStr(fdspRun.Params.Count));
  // fdspRun.ParamCheck := False;
  // fdspRun.ParamCheck := True;
  // 删除grid字段，为新的查询服务
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
  // mtblh1.SortOrder := ''; // 解决重新查询出错的问题
  // mtblh1.Active := True;
  dbgrdh1.Enabled := True;
  // rxgfnmtrBar.Animate := False;
  // OptimizeGrid(dbgrdh1);
end;

function TMainFrm.del_proc(): Boolean;
var
  sqltext: string;
begin
  // 删除当前项目所有存储过程和函数
  // 注意限制不要删除了系统的存储过程
  // ShowWaitText('请稍后，正在初始化检查功能...');
  dbgrdh1.Enabled := False;
  try
    // 删除数据库中的存储过程 ，出错即为项目等不正确，自然忽略
    F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';'; // 新建项目时退出，此连接还未赋值
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
    sqltext := 'exec(''drop procedure [''+@procName+'']'')';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'fetch next from cur into @procName';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'end';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'close cur';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'deallocate cur';
    fdqryTmp.SQL.Add(sqltext);
    // fdqryTmp.SQL.SaveToFile('d:\x.sql');
    fdqryTmp.Prepared;
    fdqryTmp.ExecSQL;

    // 还应删除函数？
    fdqryTmp.SQL.Clear;
    sqltext := 'declare @procName varchar(500)';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'declare cur cursor';
    fdqryTmp.SQL.Add(sqltext);
    sqltext :=
      'for select name from sysobjects Where type=''AF'' or type=''FN'' or type=''FS'' or type=''FT'' or  type=''IF'' or type=''TF''';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'open cur';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'fetch next from cur into @procName';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'while @@fetch_status=0';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'begin';
    fdqryTmp.SQL.Add(sqltext);
    sqltext := 'exec(''drop function [''+@procName+'']'')';
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
    // ShowWaitText; //不带入参数,则是关闭等待窗口
  end;
end;

function TMainFrm.Auto_proc(): Boolean;
var
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
  // 自动执行存储过程基于项目，一般跟在清理项目后执行：1.维护项目后（新增、删除、修改）；2.维护模型后；3.导入模型后
  // 准备连接F_DT.FDConGen、F_DT.FDConSYS在login阶段连接字以设定，F_DT.fdconProj在login阶段读取t_database、项目维护后发生改变
  F_DT.FDConGen.Connected := False;
  fdqryTmp.Connection := F_DT.FDConGen; // 不带数据库名称的连接
  F_DT.fdconProj.Connected := False;
  // 准备基于项目的连接
  F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';';

  // 判断项目数据库是否存在--若不存在，则无需删除存储过程------------
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
  // ---------提取自动运行函数或存储过程---若无，则退出---------------------------
  fdqryAuto.close;
  fdqryAuto.Connection := F_DT.FDConSYS; // 系统数据库
  fdqryAuto.SQL.Clear;
  sqltext := 'SELECT * FROM "X_menus" where (isClass<>''1'' or isClass is null) and t_auto =''1''' +
    ' and (len(isnull(t_right,''''))=0 or t_right=''' + t_database_ver + ''')' + ' and t_type = ''' + t_type +
    ''' order by t_sort';
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
  // ====循环执行需要自动执行的存储过程或函数=============================
  fdqryAuto.First;
  while not fdqryAuto.Eof do // 循环执行需要自动执行的存储过程
  begin
    ClickNO := False; // 取消参数录入时，为true，该函数或存储过程不执行 ，但继续后面的存储过程运行
    // ShowWaitText(Trim(FdqryAuto.FieldByName('t_name').AsString));
    ModlCodeValid(fdqryAuto, True, True);

    // 验证完毕结果：返回全局R_proc（参数数组）,t_ModName(模型名称),t_ProcFunName（存储过程或函数名称），执行建立存储过程和函数
    // 是存储过程，要执行；是函数则退出
    // 若存在或建立成功则执行
{$REGION '输入参数录入、校验和保存'}
    // 循环输入各参数参数，同时校验参数
    i_cnt1 := Length(R_proc);
    if i_cnt1 > 0 then
    begin
      i := 1;
      while (i <= i_cnt1) do
      begin
        ClickedOK := InputQuery('输入参数', R_proc[i - 1].s_para_tip + '            ', R_proc[i - 1].s_para_value);
        if ClickedOK then { NewString contains new input string }
        begin
          // 根据提示参数“日期”“数”等判断数据是否输入正确
          if R_proc[i - 1].s_para_lx = 'D' then
          begin
            // 判断是否日期
            try
              tmps1 := Copy(R_proc[i - 1].s_para_value, 1, 4) + '-' + Copy(R_proc[i - 1].s_para_value, 5, 2) + '-' +
                Copy(R_proc[i - 1].s_para_value, 7, 2);
              StrToDate(tmps1);
            except
              MessageDlg('错误的日期格式,正确的日期格式应为”20090228“！', mtInformation, [mbOK], 0);
              Continue;
            end;
          end;
          // 根据提示参数“日期”“数”等判断数据是否输入正确
          if R_proc[i - 1].s_para_lx = 'N' then
          begin
            // 判断是否数字
            if not(TryStrToInt(R_proc[i - 1].s_para_value, tmpi) or TryStrToFloat(R_proc[i - 1].s_para_value, tmpf))
            then
            begin
              MessageDlg('应该输入数字！', mtInformation, [mbOK], 0);
              Continue;
            end;
          end;
        end
        else
        begin
          // MessageDlg('取消参数录入');
          ClickNO := True;
          Break;
        end;
        i := i + 1;
      end;
      // 重新开始新的自动存储过程
      if ClickNO then
      begin
        // 若取消参数录入，则贝尔存储过程不执行，移到下一个存储过程
        fdqryAuto.Next;
        Continue;
      end;

      // 输入完毕，执行以前，记录本次输入的值
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
      // FDQryTree.UpdateBatch(arAll);
    end;
{$ENDREGION}
    // 执行一个存储过程（函数不要再执行）
    if t_isProc then
    begin
      fdSPAuto.DisableControls;
      fdSPAuto.close;
      // fdSPAuto.CommandTimeout:=StrToInt(t_TimeOut)*1000;
      // sp1的过滤要取消才能继续查询，否则出错？？？？？？？？？？？？？？？？？
      fdSPAuto.Filtered := False;
      fdSPAuto.Filter := '';
      t_new_filter := True;
      fdSPAuto.Connection := F_DT.fdconProj;
      fdSPAuto.StoredProcName := t_ProcFunName;
      // fdSPAuto.Params.Refresh; //参数起作用，这个语句很重要
      fdSPAuto.Prepare;
      // 先判断是否需要参数
      if i_cnt1 > 0 then // 需要参数
      begin
        for i := 1 to i_cnt1 do
        begin
          fdSPAuto.Params.ParamByName(R_proc[i - 1].s_para_name).Value := R_proc[i - 1].s_para_value;
        end;
      end;
      fdSPAuto.Prepared;
      fdSPAuto.Open;
      fdSPAuto.close;
    end;
    // 下一个存储过程
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
  // // if (adoq2['t_table2'] <> '1') or (adoq2['t_table1'] <> '1') then //显示人行账户或商行交易
  // // Exit;
  // if chk2.Checked and (fdQryTree['t_table1'] = '1') then
  // begin
  // try
  // // 获得账号
  // s_key_name := mtblh1.FieldByName(t_key_nameLS[0]).AsString;
  //
  // F_DT.ADOconGD2.Connected := False;
  // F_DT.ADOconGD2.Connectiontimeout := StrToInt(t_TimeOut) * 1000;
  // F_DT.ADOconGD2.ConnectionString :=
  // 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_Database +
  // ';Data Source=' + sComputerName + t_connect;
  // if (t_modl_type = '1') or (t_modl_type = '2') or (t_modl_type = '4') or (t_modl_type = '5') then
  // sqltext1 := t_table1_sql_dw + ' where ' + t_key_nameLS[1] + ' = ' + '''' + s_key_name + '''';
  // if (t_modl_type = '3') or (t_modl_type = '6') then
  // sqltext1 := t_table1_sql_gr + ' where ' + t_key_nameLS[1] + ' = ' + '''' + s_key_name + '''';
  // if (t_modl_type = '7') then
  // sqltext1 := t_table1_sql_other + ' where ' + t_key_nameLS[1] + ' = ' + '''' + s_key_name + '''';
  //
  // // ShowMessage(sqltext2);
  // // exit ;
  // qrygd2.Connection := F_DT.ADOconGD2;
  // qrygd2.close;
  // qrygd2.DisableControls;
  // qrygd2.SQL.Clear;
  // qrygd2.SQL.Add(sqltext1);
  // // ShowMessage(qrygd2.SQL.Text);
  // qrygd2.Prepared;
  // qrygd2.Open;
  // qrygd2.enableControls;
  // F_DT.ADOconGD2.Connected := True;
  // dbgrdh2.Enabled := True;
  // // OptimizeGrid(dbgrdh2);
  // except
  // dbgrdh2.Enabled := False;
  // qrygd2.close;
  // qrygd2.DisableControls;
  // raise Exception.Create('请确认人民银行个人账户数据是否导入或setting中table1_sql否正确!');
  // end;
  // end;
  //
  // // 显示同步显示交易
  // if chk1.Checked and (fdQryTree['t_table2'] = '1') then
  // begin
  // try
  // // 获得账号
  // s_key_name := mtblh1.FieldByName(t_key_nameLS[0]).AsString;
  //
  // F_DT.ADOconGD3.Connected := False;
  // F_DT.ADOconGD3.Connectiontimeout := StrToInt(t_TimeOut) * 1000;
  // F_DT.ADOconGD3.ConnectionString :=
  // 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_Database +
  // ';Data Source=' + sComputerName + t_connect;
  // // sqltext2 := t_table2_sql + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' + t_table2_sql_order;
  // if (t_modl_type = '1') or (t_modl_type = '2') or (t_modl_type = '4') or (t_modl_type = '5') then
  // sqltext2 := t_table2_sql_dw + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
  // t_table2_sql_order;
  // if (t_modl_type = '3') or (t_modl_type = '6') then
  // sqltext2 := t_table2_sql_gr + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
  // t_table2_sql_order;
  // if (t_modl_type = '7') then
  // sqltext2 := t_table2_sql_other + ' where ' + t_key_nameLS[2] + ' = ' + '''' + s_key_name + '''' + ' ' +
  // t_table2_other_order;
  //
  // // ShowMessage(sqltext2);
  // // exit;
  // qrygd3.Connection := F_DT.ADOconGD3;
  // qrygd3.close;
  // qrygd3.DisableControls;
  // qrygd3.SQL.Clear;
  // qrygd3.SQL.Add(sqltext2);
  // qrygd3.Prepared;
  // qrygd3.Open;
  // qrygd3.enableControls;
  // F_DT.ADOconGD3.Connected := True;
  // dbgrdh3.Enabled := True;
  // // OptimizeGrid(dbgrdh3);
  // except
  // dbgrdh3.Enabled := False;
  // qrygd3.close;
  // qrygd3.DisableControls;
  // raise Exception.Create('请确认同步显示的数据表是否导入!');
  // Exit;
  // end;
  // end;
end;

procedure TMainFrm.MnExitClick(Sender: TObject);
begin
  close;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
var
  s_filename, sqltext: string;
  i: Integer;
  MyIniFile: TIniFile;
begin
  // SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW); // 任务栏显示图标
  // SetWindowLong(Handle,GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_TOOLWINDOW and not WS_EX_APPWINDOW); // 任务栏不显示图标
  i := t_ver_noLS.IndexOf(t_type); // 系统版本的索引号
  MainFrm.Caption := t_ver_nameLS[i] + t_ver + '---' + User_info;
  // 标题显示系统版本和用户信息
  cxDBTreeList1t_name.Caption.Text := '数据分析（双击执行）' + '→' + '版本：' + t_Jclj_Ver;
  // 模型列表标题显示模型（检查逻辑）版本号
  // 显示当前项目名称
  if Length(Trim(t_proj_no)) = 0 then
    lblInfo.Caption := '---首先设置当前项目，才能实施分析---'
  else
    lblInfo.Caption := '当前项目：' + t_proj_no + '_' + t_proj_name + '_' + t_Database;
  rdbt1.Caption := rdbt1_name_cn;
  rdbt2.Caption := rdbt2_name_cn;
  if rdbtCheck = '1' then
    rdbt1.Checked := True
  else
    rdbt2.Checked := True;
  // 附属表checkBox名称
  // chk2.Caption := t_table1_name;
  // chk1.Caption := t_table2_name;
  // btn_jy.Left := chk1.Left + chk1.Width;
  // 单击显示交易按钮，视为防治从表显示过慢，delphi11fireDac有了新机制可以不用此按钮类
  // cxspltr3.Hint := '单击显示、隐藏或移动' + t_table1_name;
  // cxspltr4.Hint := '单击显示、隐藏或移动' + t_table2_name;
  s_filename := ExtractFilePath(ParamStr(0));
  inprpstrgmnh1.IniFileName := s_filename + 'zh_layout'; // 保存的drid样式
  // prpstrgh1.LoadProperties;
  // cxspltr3.CloseSplitter;
  // 系统管理员
  if (User_can = '2') then // 管理员
  begin
    MnModBack.Enabled := True;
    MnModRest.Enabled := True;
    MnUser.Enabled := True;
    MnOpen.Enabled := True;
  end
  else // 普通用户
  begin
    MnModBack.Enabled := False;
    MnModRest.Enabled := False;
    MnUser.Enabled := False;
    MnOpen.Enabled := False;
  end;
  // 根据检查模式确定列出的模型功能  未隐藏 无数据库版本或指定版本=t_database_ver    版本之间不在混淆分析模型
  sqltext := 'SELECT * FROM "X_menus" where t_hide =' + '''' + '1' + '''' + ' and (len(isnull(t_right,' + '''' + '''' +
    '))=0 or t_right=' + '''' + t_database_ver + '''' + ')' + ' and t_type =' + '''' + t_type + '''' +
    ' order by t_sort';
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
  // dbgrdh1.Hint:='在表格上选中后右键可复制'+#13#10+'点按标题可排序';
  // dbgrdh1.Align := alClient;
  // 调取默认的辅助查询
  s_filename := ExtractFilePath(ParamStr(0));
  s_filename := s_filename + '辅助信息_默认.asi';

  if FileExists(s_filename) then
  begin
    MyIniFile := TIniFile.Create(s_filename);
    lbledtName.Text := MyIniFile.ReadString('Base', 'AssisName', '辅助表名称');
    lbledtTabName.Text := MyIniFile.ReadString('Base', 'AssisTabName', '辅助表表名');
    lbledtKey.Text := MyIniFile.ReadString('Base', 'AssisKeyField', '关联字段');
    mmoFields.Text := MyIniFile.ReadString('Base', 'AssisFields', '查询字段');
    lbledtSort.Text := MyIniFile.ReadString('Base', 'AssisSort', '排序字段');
    MyIniFile.Free;
  end;

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

procedure TMainFrm.bitbtnAssisClick(Sender: TObject);
var

  key_value, qryFields, sqltext, sError: string;
  i_pos, i: Integer;
begin
  // 查看结果表是否存在字段名称
  if fdmtblRun.Fields.FindField(Trim(lbledtKey.Text)) = nil then
  // if fdmtblRun.FieldList.Find((Trim(lbledtKey.Text))) = nil then
  begin
    MessageDlg('上述结果表中没有关联字段"' + pchar(lbledtKey.Text) + '"，不能显示辅助信息。', mtWarning, [mbOK], 0);
    Exit;
  end;
  key_value := fdmtblRun.Fields.FindField(Trim(lbledtKey.Text)).Value;
  qryFields := Trim(mmoFields.Text);
  qryFields := StringReplace(qryFields, #$D#$A, '', [rfReplaceAll]); // 删除回车换行空格
  qryFields := StringReplace(qryFields, #$A, '', [rfReplaceAll]);
  qryFields := StringReplace(qryFields, #$D, '', [rfReplaceAll]);
  qryFields := StringReplace(qryFields, ' ', '', [rfReplaceAll]);

  sqltext := 'Select ' + qryFields + ' From ' + Trim(lbledtTabName.Text) + ' Where ' + Trim(lbledtKey.Text) + ' = ''' +
    key_value + ''' Order by ' + Trim(lbledtTabName.Text);

  try
    fdQryAssis.close;
    fdQryAssis.Connection := F_DT.fdconProj;
    fdQryAssis.SQL.Clear;
    fdQryAssis.SQL.Add(sqltext);
    fdQryAssis.Open;
    fdQryAssis.FetchAll;
    for i := 0 to dbgrdh2.Columns.Count - 1 do
    begin
      dbgrdh2.Columns[i].OptimizeWidth;
    end;
  except
    sError := Exception(ExceptObject).Message;
    sError := TRegex.Replace(sError, '\[[\S|\s]*\]', ''); // 替换之间字符串为空
    // i_pos := pos('对象名', sError);
    // if i_pos > 0 then
    // sError := Copy(sError, i_pos, Length(sError) - i_pos);
    MessageDlg('查询辅助信息所需数据表未导入或相关字段不正确。(' + sError + ')。', mtWarning, [mbOK], 0);
    fdQryAssis.close;
  end;
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
    Application.MessageBox('请设置当前项目后再执行运行模型！', '信息', MB_OK + MB_ICONWARNING + MB_TOPMOST);
    Exit;
  end;
  F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';';
  // 建立银行机构代码视图
  cre_V_bank();

  // dbgrdh1.Color := clWindow;
  // 校验 获得全局R_proc参数数组，t_ProcFunName名称，用于执行
  ModlCodeValid(fdQryTree, True, False);
  if Not ModvalidOK then
    Exit;
  // 若存在或建立成功则执行
{$REGION '输入参数录入、校验和保存'}
  // 循环输入各参数参数，同时校验参数
  i_cnt1 := Length(R_proc);
  if i_cnt1 > 0 then
  begin
    i := 1;
    while (i <= i_cnt1) do
    begin
      ClickedOK := InputQuery('输入参数', R_proc[i - 1].s_para_tip + '            ', R_proc[i - 1].s_para_value);
      if ClickedOK then { NewString contains new input string }
      begin
        // 根据提示参数“日期”“数”等判断数据是否输入正确
        if R_proc[i - 1].s_para_lx = 'D' then
        begin
          // 判断是否日期
          try
            tmps1 := Copy(R_proc[i - 1].s_para_value, 1, 4) + '-' + Copy(R_proc[i - 1].s_para_value, 5, 2) + '-' +
              Copy(R_proc[i - 1].s_para_value, 7, 2);
            StrToDate(tmps1);
          except
            MessageDlg('错误的日期格式,正确的日期格式应为”20090228“！', mtInformation, [mbOK], 0);
            Continue;
          end;
        end;
        // 根据提示参数“日期”“数”等判断数据是否输入正确
        if R_proc[i - 1].s_para_lx = 'N' then
        begin
          // 判断是否数字
          if not(TryStrToInt(R_proc[i - 1].s_para_value, tmpi) or TryStrToFloat(R_proc[i - 1].s_para_value, tmpf)) then
          begin
            MessageDlg('应该输入数字！', mtInformation, [mbOK], 0);
            Continue;
          end;
        end;
      end
      else
        Exit;
      i := i + 1;
    end;
    // 输入完毕，执行以前，记录本次输入的值
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
  t_time := GetTickCount(); // 记录开始时间
  dbgrdh1.Enabled := False;
  fdSPRun.DisableControls;
  fdSPRun.close;
  // FdSPRun.CommandTimeout:=StrToInt(t_TimeOut)*1000;
  // sp1的过滤要取消才能继续查询，否则出错？？？？？？？？？？？？？？？？？
  fdSPRun.Filtered := False;
  fdSPRun.Filter := '';
  t_new_filter := True;
  fdSPRun.Connection := F_DT.fdconProj;
  fdSPRun.StoredProcName := t_ProcFunName;
  // FdSPRun.Params.Refresh; //参数起作用，这个语句很重要
  fdSPRun.Prepare;
  // 先判断是否需要参数
  if i_cnt1 > 0 then // 需要参数
  begin
    for i := 1 to i_cnt1 do
    begin
      fdSPRun.Params.ParamByName(R_proc[i - 1].s_para_name).Value := R_proc[i - 1].s_para_value;
    end;
  end;
  // 删除grid字段，为新的查询服务
  i_col := dbgrdh1.Columns.Count;
  for i := 0 to i_col - 1 do
  begin
    dbgrdh1.Columns.Delete(0);
  end;

  fdSPRun.Prepared:=True;
  fdSPRun.Open;
  // fdSPRun.enableControls;
  fdmtblRun.close;
  fdmtblRun.data := fdSPRun.data;
  // fdmtblRun.CloneCursor(fdSPRun,False,False);
  // mtblh1.SortOrder := ''; // 解决重新查询出错的问题
  // mtblh1.Active := True;
  for i := 0 to dbgrdh1.Columns.Count - 1 do
  begin
    if (dbgrdh1.DataSource.DataSet.Fields[i].DataType in [ftFloat,ftFMTBcd]) then
      dbgrdh1.Columns[i].DisplayFormat := '#,####,####,##0.00';
    if (dbgrdh1.DataSource.DataSet.Fields[i].DataType = ftInteger) or
      (dbgrdh1.DataSource.DataSet.Fields[i].DataType = ftSmallint) then
      dbgrdh1.Columns[i].DisplayFormat := '#,####,####,##0';
  end;
  dbgrdh1.Enabled := True;
  for i := 0 to dbgrdh1.Columns.Count - 1 do
  begin
    dbgrdh1.Columns[i].OptimizeWidth;
  end;

  // 首先处理表可见性
  table_visable();
  // s_filename := ExtractFilePath(ParamStr(0));
  // inprpstrgmnh1.IniFileName := s_filename + 'zh_layout';
  // prpstrgh1.LoadProperties;
  // 显示执行时间
  cxtxtdt1.Text := cxtxtdt1.Text + '(' + FloatToStr((GetTickCount() - t_time) / 1000) + '秒)';
  // 记录成功日志
  log4info(cxtxtdt1.Text);
end;

procedure TMainFrm.btn2Click(Sender: TObject);
var
  i, ci, i_pos, gridLen: Integer;
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
  // xlCellType: CellType;
  // xld: Double;
  // xls: string;
begin
  if not fdmtblRun.Active then
  begin
    MessageDlg('没有要导出的数据！', mtInformation, [mbOK], 0);
    Exit;
  end
  else if fdmtblRun.RecordCount = 0 then
  begin
    MessageDlg('没有要导出的数据！', mtInformation, [mbOK], 0);
    Exit;
  end;

  SaveDialog1.FileName := Trim(StringReplace(cxtxtdt1.Text, '|', '', [rfReplaceAll]));
  if not SaveDialog1.Execute then
  begin
    // ShowMessage('exit');
    Exit;
  end;
  // s_filename := Trim(SaveDialog1.FileName);
  // FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  // showmessage(s_filename);
  // showmessage(FileExt);
  // exit;

  case SaveDialog1.FilterIndex of
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
  s_filename := Trim(SaveDialog1.FileName);
  // 若匹配.XLS,则文件名不变，且不管 SaveDialog1.FilterIndex的选择
  if (TRegex.IsMatch(UpperCase(s_filename), '^[\S]+\.XLS$')) then
    Ext := 'XLS'
  else // 若不匹配.XLS,再看是否匹配XLSX
    if (TRegex.IsMatch(UpperCase(s_filename), '^[\S]+\.XLSX$')) then
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

  // 保存的文件名---------------------------
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

  // 标题
  xlSheet.setMerge(0, 0, 0, dbgrdh1.VisibleColumns.Count - 1);
  xlSheet.writeStr(0, 0, PWideChar(cxtxtdt1.Text), titleFormat);

  // 字段名
  gridLen := dbgrdh1.VisibleColumns.Count; // grid的列数
  for i := 0 to gridLen - 1 do
  begin
    xlSheet.writeStr(1, i, PWideChar(dbgrdh1.VisibleColumns[i].FieldName), headerFormat);
  end;

  // xlSheet.writeNum(3, 1, 1000);

  // --------------------------------------------------------------------------------
  ActiveControl := dbgrdh1;
  i := 2;
  fdmtblRun.DisableControls;
  fdmtblRun.First;
  ValueNum := 0;
  ValueStr := '';
  SetLength(a_max_width, gridLen);
  while not fdmtblRun.Eof do
  begin
    for ci := 0 to gridLen - 1 do
    begin
      // ifthen(VarIsNull(b), 'null时的默认值', b);
      { ftUnknown, ftString, ftSmallint, ftInteger, ftWord, // 0..4
        ftBoolean, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime, // 5..11
        ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo, ftGraphic, ftFmtMemo, // 12..18
        ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar, ftWideString, // 19..24
        ftLargeint, ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob, // 25..31
        ftVariant, ftInterface, ftIDispatch, ftGuid, ftTimeStamp, ftFMTBcd, // 32..37
        ftFixedWideChar, ftWideMemo, ftOraTimeStamp, ftOraInterval, // 38..41
        ftLongWord, ftShortint, ftByte, ftExtended, ftConnection, ftParams, ftStream, //42..48
        ftTimeStampOffset, ftObject, ftSingle); //49..51 }
      // 判断是否为空、判断数据类型
      // 判断是否数字
      FieldType := dbgrdh1.VisibleColumns[ci].Field.DataType;
      if (FieldType = ftFloat) or (FieldType = ftInteger) or (FieldType = ftSmallint) then
        isNum := True
      else
        isNum := False;
      // 字段为空的处理
      if VarIsNull(dbgrdh1.VisibleColumns[ci].Field.Value) then
      begin
        if isNum then
          ValueNum := 0
        else
          ValueStr := '';
      end
      else
      begin
        if isNum then
          ValueNum := dbgrdh1.VisibleColumns[ci].Field.Value
        else
          ValueStr := dbgrdh1.VisibleColumns[ci].Field.Value;
      end;
      if isNum then
        xlSheet.writeNum(i, ci, ValueNum, cellsFormat)
      else
        xlSheet.writeStr(i, ci, PWideChar(ValueStr), cellsFormat);
      a_max_width[ci] := Max(a_max_width[ci], Length(ValueStr));
      // showmessage(FloatToStr(ValueNum));
      // showmessage(ValueStr);
    end;
    i := i + 1;
    // ShowMessage(IntToStr(i));
    fdmtblRun.Next;
  end;

  // 设置宽度
  for i := 0 to gridLen - 1 do
  begin
    xlSheet.setCol(i, i, a_max_width[i]);
  end;

  xlBook.save(PWideChar(s_filename));
  xlBook.Free;
  fdmtblRun.First;
  fdmtblRun.enableControls;
  if (chkAfterOpen.Checked) then
    ShellExecute(Application.Handle, 'Open', pchar(s_filename), nil, nil, SW_SHOWNORMAL)
  else
    ShellExecute(Application.Handle, 'Open', 'explorer.exe', pchar('/select,"' + s_filename + '"'), nil, SW_SHOWNORMAL);
end;

procedure TMainFrm.N19Click(Sender: TObject);
begin
  btn1.Click;
end;

procedure TMainFrm.pnl2Resize(Sender: TObject);
begin
  cxtxtdt1.Top := 0;
  cxtxtdt1.Left := lblResult.Width + chkAfterOpen.Width;
  cxtxtdt1.Width := pnl2.Width - lblResult.Width - chkAfterOpen.Width - 10;
  cxtxtdt1.Height := pnl2.Height;
end;

procedure TMainFrm.pnl3Resize(Sender: TObject);
begin
  // cxdbtxtdt1.Top := 0;
  // cxdbtxtdt1.Left := 0;
  // cxdbtxtdt1.Width := pnl3.Width;
  // cxdbtxtdt1.Height := pnl3.Height;
end;

procedure TMainFrm.pnl4Resize(Sender: TObject);
begin
  // lblInfo.Top:=0;
  // lblInfo.Left:=0;
  // lblInfo.Width:=pnl4.Width;
  // lblInfo.Height:=pnl4.Height;
end;

procedure TMainFrm.rdbt1Click(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
begin
  if (rdbt1.Checked) and (rdbtCheck <> '1') then
  begin
    rdbtCheck := '1';
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename);
    MyIniFile.WriteString('Base', 'rdbtCheck', '1');
    MyIniFile.Free;
  end;
end;

procedure TMainFrm.rdbt2Click(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
begin
  if (rdbt2.Checked) and (rdbtCheck = '1') then
  begin
    rdbtCheck := '2';
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename);
    MyIniFile.WriteString('Base', 'rdbtCheck', '2');
    MyIniFile.Free;
  end;
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
  mainHandle := GetActiveWindow;
  lblInfo.Top := 0;
  lblInfo.Left := 0;
  pnl4.Width := lblInfo.Width;
  // if not Assigned(F_float) then
  // F_float:=F_float.CreateParented(GetDesktopWindow);
  F_float.Hide;
end;

procedure TMainFrm.mmoFieldsEnter(Sender: TObject);
begin
  Panel3.Height := Panel3.Height + mmoFields.Height * 2;
  pnlFields.Height := pnlFields.Height * 3;
end;

procedure TMainFrm.mmoFieldsExit(Sender: TObject);
begin
  pnlFields.Height := pnlFields.Height div 3;
  Panel3.Height := Panel3.Height - mmoFields.Height * 2;
end;

procedure TMainFrm.excel1Click(Sender: TObject);
var
  ExpClass: TDBGridEhExportClass;
  Ext: string;
begin
  btn2.Click;
  // if not fdSPRun.Active then
  // begin
  // MessageDlg('没有要导出的数据！', mtInformation, [mbOK], 0);
  // Exit;
  // end
  // else if fdSPRun.RecordCount = 0 then
  // begin
  // MessageDlg('没有要导出的数据！', mtInformation, [mbOK], 0);
  // Exit;
  // end;
  // if dbgrdh1.Selection.SelectionType = gstNon then
  // begin
  // MessageDlg('没有选中的数据要导出！', mtInformation, [mbOK], 0);
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
var
  i: Integer;
begin
  ActiveControl := dbgrdh1;
  if not(ActiveControl is TDBGridEh) then
    Exit;
  dbgrdh1.AutoFitColWidths := False;
  N20.Checked := dbgrdh1.AutoFitColWidths;
  N18.Checked := not N20.Checked;

  for i := 0 to dbgrdh1.Columns.Count - 1 do
  begin
    dbgrdh1.Columns[i].OptimizeWidth;
  end;

  // ShowWaitText('正在处理网格栏位宽度最优化...');
  // try
  // OptimizeGrid(TDBGridEh(ActiveControl));
  // finally
  // ShowWaitText;//不带入参数,则是关闭等待窗口
  // end;
end;

procedure TMainFrm.MnPassClick(Sender: TObject);
begin
  Application.CreateForm(TF_CHG_PASS, F_CHG_PASS);
  F_CHG_PASS.ShowModal;
end;

procedure TMainFrm.MnRuleClick(Sender: TObject);
begin
  // MainFrm.Hide;
  // SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_TOOLWINDOW and not WS_EX_APPWINDOW); // 任务栏不显示图标
  // MainFrm.Show;
  Application.CreateForm(TfrmSrcTabMaintain, frmSrcTabMaintain);
  frmSrcTabMaintain.ShowModal;
  // SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW); // 任务栏显示图标
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
  SaveDialog2.FileName := DateToStr(Now) + '.mod';
  if SaveDialog2.Execute then
  begin
    s_filename := Trim(SaveDialog2.FileName);
    if FileExists(s_filename) then
    begin
      if MessageDlg('模型文件已存在，覆盖吗？''', mtWarning, [mbYes, mbNo], 0) = mrNo then
      begin
        Exit;
      end;
    end;

    // ShowWaitText('请稍后，正在进行功能导出...');
    try
      SaveDialog2.FileName := SaveDialog2.FileName;
      fdQryExport.close;
      // fdqryExport.DisableControls;
      fdQryExport.Connection := F_DT.FDConSYS;
      // fdqryExport.CursorLocation := clUseClient;
      // fdqryExport.CursorType := ctStatic;
      // fdqryExport.LockType := ltBatchOptimistic;
      fdQryExport.SQL.Clear;
      fdQryExport.SQL.Add('SELECT * FROM "X_menus" order by t_sort');
      fdQryExport.Prepared;
      fdQryExport.Open;
      fdQryExport.FetchAll;
      // fdqryExport.enableControls;
      fdQryExport.SaveToFile(SaveDialog2.FileName, sfBinary);
      // fdqryExport.SaveToFile(SaveDialog2.FileName, sfXML);
      // fdqryExport.SaveToFile(SaveDialog2.FileName, sfJSON );
      // ShowWaitText;
      MessageDlg('模型已导出到' + SaveDialog2.FileName, mtInformation, [mbOK], 0);
    finally
      fdQryExport.close;
      // ShowWaitText; //不带入参数,则是关闭等待窗口
    end;
  end;
end;

procedure TMainFrm.MnModRestClick(Sender: TObject);
begin
  Application.CreateForm(TF_import, F_import);
  F_import.ShowModal;
  if Length(Trim(t_proj_no)) > 0 then
  begin
    // 判断数据库是否存在
    F_DT.fdqryTmp.Connection := F_DT.FDConGen;
    F_DT.fdqryTmp.SQL.Clear;
    F_DT.fdqryTmp.SQL.Text := 'select name from master..sysdatabases where name = ' + '''' + t_Database + '''';
    F_DT.fdqryTmp.Open;
    if F_DT.fdqryTmp.RecordCount > 0 then
    begin
      F_DT.fdqryTmp.close;
      del_proc(); // 删除存储过程
      // cre_V_bank();
      Auto_proc() // 自动执行的存储过程
    end; // 自动运行模式直接继续
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
  cxDBTreeList1t_name.Caption.Text := '模型列表（双击执行）' + '→' + '版本：' + t_Jclj_Ver;
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
// if Application.MessageBox('本功能导入任何以MDF和LDF结尾的SQL Server数据库文件。若数据库数据符合检查规范数据，进行数据分析得到结果，否则会出现错误。继续导入吗？', '导入数据库', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDNO then
// begin
// exit;
// end;
//
// if Length(t_proj_no) = 0 then
// begin
// Application.MessageBox('请设置当前项目后再导入数据！', '信息', MB_OK + MB_ICONWARNING + MB_TOPMOST);
// Exit;
// end;
// //  def_fun();
// //dbgrdh1.Enabled := False;
// //  FdSPRun.DisableControls;
// //  FdSPRun.Close;
// Application.CreateForm(TF_attach_db, F_attach_db);
// F_attach_db.ShowModal;
// // lblInfo.Caption := '比对参数：（商行数据：' + t_Database + ')(银行机构代码：' +
// //   t_bank_code + ')(比对账户截止日期：' + t_ZHSys_Date + ')';
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
  // 导入人行excel账户信息后执行
  // def_fun();

end;

procedure TMainFrm.cxDBTreeList1DblClick(Sender: TObject);
var
  i_id, i_parent_id: Integer;
  isClass: string;
begin
  // i_id := fdQryTree['t_id'];
  i_parent_id := fdQryTree['t_parent_id'];
  if VarIsNull(fdQryTree['isClass']) then
    isClass := '0'
  else
    isClass := fdQryTree['isClass'];
  if (cxDBTreeList1.FocusedNode.Count > 0) or (i_parent_id = 0) or (isClass = '1') then
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
  // 如果下面没有节点或为根节点，则不执行 （执行按钮变虚）--多版本下获得的列表应
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
  // ADOQ1.close;    //判断节点下是否还有节点，确定执行按钮是否有效，确定是否执行
  // ADOQ1.DisableControls;
  // ADOQ1.Connection := F_DT.ADOCN3;
  // ADOQ1.CursorLocation := clUseClient;
  // ADOQ1.CursorType := ctStatic;
  // ADOQ1.LockType := ltBatchOptimistic;
  // ADOQ1.SQL.Clear;
  // // ADOQ1.SQL.Add('SELECT * FROM "X_menus" where t_memo not like' + '''' +
  // // '%隐藏%'
  // // + '''' + 'order by t_order');
  // ADOQ1.SQL.Add('SELECT * FROM "X_menus" where t_hide =' + '''' + '1' + '''' + 'order by t_order');
  // // --多版本下获得的列表应考虑t_type或t_datebase_ver的情况
  // ADOQ1.Prepared;
  // ADOQ1.Open;
  // ADOQ1.enableControls;
  // // adoq1.Open;
  // if (ADOQ1.Locate('t_parent_id', i_id, [])) or (i_parent_id = 0) then
  // // 如果下面没有节点或为根节点，则不执行 （执行按钮变虚）--多版本下获得的列表应
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
  if VarToStrDef(ANode.Values[1], '0') = '0' then
    AIndex := 16
  else
  begin
    if ANode.Expanded then
      AIndex := 15
    else
      AIndex := 14;
  end;

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
    MnOpen.Caption := '打开开放模式';
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
      MnOpen.Caption := '关闭开放模式';
      MnOpenMode.Visible := True;
      // N13.Visible := true;
      // N_DrOther.Visible := True;
    end;
  end;

end;

procedure TMainFrm.dbgrdh1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if chkAssis.Checked then
    bitbtnAssis.Click;
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
  // if pnl9.Visible = True then
  // OptimizeGrid(dbgrdh2);
  // if pnl10.Visible = True then
  // OptimizeGrid(dbgrdh3);

end;

procedure TMainFrm.N301Click(Sender: TObject);
var
  i: Integer;
begin
  ActiveControl := dbgrdh2;
  if not(ActiveControl is TDBGridEh) then
    Exit;
  dbgrdh2.AutoFitColWidths := False;
  N302.Checked := dbgrdh2.AutoFitColWidths;
  N301.Checked := not N302.Checked;

  for i := 0 to dbgrdh2.Columns.Count - 1 do
  begin
    dbgrdh2.Columns[i].OptimizeWidth;
  end;
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

procedure TMainFrm.N3Click(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
  AssisName, AssisTabName, AssisKeyField, AssisFields, AssisSort: string;
begin
  if dlgOpenAssis.Execute then
  begin
    s_filename := dlgOpenAssis.FileName;
    MyIniFile := TIniFile.Create(s_filename);
    lbledtName.Text := MyIniFile.ReadString('Base', 'AssisName', '辅助表名称');
    lbledtTabName.Text := MyIniFile.ReadString('Base', 'AssisTabName', '辅助表表名');
    lbledtKey.Text := MyIniFile.ReadString('Base', 'AssisKeyField', '关联字段');
    mmoFields.Text := MyIniFile.ReadString('Base', 'AssisFields', '查询字段');
    lbledtSort.Text := MyIniFile.ReadString('Base', 'AssisSort', '排序字段');
    MyIniFile.Free;
  end;
end;

procedure TMainFrm.N401Click(Sender: TObject);
begin
  // ActiveControl := dbgrdh3;
  // if not(ActiveControl is TDBGridEh) then
  // Exit;
  // dbgrdh3.AutoFitColWidths := False;
  // N402.Checked := dbgrdh3.AutoFitColWidths;
  // N401.Checked := not N402.Checked;
end;

procedure TMainFrm.N402Click(Sender: TObject);
begin
  // ActiveControl := dbgrdh3;
  // if not(ActiveControl is TDBGridEh) then
  // Exit;
  // dbgrdh3.AutoFitColWidths := True;
  // N402.Checked := dbgrdh3.AutoFitColWidths;
  // N401.Checked := not N402.Checked;
end;

procedure TMainFrm.N49Click(Sender: TObject);
var
  s_filename: string;
begin
  s_filename := ExtractFilePath(ParamStr(0));
  inprpstrgmnh1.IniFileName := s_filename + 'zh_layout';
  prpstrgh1.SaveProperties;
end;

procedure TMainFrm.N4Click(Sender: TObject);
var
  s_filename: string;
  MyIniFile: TIniFile;
  AssisName, AssisTabName, AssisKeyField, AssisFields, AssisSort: string;
begin
  if dlgSaveAssis.Execute then
  begin
    s_filename := dlgSaveAssis.FileName;
    MyIniFile := TIniFile.Create(s_filename);
    MyIniFile.WriteString('Base', 'AssisName', Trim(lbledtName.Text));
    MyIniFile.WriteString('Base', 'AssisTabName', Trim(lbledtTabName.Text));
    MyIniFile.WriteString('Base', 'AssisKeyField', Trim(lbledtKey.Text));
    MyIniFile.WriteString('Base', 'AssisFields', Trim(mmoFields.Text));
    MyIniFile.WriteString('Base', 'AssisSort', Trim(lbledtSort.Text));
    MyIniFile.Free;
  end;
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

procedure TMainFrm.chkAssisDisClick(Sender: TObject);
begin
  if chkAssisDis.Checked then
  begin
    cxspltr3.Visible := False;
    pnl9.Visible := False;
    dbgrdh1.Align := alClient;
    cxspltr3.Visible := True;
    pnl9.Visible := True;
    dbgrdh1.Align := alTop;
    dbgrdh1.Height := dbgrdh1.Height div 3 * 2;
  end
  else
  begin
    cxspltr3.Visible := False;
    pnl9.Visible := False;
    dbgrdh1.Align := alClient;
  end;
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
  // N402.Checked := dbgrdh3.AutoFitColWidths;
  N401.Checked := not N402.Checked
end;

procedure TMainFrm.N15Click(Sender: TObject);
begin
  // ShowGridColEditor(dbgrdh3);
end;

procedure TMainFrm.N48Click(Sender: TObject);
begin
  // ShowGridColEditor(dbgrdh2);
end;

procedure TMainFrm.N_ProjClick(Sender: TObject);
begin
  // F_DT.ADOCN4.Connected := False;
  // F_DT.ADOconGD2.Connected := False;
  // F_DT.ADOconGD3.Connected := False;
  Application.CreateForm(TF_Proj, F_Proj);
  F_Proj.ShowModal;
  if Length(Trim(t_proj_no)) = 0 then
    lblInfo.Caption := '---首先设置当前项目，才能实施数据分析---'
  else
    lblInfo.Caption := '当前项目：' + t_proj_no + '_' + t_proj_name + '_' + t_Database;
  if Length(Trim(t_proj_no)) <> 0 then
  begin
    // 判断数据库是否存在
    F_DT.fdqryTmp.Connection := F_DT.FDConGen;
    F_DT.fdqryTmp.SQL.Clear;
    F_DT.fdqryTmp.SQL.Text := 'select name from master..sysdatabases where name = ' + '''' + t_Database + '''';
    F_DT.fdqryTmp.Open;
    if F_DT.fdqryTmp.RecordCount > 0 then
    begin
      F_DT.fdqryTmp.close;
      del_proc(); // 删除存储过程
      // cre_V_bank();
      Auto_proc() // 自动执行的存储过程
    end; // 自动运行模式直接继续
  end;

end;

procedure TMainFrm.M_DR_SAZH1Click(Sender: TObject);
begin
  ShowMessage('等待程序更新');
end;

procedure TMainFrm.dbgrdh1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((Key = VK_UP) or (Key = VK_DOWN) or (Key = VK_PRIOR) or (Key = VK_NEXT)) and chkAssis.Checked then
    bitbtnAssis.Click;
end;

procedure TMainFrm.M_DR_FXZHClick(Sender: TObject);
begin
  ShowMessage('等待程序更新');
end;

procedure TMainFrm.MnModelClick(Sender: TObject);
begin
  // Application.MessageBox('测试版！某些功能可能具有不确定性，欢迎提出宝贵意见！',
  // '测试版', MB_OK + MB_ICONINFORMATION);
  is_ini := False;
  // 在数据库定义函数 def_fun();
  // Application.CreateForm(Tf_item, f_item);
  // f_item.ShowModal;
  fdQryTree.close;
  Application.CreateForm(TFModMaintain, FModMaintain);
  FModMaintain.ShowModal;
//  fdQryTree.close;
  fdQryTree.Open;
  // cre_zhsys();   //建立账户视图
  if Length(Trim(t_proj_no)) > 0 then
  begin
    // 判断数据库是否存在
    F_DT.fdqryTmp.Connection := F_DT.FDConGen;
    F_DT.fdqryTmp.SQL.Clear;
    F_DT.fdqryTmp.SQL.Text := 'select name from master..sysdatabases where name = ' + '''' + t_Database + '''';
    F_DT.fdqryTmp.Open;
    if F_DT.fdqryTmp.RecordCount > 0 then
    begin
      F_DT.fdqryTmp.close;
      del_proc(); // 删除存储过程
      // cre_V_bank();
      Auto_proc() // 自动执行的存储过程
    end; // 自动运行模式直接继续
  end;
  DispInfo();
  // 有关银行数据库方面的操作可在新建项目和设置当前项目时执行 或者 此时判断若存在当前项目，就执行
  // cxDBTreeList1.FullExpand;

end;

procedure TMainFrm.M_DR_FXDWClick(Sender: TObject);
begin
  ShowMessage('等待程序更新');
end;

procedure TMainFrm.M_DR_FXGRClick(Sender: TObject);
begin
  ShowMessage('等待程序更新');
end;

initialization

DBGridEhCenter.FilterEditCloseUpApplyFilter := True;

end.
