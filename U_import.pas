unit U_import;

interface

uses U_DT, U_Common,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit, DB, ADODB,
  StdCtrls, Buttons, cxInplaceContainer, cxDBTL, cxControls, cxTLData,
  ExtCtrls, Mask, IniFiles, Vcl.ExtDlgs;

type
  TF_import = class(TForm)
    btn1: TBitBtn;
    ADOqr1: TADOQuery;
    ADOqr2: TADOQuery;
    btn2: TBitBtn;
    rg1: TRadioGroup;
    rb1: TRadioButton;
    rb2: TRadioButton;
    ADOqr3: TADOQuery;
    ADOtmp: TADOQuery;
    OpenTextFileDialog1: TOpenTextFileDialog;
    pnlFileName: TPanel;
    lbledtFileName: TLabeledEdit;
    spbtnFileName: TSpeedButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbtnFileNameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_import: TF_import;

implementation

{$R *.dfm}

procedure TF_import.btn1Click(Sender: TObject);
var
  s_filepath, s_filename, s_filename_set, s_Jclj_Ver: string;
  i, ii_max: Integer;
  MyIniFile: TIniFile;
begin
  s_filename := Trim(StringReplace(lbledtFileName.Text, '"', '',
    [rfReplaceAll]));
  s_Jclj_Ver := ExtractFileName(s_filename);
  if Length(s_filename) = 0 then
  begin
    MessageDlg('没有选择导入的文件！', mtInformation, [mbOK], 0);
    exit;
  end;

  if IfIncludeKG(s_filename) then
  begin
    MessageDlg('文件名或所在目录名中包含空格，请修正文件名或将文件放在不含空格的目录中，再导入！', mtInformation,
      [mbOK], 0);
    exit;
  end;
  if not FileExists(s_filename) then
  begin
    MessageDlg('文件不存在！', mtInformation, [mbOK], 0);
    exit;
  end;
  with ADOqr1 do
  begin
    Close;
    DisableControls;
    Connection := F_DT.ADOCN1;
    CursorLocation := clUseClient;
    CursorType := ctStatic;
    LockType := ltBatchOptimistic;
    SQL.Clear;
    SQL.Add('SELECT * FROM "X_menus" order by t_id');
    Prepared;
    Open;
    enableControls;
  end;
  with ADOqr2 do
  begin
    LoadFromFile(s_filename);
  end;
  try
    F_DT.ADOCN1.BeginTrans;
    if rb1.Checked then // 替换导入
    begin
      if Application.MessageBox('替换方式导入将会使原有检查模型丢失，确定吗？', '注意',
        MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
      begin
        F_DT.ADOCN1.RollbackTrans;
        exit;
      end;
      with ADOqr3 do
      begin
        Close;
        DisableControls;
        Connection := F_DT.ADOCN1;
        CursorLocation := clUseClient;
        CursorType := ctStatic;
        LockType := ltBatchOptimistic;
        SQL.Clear;
        SQL.Add('TRUNCATE TABLE "X_menus"');
        Prepared;
        ExecSQL;
      end;
      ADOqr2.LoadFromFile(s_filename);
      ADOqr2.Open;
      ADOqr2.First;
      while not ADOqr2.Eof do
      begin
        ADOqr1.Append;
        for i := 0 to ADOqr2.FieldCount - 1 do
          ADOqr1.Fields[i].Value := ADOqr2.Fields[i].Value;
        ADOqr2.Next;
        ADOqr1.UpdateBatch(arAll);
      end;
    end;
    if rb2.Checked then // 新增导入
    begin
      if Application.MessageBox('新增方式导入将保留原有检查模型，但需在开放模式下将新的检查模型归入相应类别，确定吗？',
        '注意', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
      begin
        F_DT.ADOCN1.RollbackTrans;
        exit;
      end;
      with ADOtmp do
      begin
        Close;
        DisableControls;
        Connection := F_DT.ADOCN1;
        SQL.Clear;
        SQL.Add('SELECT max(t_id) as i_max FROM "X_menus"');
        Prepared;
        Open;
        enableControls;
        First;
        if not Eof then
          ii_max := FieldByName('i_max').AsInteger
        else
          ii_max := 0;
        DisableControls;
        Close;
      end;
      ADOqr2.LoadFromFile(s_filename);
      ADOqr2.Open;
      ADOqr2.First;
      while not ADOqr2.Eof do
      begin
        ADOqr1.Append;
        ADOqr1.FieldValues['t_id'] := ADOqr2.FieldValues['t_id'] + ii_max + 1;
        ADOqr1.FieldValues['t_parent_id'] := ADOqr2.FieldValues['t_parent_id'] +
          ii_max + 1;
        ADOqr1.FieldValues['t_order'] := ADOqr2.FieldValues['t_parent_id'] +
          ii_max + 1;
        for i := 2 to ADOqr2.FieldCount - 2 do
          ADOqr1.Fields[i].Value := ADOqr2.Fields[i].Value;
        ADOqr2.Next;
        ADOqr1.UpdateBatch(arAll);
      end;
    end;
    F_DT.ADOCN1.CommitTrans;
    // 检查逻辑版本号记录
    s_filename_set := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename_set);
    MyIniFile.WriteString('Base', 'Jclj_Ver', Trim(s_Jclj_Ver));
    t_Jclj_Ver := s_Jclj_Ver;
    // MyIniFile.WriteString('other','AreaCode',Trim(cxtxtdt2.Text));
    MyIniFile.Free;
    MessageDlg('检查模型导入成功!', mtInformation, [mbOK], 0);
    Close;
  except
    F_DT.ADOCN1.RollbackTrans;
    raise exception.Create('数据导入时发现错误，请检查数据文件!');
  end;
end;

procedure TF_import.FormCreate(Sender: TObject);
begin
  lbledtFileName.Text := DateToStr(Now) + '.Mod';
end;

procedure TF_import.spbtnFileNameClick(Sender: TObject);
begin
  if OpenTextFileDialog1.Execute then
  begin
    lbledtFileName.Text := OpenTextFileDialog1.FileName;
    // showmessage(OpenTextFileDialog1.FileName);
  end;
end;

procedure TF_import.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TF_import.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOqr1.Close;
  ADOqr2.Close;
  ADOqr3.Close;
end;

end.
