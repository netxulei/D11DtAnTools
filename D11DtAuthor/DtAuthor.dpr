program DtAuthor;

uses
  Vcl.Forms,
  U_AuthorMainpas in 'U_AuthorMainpas.pas' {Form1},
  JMCode in '..\JM\JMCode.pas',
  Vcl.VDBConsts in '..\MySome\Vcl.VDBConsts.pas',
  Vcl.Consts in '..\MySome\D11\Vcl.Consts.pas',
  uLogin in 'uLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '数据授权工具';
  Application.CreateForm(TForm1, Form1);
  if uLogin.Login() then // 呼叫登录窗口：就这一行，简单吧！
    Application.Run;

end.
