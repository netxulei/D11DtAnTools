unit U_AuthorMainpas;

interface

uses
  RegularExpressions, JMCode, EncdDecd, StrUtils, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.Grids, Vcl.ValEdit, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef, FireDAC.Comp.UI, FireDAC.Phys.SQLite,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.DBGrids, FireDAC.Comp.DataSet, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    FDCommand1: TFDCommand;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDQuery1ID: TIntegerField;
    FDQuery1dbId: TWideStringField;
    FDQuery1dateBgn: TWideStringField;
    FDQuery1dateEnd: TWideStringField;
    FDQuery1AuthorCode: TWideStringField;
    FDQuery1dateAuth: TWideStringField;
    Panel1: TPanel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    BtnEdtDbID: TButtonedEdit;
    Label1: TLabel;
    BtnEdtReSult: TButtonedEdit;
    Label2: TLabel;
    DateBgn: TDateTimePicker;
    Label3: TLabel;
    DateEnd: TDateTimePicker;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FDConnection1: TFDConnection;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BtnEdtDbIDRightButtonClick(Sender: TObject);
    procedure BtnEdtReSultRightButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnEdtDbIDRightButtonClick(Sender: TObject);
var
  sFilename, s: string;
  F: TextFile;
begin
  if OpenDialog1.Execute() then
  begin
    sFilename := OpenDialog1.FileName;
    AssignFile(F, sFilename);
    Reset(F); // ֻ����
    Readln(F, s); // ��ȡ
    CloseFile(F);
    BtnEdtDbID.Text := trim(s);
  end;
end;

procedure TForm1.BtnEdtReSultRightButtonClick(Sender: TObject);
var
  sFilename, s: string;
  F: TextFile;
begin
  if Length(BtnEdtReSult.Text) = 0 then
  begin
    MessageDlg('��Ȩ��δ���ɣ����ܵ���', mtInformation, [mbOK], 0);
    exit;
  end;
  SaveDialog1.FileName := BtnEdtDbID.Text + '.Aut';
  if SaveDialog1.Execute() then
  begin
    sFilename := SaveDialog1.FileName;
    AssignFile(F, sFilename);
    Rewrite(F); // �Ḳ���Ѵ��ڵ��ļ�
    Writeln(F, BtnEdtReSult.Text);
    CloseFile(F);
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  v_key, codeID, codeBgn, codeEnd, sDateBgn, sDateEnd: string;
begin

  v_key := rightstr(trim(BtnEdtDbID.Text), 4);
  BtnEdtDbID.Text := trim(BtnEdtDbID.Text);
  sDateBgn := FormatDateTime('YYYYMMDD', DateBgn.Date);
  sDateEnd := FormatDateTime('YYYYMMDD', DateEnd.Date);
  if Length(BtnEdtDbID.Text) = 0 then
  begin
    MessageDlg('������Ϊ�գ�������Ȩ', mtInformation, [mbOK], 0);
    exit;
  end;
  if DateEnd.Date <= DateBgn.Date then
  begin
    MessageDlg('������Ȩ����ʱ����������ʼʱ��', mtInformation, [mbOK], 0);
    exit;
  end;
  if FDQuery1.Locate('dbid;dateBgn;dateEnd', VarArrayOf([BtnEdtDbID.Text, sDateBgn, sDateEnd])) then
  begin
    MessageDlg('�����������Ȩ��������Ȩ', mtInformation, [mbOK], 0);
    exit;
  end;
  codeID := EncrypKey(EncodeString(BtnEdtDbID.Text), EncodeString(v_key)); // ��������
  codeBgn := EncrypKey(EncodeString(sDateBgn), EncodeString(v_key)); // ��������
  codeEnd := EncrypKey(EncodeString(sDateEnd), EncodeString(v_key)); // ��������
  BtnEdtReSult.Text := codeID + '-' + codeBgn + '-' + codeEnd;
  FDQuery1.Append;
  FDQuery1['dbId'] := trim(BtnEdtDbID.Text);
  FDQuery1['dateBgn'] := sDateBgn;
  FDQuery1['dateEnd'] := sDateEnd;
  FDQuery1['AuthorCode'] := BtnEdtReSult.Text;
  FDQuery1['dateAuth'] := FormatDateTime('YYYYMMDDHHMMSS', Now());
  FDQuery1.Post;
  FDQuery1.Refresh;
  // ShowMessage(DecodeString(UncrypKey(codeID, EncodeString(v_key)))); // ���ܺ����);
  // ShowMessage(DecodeString(UncrypKey(codeBgn, EncodeString(v_key)))); // ���ܺ����);
  // ShowMessage(DecodeString(UncrypKey(codeEnd, EncodeString(v_key)))); // ���ܺ����);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
var
  AFormat: TFormatSettings;
begin
  if FDQuery1.Eof then
    exit;
  AFormat.ShortDateFormat := 'YYYYMMDD';
  BtnEdtDbID.Text := FDQuery1['dbId'];
  DateBgn.Date := StrToDate(FDQuery1['dateBgn'], AFormat);
  DateEnd.Date := StrToDate(FDQuery1['dateEnd'], AFormat);
  BtnEdtReSult.Text := FDQuery1['AuthorCode'];
end;

procedure TForm1.FormCreate(Sender: TObject);
const
  dbPath = 'DtAuthor';
var
  dbname: string;
begin

  // Application.CreateForm(TFrmpass, Frmpass); // ����para_inputOK�����Ƿ�¼��ɹ�
  // Frmpass.ShowModal;

  dbname := ExtractFilePath(ParamStr(0)) + dbPath;
//  showmessage(dbname);

  with FDConnection1 do
  begin
    Params.Add('DriverID=SQLite');
    Params.Add('Database=' + dbname);
  end;
  if not FileExists(dbname) then // ������ݿ��ļ�����������sqlite3���ݿ�
  begin
    { ����һ����Ϊ MyTable �ı�, �ֶΰ���: ID, Name, Age, Note, Picture }
    with FDCommand1.CommandText do
    begin
      Add('CREATE TABLE DtAuthor(');
      Add('ID integer PRIMARY KEY,'); // Integer ����, ͬʱ��Ϊ����
      Add('dbId string(40),'); // ������ 40 ���ַ��� String ����
      Add('dateBgn string(8),');
      Add('dateEnd string(8),');
      Add('AuthorCode string(400),');
      Add('dateAuth string(20)');
      Add(')');
    end;
    FDCommand1.Active := True;
    { �鿴�� }
  end;
  FDConnection1.Connected := True;
  FDQuery1.Open('SELECT * FROM  DtAuthor');
  DateBgn.Date := Now();
  DateEnd.Date := Now();

end;

end.
