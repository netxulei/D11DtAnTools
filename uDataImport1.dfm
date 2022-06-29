object FrmDataImport: TFrmDataImport
  Left = 0
  Top = 0
  Caption = #25968#25454#23548#20837
  ClientHeight = 907
  ClientWidth = 1327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 20
  object pnl1: TPanel
    Left = 0
    Top = 60
    Width = 1327
    Height = 62
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1246
    object lblSrcTab: TLabel
      Left = 14
      Top = 5
      Width = 122
      Height = 17
      Caption = '1.'#36873#25321#25968#25454#34920#21517#31216
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object cxLCbBSrcTab: TcxLookupComboBox
      Left = 12
      Top = 26
      Margins.Bottom = 0
      ParentFont = False
      Properties.DropDownRows = 20
      Properties.DropDownSizeable = True
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'tab_id'
      Properties.ListColumns = <
        item
          FieldName = 'tab_name_cn'
        end
        item
          FieldName = 'tab_name_en'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSrcTab
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = cxLCbBSrcTabPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = #24494#36719#38597#40657
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 486
    end
    object chkChnCol: TCheckBox
      Left = 505
      Top = 5
      Width = 97
      Height = 17
      Caption = #20013#25991#23383#27573
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object chkXLS: TCheckBox
      Left = 504
      Top = 23
      Width = 97
      Height = 17
      Caption = #21487#23548#20837'XLS'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object chkTXT: TCheckBox
      Left = 505
      Top = 42
      Width = 97
      Height = 17
      Caption = #21487#23548#20837'TXT'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object rb1: TRadioButton
      Left = 600
      Top = 6
      Width = 80
      Height = 18
      Caption = #28165#31354#23548#20837
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = True
      OnClick = rb1Click
    end
    object rb2: TRadioButton
      Left = 600
      Top = 23
      Width = 80
      Height = 19
      Caption = #36861#21152#23548#20837
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = rb2Click
    end
    object chkReptCol: TCheckBox
      Left = 600
      Top = 42
      Width = 80
      Height = 17
      Caption = #26597#37325#23383#27573
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
    object btnImpTxt: TBitBtn
      Left = 679
      Top = 18
      Width = 136
      Height = 36
      Hint = #25991#26412#25991#20214#23548#20837#38656#35201#23383#27573#20301#32622#19968#19968#23545#24212#65288#21517#31216#26080#20851#65289#65307'Excel'#25991#20214#23548#20837#38656#35201#26631#39064#21517#31216#23545#24212#65288#20301#32622#26080#20851#65289
      Caption = '4.'#25968#25454#23548#20837
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ImageIndex = 2
      ImageName = #25968#25454#23548#20837
      Images = F_DT.vrtlmglstMenu
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnImpTxtClick
    end
    object btnExit: TBitBtn
      Left = 830
      Top = 18
      Width = 139
      Height = 36
      Caption = '5.'#36820#22238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      ParentFont = False
      TabOrder = 0
      OnClick = btnExitClick
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 188
    Width = 1327
    Height = 56
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1246
    object LblCheck: TLabel
      Left = 9
      Top = 0
      Width = 105
      Height = 19
      Caption = #25968#25454#39044#35272#19982#26657#39564
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 23
      Width = 39
      Height = 19
      Hint = #20174#25968#25454#34892#31639#36215#65288#21076#38500#26631#39064#34892#65289
      Caption = #36215#22987#34892
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label3: TLabel
      Left = 155
      Top = 23
      Width = 39
      Height = 19
      Hint = #38656#26657#39564#30340#34892#30340#25968#37327
      Caption = #24635#34892#25968
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 942
      Top = 6
      Width = 117
      Height = 19
      Caption = #32570#25968#38408#20540#65288#30334#20998#27604#65289
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbl2: TLabel
      Left = 664
      Top = 10
      Width = 65
      Height = 19
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Caption = #32534#30721#26684#24335#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label1: TLabel
      Left = 665
      Top = 29
      Width = 76
      Height = 17
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      AutoSize = False
      Caption = #25968#25454#34892#25968#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      WordWrap = True
    end
    object lbl3: TLabel
      Left = 727
      Top = 11
      Width = 4
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl_line: TLabel
      Left = 732
      Top = 30
      Width = 4
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object edt_num: TEdit
      Left = 204
      Top = 19
      Width = 117
      Height = 27
      Hint = #34892#25968#22826#22810#26131#20110#20869#23384#19981#22815#29992
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '10'
    end
    object btnView: TBitBtn
      Left = 333
      Top = 12
      Width = 107
      Height = 36
      Hint = 'Excel'#25991#20214#39044#35272#25152#26377'Sheet'#30340#26631#39064#21644'2'#34892#25968#25454
      Caption = #39044#35272#25968#25454
      ImageIndex = 12
      ImageName = #39044#35272
      Images = F_DT.vrtlmglst1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnViewClick
    end
    object btnValid: TBitBtn
      Left = 451
      Top = 12
      Width = 107
      Height = 36
      Hint = #25991#26412#25991#20214#26368#22909#20570#19968#27425#20840#37096#30340#25968#25454#26657#39564#20197#26816#26597#25968#25454#20869#23481#19981#31526#21512#26657#39564#35268#21017#30340#24773#20917
      Caption = '3.'#26657#39564#25968#25454
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ImageIndex = 11
      ImageName = #26657#39564
      Images = F_DT.vrtlmglst1
      ParentFont = False
      TabOrder = 2
      OnClick = btnValidClick
    end
    object edt2: TEdit
      Left = 997
      Top = 24
      Width = 27
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0.9'
      Visible = False
    end
    object edt_start: TEdit
      Left = 57
      Top = 19
      Width = 92
      Height = 27
      Hint = #20174#25968#25454#34892#31639#36215#65288#21076#38500#26631#39064#34892#65289
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = '1'
    end
    object btnInfo: TButton
      Left = 580
      Top = 12
      Width = 80
      Height = 36
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Caption = #25991#20214#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      WordWrap = True
      OnClick = btnInfoClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 122
    Width = 1327
    Height = 66
    Align = alTop
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    ExplicitWidth = 1246
    object spbtnFileName: TSpeedButton
      Left = 498
      Top = 37
      Width = 28
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000E0000000C0000000100
        200000000000A002000000000000000000000000000000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000FF
        FF000080800000FFFF000080800000FFFF000080800000FFFF00008080000000
        0000FF00FF00FF00FF00FF00FF000000000000FFFF000000000000FFFF000080
        800000FFFF000080800000FFFF000080800000FFFF000080800000000000FF00
        FF00FF00FF000000000000FFFF0000FFFF000000000000FFFF000080800000FF
        FF000080800000FFFF000080800000FFFF000080800000000000FF00FF000000
        000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF000000000000FFFF0000FF
        FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000FFFF0000FFFF000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphRight
      ParentFont = False
      OnClick = spbtnFileNameClick
    end
    object lbledtFileName: TLabeledEdit
      Left = 11
      Top = 37
      Width = 488
      Height = 25
      AutoSize = False
      EditLabel.Width = 215
      EditLabel.Height = 20
      EditLabel.Caption = '2.'#36873#25321#25968#25454#25991#20214#65288#25991#26412#25110'Excel'#65289
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clNavy
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = #24494#36719#38597#40657
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = ''
      TextHint = #36873#25321#20934#22791#23548#20837#25968#25454#25991#20214
      OnDblClick = lbledtFileNameDblClick
    end
    object cbbCode: TComboBox
      Left = 557
      Top = 36
      Width = 92
      Height = 25
      Hint = #36873#25321#25991#26412#25991#20214#26684#24335'DOS'#25110'Unix'
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ItemIndex = 0
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'ANSI'
      Items.Strings = (
        'ANSI'
        'UTF8')
    end
    object chkForceCode: TCheckBox
      Left = 557
      Top = 15
      Width = 97
      Height = 17
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Caption = #24378#21046#32534#30721#26684#24335
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object chkTitle: TCheckBox
      Left = 246
      Top = 14
      Width = 115
      Height = 17
      Hint = #27492#36873#39033#20165#23545#25991#26412#25991#20214#26377#25928#65288'Excel'#25991#20214#31532#19968#34892#24517#39035#26159#26631#39064#34892#65289
      Caption = #31532#19968#34892#20026#26631#39064#34892
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 3
    end
    object lblEdtSplt: TLabeledEdit
      Left = 406
      Top = 11
      Width = 17
      Height = 24
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Alignment = taCenter
      Ctl3D = True
      EditLabel.Width = 36
      EditLabel.Height = 17
      EditLabel.Caption = #20998#38548#31526
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = #24494#36719#38597#40657
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      EditLabel.Layout = tlBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      LabelPosition = lpLeft
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = '|'
    end
    object lblEdtQalif: TLabeledEdit
      Left = 501
      Top = 11
      Width = 17
      Height = 24
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Alignment = taCenter
      Ctl3D = True
      EditLabel.Width = 60
      EditLabel.Height = 17
      EditLabel.Caption = #25991#26412#38480#23450#31526
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = #24494#36719#38597#40657
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      EditLabel.Layout = tlBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      LabelPosition = lpLeft
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '"'
    end
    object lbledtValNo: TLabeledEdit
      Left = 768
      Top = 36
      Width = 84
      Height = 27
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      EditLabel.Width = 91
      EditLabel.Height = 19
      EditLabel.Caption = #23548#20837#21069#26657#39564#34892#25968
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = #24494#36719#38597#40657
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '10'
    end
    object cbbUnix: TComboBox
      Left = 655
      Top = 36
      Width = 92
      Height = 25
      Hint = #36873#25321#25991#26412#25991#20214#26684#24335'DOS'#25110'Unix'
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ItemIndex = 0
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = 'DOS'
      Items.Strings = (
        'DOS'
        'UNIX')
    end
    object bitbtnErr: TBitBtn
      Left = 872
      Top = 6
      Width = 97
      Height = 55
      Hint = #25968#25454#24120#35265#38382#39064#22788#29702
      Caption = #25968#25454#24120#35265#38382#39064#22788#29702#24110#21161
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      WordWrap = True
      OnClick = bitbtnErrClick
    end
  end
  object pnl4: TPanel
    Left = 0
    Top = 244
    Width = 1327
    Height = 663
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 1281
    ExplicitHeight = 637
    object Label6: TLabel
      Left = 1
      Top = 1
      Width = 1325
      Height = 20
      Align = alTop
      Caption = #25968#25454#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 60
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 300
      Width = 1325
      Height = 8
      HotZoneClassName = 'TcxSimpleStyle'
      AlignSplitter = salTop
      ShowHint = True
      ParentShowHint = False
      ExplicitLeft = -39
      ExplicitTop = 285
      ExplicitWidth = 1279
    end
    object Panel1: TPanel
      Left = 1
      Top = 308
      Width = 1325
      Height = 354
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 1
      ExplicitTop = 424
      ExplicitWidth = 1279
      ExplicitHeight = 212
      object Label5: TLabel
        Left = 1
        Top = 1
        Width = 1323
        Height = 20
        Align = alTop
        Caption = #26657#39564#20449#24687
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 60
      end
      object mmo2: TRichEdit
        Left = 1
        Top = 21
        Width = 1323
        Height = 332
        Align = alClient
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        HideScrollBars = False
        ParentFont = False
        PlainText = True
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 1242
        ExplicitHeight = 191
      end
    end
    object strngrd1: TAdvStringGrid
      Left = 1
      Top = 21
      Width = 1325
      Height = 279
      Align = alTop
      ColCount = 1
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving, goFixedRowDefAlign]
      ParentFont = False
      TabOrder = 2
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = 4474440
      ActiveCellFont.Height = -12
      ActiveCellFont.Name = 'Segoe UI'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 15387318
      ControlLook.FixedGradientFrom = clWhite
      ControlLook.FixedGradientTo = clSilver
      ControlLook.FixedGradientHoverFrom = 13619409
      ControlLook.FixedGradientHoverTo = 12502728
      ControlLook.FixedGradientHoverMirrorFrom = 12502728
      ControlLook.FixedGradientHoverMirrorTo = 11254975
      ControlLook.FixedGradientHoverBorder = 11645361
      ControlLook.FixedGradientDownFrom = 8816520
      ControlLook.FixedGradientDownTo = 7568510
      ControlLook.FixedGradientDownMirrorFrom = 7568510
      ControlLook.FixedGradientDownMirrorTo = 6452086
      ControlLook.FixedGradientDownBorder = 11250603
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -12
      FilterDropDown.Font.Name = 'Segoe UI'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 37
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = 3881787
      FixedFont.Height = -11
      FixedFont.Name = 'Segoe UI'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glTMS
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -12
      PrintSettings.Font.Name = 'Segoe UI'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -12
      PrintSettings.FixedFont.Name = 'Segoe UI'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -12
      PrintSettings.HeaderFont.Name = 'Segoe UI'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -12
      PrintSettings.FooterFont.Name = 'Segoe UI'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.ColorTo = 15790320
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -12
      SearchFooter.Font.Name = 'Segoe UI'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.HeaderColorTo = clWhite
      SortSettings.HeaderMirrorColor = clWhite
      SortSettings.HeaderMirrorColorTo = clWhite
      Version = '8.6.11.2'
      ColWidths = (
        37)
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1327
    Height = 60
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    ExplicitWidth = 1246
    object rgSelSrc: TRadioGroup
      Left = 1
      Top = 1
      Width = 160
      Height = 58
      Hint = #39033#30446#34920#24517#39035#23384#22312#24403#21069#39033#30446#25165#33021#23548#20837#12290#13#10#20840#23616#34920#20445#23384#20110#31995#32479#25968#25454#24211#20013#65292#25152#26377#39033#30446#22343#21487#20351#29992#12290
      Align = alLeft
      Color = clBtnFace
      Columns = 2
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #39033#30446#34920
        #20840#23616#34920)
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = True
      OnClick = rgSelSrcClick
    end
    object pnlProj: TPanel
      Left = 441
      Top = 1
      Width = 885
      Height = 58
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 804
      object lblProj: TLabel
        Left = 1
        Top = 1
        Width = 883
        Height = 22
        Margins.Left = 10
        Align = alTop
        AutoSize = False
        Caption = #24403#21069#39033#30446#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 668
      end
      object lblTip: TLabel
        Left = 1
        Top = 23
        Width = 883
        Height = 34
        Margins.Left = 10
        Align = alTop
        Caption = 
          #27880#24847#65306#25991#26412#25991#20214#23548#20837#21069#24212#20570#19968#27425#20840#37096#30340#25968#25454#26657#39564#65292#21542#21017#21363#20351#23548#20837#25104#21151#65292#20063#21487#33021#24433#21709#25968#25454#20998#26512#20934#30830#24615#12290#13#10'             '#25991#26412#25991#20214#23548 +
          #20837#26102#21482#33021#26657#39564#38271#24230#19982#31867#22411#21644#21069'n'#34892#25968#25454#65292#19981#33021#26657#39564#25152#26377#25968#25454#20869#23481#31526#21512#35268#33539#30340#24773#20917#12290
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        ExplicitWidth = 539
      end
    end
    object pnl5: TPanel
      Left = 161
      Top = 1
      Width = 280
      Height = 58
      Align = alLeft
      TabOrder = 2
      object lblTabType: TLabel
        Left = 6
        Top = 6
        Width = 52
        Height = 19
        Caption = #25968#25454#31867#21035
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object cxLookupComboBoxType: TcxLookupComboBox
        Left = 5
        Top = 26
        Hint = #36873#25321#25968#25454#25509#21475#34920#25152#23646#34892#19994#31867#21035
        ParentShowHint = False
        Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
        Properties.KeyFieldNames = 'dict_val'
        Properties.ListColumns = <
          item
            FieldName = 'dict_lable'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTabType
        Properties.OnEditValueChanged = cxLookupComboBoxTypePropertiesEditValueChanged
        ShowHint = True
        Style.BorderColor = clMenuHighlight
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Shadow = True
        Style.ButtonStyle = btsHotFlat
        TabOrder = 0
        Width = 263
      end
    end
  end
  object fdQrySrcTab: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      'select * from src_table order by tab_sort')
    Left = 316
    Top = 416
    object fdQrySrcTabtab_id: TStringField
      FieldName = 'tab_id'
      Origin = 'tab_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 32
    end
    object fdQrySrcTabtab_name_cn: TStringField
      FieldName = 'tab_name_cn'
      Origin = 'tab_name_cn'
      Size = 80
    end
    object fdQrySrcTabtab_name_en: TStringField
      FieldName = 'tab_name_en'
      Origin = 'tab_name_en'
      Size = 40
    end
    object fdQrySrcTabtab_XLS: TStringField
      FieldName = 'tab_XLS'
      Origin = 'tab_XLS'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabtab_TXT: TStringField
      FieldName = 'tab_TXT'
      Origin = 'tab_TXT'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabchn_col: TStringField
      FieldName = 'chn_col'
      Origin = 'chn_col'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabtab_memo: TStringField
      FieldName = 'tab_memo'
      Origin = 'tab_memo'
      Size = 255
    end
    object fdQrySrcTabGloImp: TStringField
      FieldName = 'GloImp'
      Origin = 'GloImp'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabtab_sort: TIntegerField
      FieldName = 'tab_sort'
      Origin = 'tab_sort'
      Required = True
    end
    object fdQrySrcTabtxt_split: TStringField
      FieldName = 'txt_split'
      Origin = 'txt_split'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabtxt_qualifier: TStringField
      FieldName = 'txt_qualifier'
      Origin = 'txt_qualifier'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabtype: TStringField
      FieldName = 'type'
      Origin = 'type'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabcombIndex: TMemoField
      FieldName = 'combIndex'
      Origin = 'combIndex'
      BlobType = ftMemo
    end
  end
  object dlgOpenDataFile: TOpenDialog
    Filter = 
      #23548#20837#25991#20214#25991#20214'(*.TXT;CSV;*.XLS;*.XLSX)|*.TXT;*.CSV;*.XLS;*.XLSX|'#25991#26412#25991#20214'(*.T' +
      'XT;*.CSV)|*.TXT;*.CSV|Excel'#25991#20214'(*.XLS;*.XLSX)|*.XLS;*.XLSX'
    Left = 104
    Top = 387
  end
  object dsSrcTab: TDataSource
    DataSet = fdQrySrcTab
    Left = 240
    Top = 420
  end
  object FDQrySrcCol: TFDQuery
    SQL.Strings = (
      
        'select * from src_column where tab_id = :tab_id order by col_sor' +
        't')
    Left = 316
    Top = 480
    ParamData = <
      item
        Name = 'TAB_ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdQryExec: TFDQuery
    FetchOptions.AssignedValues = [evMode]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    Left = 864
    Top = 307
  end
  object fdqryTmp: TFDQuery
    FetchOptions.AssignedValues = [evMode]
    Left = 409
    Top = 283
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 704
    Top = 440
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Caption = #23548#20837#25968#25454
    Prompt = #25968#25454#27491#22312#20837#24211#65292#35831#31245#21518'...'
    Left = 1033
    Top = 323
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 1041
    Top = 387
  end
  object FDQryTabType: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      
        'select distinct dict_val_id,dict_type_name_cn,dict_type_name_en,' +
        'b.dict_val,b.dict_lable,b.dict_val_memo,b.dict_val_sort from dic' +
        't_type a'
      'inner join dict_val b on a.dict_type_id=b.dict_type_id'
      'where a.dict_type_id= :dict_type_id order by b.dict_val_sort'
      '')
    Left = 1088
    Top = 88
    ParamData = <
      item
        Name = 'DICT_TYPE_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '33799EE3E5814B8180739737AE771CCF'
      end>
  end
  object dsTabType: TDataSource
    DataSet = FDQryTabType
    Left = 1096
    Top = 152
  end
end
