unit U_DT;

interface

uses
  SysUtils, Classes, DB, ADODB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, System.ImageList, Vcl.ImgList, Vcl.Controls, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TF_DT = class(TDataModule)
    FDConSYS: TFDConnection;
    FDConProj: TFDConnection;
    FDconGen: TFDConnection;
    FDConSysTmp: TFDConnection;
    FDConProjTmp: TFDConnection;
    imgLstStat: TImageList;
    FDConSQLite: TFDConnection;
    FDqryTmp: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_DT: TF_DT;

implementation

{$R *.dfm}

procedure TF_DT.DataModuleCreate(Sender: TObject);
begin


//  ADOCN1.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_sys_dbname + ';Data Source=' + sComputerName;
//
//  ADOCN3.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + t_sys_dbname + ';Data Source=' + sComputerName;

  //    'Provider=SQLNCLI11.1;'+
  //                              'Password='+t_password+';'+
  //                              'Persist Security Info=True;'+
  //                              'User ID='+t_user+';'+
  //                              'Initial Catalog='+t_sys_dbname+';'+
  //                              'Data Source='+t_serverIP;
end;

end.

