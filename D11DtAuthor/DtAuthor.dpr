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
  Application.Title := '������Ȩ����';
  Application.CreateForm(TForm1, Form1);
  if uLogin.Login() then // ���е�¼���ڣ�����һ�У��򵥰ɣ�
    Application.Run;

end.
