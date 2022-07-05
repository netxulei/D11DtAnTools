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
function Login: Boolean; // 登录函数

implementation

{$R *.dfm}

function Login: Boolean;
begin
  // 动态创建登录窗口
  with TFrmLogin.Create(nil) do
  begin
    // 只有返回OK的时候认为登录成功
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
  Inc(FTryTimes); // 尝试登录的次数 + 1

  if CheckUserInfo('User', lbledtPass.Text) then
  begin
    // 如果通过检查，返回OK
    Self.ModalResult := mrOk;
  end
  else
  begin
    if (FTryTimes > 2) then
    begin
      MessageBox(Self.Handle, '你已经尝试登录3次，请联系相关人员。', '错误', MB_OK + MB_ICONERROR);
      Self.ModalResult := mrCancel;
      Exit;
    end;

    // 通不过，报错
    MessageBox(Self.Handle, '错误的用户名或密码，请重新输入!', '错误', MB_OK + MB_ICONERROR);
    lbledtPass.SetFocus();
    lbledtPass.SelectAll();
  end;
end;

function TFrmLogin.CheckUserInfo(AUserName, APassword: string): Boolean;
var
  sJm: string;
begin
  sJm := encryptstr(formatdatetime('yyyy', Now), formatdatetime('yyyy', Now) + 'XLuAut');
  // 简单的验证，可以修改为其它的方式
  Result := (AUserName = 'User') and (APassword = sJm);
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  // 尝试登录的次数，初始化为0
  FTryTimes := 0;
end;

end.
