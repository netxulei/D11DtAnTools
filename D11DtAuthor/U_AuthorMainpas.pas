unit U_AuthorMainpas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    FDConnection1: TFDConnection;
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
    ButtonedEdit2: TButtonedEdit;
    Label1: TLabel;
    BtnEdtReSult: TButtonedEdit;
    Label2: TLabel;
    DateBgn: TDateTimePicker;
    Label3: TLabel;
    DateEnd: TDateTimePicker;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Splitter1: TSplitter;
    procedure BtnEdtReSultLeftButtonClick(Sender: TObject);
    procedure BtnEdtReSultRightButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnEdtReSultLeftButtonClick(Sender: TObject);
begin
  showmessage('LeftButton');
end;

procedure TForm1.BtnEdtReSultRightButtonClick(Sender: TObject);
begin
  showmessage('RightButton');
end;

procedure TForm1.FormCreate(Sender: TObject);
const
  dbPath = 'DtAuthor';
var
  dbname: string;
begin
  dbname := ExtractFilePath(ParamStr(0)) + dbPath;

  if not FileExists(dbname) then // 如果数据库文件不存在则建立sqlite3数据库
  begin
    with FDConnection1 do
    begin
      Params.Add('DriverID=SQLite');
      Params.Add('Database=' + dbname);
      Connected := True;
    end;
    { 创建一个名为 MyTable 的表, 字段包括: ID, Name, Age, Note, Picture }
    with FDCommand1.CommandText do
    begin
      Add('CREATE TABLE DtAuthor(');
      Add('ID integer PRIMARY KEY,'); // Integer 类型, 同时设为主键
      Add('dbId string(40),'); // 能容下 40 个字符的 String 类型
      Add('dateBgn string(8),');
      Add('dateEnd string(8),');
      Add('AuthorCode string(40),');
      Add('dateAuth string(8)');
      Add(')');
    end;
    FDCommand1.Active := True;
    { 查看表 }
    FDQuery1.Open('SELECT * FROM  DtAuthor');
  end;

end;

end.
