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
      col_name_cn: string; // 字段中文名称数组
      col_name_en: string; // 字英文文名称数组
      col_type: string; // 字段长度数组
      col_all_len: string; // 字段精度数组
      col_dot_len: string; // 字段类型数组
      col_index: string; // 索引字段 （独立）
      col_rept: string; // 查重字段
      col_Dict: string; // 编码处理
      col_date_deal: string; // 日期处理
      col_xls_loc: string; // Excel处理
      col_reg: string; // 正则表达式的规则处理
      col_reg_str: string; // 正则表达式的规则处理
      col_reg_ok: string; // 正则表达式校验必须通过
      col_reg_depcol: string; // 校验依赖字段
      col_reg_depval: string; // 依赖字段值
      col_name: string; // 根据是否中文字段赋值col_name_cn或col_name_en值，方便生成建表语句
      col_len: string; // 字段长度，相加两个字段，数值型要加上小数点
      xls_col_no: Integer; // 记录Excel每个标题栏对应列号
    end;

  var
    tab_id, tab_name_en, tab_comIndex, is_chn_col, is_XLS, is_TXT: string;
    val_warn: Char; // 指示数据校验警告性错误，0无，1有不影响导入，可选择，校验过程返回
    val_falt: Char; // 指示数据校验知名性错误，0无，1有，影响导入，退出导入过程 。校验过程返回
    a_Col_record: array of TCol_record; // 字段数组      ，校验过程返回
    procedure ValidData(s_filename: string; i_start, i_max_count: Integer; dis_or_Val: Char); // 文本检验和显示过程
    procedure ValidDataXLS(s_filename: string; i_start, i_max_count: Integer; dis_or_Val: Char); // Excel检验和显示过程
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
  FileExt, s_filename: string; // 文件名、文件编码类型
  i, i_start, i_max_count: Integer;
  dis_or_Val: Char;
  str: string;
