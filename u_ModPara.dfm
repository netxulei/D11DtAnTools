object FrmModPara: TFrmModPara
  Left = 0
  Top = 0
  Width = 938
  Height = 745
  VertScrollBar.Smooth = True
  VertScrollBar.Style = ssHotTrack
  VertScrollBar.Tracking = True
  AutoScroll = True
  Caption = #27169#22411#21442#25968#24405#20837
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 17
  object pnlBot: TPanel
    Left = 0
    Top = 650
    Width = 920
    Height = 48
    Align = alBottom
    TabOrder = 0
    object pnlIn: TPanel
      Left = 623
      Top = 1
      Width = 296
      Height = 46
      Align = alRight
      BevelEdges = []
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object btnExe: TButton
        Left = 62
        Top = 10
        Width = 80
        Height = 27
        Caption = #30830#23450
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ImageIndex = 17
        ImageName = #36816#34892' (1)'
        Images = F_DT.vrtlmglst1
        ParentFont = False
        TabOrder = 0
        OnClick = btnExeClick
      end
      object btnExit: TButton
        Left = 174
        Top = 10
        Width = 80
        Height = 27
        Caption = #21462#28040
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ImageIndex = 9
        ImageName = #23567#36864#20986
        Images = F_DT.vrtlmglst1
        ParentFont = False
        TabOrder = 1
        OnClick = btnExitClick
      end
    end
  end
  object pnlAll: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 900
    Height = 640
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 0
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    Ctl3D = True
    UseDockManager = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object fdQrySrcTab: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      
        'select tab_name_en,tab_name_cn from src_table where GloImp='#39'0'#39' o' +
        'rder by tab_sort ')
    Left = 700
    Top = 432
    object fdQrySrcTabtab_name_en: TStringField
      FieldName = 'tab_name_en'
      Origin = 'tab_name_en'
      Size = 40
    end
    object fdQrySrcTabtab_name_cn: TStringField
      FieldName = 'tab_name_cn'
      Origin = 'tab_name_cn'
      Size = 80
    end
  end
  object dsSrcTab: TDataSource
    DataSet = fdQrySrcTab
    Left = 624
    Top = 428
  end
end
