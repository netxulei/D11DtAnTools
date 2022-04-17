program DtAnTools;

uses
  windows,
  System.UITypes,
  Vcl.Forms,
  U_Common in 'MySome\U_Common.pas',
  LibXL in 'LibXL.pas',
  login in 'login.pas' {LoginFrm} ,
  main in 'main.pas' {MainFrm} ,
  U_DT in 'U_DT.pas' {F_DT: TDataModule} ,
  U_float in 'U_float.pas' {F_float} ,
  UF_CHG_PASS in 'UF_CHG_PASS.pas' {F_CHG_PASS} ,
  U_user in 'U_user.pas' {F_user} ,
  U_mode in 'U_mode.pas' {F_mode} ,
  log4me in 'log4me.pas',
  U_Proj in 'U_Proj.pas' {F_Proj} ,
  FindPublic in 'FindPublic.pas' {frmFindPublic} ,
  FormColSelect in 'FormColSelect.pas' {FrmColSelect} ,
  U_ShowError in 'U_ShowError.pas' {F_showError} ,
  uDictMaintain in 'uDictMaintain.pas' {frmDictMaintain} ,
  Vcl.Consts in 'MySome\D11\Vcl.Consts.pas',
  Vcl.VDBConsts in 'MySome\Vcl.VDBConsts.pas',
  uSrcTabMaintain in 'uSrcTabMaintain.pas' {frmSrcTabMaintain} ,
  uDataImport1 in 'uDataImport1.pas' {FrmDataImport} ,
  uModMaintain in 'uModMaintain.pas' {FModMaintain} ,
  U_import in 'U_import.pas' {F_import} ,
  uDisAsisTable in 'uDisAsisTable.pas' {fmDisAssiTable} ,
  JMCode in 'JM\JMCode.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
//ShowWindow(Application.Handle,SW_HIDE);
  Application.Title := '通用数据分析工具';
  Application.CreateForm(TLoginFrm, LoginFrm);
  Application.CreateForm(TF_DT, F_DT);
  Application.CreateForm(TF_float, F_float);
  Application.Run;

  // 子窗口显示在任务栏
end.
