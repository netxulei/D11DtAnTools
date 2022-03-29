object F_CHG_PASS: TF_CHG_PASS
  Left = 471
  Top = 332
  BorderStyle = bsDialog
  Caption = #20462#25913#24403#21069#29992#25143#21475#20196
  ClientHeight = 187
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  object pnl1: TPanel
    Left = 0
    Top = 139
    Width = 327
    Height = 48
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 479
    ExplicitWidth = 623
    object BitBtn1: TBitBtn
      Left = 46
      Top = 6
      Width = 72
      Height = 27
      Caption = #30830#35748
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 10
      ImageName = #30830#35748
      Images = F_DT.vrtlmglst1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 192
      Top = 6
      Width = 81
      Height = 27
      Caption = #21462#28040
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 139
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 623
    ExplicitHeight = 479
    object lbl1: TLabel
      Left = 46
      Top = 24
      Width = 48
      Height = 17
      Caption = #32769#23494#30721
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 46
      Top = 64
      Width = 48
      Height = 17
      Caption = #26032#23494#30721
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 14
      Top = 108
      Width = 80
      Height = 17
      Caption = #26032#23494#30721#30830#35748
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEDTSET1: TDBEditEh
      Left = 100
      Top = 21
      Width = 141
      Height = 25
      Ctl3D = True
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
      Visible = True
      OnKeyDown = DBEDTSET1KeyDown
      EditMask = ''
    end
    object DBEDTSET11: TDBEditEh
      Left = 100
      Top = 61
      Width = 141
      Height = 25
      Ctl3D = True
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      Visible = True
      OnKeyDown = DBEDTSET11KeyDown
      EditMask = ''
    end
    object DBEDTSET12: TDBEditEh
      Left = 100
      Top = 101
      Width = 141
      Height = 25
      Ctl3D = True
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
      Visible = True
      OnKeyDown = DBEDTSET12KeyDown
      EditMask = ''
    end
  end
  object fdQryPass: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Left = 272
    Top = 16
  end
end
