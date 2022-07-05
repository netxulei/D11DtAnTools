program jm;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1} ,
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '数据分析工具加密显示';
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
