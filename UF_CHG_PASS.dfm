object F_CHG_PASS: TF_CHG_PASS
  Left = 471
  Top = 332
  BorderStyle = bsDialog
  Caption = #20462#25913#24403#21069#29992#25143#21475#20196
  ClientHeight = 192
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object lbl1: TLabel
    Left = 13
    Top = 20
    Width = 36
    Height = 12
    Caption = #32769#23494#30721
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 13
    Top = 65
    Width = 36
    Height = 12
    Caption = #26032#23494#30721
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 110
    Width = 60
    Height = 12
    Caption = #26032#23494#30721#30830#35748
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object DBEDTSET1: TDBEditEh
    Left = 100
    Top = 14
    Width = 141
    Height = 20
    Ctl3D = True
    DynProps = <>
    EditButtons = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
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
    Top = 60
    Width = 141
    Height = 20
    Ctl3D = True
    DynProps = <>
    EditButtons = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
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
    Top = 106
    Width = 141
    Height = 20
    Ctl3D = True
    DynProps = <>
    EditButtons = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
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
  object BitBtn1: TBitBtn
    Left = 25
    Top = 146
    Width = 72
    Height = 27
    Caption = #30830#35748
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 146
    Width = 81
    Height = 27
    Caption = #21462#28040
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object ADOqr1: TADOQuery
    Parameters = <>
    Left = 65533
    Top = 153
  end
end
