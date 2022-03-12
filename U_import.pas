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
    MessageDlg('û��ѡ������ļ���', mtInformation, [mbOK], 0);
    exit;
  end;

  if IfIncludeKG(s_filename) then
  begin
    MessageDlg('�ļ���������Ŀ¼���а����ո��������ļ������ļ����ڲ����ո��Ŀ¼�У��ٵ��룡', mtInformation,
      [mbOK], 0);
    exit;
  end;
  if not FileExists(s_filename) then
  begin
    MessageDlg('�ļ������ڣ�', mtInformation, [mbOK], 0);
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
    if rb1.Checked then // �滻����
    begin
      if Application.MessageBox('�滻��ʽ���뽫��ʹԭ�м��ģ�Ͷ�ʧ��ȷ����', 'ע��',
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
    if rb2.Checked then // ��������
    begin
      if Application.MessageBox('������ʽ���뽫����ԭ�м��ģ�ͣ������ڿ���ģʽ�½��µļ��ģ�͹�����Ӧ���ȷ����',
        'ע��', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
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
    // ����߼��汾�ż�¼
    s_filename_set := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename_set);
    MyIniFile.WriteString('Base', 'Jclj_Ver', Trim(s_Jclj_Ver));
    t_Jclj_Ver := s_Jclj_Ver;
    // MyIniFile.WriteString('other','AreaCode',Trim(cxtxtdt2.Text));
    MyIniFile.Free;
    MessageDlg('���ģ�͵���ɹ�!', mtInformation, [mbOK], 0);
    Close;
  except
    F_DT.ADOCN1.RollbackTrans;
    raise exception.Create('���ݵ���ʱ���ִ������������ļ�!');
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
