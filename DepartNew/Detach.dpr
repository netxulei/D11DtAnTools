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
    // ParamCount����������
    // ParamStr��Ϊ��������
    // Drop DATABASE ɾ�����ݿ�
    // sp_detach_db �������ݿ⵫��ɾ���ļ�
    // Writeln(IntToStr(ParamCount));
    // for i := 1 to ParamCount do
    // begin
    // Writeln(Paramstr(i));
    // end;
    // Exit;

    if ParamCount = 0 then
    begin
      Writeln('���ڷ���SQL Server ���ݿ⣺detach ���ݿ�����');
      Exit;
    end;
    FDconGen := TFDConnection.Create(nil);
    FDconGen.Connected := False;
    FDconGen.LoginPrompt := False;
    FDconGen.ConnectionString := 'DriverID=MSSQL;Server=.;OSAuthent=Yes;'; // �������ݿ����Ƶ�����
    FDConGen.ExecSQL('Use Master;ALTER DATABASE [' + Paramstr(1) + '] SET SINGLE_USER WITH ROLLBACK IMMEDIATE; EXEC sp_detach_db ' + Paramstr(1));
//    FDconGen.ExecSQL('EXEC sp_detach_db ' + Paramstr(1));
    Writeln('���ݿ�' + Paramstr(1) + '�ѷ���ɹ�!');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
