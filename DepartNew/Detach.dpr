program Detach;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

var
  // i: Integer;
  FDconGen: TFDConnection;
  // FDCommand:TFDCommand;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    // ParamCount：参数个数
    // ParamStr：为参数数组
    // Drop DATABASE 删除数据库
    // sp_detach_db 分离数据库但不删除文件
    // Writeln(IntToStr(ParamCount));
    // for i := 1 to ParamCount do
    // begin
    // Writeln(Paramstr(i));
    // end;
    // Exit;

    if ParamCount = 0 then
    begin
      Writeln('用于分离SQL Server 数据库：detach 数据库名称');
      Exit;
    end;
    FDconGen := TFDConnection.Create(nil);
    FDconGen.Connected := False;
    FDconGen.LoginPrompt := False;
    FDconGen.ConnectionString := 'DriverID=MSSQL;Server=.;OSAuthent=Yes;'; // 不带数据库名称的连接
    FDConGen.ExecSQL('Use Master;ALTER DATABASE [' + Paramstr(1) + '] SET SINGLE_USER WITH ROLLBACK IMMEDIATE; EXEC sp_detach_db ' + Paramstr(1));
//    FDconGen.ExecSQL('EXEC sp_detach_db ' + Paramstr(1));
    Writeln('数据库' + Paramstr(1) + '已分离成功!');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
