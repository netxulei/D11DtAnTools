object F_showError: TF_showError
  Left = 299
  Top = 112
  Width = 1291
  Height = 565
  Caption = #23384#22312#38169#35823#30340#25968#25454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object spl1: TSplitter
    Left = 0
    Top = 177
    Width = 1275
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object cxm1: TcxMemo
    Left = 0
    Top = 19
    Align = alTop
    ParentFont = False
    Properties.ReadOnly = True
    Properties.ScrollBars = ssVertical
    Properties.WordWrap = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = #23435#20307
    Style.Font.Style = []
    Style.Shadow = False
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 158
    Width = 1275
  end
  object cxlbl1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 
      '  '#20197#19979#20026#23548#20837#25968#25454#21457#29983#30340#38169#35823#20449#24687#65292#35813#20449#24687#23384#25918#22312#23433#35013#30446#24405#19979#30340'error.txt.error.txt'#12290#35831#21442#29031#19979#21015#25968#25454#24773#20917#20462#27491#19982#23548#20837#25991 +
      #20214#30340#30456#20851#20449#24687#21518#37325#26032#23548#20837#12290
    ParentFont = False
    Properties.WordWrap = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -15
    Style.Font.Name = #23435#20307
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Width = 1275
  end
  object cxm2: TcxMemo
    Left = 0
    Top = 199
    Align = alClient
    ParentFont = False
    Properties.ReadOnly = True
    Properties.ScrollBars = ssVertical
    Properties.WordWrap = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = #23435#20307
    Style.Font.Style = []
    Style.Shadow = False
    Style.IsFontAssigned = True
    TabOrder = 2
    Height = 327
    Width = 1275
  end
  object cxlbl2: TcxLabel
    Left = 0
    Top = 180
    Align = alTop
    Caption = 
      '  '#20197#19979#20026#23384#22312#38169#35823#30340#25968#25454#65288#22320#22336#25110#32463#33829#33539#22260#23383#27573#20351#29992#8220'|'#8221#65289#65292#35813#20449#24687#23384#25918#22312#23433#35013#30446#24405#19979#30340'error.txt'#12290#35831#20351#29992'UtraEdit'#26597#25214 +
      #20462#27491#19982#23548#20837#25991#20214#30340#30456#20851#20449#24687#21518#37325#26032#23548#20837#12290
    ParentFont = False
    Properties.WordWrap = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -15
    Style.Font.Name = #23435#20307
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Width = 1275
  end
end
