unit uLogin;

interface

uses
  JMCode, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList;

type
  TFrmLogin = class(TForm)
    lbledtPass: TLabeledEdit;
    btnOK: TButton;
    btnCancel: TButton;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    FTryTimes: Integer;
    function CheckUserInfo(AUserName, APassword: string): Boolean;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
function Login: Boolean; // ��¼����

implementation

{$R *.dfm}

function Login: Boolean;
begin
  // ��̬������¼����
  with TFrmLogin.Create(nil) do
  begin
    // ֻ�з���OK��ʱ����Ϊ��¼�ɹ�
    Result := ShowModal() = mrOk;
    Free;
  end;
end;

procedure TFrmLogin.btnCancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TFrmLogin.btnOKClick(Sender: TObject);

begin
  Inc(FTryTimes); // ���Ե�¼�Ĵ��� + 1

  if CheckUserInfo('User', lbledtPass.Text) then
  begin
    // ���ͨ����飬����OK
    Self.ModalResult := mrOk;
  end
  else
  begin
    if (FTryTimes > 2) then
    begin
      MessageBox(Self.Handle, '���Ѿ����Ե�¼3�Σ�����ϵ�����Ա��', '����', MB_OK + MB_ICONERROR);
      Self.ModalResult := mrCancel;
      Exit;
    end;

    // ͨ����������
    MessageBox(Self.Handle, '������û��������룬����������!', '����', MB_OK + MB_ICONERROR);
    lbledtPass.SetFocus();
    lbledtPass.SelectAll();
  end;
end;

function TFrmLogin.CheckUserInfo(AUserName, APassword: string): Boolean;
var
  sJm: string;
begin
  sJm := encryptstr(formatdatetime('yyyy', Now), formatdatetime('yyyy', Now) + 'XLuAut');
  // �򵥵���֤�������޸�Ϊ�����ķ�ʽ
  Result := (AUserName = 'User') and (APassword = sJm);
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  // ���Ե�¼�Ĵ�������ʼ��Ϊ0
  FTryTimes := 0;
end;

end.