begin
  dis_or_Val := '1'; // 校验 // dis_or_Val:0显示，1校验
  i_start := StrToInt(edt_start.Text);
  i_max_count := StrToInt(edt_num.Text);
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('没有选择数据文件！', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (FileExt = '.TXT') or (FileExt = '.CSV') then
  begin
    if chkTXT.Checked then
    begin
      // 判断文件是否在使用或不存在
      if IsFileInUse(s_filename) then
      begin
        MessageDlg('文件正在被其他程序使用或不存在，关闭其他程序打开的本文件后再导入！', mtWarning, [mbOK], 0);
        Abort;
      end;
      ValidData(s_filename, i_start, i_max_count, dis_or_Val)
    end
    else
    begin
      MessageDlg('未选择源数据表或该数据不能导入文本文件！', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    if (FileExt = '.XLS') or (FileExt = '.XLSX') then
      if chkXLS.Checked then
      begin
        ValidDataXLS(s_filename, i_start, i_max_count, dis_or_Val);
        MessageDlg('Excel文件只显示数据规范要求信息，具体校验在导入数据时进行。', mtInformation, [mbOK], 0);
      end
      else
      begin
        MessageDlg('未选择源数据表或该数据不能导入Excel文件！', mtInformation, [mbOK], 0);
        Abort;
      end
    else
    begin
      lbledtFileName.setfocus;
      MessageDlg('文件必须为TXT或CSV或XLS或XLSX格式（后缀标识）！', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  // ShowMessage(IntToStr( mmo2.Lines.Count));
  mmo2.setfocus;
  SendMessage(mmo2.Handle, EM_SCROLLCARET, 0, 0);
end;

procedure TFrmDataImport.btnViewClick(Sender: TObject);
var
  FileExt, s_filename: string; // 文件名、文件编码类型
  i_start, i_max_count: Integer;
  dis_or_Val: Char;
begin
  dis_or_Val := '0'; // 显示
  i_start := StrToInt(edt_start.Text);
  i_max_count := StrToInt(edt_num.Text);
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('没有选择数据文件！', mtInformation, [mbOK], 0);
    Abort;
  end;

  if (FileExt = '.TXT') or (FileExt = '.CSV') then
  begin
    // 判断文件是否在使用或不存在
    if IsFileInUse(s_filename) then
    begin
      MessageDlg('文件正在被其他程序使用或不存在，关闭其他程序打开的本文件后再导入！', mtWarning, [mbOK], 0);
      Abort;
    end;
    ValidData(s_filename, i_start, i_max_count, dis_or_Val)
  end
  else if (FileExt = '.XLS') or (FileExt = '.XLSX') then
  begin
    ValidDataXLS(s_filename, i_start, i_max_count, dis_or_Val);
    MessageDlg('Excel文件只显示数据规范要求信息，具体预览信息请用WPS或Excel。', mtInformation, [mbOK], 0);
  end
  else
  begin
    lbledtFileName.setfocus;
    MessageDlg('文件必须为TXT或CSV或XLS或XLSX格式（后缀标识）！', mtInformation, [mbOK], 0);
    Abort;
  end;

  ;
  // dis_or_Val:0显示，1校验
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
  // ShowMessage('Yes有匹配到')
  // end
  // else
  // ShowMessage('No未匹配到');
end;

procedure TFrmDataImport.btnImpTxtClick(Sender: TObject);
var
  FileExt, s_filename: string; // 文件名、文件编码类型
  // 标记目标表是否存在、是否新建（清空导入或第一次增量导入），若是，就不用tb_tab过渡，加快速度
begin
  if (globle_tab = '0') and (Length(t_proj_no) = 0) then
  begin
    MessageDlg('导入项目有关数据表必须设置当前数据分析（检查）项目。', mtWarning, [mbOK], 0);
    Abort;
  end;
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('没有选择数据文件！', mtInformation, [mbOK], 0);
    Abort;
  end;

  if (FileExt = '.TXT') or (FileExt = '.CSV') then
  begin
    if chkTXT.Checked then
    begin
      // 清理表格
      // 将严格按照预先设定的分隔符去分隔字符,反之将会使用设定分隔符，空格，tab. 之类不可见的字符同时对字符做分隔
      if Length(Trim(lblEdtSplt.Text[1])) = 0 then
      begin
        MessageDlg('入导入文本文件，分隔符必须指定（数据接口维护中可永久指定）！', mtWarning, [mbOK], 0);
        Abort;
      end;

      // 判断文件是否在使用或不存在
      if IsFileInUse(s_filename) then
      begin
        MessageDlg('文件正在被其他程序使用或不存在，关闭其他程序打开的本文件后再导入！', mtWarning, [mbOK], 0);
        Abort;
      end;

      // 导入文本-------------------------------
      ImportTxt;
    end
    else
    begin
      MessageDlg('未选择源数据表或该数据不能导入文本文件！', mtInformation, [mbOK], 0);
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
        MessageDlg('未选择源数据表或该数据不能导入Excel文件！', mtInformation, [mbOK], 0);
        Abort;
      end
    else
    begin
      lbledtFileName.setfocus;
      MessageDlg('文件必须为TXT或CSV或XLS或XLSX格式（后缀标识）！', mtInformation, [mbOK], 0);
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
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  if Length(s_filename) = 0 then
  begin
    lbledtFileName.setfocus;
    MessageDlg('没有选择数据文件！', mtInformation, [mbOK], 0);
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
      MessageDlg('文件必须为TXT或CSV或XLS或XLSX格式（后缀标识）！', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
end;

procedure TFrmDataImport.cxLCbBSrcTabPropertiesEditValueChanged(Sender: TObject);
begin
  // 选择列表后，获取对应值
  tab_id := cxLCbBSrcTab.EditValue;
  if fdQrySrcTab.Locate('tab_id', tab_id, []) then
  begin
    tab_name_en := Trim(VarToStrDef(fdQrySrcTab['tab_name_en'], ''));
    tab_comIndex := Trim(VarToStrDef(fdQrySrcTab['combIndex'], '')); // 组合索引  多行；每行|，；分隔
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

    // 赋值参数,打开字段类型列表
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
    // 写入ini文件
    iniFilename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(iniFilename);
    MyIniFile.WriteString('Other', 'table_type', table_type);
    MyIniFile.Free; // ……
    // ShowMessage('write to ini file');
    FrmDataImport.rgSelSrcClick(Self); // 更新导入表
  end;
  // 更新导入表列表
  // todo
  // 赋值参数,打开字段类型列表
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
  // SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);  //任务栏显示图标
  // 读取当前目录setting赋值 dict_list_col字段类型在字典中的列表id
  globle_tab := '0'; // 默认项目表
  s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
  MyIniFile := TIniFile.Create(s_filename);
  dict_list_type := MyIniFile.ReadString('Other', 'dict_list_type', '');
  table_type := MyIniFile.ReadString('Other', 'table_type', '0');
  MyIniFile.Free;
  FDQryTabType.Connection := F_DT.FDconSYS;
  FDQryTabType.close;
  FDQryTabType.ParamByName('Dict_type_id').AsString := dict_list_type; // 根据dict_list_type提取行业类型列表
  FDQryTabType.Open();
  cxLookupComboBoxType.EditValue := table_type; // 定位到行业类型

  if Length(Trim(t_proj_no)) = 0 then
    lblProj.Caption := '---首先设置当前项目，才能实施数据分析---'
  else
    lblProj.Caption := '当前项目：' + t_proj_no + '_' + t_proj_name + '_' + t_Database;
  // // 全局表
  // t_sys_dbname := 'hnxlsys';

  fdQrySrcTab.Connection := F_DT.FDconSYS;
  FDQrySrcCol.Connection := F_DT.FDconSYS;
  // fdQrySrcTab.Open();
  // FDQrySrcCol.Open();
  // 项目表
  // t_Database := 'ZH_20210813102357';
  F_DT.FDConProj.Connected := False;
  F_DT.FDConProj.ConnectionString := t_connect + t_Database + ';';

  // FDConProj.Params.Add('DriverID=MSSQL');
  // FDConProj.Params.Add('Server=.');
  // FDConProj.Params.Add('Database=' + t_Database);
  // FDConProj.Params.Add('OSAuthent=Yes');
  // FDConProj.Connected := True;
  // 调用此模块前赋值确定基于全局还是基于项目的数据表
  FrmDataImport.rgSelSrcClick(Self);

  // if globle_tab = '0' then
  // begin
  // FrmDataImport.Caption := '基于项目的数据采集（数据存于项目 仅本项目可用）';
  // end
  // else
  // begin
  // FrmDataImport.Caption := '全局数据采集（数据存于系统 所有项目可用）';
  // end;
end;

procedure TFrmDataImport.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_ESCAPE) then
    // 按键是esc,就设置stop为true
    b_stop := True;
  if Key = Chr(VK_SPACE) then // 按键是esc,就设置stop为true
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
    FrmDataImport.Caption := '项目数据导入（数据存于项目数据库 仅本项目可用）';
    sqltext := 'select * from src_table where GloImp = ' + QuotedStr(globle_tab) + ' AND type= ' + QuotedStr(table_type) + ' order by tab_sort';
  end;
  if rgSelSrc.ItemIndex = 1 then // 全局表不区分行业
  begin
    globle_tab := '1';
    FrmDataImport.Caption := '全局数据导入（数据存于系统数据库 引用系统数据库使用）';
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
    // 先把这个CELL上的字给抹掉，然后再画一次，不知道是不是正道，反正解决了问题。希望知道正确方法的朋友提示一下
    DrawText(Canvas.Handle, PChar(s), Length(s), R, DT_WORDBREAK);
  end;
end;

procedure TFrmDataImport.ValidData(s_filename: string; i_start, i_max_count: Integer; dis_or_Val: Char);
// dis_or_Val:0预览，1校验
var
  col_num, // column's amount    //源数据表字段个数，校验时比较数据字段长度使用
  title_count // 数据文件标题行或第一行（无标题行）字段个数
    : Integer;
  FileExt, txt_type: string; // 文件名、文件编码类型
  is_utf8: Boolean;
  dis_ok: Char; // 校验错误时为1，显示在grid
  i_row, // 记录数据行
  i_row_real, // 记录度几行数据成为一个数据行
  i_row_real_ini, i_repeat, // 记录数据文件读多行时的总行数
  i_a_col_len, i_col_len, i, i_len, i_len_no, i_col, grd_col, grd_row, grd_col_count, grd_row_count, sl_col, sl_count: Integer;
  dis_col: Integer;
  // 0 false,1 true
  rText: TextFile;
  sColumName, sColumName_tmp: string;
  // 读取一行数据,tmp用于数据文件一行不全到下一行了，再读一次，相当于空格行也处理了
  slColumName, slColumNameOK: TStringList; // 读取的数据转换为字符串列表，相当于分割后的数组
  a_col_len, MaxColLen, // 记录每列数据最大的长度
  MaxColLen_no //
    : array of Integer;
  sqltext: string;
  i_reg: Integer; // 循环依赖字段
begin
  val_falt := '0';
  // 判断校验时是否在致命性错误，列数和字段长度，存在则退出导入过程
  val_warn := '0'; // 警告性错误
{$REGION ' 判断数据文件好额源数据表合理性'}
  // s_filename := Trim(lbledtFileName.Text);   //入口参数
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  if IfIncludeKG(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('文件名或所在目录名中包含空格，请修正文件名或将文件放在不含空格的目录中！！', mtInformation, [mbOK], 0);
    Abort;
  end;
  if not FileExists(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('文件不存在！', mtInformation, [mbOK], 0);
    Abort;
  end;

  // 校验数据必须有源数据表且源数据表有内容 -----------------
  // 源数据表已选择，字段列表有内容才显示字段
  if Length(Trim(VarToStrDef(cxLCbBSrcTab.EditValue, ''))) = 0 then
  begin
    dis_col := 0; // 是否显示源数据表信息
    if dis_or_Val = '1' then // 若为校验则必须选择源数据表
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('未选择源数据表，不能校验（可预览数据文件）', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else if FDQrySrcCol.RecordCount <= 0 then
  begin
    dis_col := 0;
    if dis_or_Val = '1' then // 若为校验则必须选择源数据表
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('源数据表没有维护，不能校验（可预览数据文件）', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
    dis_col := 1; // 显示源数据表信息
{$ENDREGION}
{$REGION '---字段信息读入数组a_Col_record,VarToStrDef空值转为空字符---'}
  if dis_col = 1 then
  begin
    // ------------------处理源数据表相关信息---------------------------
    col_num := FDQrySrcCol.RecordCount; // 源数据表字段数
    SetLength(a_Col_record, col_num); // 设置数组长度
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
      // 判断名称、类型、长度不能为空，否则返回
      // ----
      if (is_chn_col = '1') and (Length(a_Col_record[i_col].col_name_cn) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“字段中文名称”未指定，无法导入数据！');
      end;

      if (is_chn_col <> '1') and (Length(a_Col_record[i_col].col_name_en) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“字段英文名称”未指定，无法导入数据！');
      end;

      if Length(a_Col_record[i_col].col_type) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“数据类型”未指定，无法导入数据！');
      end;

      if Length(a_Col_record[i_col].col_all_len) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“字段长度”未指定，无法导入数据！');
      end;

      if (LowerCase(a_Col_record[i].col_type) = 'decimal') and (Length(a_Col_record[i_col].col_dot_len) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“小数点长度”未指定，无法导入数据！');
      end;
      if val_falt = '1' then
        exit;

      if is_chn_col = '1' then // col_name建表语句使用，确定此处中文或英文字段
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
  // --------处理前初始化----------------------
  // 暂停屏幕响应
  pnl1.Enabled := False;
  pnl2.Enabled := False;
  pnl3.Enabled := False;
  strngrd1.Visible := False;

  for i := 0 to strngrd1.ColCount - 1 do
    strngrd1.cols[i].Clear; // 清空每列数据

  strngrd1.RowCount := 1; // 行号
  strngrd1.ColCount := 1; // 列号

  strngrd1.ColWidths[0] := 132; // grid第一列宽度设置
  strngrd1.Cells[0, 0] := '数据行号(实际行号)';
  mmo2.Clear; // 清空信息
  mmo2.Visible := True;
  // 校验文件时grid显示内容要少一些
  if dis_or_Val = '1' then
    strngrd1.Height := strngrd1.RowHeights[0] * 5
  else
    strngrd1.Height := pnl4.Height - strngrd1.RowHeights[0] * 5;


  // -------------------------------------------------
{$REGION '----根据dis_col显示源表字段信息-----'}
  if dis_col = 1 then
  begin
    strngrd1.ColCount := col_num + 1;
    // 根据源数据表字段数量初始化Grid列数 ， +1增加固定列显示序号和内容
    for i_col := 1 to col_num do // 0 行写入列号
    begin
      strngrd1.Cells[i_col, 0] := IntToStr(i_col);
    end;

    // grid增加一行
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid增加一行
    for i_col := 1 to col_num do // 1行写入中文标题
    begin
      strngrd1.Cells[0, 1] := '源表中文字段名称';
      strngrd1.Cells[i_col, 1] := a_Col_record[i_col - 1].col_name_cn;
    end;
    // grid增加一行
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid增加一行
    for i_col := 1 to col_num do // 2行写入英文标题
    begin
      strngrd1.Cells[0, 2] := '源表英文字段名称';
      strngrd1.Cells[i_col, 2] := a_Col_record[i_col - 1].col_name_en;
    end;
  end;
{$ENDREGION}// -----源表字段显示结束
{$REGION'---若不是强制编码，则判断并修改列表，否则直接使用CBBCODE的INDEX编码格式读取文件--'}
  if not chkForceCode.Checked then
  begin
    txt_type := GetTextType(s_filename);
    if txt_type = 'Utf8' then
    begin
      txt_type := 'BOM测试为' + txt_type + '编码格式';
      is_utf8 := True;
    end
    else
    begin
      if txt_type = 'Ansi' then
      // 如果BOM方式判断为Ansi，也可能无文件头，需要全文判断
      begin
        // 全文判断字符串编码格式 ----------------------------------
        if IsUtf8File(s_filename) then
        begin
          txt_type := '全文测试为utf8编码';
          is_utf8 := True;
        end
        else
        begin
          txt_type := '全文测试为Ansi编码';
          is_utf8 := False;
        end
      end
      else
      begin
        txt_type := 'BOM测试为' + txt_type + '编码格式';
        is_utf8 := False;
      end;
    end;
    // 设定导入编码
    if is_utf8 then
    begin
      cbbCode.ItemIndex := 1;
      mmo2.Lines.Add('uft8编码读取文件……');
    end
    else
    begin
      cbbCode.ItemIndex := 0;
      mmo2.Lines.Add('ANSI编码读取文件……');
    end;

  end
  else
    mmo2.Lines.Add('强制编码读取文件……');
{$ENDREGION}
{$REGION ' 根据编码格式打开流文件'}
  if cbbCode.ItemIndex = 1 then
    // SR := TStreamReader.Create(s_filename, TEncoding.UTF8, True)
    AssignFile(rText, s_filename, 65001)
  else
    AssignFile(rText, s_filename);
  // SR := TStreamReader.Create(s_filename, TEncoding.ansi, True);
  Reset(rText);
{$ENDREGION}
  // 初始化字符串列表
  slColumName := TStringList.Create;
  slColumName.StrictDelimiter := True;
  // 将严格按照预先设定的分隔符去分隔字符,反之将会使用设定分隔符，空格，tab. 之类不可见的字符同时对字符做分隔
  slColumName.Delimiter := lblEdtSplt.Text[1];
  if Length(Trim(lblEdtQalif.Text)) > 0 then // 考虑没有限定符号的情况
    slColumName.QuoteChar := lblEdtQalif.Text[1];
  // slColumName.QuoteChar := #0; // 解决双引号自动分割题,delphi高版本下通过 StrictDelimiter解决
  // 默认值为"，看能否解决"aaa"|"bbb"|"ccc"这类数据问题？？？？？？？？？
  // slColumName.;
{$REGION'---第一行若是标题，则必须显示，且起始行数从第2行开始---'}
  if chkTitle.Checked then
  begin
    mmo2.Lines.Add('数据文件包含标题行……');
    // 读取数据文件第一行
    // sColumName := SR.ReadLine;
    Readln(rText, sColumName);
    slColumName.DelimitedText := sColumName; // 数据导数据列
    // grd_col_count := strngrd1.ColCount; //当前表格列数 赋值给变量
    sl_count := slColumName.Count; // 当前数据列数  赋值给变量
    if strngrd1.ColCount <= sl_count then
      // 若表格列数小于等于数据列数，则grid不能完全显示数据（grid列数可能比当前数据列数多）
      strngrd1.ColCount := sl_count + 1; // 需表格列数增加到数据列+1，多出的一列显示行数
    // 记录标题行字段个数，用于读取人行数据中一行数据被换行符分割的情况（sqlserver能正确导入，delphi分割了）
    title_count := sl_count;
    // 数据标题行长度，校验时比较col_num使用，确定读取数据文件几行也要实用----------------------------------------------------------------校验-----------------
    strngrd1.RowCount := strngrd1.RowCount + 1; // grid增加一行写入标题
    strngrd1.Cells[0, strngrd1.RowCount - 1] := '数据文件标题行'; // 数据文件行标题
    for i_col := 1 to sl_count do // 1行写入标题,同时写入列号，因为数据可能更长
    begin
      strngrd1.Cells[i_col, 0] := IntToStr(i_col);
      strngrd1.Cells[i_col, strngrd1.RowCount - 1] := slColumName[i_col - 1];
    end;

    if dis_or_Val = '1' then
      // 校验标题行
      if col_num <> title_count then
      begin
        val_falt := '1';
        mmo2.Lines.Add('标题行“|”号分割的表头列数不正确（' + IntToStr(title_count) + '列），应为' + IntToStr(col_num) + '列。数据无法导入！');
      end

  end
  else
    mmo2.Lines.Add('数据文件不包含标题行，数据可以导入……');
{$ENDREGION}
  // ----------------处理和显示数据文件----------------
  // 处理数据文件
  if dis_or_Val = '1' then
    mmo2.Lines.Add('校验文件数据，ESC可中断……')
  else
    mmo2.Lines.Add('显示文件数据，ESC可中断……');
  i_row := 1; // 数据行数从1开始  显示时标题行不算在内
  i_row_real := 1; // 记录数据文件实际行数
  if chkTitle.Checked then
    i_row_real_ini := 1
  else // 记录数据文件实际行数
    i_row_real_ini := 0;
  i_repeat := 0;
  // i_start := StrToInt(edt_start.Text); // 数据处理的起始行数  （入口参数）
  i_max_count := i_start + i_max_count; // 数据处理结束行数：起始行+行数（入口参数）
  b_stop := False;
  try
    while (not eof(rText)) and (i_row < i_max_count) do
    // 注意检查 EndOfStream 状态
    begin
      if b_stop then
        Break;
      Application.ProcessMessages;
      // 读一行数据
      // sColumName := SR.ReadLine; // 再读一行数据，无论是否读标题行，这时读数据行的第一行
      Readln(rText, sColumName);
      slColumName.DelimitedText := sColumName;

{$REGION '少多少字段合适不好确定，暂时用着'}
      // 若数据字段个数小于标题字段（第一行）个数过多（2个），再读下一行，加入。可以处理空行的问题？
      // i_repeat := 0;//应该移到循环前
      while (slColumName.Count < title_count - 2) and (not eof(rText)) do
      // 数据字段个数与标题行字段个数比较，确定是否续读数据 .我无标题行，第一行数据不会续读
      begin
        // sColumName_tmp := SR.ReadLine();
        Readln(rText, sColumName_tmp);
        slColumName.DelimitedText := sColumName + sColumName_tmp;
        i_repeat := i_repeat + 1;
      end;
{$ENDREGION}
      // 如果i_row小于i_start，就不校验 不显示，继续下一个循环。但文件需要顺序读取
      if i_row < i_start then
      begin
        i_row := i_row + 1;
        i_row_real := i_row + i_repeat; // 实际行数
        Continue;
      end;
      sl_count := slColumName.Count; // 当前数据列数

{$REGION '校验数据'}
      if dis_or_Val = '1' then
      begin
        dis_ok := '0'; // 校验时决定本行是否显示数据
        // 1 判断本行是否有数据，若无数据，后期无需判断，否则出错
        if sl_count = 0 then
        begin
          mmo2.Lines.Add(IntToStr(i_row) + '行没有数据，应删除！');
          i_row := i_row + 1;
          Continue;
        end;
        // 2 判断字段数量是否匹配
        if sl_count <> col_num then
        begin
          dis_ok := '1';
          val_falt := '1';
          mmo2.Lines.Add(IntToStr(i_row) + '行数据分隔后的列数不正确（' + IntToStr(sl_count) + '列），应为' + IntToStr(col_num) + '列。数据无法导入！');
        end;

        // 3 判断每列字段长度是否符合规范，严重影响导入 ;同时每个字段校验正则表达式
        for i := 0 to col_num - 1 do
        begin
          if i > sl_count - 1 then
            // 若数据字段的个数大于源表数据字段的个数，不再计算
            Break;
          // 处理日期列

          if a_Col_record[i].col_date_deal = '1' then
          begin
            var
              m: TMatch;
            var
              sYear, sMonth, sDay: string;
            m := TRegEx.Match(slColumName[i], '^(\d{4})[|\-|\/|\.|年]?(\d{1,2})[|\-|\/|\.|月]?(\d{1,2})[日]?$');
            // 此处只考虑提取年月日的数字并形成yyymmdd格式，不考虑合理性，合理性可在字典中的校验表达式考虑
            if m.Groups.Count = 4 then // 若匹配值数量不是4个，则cell_str不处理，正则表达式时也不会通过
            begin
              // cell_str := m.Groups.Item[0].Value;
              // 提取日期中的数字
              sYear := m.Groups.Item[1].Value;
              sMonth := m.Groups.Item[2].Value;
              sDay := m.Groups.Item[3].Value;
              // 不足的位数补0
              slColumName[i] := StringOfChar('0', 4 - Length(sYear)) + sYear + StringOfChar('0', 2 - Length(sMonth)) + sMonth + StringOfChar('0', 2 - Length(sDay)) + sDay;
            end
            else
            begin
              if (Length(slColumName[i]) <> 0) and (UpperCase(slColumName[i]) <> '@N') then
                mmo2.Lines.Add(IntToStr(i_row) + '行第' + IntToStr(i + 1) + '列“' + a_Col_record[i].col_name_cn + '”数据为“' + Trim(slColumName[i]) +
                  '”，不符合日期表达式规范yyyymmdd或yyyy-mm-dd或yyyy/mm/dd或yyyy.mm.dd或yyyy年mm月dd日！');
            end;
          end;

          // 最后一列数据长度与字段要求长度一致，sql server仍出现字段截断错误,下面两种处理方式
          // 实际上导入语句里加入了Format='CSV'，估计就没有问题了，同时解决数据双引号问题 （暂时特殊处理最后一行）
          if (i < col_num - 1) and (Length(ansistring(Trim(slColumName[i]))) > StrToInt(a_Col_record[i].col_len)) and (StrToInt(a_Col_record[i].col_len) > 0) then
          // col_len已转换为有数字。源表数据字段含有长度时才判断长度，无长度信息，依赖正则判断
          begin
            dis_ok := '1';
            val_falt := '1';
            mmo2.Lines.Add(IntToStr(i_row) + '行第' + IntToStr(i + 1) + '列“' + a_Col_record[i].col_name_cn + '”数据为“' + Trim(slColumName[i]) + '”，长度' +
              IntToStr(Length(ansistring(Trim(slColumName[i])))) + '大于数据规范长度，数据无法导入！');
          end;

          // 猜测sql大容量数据导入问题：最后一列数据长度与字段要求长度一致，sql server仍出现字段截断错误（最后一行最后一列反而没问题）
          // 最后一列特殊处理一下
          if (i = col_num - 1) and (Length(ansistring(Trim(slColumName[i]))) >= StrToInt(a_Col_record[i].col_len)) and (StrToInt(a_Col_record[i].col_len) > 0) then
          // col_len已转换为有数字。源表数据字段含有长度时才判断长度，无长度信息，依赖正则判断
          begin
            dis_ok := '1';
            val_falt := '1';
            mmo2.Lines.Add(IntToStr(i_row) + '行第' + IntToStr(i + 1) + '列(最后一列）' + a_Col_record[i].col_name_cn + '数据为“' + Trim(slColumName[i]) + '”，长度' +
              IntToStr(Length(ansistring(Trim(slColumName[i])))) + '大于等于数据规范长度，数据无法导入！');
          end;

          // 正则表达式校验（数字类型的正则表达式不符合校验规则也无法导入）
          // a_Col_record[i].col_reg_str不空且a_Col_record[i].col_reg_depcol为空，直接校验
          // a_Col_record[i].col_reg_str不空且a_Col_record[i].col_reg_depcol不空 →  col_reg_depcol表示的字段内容为空则不校验，不为空且col_reg_depval为空则直接校验；
          // → 不为空且col_reg_depval不为空，则判断col_reg_depcol表示的字段内容字段值为col_reg_depval则校验；
          var
            regValid: string;
          regValid := '0';
          // a_Col_record[i].col_reg_str不空、a_Col_record[i].col_reg_depcol空，校验
          if (Length(a_Col_record[i].col_reg_str) <> 0) and (Length(a_Col_record[i].col_reg_depcol) = 0) then
            regValid := '1';
          // a_Col_record[i].col_reg_str不空、a_Col_record[i].col_reg_depcol不空 、col_reg_depval空，相关字段值不空 则校验
          if (Length(a_Col_record[i].col_reg_str) <> 0) and (Length(a_Col_record[i].col_reg_depcol) <> 0) and (Length(a_Col_record[i].col_reg_depval) = 0) then
          begin
            // 循环找到相关字段
            for i_reg := 0 to col_num - 1 do
              if a_Col_record[i_reg].col_name = Trim(a_Col_record[i].col_reg_depcol) then
                Break;
            if (i_reg < col_num) and (Length(Trim(slColumName[i_reg])) > 0) then
              regValid := '1';
          end;

          // a_Col_record[i].col_reg_str不空、a_Col_record[i].col_reg_depcol不空 、col_reg_depval不空、相关字段值= col_reg_depval，则校验
          if (Length(a_Col_record[i].col_reg_str) <> 0) and (Length(a_Col_record[i].col_reg_depcol) <> 0) and (Length(a_Col_record[i].col_reg_depval) <> 0) then
          // 循环找到相关字段
          begin
            // 循环找到相关字段
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
                mmo2.Lines.Add(IntToStr(i_row) + '行第' + IntToStr(i + 1) + '列' + a_Col_record[i].col_name_cn + '数据“' + Trim(slColumName[i]) + '”，不符合“' + a_Col_record[i].col_reg +
                  '”校验规则，数据无法导入！');
                val_falt := '1';
              end
              else
              begin
                mmo2.Lines.Add(IntToStr(i_row) + '行第' + IntToStr(i + 1) + '列' + a_Col_record[i].col_name_cn + '数据“' + Trim(slColumName[i]) + '”，不符合“' + a_Col_record[i].col_reg +
                  '”校验规则。可以导入数据，但影响数据分析准确性！');
                val_warn := '1';
              end;
            end
          end;
        end;
      end;
{$ENDREGION}
      if (dis_or_Val = '1') and (dis_ok = '1') or (dis_or_Val = '0') then
      // 显示出错行或所有航
      begin
        // 范围内字段最大长度
        if sl_count > Length(MaxColLen) then
        // 若数据列数大于当前字段长度数组的个数，则需增加数组长度，以便存储字段长度
        begin
          SetLength(MaxColLen, sl_count); // 增加数据长度数组（含空格）
          SetLength(MaxColLen_no, sl_count); // 增加数据长度数组（不含空格）
        end;

        if strngrd1.ColCount <= sl_count then
          // 若表格列小于等于数据列，则不能完全显示数据，需要扩充表格列（grid列数可能比当前数据列数多）
          strngrd1.ColCount := sl_count + 1; // grid列数要比stringlist多1列 ，0列显示行数
        grd_row := strngrd1.RowCount;
        strngrd1.RowCount := grd_row + 1; // grid增加一行
        // 新增加1行grid行后，最后一行显示数据行
        strngrd1.Cells[0, grd_row] := IntToStr(i_row) + '(' + IntToStr(i_row_real + i_row_real_ini) + ')'; // 写入 和实际行号
        for i_col := 1 to sl_count do // 写入数据 同时计算记录每个字段的长度到数组
        begin
          strngrd1.Cells[i_col, grd_row] := slColumName[i_col - 1];
          i_len := Length(ansistring(slColumName[i_col - 1])); // 字段长度(含空格）
          i_len_no := Length(ansistring(StringReplace(slColumName[i_col - 1], ' ', '', [rfReplaceAll]))); // 字段长度(不含空格）
          // 每列数组长度比较后最大数保存在数组
          if (i_len > MaxColLen[i_col - 1]) or (MaxColLen[i_col - 1] = Null) then
            MaxColLen[i_col - 1] := i_len;
          if (i_len > MaxColLen_no[i_col - 1]) or (MaxColLen_no[i_col - 1] = Null) then
            MaxColLen_no[i_col - 1] := i_len_no;
        end;
      end;

      i_row := i_row + 1;
      i_row_real := i_row + i_repeat; // 实际行数
    end;

    // 显示数据字段长度
    i_a_col_len := Length(MaxColLen); // 数组长度
    if i_a_col_len > 0 then
    begin
      grd_row := strngrd1.RowCount;
      strngrd1.RowCount := grd_row + 2; // grid增加2行
      strngrd1.Cells[0, grd_row] := '各字段长度(含空格)';
      strngrd1.Cells[0, grd_row + 1] := '各字段长度(无空格)';

      for i_col := 1 to i_a_col_len do // 写入长度数据
      begin
        strngrd1.Cells[i_col, grd_row] := IntToStr(MaxColLen[i_col - 1]);
        strngrd1.Cells[i_col, grd_row + 1] := IntToStr(MaxColLen_no[i_col - 1]);
        strngrd1.ColWidths[i_col] := Max(MaxColLen_no[i_col - 1] * 7, 80);
        // 设置每列宽度
      end;
    end;

    if dis_col = 1 then // 最后显示源数据表字段名长度
    begin
      grd_row := strngrd1.RowCount;
      strngrd1.RowCount := grd_row + 1;
      // grid增加1行
      strngrd1.Cells[0, grd_row] := '源表字段长度';
      for i_col := 1 to col_num do
      // 最后行写入源数据表总长度
      begin
        strngrd1.Cells[i_col, grd_row] := a_Col_record[i_col - 1].col_len;
      end;
    end;
    strngrd1.FixedCols := 1;
    if dis_col = 1 then // 选择源表时0、1、2三行为固定行
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
        mmo2.Lines.Add('!!!数据校验中断!!!')
      end
      else
      begin
        mmo2.Lines.Add('!!!数据显示中断!!!')
      end
    else if dis_or_Val = '1' then
    begin
      mmo2.Lines.Add('OK!!!数据校验完毕!!!')
    end
    else
    begin
      mmo2.Lines.Add('OK!!!数据显示完毕!!!')
    end;
    mmo2.Lines.Add('注意： 显示或校验发现少量错误，可用UltraEdit等工具去修正。修正困难时考虑重新提供数据文件！');
    mmo2.Lines.Add('       一般情况下，列数正确、长度在规范范围内时，数据可以正常导入，但可能影响分析模型的精准性。');
    pnl1.Enabled := True;
    pnl2.Enabled := True;
    pnl3.Enabled := True;
    strngrd1.Visible := True;
  end;
  // 释放内存
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
// dis_or_Val:0显示，1校验
var
  col_num, // column's amount    //源数据表字段个数，校验时比较数据字段长度使用
  title_count // 数据文件标题行或第一行（无标题行）字段个数
    : Integer;
  FileExt, txt_type: string; // 文件名、文件编码类型
  is_utf8: Boolean;
  dis_ok: Char; // 校验错误时为1，显示在grid
  i_row, // 记录数据行
  i_row_real, // 记录度几行数据成为一个数据行
  i_row_real_ini, i_repeat, // 记录数据文件读多行时的总行数
  i_a_col_len, i_col_len, i_len, i_len_no, i_col, grd_col, grd_row, grd_col_count, grd_row_count, sl_col, sl_count: Integer;
  dis_col: Integer;
  // 0 false,1 true
  rText: TextFile;
  sColumName, sColumName_tmp: string;
  // 读取一行数据,tmp用于数据文件一行不全到下一行了，再读一次，相当于空格行也处理了
  slColumName, slColumNameOK: TStringList; // 读取的数据转换为字符串列表，相当于分割后的数组
  a_col_len, MaxColLen, // 记录每列数据最大的长度
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
  // 判断校验时是否在致命性错误，列数和字段长度，存在则退出导入过程
  val_warn := '0'; // 警告性错误
{$REGION ' 判断数据文件和源数据表合理性'}
  // s_filename := Trim(lbledtFileName.Text);   //入口参数
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  if IfIncludeKG(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('文件名或所在目录名中包含空格，请修正文件名或将文件放在不含空格的目录中！！', mtInformation, [mbOK], 0);
    Abort;
  end;
  if not FileExists(s_filename) then
  begin
    lbledtFileName.setfocus;
    MessageDlg('文件不存在！', mtInformation, [mbOK], 0);
    Abort;
  end;

  // 校验数据必须有源数据表且源数据表有内容 -----------------
  // 源数据表已选择，字段列表有内容才显示字段
  if Length(Trim(VarToStrDef(cxLCbBSrcTab.EditValue, ''))) = 0 then
  begin
    dis_col := 0; // 是否显示源数据表信息
    if dis_or_Val = '1' then // 若为校验则必须选择源数据表
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('未选择源数据表，不能校验或导入（可预览数据文件）', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else if FDQrySrcCol.RecordCount <= 0 then
  begin
    dis_col := 0;
    if dis_or_Val = '1' then // 若为校验则必须选择源数据表
    begin
      cxLCbBSrcTab.setfocus;
      MessageDlg('源数据表没有维护，不能校验或导入（可预览数据文件）', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
    dis_col := 1; // 显示源数据表信息
{$ENDREGION}
{$REGION '---字段信息读入数组a_Col_record,VarToStrDef空值转为空字符---'}
  if dis_col = 1 then
  begin
    // ------------------处理源数据表相关信息---------------------------
    col_num := FDQrySrcCol.RecordCount; // 源数据表字段数
    SetLength(a_Col_record, col_num); // 设置数组长度
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
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“字段中文名称”未指定，无法导入数据！');
      end;

      if (is_chn_col <> '1') and (Length(a_Col_record[i_col].col_name_en) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“字段英文名称”未指定，无法导入数据！');
      end;

      if Length(a_Col_record[i_col].col_type) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“数据类型”未指定，无法导入数据！');
      end;

      if Length(a_Col_record[i_col].col_all_len) = 0 then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“字段长度”未指定，无法导入数据！');
      end;

      if (LowerCase(a_Col_record[i].col_type) = 'decimal') and (Length(a_Col_record[i_col].col_dot_len) = 0) then
      begin
        val_falt := '1';
        mmo2.Lines.Add('“' + cxLCbBSrcTab.Text + '”数据接口定义中“小数点长度”未指定，无法导入数据！');
      end;
      if val_falt = '1' then
        exit;

      if is_chn_col = '1' then // col_name建表语句使用，确定此处中文或英文字段
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
  // --------处理前初始化----------------------
  // 暂停屏幕响应
  // pnl1.Enabled := False;
  // pnl2.Enabled := False;
  // pnl3.Enabled := False;
  // strngrd1.Visible := False;
  for i := 0 to strngrd1.ColCount - 1 do
    strngrd1.cols[i].Clear; // 清空每列数据
  strngrd1.RowCount := 1; // 列号
  strngrd1.ColCount := 1; // 列号
  strngrd1.ColWidths[0] := 132; // grid第一列宽度设置
  strngrd1.Cells[0, 0] := '数据行号(实际行号)';
  mmo2.Clear; // 清空信息
  mmo2.Visible := True;
  // 校验文件时grid显示内容要少一些
  if dis_or_Val = '1' then
    strngrd1.Height := strngrd1.RowHeights[0] * 5
  else
    strngrd1.Height := pnl4.Height - strngrd1.RowHeights[0] * 5;


  // -------------------------------------------------
{$REGION '----根据dis_col显示源表字段信息-----'}
  if dis_col = 1 then
  begin
    strngrd1.ColCount := col_num + 1;
    // 根据源数据表字段数量初始化Grid列数 ， +1增加固定列显示序号和内容
    for i_col := 1 to col_num do // 0 行写入列号
    begin
      strngrd1.Cells[i_col, 0] := IntToStr(i_col);
    end;

    // grid增加一行
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid增加一行
    for i_col := 1 to col_num do // 1行写入中文标题
    begin
      strngrd1.Cells[0, 1] := '源表中文字段名称';
      strngrd1.Cells[i_col, 1] := a_Col_record[i_col - 1].col_name_cn;
    end;
    // grid增加一行
    strngrd1.RowCount := strngrd1.RowCount + 1;
    // inc(strngrd1.RowCount);   //grid增加一行
    for i_col := 1 to col_num do // 2行写入英文标题
    begin
      strngrd1.Cells[0, 2] := '源表英文字段名称';
      strngrd1.Cells[i_col, 2] := a_Col_record[i_col - 1].col_name_en;
    end;
  end;
{$ENDREGION}// -----源表字段显示结束

  if dis_col = 1 then // 最后显示源数据表字段名长度
  begin
    grd_row := strngrd1.RowCount;
    strngrd1.RowCount := grd_row + 1;
    // grid增加1行
    strngrd1.Cells[0, grd_row] := '源表字段长度';
    for i_col := 1 to col_num do
    // 最后行写入源数据表总长度
    begin
      strngrd1.Cells[i_col, grd_row] := a_Col_record[i_col - 1].col_len;
    end;
  end;
  strngrd1.FixedCols := 1;
  // if dis_col = 1 then // 选择源表时0、1、2三行为固定行
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
  // 释放内存
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
  FileExt, s_filename, s_error: string; // 文件名、文件编码类型
  i, i_start, i_max_count: Integer;
  dis_or_Val: Char;
  col_tmp_str, rept_tmp_where: string;
  col_name_def, col_name_insert, col_name_deal, sqltext: string;
  col_rept_name_s, col_rept_type_s, col_ind_name_s: string; // 查重字段和索引字段 “|” 连接
  col_rept_name_ls, col_rept_type_ls, col_ind_name_ls: TStringList; // 遍历使用
  t1, t2: TDateTime;
  r1: Real;
  s_codepage: string;
  Sw: TStreamWriter;
  s_type: string;
  is_exist: Char;
  i_dst_cnt, // 原数据的记录数
  i_tmp_cnt, // 临时表记录数
  i_dst_cnt_all: Integer; // 结果表记录数
  // 标记目标表是否存在、是否新建（清空导入或第一次增量导入），若是，就不用tb_tab过渡，加快速度
  import_OK: Char;
  ErrMsg: string;
begin
  if rb1.Checked then
  begin
    if MessageDlg('原有数据将全部清空并用新数据替换，是否确定？', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end
  else
  begin
    if MessageDlg('追加方式导入，因系统需判断查重，数据量较大时，速度较慢！！！是否确定？', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end;
  s_error := ExtractFilePath(ParamStr(0)) + 'error.txt'; // 记录导入时的出错信息
  try
    if FileExists(s_error) then
    begin
      DeleteFile(s_error);
      DeleteFile(s_error + '.Error.Txt');
    end;
  finally
  end;

  dis_or_Val := '1'; // 校验
  i_start := 1;
  i_max_count := Min(StrToInt(lbledtValNo.Text), 1000); // 导入时最多校验1000行
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  ValidData(s_filename, i_start, i_max_count, dis_or_Val); // ------------------校验文本数据

  if val_falt = '1' then // 存在致命性错误
  begin
    mmo2.Lines.Add('文本文件部分校验存在致命性错误（具体错误信息见上），不能导入！');
    mmo2.Lines.Add('--X--导入失败--X--');
    MessageDlg('文本文件部分校验存在致命性错误，请修正后再行导入！', mtError, [mbOK], 0);
    exit;
  end;
  if val_warn = '1' then // 存在警告性错误
  begin
    if MessageDlg('文本文件部分校验存在不符合校验规则数据，是否继续导入？', mtWarning, [mbYes, mbNo], 0) = mrNo then
    begin
      mmo2.Lines.Add('文本文件部分校验存在不符合校验规则数据，选择了不再继续导入。');
      mmo2.Lines.Add('--X--导入失败--X--');
      exit;
    end;
  end;

  mmo2.Lines.Add('校验了前' + IntToStr(i_max_count) + '行数据，基本不影响数据导入（全部校验请返回后使用校验功能），下面开始导入数据文件……'); // 1.建立数据表
  // 暂停屏幕响应
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
  // 获取字段定义字符串
  for i := 0 to Length(a_Col_record) - 1 do
  begin
    // -----字段定义---------------------------------------->col_name_def
    col_tmp_str := '';
    // 每个字段生成数据类型及长度，先判断数据长度是否存在，再判断小数点长度是否存在
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
    // ----插入字段----------------------------------------> col_name_insert
    if i = Length(a_Col_record) - 1 then
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + ']'
    else
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + '],';
    // ----------------------------------------------------> col_name_insert
    // ========查重字段==========================
    if a_Col_record[i].col_rept = '1' then
    begin
      col_rept_name_s := col_rept_name_s + '[' + a_Col_record[i].col_name + '],';
      if (LowerCase(a_Col_record[i].col_type) = 'varchar') then
        col_rept_type_s := col_rept_type_s + '0,' // 字符为0
      else if (LowerCase(a_Col_record[i].col_type) = 'decimal') then
        col_rept_type_s := col_rept_type_s + '1,' // 浮点数1
      else
        col_rept_type_s := col_rept_type_s + '2,'; // 整数2
    end;

    // ===================================
    // ========索引字段==========================
    if a_Col_record[i].col_index = '1' then
      col_ind_name_s := col_ind_name_s + '[' + a_Col_record[i].col_name + '],';
    // ===================================
    // ---openrowset数据集选择字段，可以处理---------------->col_name_deal

    if Length(a_Col_record[i].col_Dict) > 0 then // 编码字段处理
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
        while not fdqryTmp.eof do // 遍历
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
      begin // 若编码字典没有准备好，则直接取字段名
        if i = Length(a_Col_record) - 1 then
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + ']'
        else
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + '],';
      end;
      fdqryTmp.close;
    end
    else // 非编码字段处理
    begin
      if a_Col_record[i].col_date_deal = '1' then // 日期字段处理 ，一般非编码字段才能有日期字段
      begin
        // 日期字段处理 REgex??????如何处理
        col_tmp_str := 'trim(Replace([' + a_Col_record[i].col_name + '],' + '''' + '-' + '''' + ',' + '''''' + ')) [' + a_Col_record[i].col_name + ']';

        if i = Length(a_Col_record) - 1 then
          col_name_deal := col_name_deal + col_tmp_str
        else
          col_name_deal := col_name_deal + col_tmp_str + ',';

      end
      else
      begin // 非日期字段，直接取字段
        // 数字字段含有@N的处理
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
          begin // 以上都不是，为正常字段
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
  if Length(col_rept_name_s) > 0 then // 准备给stringList用
    col_rept_name_s := Copy(col_rept_name_s, 1, Length(col_rept_name_s) - 1);
  if Length(col_rept_type_s) > 0 then //
    col_rept_type_s := Copy(col_rept_type_s, 1, Length(col_rept_type_s) - 1);
  // 去除最后一个字符
  if Length(col_ind_name_s) > 0 then
    col_ind_name_s := Copy(col_ind_name_s, 1, Length(col_ind_name_s) - 1);
  // 去除最后一个字符
  // --------------------------------
  col_name_def := col_name_def + '[id] [bigint] IDENTITY(1,1) not null) ';

  // 根据源表选择数据库链接

  if globle_tab = '0' then
    fdQryExec.Connection := F_DT.FDConProj
  else
    fdQryExec.Connection := F_DT.FDconSYS;

  t1 := Now(); // 获取开始计时时间
  // -------------------------删除临时表-------导入临时表设定为了可以增量导入---------------
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
  // -------------建立临时导入表------------------------------------
  fdQryExec.SQL.Clear;
  sqltext := 'Create table [tb_tmp] ' + col_name_def;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.ExecSQL;
  // fdQryExec.Close;
  // ---------------------------------------------------------------
  // ------------判断导入表是否存在，再根据清空或增量导入选项确定是否删除------------------------------
  sqltext := 'select name from sysobjects where Name =' + '''' + tab_name_en + '''' + ' and type =' + '''' + 'U' + '''';
  fdQryExec.SQL.Clear;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.Open;
  if fdQryExec.RecordCount > 0 then
    is_exist := '1' // 目标表原来已存在
  else
    is_exist := '0';

  // fdQryExec.EnableControls;
  // 若表存在并且清空导入，则删除表，并建立新表
  if (is_exist = '1') and (rb1.Checked) then
  begin
    // 直接删除tb_shzh_gr
    mmo2.Lines.Add('删除原有数据......');
    fdQryExec.SQL.Clear;
    sqltext := 'drop TABLE [' + tab_name_en + ']';
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    // 标记目标表原表不存在
    is_exist := '0';
    // fdQryExec.Close;
  end;
  // // -------------------------------------------------------------------------------------------------------
  // 若表不存在（包括追加导入的情况）或清空导入的，重建新表
  if is_exist = '0' then
  begin
    // 建立导入表，
    mmo2.Lines.Add('建立数据表......');
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

{$REGION '---bcp外部命令生成格式化文件---'}
  // ---2.生成xml格式化文件 bcp hnxlsys.dbo.dict_Type format nul -c -x -f dict_type.xml -t "|" -T------------
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
{$REGION '===手动生成xml文件==='}
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
  // 批量导入--------------------------------------------------------------------
  var
    first_row: Integer;
  if chkTitle.Checked then
    first_row := 2
  else
    first_row := 1;

  // 清空导入，直接导入到表中，增量导入托工tmp表过渡，有个查重的问题
  var
    impTab: string;
  if is_exist = '0' then // 目标表原来不存在，不需tmp过渡
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
    i_dst_cnt := fdQryExec['cnt']; // 原表最大记录数
    mmo2.Lines.Add('删除原表索引准备重建索引……');
    // 获得原有索引----------------------------
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
      // --循环获得索引名,----------------------
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
  mmo2.Lines.Add('数据正在入库……');

  try
    fdQryExec.Connection.StartTransaction;
    // --------insert from bulk---------处理字段，用col_name_deal，否则用col_name_insert-------------------
    fdQryExec.SQL.Clear;
    sqltext := 'SET ANSI_WARNINGS OFF;'; // 截断处理
    fdQryExec.SQL.Add(sqltext);

    sqltext := 'INSERT INTO [' + impTab + ' ](' + col_name_insert + ') ';
    fdQryExec.SQL.Add(sqltext);
    sqltext := 'select ' + col_name_deal;
    fdQryExec.SQL.Add(sqltext);
    // 有限定符和没有限定符要区分。不指定format和fieldqote，分隔符之间的回车算作字符，否则算分隔，导致列数不对 （账户系统数据文件经营范围或地址字段经常被回车换行符号分隔）
    // 不指定csv格式，sql的大容量导入好像根据格式文件自动找到正确的列数）
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
    // ----------------------清空导入或无原始数据的导入，此时导入工作结束--------------------------------------------------------------
    // 若增量方式，则必须从tmp倒回到目标表
    if is_exist = '1' then // 增量方式导入且原来有表数据
    begin
      fdQryExec.SQL.Clear;
      // ====增量方法2 ，利用查重字段============
      if (Length(col_rept_name_s) > 0) and (chkReptCol.Checked) then
      // 若存在查重字段并且要求用此字段，就用查重字段的增量方法，否则用方法一
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
        // ===不用查重字段，用except的方法===
        sqltext := 'INSERT INTO ' + tab_name_en + ' Select ' + col_name_insert + ' From tb_tmp except Select ' + col_name_insert + ' From ' + tab_name_en;
      // ===============
      fdQryExec.SQL.Add(sqltext);
      // fdQryExec.SQL.SaveToFile('importSQLAdd.txt');
      fdQryExec.Prepared;
      fdQryExec.ExecSQL;

      // 获取tmp表记录数（过渡表）
      fdQryExec.SQL.Clear;
      sqltext := 'SELECT Count(*) cnt From tb_tmp';
      fdQryExec.SQL.Add(sqltext);
      fdQryExec.Prepared;
      fdQryExec.Open;
      i_tmp_cnt := fdQryExec['cnt']; // 过渡表记录数

    end;
    // 获取目标表最后记录数
    fdQryExec.SQL.Clear;
    sqltext := 'SELECT Count(*) cnt From ' + tab_name_en;
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.Open;
    i_dst_cnt_all := fdQryExec['cnt']; // 目标表最终记录数
    if i_dst_cnt = 0 then // 目标表原始记录数若为0，
      i_tmp_cnt := i_dst_cnt_all;
    fdQryExec.close;
    // -------------------------------------------------

    // ===建立目标表的非聚集索引===
    if Length(col_ind_name_s) > 0 then // 若存在索引
    // 若存在查重字段并且要求用此字段，就用查重字段的增量方法，否则用方法一
    begin
      mmo2.Lines.Add('建立独立索引……');
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
    // ===建立组合索引===
    if Length(tab_comIndex) > 0 then // 若存在组合索引
    begin

      tab_comIndex := StringReplace(tab_comIndex, #$D#$A, #$A, [rfReplaceAll]); // 替换回车换行为#$A,一个组合索引
      tab_comIndex := StringReplace(tab_comIndex, #$D, #$A, [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, ' ', '', [rfReplaceAll]); // 删除空格
      tab_comIndex := StringReplace(tab_comIndex, '｜', ',', [rfReplaceAll]); // 组合索引字段之间,号相连
      tab_comIndex := StringReplace(tab_comIndex, '，', ',', [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, '；', ',', [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, '|', ',', [rfReplaceAll]);
      tab_comIndex := StringReplace(tab_comIndex, ';', ',', [rfReplaceAll]);
      var
        tab_combIndLst: TStringList;
      tab_combIndLst := TStringList.Create;
      tab_combIndLst.StrictDelimiter := True;
      tab_combIndLst.Delimiter := #$A;
      tab_combIndLst.DelimitedText := tab_comIndex;
      mmo2.Lines.Add('建立组合索引……');
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
    ErrMsg := TRegEx.Replace(ErrMsg, '\[[\S|\s]*\]', ''); // 替换之间字符串为空
    ErrMsg := TRegEx.Replace(ErrMsg, '出现[\S|\s]*\(截断\).', '数据长度超出数据规范长度。'); //
  end;
  fdqryTmp.close;
  fdQryExec.close;
  if FileExists('impFormat.xml') then
    DeleteFile('impFormat.xml');

  if import_OK = '0' then
  begin
    mmo2.Lines.Add(ErrMsg);
    mmo2.Lines.Add('预览或校验此行数据，可在表格最后行查看此列长度情况。');
    mmo2.Lines.Add('--X--导入失败！--X--');
    MessageDlg('导入失败:' + PChar(ErrMsg), mtError, [mbOK], 0);
  end
  else
  begin
    t2 := Now(); // 获取结束计时时间
    r1 := SecondsBetween(t2, t1); // 取得计时时间，单位秒(s)
    r1 := MilliSecondsBetween(t2, t1) / 1000;
    mmo2.Lines.Add('--√--导入成功！--√--');
    mmo2.Lines.Add('本次导入花费时间（' + FormatFloat('0.00', r1) + '秒）。');
    mmo2.Lines.Add('系统原有数据：' + IntToStr(i_dst_cnt) + '条；数据文件：' + IntToStr(i_tmp_cnt) + '条;导入成功：' + IntToStr(i_dst_cnt_all - i_dst_cnt) + '条！');
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
  BatchSize = 1000; // 分批次DML导入数据库的每个批次记录数
var
  FileExt, s_filename, s_error: string; // 文件名、文件编码类型
  a_col_rec_len: Integer; // 规范表字段长度
  i, j, k, i_param, i_tmp, grd_row, i_start, i_max_count: Integer;
  dis_or_Val: Char;
  dis_ok: Char; // 校验错误时为1，显示在grid
  col_tmp_str, rept_tmp_where: string;
  col_name_def, col_name_insert, col_name_param, col_name_deal, sqltext: string;
  col_rept_name_s, col_rept_type_s, col_ind_name_s: string;
  // 查重字段和索引字段 “|” 连接     ,col_rept_type_ls同时记录查重字段的类型，以正确生成where子句时
  col_rept_name_ls, col_rept_type_ls, col_ind_name_ls: TStringList; // 遍历使用
  t1, t2: TDateTime;
  r1: Real;
  // StopWatch: TStopWatch;
  is_exist: Char;
  i_dst_cnt, // 原数据的记录数
  i_tmp_cnt, // 临时表记录数
  i_dst_cnt_all: Integer; // 结果表记录数

  xlBook: TXLBook;
  xlSheet: TXLSheet;
  xl_page, xl_row_cnt, xl_col_cnt, in_ok, in_not, batchMod: Integer;
  // batchMod 为xl_row_cn / BatchSize的余数
  // strFormat, numFormat: TFormat;
  xlCellType: CellType;
  year, month, day: Integer;
  a_colNames: array of string; // Excel每行数据
  cell_str: ansistring; // 单元格数据
  cell_str_all: ansistring; // 单纯连接单元格，根据长度判断本行是否为空
  cell_int: Integer;
  cell_float: Real;
  sl_col_xls_cloc: TStringList;
  // 源表excel处理，a_Col_record[i].col_xls_loc赋值给 sl_xls_colNames.delimetetertetx
  Find_state: Integer; // 记录从数组中查找列表的状态,是指参数带入函数
  colSrcYesXlsNo, // 源表有，excel无
  colSrcNoXlsYes, // Excel有，源表无
  colSrcYesXlsMore // Excel有，源表无
    : string; // 每列错误信息
  // 标记目标表是否存在、是否新建（清空导入或第一次增量导入），若是，就不用tb_tab过渡，加快速度

begin
{$REGION '1.确认清空或新增导入2.设置导入错误文件'}
  if rb1.Checked then
  begin
    if MessageDlg('原有数据将全部清空并用新数据替换，是否确定？', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end
  else
  begin
    if MessageDlg('追加方式导入，因系统需判断查重，数据量较大时，速度较慢！！！是否确定？', mtConfirmation, mbOKCancel, 0) = mrCancel then
    begin
      Abort;
    end;
  end;
  s_error := ExtractFilePath(ParamStr(0)) + 'error.txt'; // 记录导入时的出错信息
  try
    if FileExists(s_error) then
    begin
      DeleteFile(s_error);
      DeleteFile(s_error + '.Error.Txt');
    end;
  finally
  end;
{$ENDREGION}
{$REGION '校验Excel（目前校验基本无效，仅返回原表字段信息a_Col_record，必要时重写）'}
  dis_or_Val := '1'; // 校验，导入时要校验而不是预览，传递给ValidDataXLS
  i_start := 1;
  i_max_count := Min(StrToInt(lbledtValNo.Text), 1000); // 导入时最多校验1000行
  s_filename := Trim(lbledtFileName.Text);
  FileExt := UpperCase(ExtractFileExt(s_filename)); // 文件扩展名
  ValidDataXLS(s_filename, i_start, i_max_count, dis_or_Val);

  // 目前仅读取和显示源表字段信息 （暂未校验）

  if val_falt = '1' then // 存在致命性错误
  begin

    mmo2.Lines.Add('Excel文件部分校验存在致命性错误（（具体错误信息见上）），请修正后再行导入！');
    mmo2.Lines.Add('--X--导入失败--X--');
    MessageDlg('Excel文件部分校验存在致命性错误，无法导入！', mtError, [mbOK], 0);
    exit;
  end;
  if val_warn = '1' then // 存在警告性错误
  begin
    if MessageDlg('Excel文件部分校验存在不符合校验规则数据，是否继续导入？', mtWarning, [mbYes, mbNo], 0) = mrNo then
    begin
      mmo2.Lines.Add('文本文件部分校验存在不符合校验规则数据，选择了不再继续导入。');
      mmo2.Lines.Add('--X--导入失败--X--');
      exit;
    end;
  end;
{$ENDREGION}
{$REGION '根据校验获得组成sql的字段信息'}
  mmo2.Lines.Add('校验了前' + IntToStr(i_max_count) + '行数据，基本不影响数据导入（全部校验请返回后使用校验功能），下面开始导入数据文件……'); // 1.建立数据表
  // 暂停屏幕响应
  // pnl1.Enabled := False;
  // pnl2.Enabled := False;
  // pnl3.Enabled := False;
  fdqryTmp.Connection := F_DT.FDconSYS;
  col_name_def := '('; // 建立字段列表
  col_name_insert := ''; // 插入值
  col_name_param := ''; // 参数字段
  col_name_deal := '';
  col_rept_name_s := ''; // 查重字段连接
  col_rept_type_s := ''; // 每个查重字段的类型
  col_ind_name_s := ''; // 索引字段
  // 获取字段定义字符串
  a_col_rec_len := Length(a_Col_record); // 校验返回a_col_record字段信息数组
  for i := 0 to a_col_rec_len - 1 do
  begin
    // -----字段定义---------------------------------------->col_name_def
    col_tmp_str := '';
    // 每个字段生成数据类型及长度，先判断数据长度是否存在，再判断小数点长度是否存在
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
    // ----插入字段----------------------------------------> col_name_insert
    if i = Length(a_Col_record) - 1 then
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + ']'
    else
      col_name_insert := col_name_insert + '[' + a_Col_record[i].col_name + '],';
    // ----------------------------------------------------> col_name_insert
    // ----参数字段----------------------------------------> col_name_param
    if i = a_col_rec_len - 1 then
      col_name_param := col_name_param + ':val' + IntToStr(i)
    else
      col_name_param := col_name_param + ':val' + IntToStr(i) + ',';
    // ----------------------------------------------------> col_name_param

    // ========查重字段==========================
    if a_Col_record[i].col_rept = '1' then
    begin
      col_rept_name_s := col_rept_name_s + '[' + a_Col_record[i].col_name + '],';
      if (LowerCase(a_Col_record[i].col_type) = 'varchar') then
        col_rept_type_s := col_rept_type_s + '0,' // 字符为0
      else if (LowerCase(a_Col_record[i].col_type) = 'decimal') then
        col_rept_type_s := col_rept_type_s + '1,' // 浮点数1
      else
        col_rept_type_s := col_rept_type_s + '2,'; // 整数2
    end;
    // ===================================
    // ========索引字段==========================
    if a_Col_record[i].col_index = '1' then
      col_ind_name_s := col_ind_name_s + '[' + a_Col_record[i].col_name + '],';
    // ===================================

    // ---openrowset数据集选择字段，可以处理---------------->col_name_deal

    if Length(a_Col_record[i].col_Dict) > 0 then // 编码字段处理
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
        while not fdqryTmp.eof do // 遍历
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
      begin // 若编码字典没有准备好，则直接取字段名
        if i = a_col_rec_len - 1 then
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + ']'
        else
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + '],';
      end;
      fdqryTmp.close;
    end
    else // 非编码字段处理
    begin
      if a_Col_record[i].col_date_deal = '1' then // 日期字段处理 ，一般费编码字段才能有日期字段
      begin
        col_tmp_str := 'trim(Replace([' + a_Col_record[i].col_name + '],' + '''' + '-' + '''' + ',' + '''''' + ')) [' + a_Col_record[i].col_name + ']';
        if i = a_col_rec_len - 1 then
          col_name_deal := col_name_deal + col_tmp_str
        else
          col_name_deal := col_name_deal + col_tmp_str + ',';
      end
      else
      begin // 费日期字段，直接取字段非
        if i = a_col_rec_len - 1 then
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + ']'
        else
          col_name_deal := col_name_deal + '[' + a_Col_record[i].col_name + '],';
      end;

    end;

  end;

  // ----------------------------------------------
  if Length(col_rept_name_s) > 0 then // 准备给stringList用
    col_rept_name_s := Copy(col_rept_name_s, 1, Length(col_rept_name_s) - 1);
  if Length(col_rept_type_s) > 0 then //
    col_rept_type_s := Copy(col_rept_type_s, 1, Length(col_rept_type_s) - 1);
  // 去除最后一个字符
  if Length(col_ind_name_s) > 0 then
    col_ind_name_s := Copy(col_ind_name_s, 1, Length(col_ind_name_s) - 1);
  // 去除最后一个字符
  // --------------------------------
  col_name_def := col_name_def + '[id] [bigint] IDENTITY(1,1) not null) ';
{$ENDREGION}
  // 根据源表选择数据库链接

  if globle_tab = '0' then
    fdQryExec.Connection := F_DT.FDConProj
  else
    fdQryExec.Connection := F_DT.FDconSYS;

{$REGION '临时表处理、目标表、索引删除等处理'}
  t1 := Now(); // 获取开始计时时间
  // StopWatch := TStopWatch.StartNew;

  // fdQryExec.Connection.StartTransaction;
  // -------------------------删除临时表-------导入临时表设定为了可以增量导入---------------
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
  // -------------建立临时导入表------------------------------------
  fdQryExec.SQL.Clear;
  sqltext := 'Create table tb_tmp ' + col_name_def;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.ExecSQL;
  // fdQryExec.Close;
  // ---------------------------------------------------------------
  // ------------判断导入表是否存在，再根据清空或增量导入选项确定是否删除------------------------------
  sqltext := 'select name from sysobjects where Name =' + '''' + tab_name_en + '''' + ' and type =' + '''' + 'U' + '''';
  fdQryExec.SQL.Clear;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.Open;
  if fdQryExec.RecordCount > 0 then
    is_exist := '1' // 目标表原来已存在
  else
    is_exist := '0';

  // fdQryExec.EnableControls;
  // 若表存在并且清空导入，则删除表，并建立新表
  if (is_exist = '1') and (rb1.Checked) then
  begin
    // 直接删除tb_shzh_gr
    mmo2.Lines.Add('删除原有数据......');
    fdQryExec.SQL.Clear;
    sqltext := 'drop TABLE [' + tab_name_en + ']';
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    // 标记目标表原表不存在
    is_exist := '0';
    fdQryExec.close;
  end;
  // // -------------------------------------------------------------------------------------------------------
  // 若表不存在（包括追加导入的情况）或清空导入的，重建新表
  if is_exist = '0' then
  begin
    // 建立导入表，
    mmo2.Lines.Add('建立数据表......');
    fdQryExec.SQL.Clear;
    sqltext := 'CREATE TABLE [' + tab_name_en + '] ' + col_name_def;
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;
    fdQryExec.close;
  end;

  // 清空导入，直接导入到表中，增量导入托工tmp表过渡，有个查重的问题
  var
    impTab: string;
  if is_exist = '0' then // 目标表原来不存在，不需tmp过渡
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
    i_dst_cnt := fdQryExec['cnt']; // 原表最大记录数
    mmo2.Lines.Add('删除原表索引准备重建索引……');
    // 获得原有索引----------------------------
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
      // --循环获得索引名,----------------------
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
  mmo2.Lines.Add('开始数据校验并入库……');
  // ------------------------------------------------------------------------------------------------------------
  mmo2.Lines.Add('Excel数据规范：1.第一行为标题栏；2列标题名称与数据规范确定名称一致；3.关键列（列名）缺少不能导入；4.列位置和多余入其他列不影响导入……');
  // --------------------------------page 、row、col均从0开始---------注意
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
  // mmo2.Lines.Add(s_filename + '文件状态不正常，不能导入，请用WPS或Excel打开修正后再行导入！！！');
  // MessageDlg('文件状态不正常，不能导入，请用WPS或Excel打开修正后再行导入！！！', mtError, [mbOK], 0);
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
    mmo2.Lines.Add(s_filename + '文件状态不正常，不能导入，请用WPS或Excel打开修正后再行导入！！！');
    mmo2.Lines.Add('--X--导入失败--X--');
    MessageDlg('文件状态不正常，不能导入，请用WPS或Excel打开修正后再行导入！！！', mtError, [mbOK], 0);
    // raise Exception.Create(s_filename + '文件可能处于保护状态，不能导入，请修正后再行导入！！！');

    exit;
  end;

  xl_page := xlBook.sheetCount; // excel页数
  in_ok := 0;
  in_not := 0;
  // i_retry := 0;
  sl_col_xls_cloc := TStringList.Create; // 用于判断excel字段名称是否在其中
  sl_col_xls_cloc.StrictDelimiter := True;
  sl_col_xls_cloc.Delimiter := '|';

  for i := 0 to xl_page - 1 do
  begin
    // 一页一页处理
    colSrcYesXlsNo := ''; // 字段信息中，源表有excel没有
    colSrcYesXlsMore := ''; // 字段信息中，源表有excel多余
    colSrcNoXlsYes := ''; // 字段信息中，源表无excel有
    // X.worksheets[j].activate;
    xlSheet := xlBook.getSheet(i);
    if xlSheet.protect then
    begin
      mmo2.Lines.Add('sheet[' + IntToStr(i + 1) + ']为保护状态，不能导入，继续其他数据导入工作……');
      Continue;
    end;
    // i_count := X.ActiveSheet.usedRange.Rows.count;
    xl_row_cnt := xlSheet.lastFilledRow; // 行数
    xl_col_cnt := xlSheet.lastFilledCol; // 列数
    if (xl_row_cnt < 1) or (xl_col_cnt < 1) then
    begin
      mmo2.Lines.Add('sheet[' + IntToStr(i + 1) + ']没有数据，自动忽略，继续下一个Sheet导入……');
      Continue;
    end;
    // ShowMessage(IntToStr(i_count)+'|'+inttostr(j_count));
{$REGION '查找excel中对应标题列，列号保存到a_col_record.xl_col_no'}
    SetLength(a_colNames, xl_col_cnt); // 设定Excel字段数组长度
    for j := 0 to xl_col_cnt - 1 do // 读取当前sheet第一行，保存到字段数组，看是否符合要取的数据
    begin
      a_colNames[j] := Trim(xlSheet.readStr(0, j));
      // 此处可以在grid中展示标题------------------------------------------------------------------------------------------------
      // ShowMessage(colNames[j]);
    end;

    for j := 0 to a_col_rec_len - 1 do
    // 循环规范表字段确定的标题名称，在excel标题中查找，找到为列号，找不到为-1，找多了-2
    begin
      sl_col_xls_cloc.DelimitedText := a_Col_record[j].col_xls_loc;
      a_Col_record[j].xls_col_no := findStrList(Find_state, a_colNames, sl_col_xls_cloc);

      if Find_state = -1 then
      begin
        colSrcYesXlsNo := colSrcYesXlsNo + '<' + a_Col_record[j].col_xls_loc + '>';
        if a_Col_record[j].col_reg_ok = '1' then
          val_falt := '1'
        else
          val_warn := '1'; // 若为关键字段，导入无意义，则退出
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
      if k = a_col_rec_len then // 循环结束且循环值大于终止值，说明未找到
        colSrcNoXlsYes := colSrcNoXlsYes + '<' + a_colNames[j] + '>'
    end;

    if Length(colSrcYesXlsNo) > 0 then
    begin
      colSrcYesXlsNo := '_sheet[' + IntToStr(i + 1) + ']:' + colSrcYesXlsNo;
      mmo2.Lines.Add('规范中如下字段Excel表未提供：' + colSrcYesXlsNo + '……');
    end;

    if Length(colSrcYesXlsMore) > 0 then
    begin
      colSrcYesXlsMore := '_sheet[' + IntToStr(i + 1) + ']:' + colSrcYesXlsMore;
      mmo2.Lines.Add('规范中如下字段Excel表提供重复字段：' + colSrcYesXlsMore + '读入第一个符合规范的数据列……');
    end;

    // 找未记录的excel列
    if Length(colSrcNoXlsYes) > 0 then
    begin
      colSrcNoXlsYes := '_sheet[' + IntToStr(i + 1) + ']:' + colSrcNoXlsYes;
      mmo2.Lines.Add('Excel表中如下数据列不在规范内或为重复数据列:' + colSrcNoXlsYes + '，这些数据列不导入，但不影响其他数据列的导入……');
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
      mmo2.Lines.Add('规范中如下字段Excel表未提供：' + colSrcYesXlsNo + '，其中包含关键字段，严重影响数据分析，不能导入！');
      mmo2.Lines.Add('--X--导入失败--X--');
      MessageDlg('Excel表关键字段未提供，不能导入，请修正后再导入！！！', mtError, [mbOK], 0);
      // raise Exception.Create(s_filename + '文件可能处于保护状态，不能导入，请修正后再行导入！！！');
      exit;
    end;

{$ENDREGION}
    //
    // 准备数据集，导入到tmp表

    fdQryExec.SQL.Clear;
    sqltext := 'INSERT INTO ' + impTab + ' (' + col_name_insert + ') VALUES (' + col_name_param + ')';
    fdQryExec.SQL.Text := sqltext;
    fdQryExec.Params.Bindmode := pbByNumber; { more efficient than by name }
    // fdQryExec.Params.ArraySize := xl_row_cnt - 1; { large enough to load all of them }
    batchMod := (xl_row_cnt - 1) mod BatchSize; // 最后一批的记录数
    fdQryExec.Params.ArraySize := BatchSize; // 分批次DML方式导入，1批暂定1000
    i_param := 0; // 数组参数循环，用于剔除空数据
    for j := 1 to xl_row_cnt - 1 do
    // 遍历excel记录从第二行到最后一行   --------------------------------------？行数要-1
    begin

      cell_str_all := ''; // 单纯连接excel每条记录的字段，根据长度判断词条记录是否为空

      for k := 0 to a_col_rec_len - 1 do // 遍历规范表字段,同时获得插入值
      begin
        // grd_row := strngrd1.RowCount;
        // strngrd1.RowCount := grd_row + 1; // grid增加一行
        // ----------------读取一个cell到cell_str------------------------------
        i_tmp := a_Col_record[k].xls_col_no; // excel中列号

        if i_tmp < 0 then // 若列号小于0，直接赋予参数并继续字段循环
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

{$REGION 'i_tmp>=0,根据单元格类型，读取单元格、校验、参数赋值'}
        // 若是日期
        if a_Col_record[k].col_date_deal = '1' then
        begin
          if xlSheet.isDate(j, i_tmp) then
          begin
            xlBook.dateUnpack(xlSheet.readNum(j, i_tmp), year, month, day);
            cell_str := IntToStr(year) + StringOfChar('0', 2 - Length(IntToStr(month))) + IntToStr(month) + StringOfChar('0', 2 - Length(IntToStr(day))) + IntToStr(day);
          end
          else
          begin
            cell_str := Trim(xlSheet.readStr(j, i_tmp)); // 非日期格式直接读字符串，但后面要处理
            // 若含有分隔字段，则取出年月日合并
            var
              m: TMatch;
            var
              sYear, sMonth, sDay: string;
            m := TRegEx.Match(cell_str, '^(\d{4})[|\-|\/|\.|年]?(\d{1,2})[|\-|\/|\.|月]?(\d{1,2})[日]?$');
            // 此处只考虑提取年月日的数字并形成yyymmdd格式，不考虑合理性，合理性可在字典中的校验表达式考虑
            if m.Groups.Count = 4 then // 若匹配值数量不是4个，则cell_str不处理，正则表达式时也不会通过
            begin
              // cell_str := m.Groups.Item[0].Value;
              // 提取日期中的数字
              sYear := m.Groups.Item[1].Value;
              sMonth := m.Groups.Item[2].Value;
              sDay := m.Groups.Item[3].Value;
              // 不足的位数补0
              cell_str := StringOfChar('0', 4 - Length(sYear)) + sYear + StringOfChar('0', 2 - Length(sMonth)) + sMonth + StringOfChar('0', 2 - Length(sDay)) + sDay;
            end
            else
            begin
              if (Length(cell_str) <> 0) and (UpperCase(cell_str) <> '@N') then
                mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:第' + IntToStr(j + 1) + '行第' + IntToStr(i_tmp + 1) + '列' + a_Col_record[k].col_name_cn + '数据“' + cell_str +
                  '”，不符合日期表达式规范yyyymmdd或yyyy-mm-dd或yyyy/mm/dd或yyyy.mm.dd或yyyy年mm月dd日！');
            end;

          end;
        end
        else
          cell_str := Trim(xlSheet.readStr(j, i_tmp));
        // ------------------------------字段长度校验-------------------------------------------------------
        if (Length(cell_str) > StrToInt(a_Col_record[k].col_len)) and (StrToInt(a_Col_record[k].col_len) > 0) then
        // col_len已转换为有数字。源表数据字段含有长度时才判断长度，无长度信息，依赖正则判断
        begin
          dis_ok := '1';
          val_falt := '1';
          mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:第' + IntToStr(j) + '行第' + IntToStr(i_tmp) + '列“' + a_Col_record[i].col_name_cn + '”数据为“' + cell_str + '”，长度' +
            IntToStr(Length(cell_str)) + '大于数据规范长度，数据无法导入！');
        end;
        // -------------------------------------------------------------------------------------------------
        // 正则表达式校验（数字类型的正则表达式不符合校验规则也无法导入）-----------------------
        if Length(a_Col_record[k].col_reg_str) <> 0 then
        begin
          if not TRegEx.IsMatch(cell_str, a_Col_record[k].col_reg_str, [roIgnorePatternSpace]) then
          begin
            dis_ok := '1';
            if a_Col_record[k].col_reg_ok = '1' then // 强制校验
            begin
              mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:第' + IntToStr(j + 1) + '行第' + IntToStr(i_tmp + 1) + '列' + a_Col_record[k].col_name_cn + '数据“' + cell_str + '”，不符合“' +
                a_Col_record[k].col_reg + '”强制校验规则，数据无法导入！');
              val_falt := '1';
            end
            else
            begin
              mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:第' + IntToStr(j + 1) + '行第' + IntToStr(i_tmp + 1) + '列' + a_Col_record[k].col_name_cn + '数据“' + cell_str + '”，不符合“' +
                a_Col_record[k].col_reg + '”校验规则。可以导入数据，但影响数据分析准确性！');
              val_warn := '1';
            end;
          end
        end;
        // ------------------------------------------------------------------------------------
        // -----------数组参数赋值--------
        cell_str_all := cell_str_all + cell_str; // 本行所有有用单元格合并
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
          // 日期要转换

          fdQryExec.Params[k].AsStrings[i_param] := cell_str;
        end
        // ------------------------------
{$ENDREGION}
      end; // 字段循环完毕

      if val_falt = '1' then
      begin
        fdQryExec.Connection.rollback;
        col_rept_name_ls.Free;
        col_rept_type_ls.Free;
        col_ind_name_ls.Free;
        sl_col_xls_cloc.Free;
        xlBook.Free;
        fdQryExec.close;
        mmo2.Lines.Add('存在数据长度超出规范或不符合强制校验规则的数据，不能导入，请修正后再导入！！！');
        mmo2.Lines.Add('--X--导入失败--X--');
        MessageDlg('存在数据长度超出规范或不符合强制校验规则的数据，不能导入，请修正后再导入！', mtError, [mbOK], 0);
        // raise Exception.Create(s_filename + '文件可能处于保护状态，不能导入，请修正后再行导入！！！');
        exit; // ?处理前面已导入的数据
      end;

      // 分批次插入记录

      // if Length(Trim(cell_str_all)) < a_col_rec_len then
      // begin
      // fdQryExec.Params.ArraySize := fdQryExec.Params.ArraySize - 1;
      // mmo2.Lines.Add('_sheet[' + IntToStr(i + 1) + ']:第' + IntToStr(j + 1) + '行数据为空，跳过继续导入……');
      // Continue;
      // end
      // else
      // Inc(i_param);
      if (j = xl_row_cnt - 1) then // 到了最后一条记录
        if j < BatchSize then
          fdQryExec.Params.ArraySize := j
        else if batchMod > 0 then
          fdQryExec.Params.ArraySize := batchMod;

      if (i_param = BatchSize - 1) or (j = xl_row_cnt - 1) then
      begin
        fdQryExec.Execute(fdQryExec.Params.ArraySize);
        // 此处应分批次执行，否则out of memory
        i_param := 0;
      end
      else
        Inc(i_param); // 参数+1

    end; // excel记录循环完毕
    // fdQryExec.Params.ArraySize := NumParams;  { Reset to actual number }

  end;

  sl_col_xls_cloc.Free;
  xlBook.Free;
  fdQryExec.close;

  // -------------------------------------------------------------------------------------------------------------------------------------------------
  // --------insert from bulk---------处理字段，用col_name_deal，否则用col_name_insert-------------------
  // ----------------------清空导入或无原始数据的导入，此时导入工作结束--------------------------------------------------------------
  // 若增量方式，则必须从tmp倒回到目标表
  if is_exist = '1' then // 增量方式导入且原来有表数据
  begin
    fdQryExec.SQL.Clear;
    // ====增量方法2 ，利用查重字段============
    if (Length(col_rept_name_s) > 0) and (chkReptCol.Checked) then
    // 若存在查重字段并且要求用此字段，就用查重字段的增量方法，否则用方法一
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
      // ===不用查重字段，用except的方法===
      sqltext := 'INSERT INTO ' + tab_name_en + ' Select ' + col_name_insert + ' From tb_tmp except Select ' + col_name_insert + ' From ' + tab_name_en;
    // ===============
    fdQryExec.SQL.Add(sqltext);
    // fdQryExec.SQL.SaveToFile('importSQLAdd.txt');
    fdQryExec.Prepared;
    fdQryExec.ExecSQL;

    // 获取tmp表记录数（过渡表）
    fdQryExec.SQL.Clear;
    sqltext := 'SELECT Count(*) cnt From tb_tmp';
    fdQryExec.SQL.Add(sqltext);
    fdQryExec.Prepared;
    fdQryExec.Open;
    i_tmp_cnt := fdQryExec['cnt']; // 过渡表记录数

  end;
  // 获取目标表最后记录数
  fdQryExec.SQL.Clear;
  sqltext := 'SELECT Count(*) cnt From ' + tab_name_en;
  fdQryExec.SQL.Add(sqltext);
  fdQryExec.Prepared;
  fdQryExec.Open;
  i_dst_cnt_all := fdQryExec['cnt']; // 目标表最终记录数
  if i_dst_cnt = 0 then // 目标表原始记录数若为0，
    i_tmp_cnt := i_dst_cnt_all;
  fdQryExec.close;

  // ===建立目标表的非聚集索引===
  if Length(col_ind_name_s) > 0 then // 若存在索引
  // 若存在查重字段并且要求用此字段，就用查重字段的增量方法，否则用方法一
  begin
    mmo2.Lines.Add('建立索引……');
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
  // ===建立组合索引===
  if Length(tab_comIndex) > 0 then // 若存在组合索引
  begin

    tab_comIndex := StringReplace(tab_comIndex, #$D#$A, #$A, [rfReplaceAll]); // 替换回车换行为#$A,一个组合索引
    tab_comIndex := StringReplace(tab_comIndex, #$D, #$A, [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, ' ', '', [rfReplaceAll]); // 删除空格
    tab_comIndex := StringReplace(tab_comIndex, '｜', ',', [rfReplaceAll]); // 组合索引字段之间,号相连
    tab_comIndex := StringReplace(tab_comIndex, '，', ',', [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, '；', ',', [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, '|', ',', [rfReplaceAll]);
    tab_comIndex := StringReplace(tab_comIndex, ';', ',', [rfReplaceAll]);
    var
      tab_combIndLst: TStringList;
    tab_combIndLst := TStringList.Create;
    tab_combIndLst.StrictDelimiter := True;
    tab_combIndLst.Delimiter := #$A;
    tab_combIndLst.DelimitedText := tab_comIndex;
    mmo2.Lines.Add('建立组合索引……');
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
  t2 := Now(); // 获取结束计时时间
  fdQryExec.close;

  // StopWatch.Stop;
  r1 := SecondsBetween(t2, t1); // 取得计时时间，单位秒(s)
  r1 := MilliSecondsBetween(t2, t1) / 1000;

  mmo2.Lines.Add('--√--导入成功！--√--');
  mmo2.Lines.Add('本次导入花费时间（' + FormatFloat('0.00', r1) + '秒）。');
  // mmo2.Lines.Add('本次导入花费时间（' + IntToStr(StopWatch.ElapsedMilliseconds) + '秒）。');
  mmo2.Lines.Add('系统原有数据：' + IntToStr(i_dst_cnt) + '条；数据文件：' + IntToStr(i_tmp_cnt) + '条;导入成功：' + IntToStr(i_dst_cnt_all - i_dst_cnt) + '条！');
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
  lbl2.Caption := '编码格式：';
  Label1.Caption := '数据行数:';
  lbl3.Caption := '';
  lbl_line.Caption := '';
  if IfIncludeKG(lbledtFileName.Text) then
  begin
    MessageDlg('文件名或所在目录名中包含空格，请修正文件名或将文件放在不含空格的目录中！！', mtInformation, [mbOK], 0);
    exit;
  end;
  if not FileExists(lbledtFileName.Text) then
  begin
    MessageDlg('文件不存在！', mtInformation, [mbOK], 0);
    exit;
  end;

  pnl1.Enabled := False;
  pnl2.Enabled := False;
  pnl3.Enabled := False;
  // 首先文件头判断是否utf8格式
  txt_type := GetTextType(lbledtFileName.Text);
  if txt_type = 'Utf8' then
  begin
    txt_type := 'BOM测试为' + txt_type + '编码格式';
    is_utf8 := True;
  end
  else
  begin
    if txt_type = 'Ansi' then
    // 如果BOM方式判断为Ansi，也可能无文件头，需要全文判断
    begin
      // 全文判断字符串编码格式 ----------------------------------
      if IsUtf8File(lbledtFileName.Text) then
      begin
        txt_type := '全文测试为utf8编码';
        is_utf8 := True;
      end
      else
      begin
        txt_type := '全文测试为Ansi编码';
        is_utf8 := False;
      end
    end
    else
    begin
      txt_type := 'BOM测试为' + txt_type + '编码格式';
      is_utf8 := False;
    end;
  end;
  // 编码消息展示
  lbl3.Caption := txt_type;
  // 设定导入编码
  if is_utf8 then
    cbbCode.ItemIndex := 1
  else
    cbbCode.ItemIndex := 0;
  // if txt_type <> 'Ansi' then
  // begin
  // Application.MessageBox('该文件文本编码格式不符合检查数据接口规范，无法进行数据校验！（应为ansi格式）!', '', MB_OK +
  // MB_ICONSTOP);
  // exit;
  // end;
  mmo2.Visible := True;
  // mmo1.Clear;
  mmo2.Clear;
  mmo2.Lines.Add('开始统计文本信息……');
  mmo2.Refresh;

  // 读取文件计算行数     AssignFile方式必须要求文件没有被打开，采取流的方式。解码不正确行数也不正确
  if is_utf8 then
    SR := TStreamReader.Create(lbledtFileName.Text, TEncoding.UTF8)
  else
    SR := TStreamReader.Create(lbledtFileName.Text, TEncoding.ansi);

  i := 0;
  b_stop := False;
  try
    while not SR.EndOfStream do
    // 注意检查 EndOfStream 状态
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

{$REGION '文本文件方式注释'}
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
  // 清理程序内存
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
  lbl_line.Caption := FormatFloat('###,###,###', i - 1);
  if b_stop then
    lbl_line.Caption := lbl_line.Caption + '(中断)';
  // rxgfnmtr1.FrameIndex := 0;
  // rxgfnmtr1.Animate := False;
  pnl1.Enabled := True;
  pnl2.Enabled := True;
  pnl3.Enabled := True;

  if b_stop then
    mmo2.Lines.Add('文本信息统计中断，但仍可查看和校验文本文件……')
  else
    mmo2.Lines.Add('OK！文本信息统计完毕……');
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
  lbl2.Caption := '工作簿数量：';
  Label1.Caption := '数据总行数:';
  lbl3.Caption := '';
  lbl_line.Caption := '';
  if IfIncludeKG(lbledtFileName.Text) then
  begin
    MessageDlg('文件名或所在目录名中包含空格，请修正文件名或将文件放在不含空格的目录中！！', mtInformation, [mbOK], 0);
    exit;
  end;
  if not FileExists(lbledtFileName.Text) then
  begin
    MessageDlg('文件不存在！', mtInformation, [mbOK], 0);
    exit;
  end;
  // pnl1.Enabled := False;
  // pnl2.Enabled := False;
  // pnl3.Enabled := False;
  // 首先文件头判断是否utf8格式
  // 清理程序内存
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
  lbl_line.Caption := FormatFloat('###,###,###', i - 1);
  if b_stop then
    lbl_line.Caption := lbl_line.Caption + '(中断)';
  // rxgfnmtr1.FrameIndex := 0;
  // rxgfnmtr1.Animate := False;
  pnl1.Enabled := True;
  pnl2.Enabled := True;
  pnl3.Enabled := True;

  if b_stop then
    mmo2.Lines.Add('文本信息统计中断，但仍可查看和校验文本文件……')
  else
    mmo2.Lines.Add('OK！文本信息统计完毕……');
end;

end.
