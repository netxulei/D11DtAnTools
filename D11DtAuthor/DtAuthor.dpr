program DtAuthor;

uses
  Vcl.Forms,
  U_AuthorMainpas in 'U_AuthorMainpas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
