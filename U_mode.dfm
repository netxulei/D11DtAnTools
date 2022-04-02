object F_mode: TF_mode
  Left = 484
  Top = 323
  Caption = #35831#36755#20837#23494#30721
  ClientHeight = 227
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 15
  object pnl2: TPanel
    Left = 0
    Top = 103
    Width = 472
    Height = 124
    Align = alClient
    TabOrder = 1
    object lbl2: TLabel
      Left = 152
      Top = 3
      Width = 156
      Height = 15
      Alignment = taCenter
      Caption = #35831#36755#20837#25171#24320#24320#25918#27169#24335#30340#23494#30721
      Layout = tlCenter
    end
    object PassText: TMaskEdit
      Left = 125
      Top = 22
      Width = 187
      Height = 23
      ImeName = #20013#25991' ('#31616#20307') - '#32654#24335#38190#30424
      PasswordChar = '*'
      TabOrder = 0
      Text = ''
    end
    object BitBtn1: TBitBtn
      Left = 119
      Top = 69
      Width = 74
      Height = 25
      Caption = #30830#23450
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 10
      ImageName = #30830#35748
      Images = F_DT.vrtlmglst1
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 271
      Top = 67
      Width = 81
      Height = 27
      Caption = #21462#28040
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 103
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 1
      Top = 1
      Width = 470
      Height = 75
      Align = alTop
      Caption = 
        #13#10'1.'#24320#25918#27169#24335#20026#28385#36275#36890#26195'SQL'#35821#35328#29992#25143#20108#27425#24320#21457#20351#29992#12290#13#10'2.'#24320#25918#27169#24335#25552#20379#25968#25454#23383#20856#32500#25252#12289#25968#25454#35268#33539#32500#25252#12289#27169#22411#32500#25252#21151#33021#19977#22823#32500#25252#21151#33021#12290 +
        #13#10'3.'#24320#25918#27169#24335#19977#22823#32500#25252#21151#21487#20197#24110#21161#36890#26195'SQL'#35821#35328#30340#29992#25143#24314#31435#33258#24049#30340#25968#25454#20998#26512#20307#31995#12290#13#10'4.'#24212#29992#24320#25918#27169#24335#19977#22823#32500#25252#21151#33021#37197#20197#30456#20851#35774#32622#21487#20197#32452 +
        #25104#29420#31435#25968#25454#20998#26512#24037#20855#12290
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
      Layout = tlCenter
      WordWrap = True
      ExplicitWidth = 446
    end
  end
end
