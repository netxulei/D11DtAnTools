object FrmDataImport: TFrmDataImport
  Left = 0
  Top = 0
  Caption = #25968#25454#37319#38598
  ClientHeight = 876
  ClientWidth = 1416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 20
  object pnl1: TPanel
    Left = 0
    Top = 44
    Width = 1416
    Height = 62
    Align = alTop
    TabOrder = 1
    object lblSrcTab: TLabel
      Left = 10
      Top = 1
      Width = 208
      Height = 20
      Caption = '1.'#36873#25321#23548#20837#25968#25454#22522#20110#30340#28304#25968#25454#34920
    end
    object btnExit: TBitBtn
      Left = 862
      Top = 18
      Width = 139
      Height = 31
      Caption = '4.'#36864#20986
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      TabOrder = 0
      OnClick = btnExitClick
    end
    object cxLCbBSrcTab: TcxLookupComboBox
      Left = 10
      Top = 24
      Margins.Bottom = 0
      ParentFont = False
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
      Style.Font.Height = -12
      Style.Font.Name = #24494#36719#38597#40657
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 373
    end
    object chkChnCol: TCheckBox
      Left = 395
      Top = 4
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
      Left = 395
      Top = 22
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
      Left = 395
      Top = 41
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
    object btnImpTxt: TBitBtn
      Left = 653
      Top = 18
      Width = 136
      Height = 31
      Caption = '3.'#25968#25454#23548#20837
      ImageIndex = 2
      ImageName = #25968#25454#23548#20837
      Images = F_DT.vrtlmglstMenu
      TabOrder = 5
      OnClick = btnImpTxtClick
    end
    object rb1: TRadioButton
      Left = 490
      Top = 5
      Width = 90
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
      Left = 490
      Top = 22
      Width = 91
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
      Left = 490
      Top = 41
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
  end
  object pnl3: TPanel
    Left = 0
    Top = 172
    Width = 1416
    Height = 62
    Align = alTop
    TabOrder = 0
    object LblCheck: TLabel
      Left = 9
      Top = 0
      Width = 91
      Height = 19
      Caption = #25968#25454#39044#35272#19982#26657#39564
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 24
      Width = 104
      Height = 19
      Caption = #39044#35272#25110#26657#39564#36215#22987#34892
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 195
      Top = 24
      Width = 104
      Height = 19
      Caption = #39044#35272#25110#26657#39564#24635#34892#25968
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 394
      Top = 24
      Width = 117
      Height = 19
      Caption = #32570#25968#38408#20540#65288#30334#20998#27604#65289
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 819
      Top = 15
      Width = 60
      Height = 17
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Caption = #32534#30721#26684#24335#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label1: TLabel
      Left = 820
      Top = 33
      Width = 76
      Height = 17
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      AutoSize = False
      Caption = #25968#25454#34892#25968#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      WordWrap = True
    end
    object lbl3: TLabel
      Left = 900
      Top = 18
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
      Left = 900
      Top = 33
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
      Left = 307
      Top = 21
      Width = 76
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '10'
    end
    object btnView: TBitBtn
      Left = 543
      Top = 21
      Width = 107
      Height = 27
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
      Left = 653
      Top = 21
      Width = 107
      Height = 27
      Caption = #26657#39564#25968#25454
      ImageIndex = 11
      ImageName = #26657#39564
      Images = F_DT.vrtlmglst1
      TabOrder = 2
      OnClick = btnValidClick
    end
    object edt2: TEdit
      Left = 510
      Top = 21
      Width = 27
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0.9'
    end
    object edt_start: TEdit
      Left = 116
      Top = 21
      Width = 75
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '1'
    end
    object btnInfo: TButton
      Left = 779
      Top = 12
      Width = 39
      Height = 42
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Caption = #25991#20214#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
    Top = 106
    Width = 1416
    Height = 66
    Align = alTop
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    object spbtnFileName: TSpeedButton
      Left = 550
      Top = 29
      Width = 28
      Height = 27
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
      Layout = blGlyphTop
      OnClick = spbtnFileNameClick
    end
    object lbledtFileName: TLabeledEdit
      Left = 10
      Top = 30
      Width = 541
      Height = 25
      AutoSize = False
      EditLabel.Width = 163
      EditLabel.Height = 20
      EditLabel.Caption = '2.'#36873#25321#20934#22791#23548#20837#30340#25991#20214#21517
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = ''
      TextHint = #36873#25321#19982#23548#20837#30340#25991#20214#21517
    end
    object cbbCode: TComboBox
      Left = 582
      Top = 30
      Width = 92
      Height = 25
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
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
      Left = 582
      Top = 8
      Width = 97
      Height = 17
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Caption = #24378#21046#32534#30721#26684#24335
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object chkTitle: TCheckBox
      Left = 303
      Top = 6
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
      Left = 460
      Top = 5
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
      Left = 555
      Top = 5
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
      Left = 727
      Top = 29
      Width = 84
      Height = 25
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      EditLabel.Width = 84
      EditLabel.Height = 17
      EditLabel.Caption = #23548#20837#21069#26657#39564#34892#25968
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = #24494#36719#38597#40657
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '10'
    end
    object bitbtnErr: TBitBtn
      Left = 900
      Top = 10
      Width = 101
      Height = 50
      Hint = #20165#23545#25991#26412#25991#20214#26377#25928
      Caption = #26597#30475#26368#21518#19968#27425#25991#26412#23548#20837#38169#35823#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      WordWrap = True
      OnClick = bitbtnErrClick
    end
  end
  object pnl4: TPanel
    Left = 0
    Top = 234
    Width = 1416
    Height = 642
    Align = alClient
    TabOrder = 3
    object Splitter2: TSplitter
      Left = 1
      Top = 329
      Width = 1414
      Height = 6
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 545
    end
    object mmo2: TRichEdit
      Left = 1
      Top = 335
      Width = 1414
      Height = 306
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
    end
    object strngrd1: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 1414
      Height = 328
      Align = alTop
      ColCount = 1
      Ctl3D = False
      DrawingStyle = gdsGradient
      FixedColor = clSkyBlue
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goTabs, goThumbTracking, goFixedRowDefAlign]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      ActiveRowShow = True
      GridLineColor = 14474202
      GridFixedLineColor = 14474202
      ActiveCellShow = True
      ActiveCellFont.Charset = ANSI_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -12
      ActiveCellFont.Name = #24494#36719#38597#40657
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 16250613
      ActiveCellColorTo = 16250613
      AutoSize = True
      BorderColor = 15000546
      ControlLook.FixedGradientMirrorFrom = 16250613
      ControlLook.FixedGradientMirrorTo = 16250613
      ControlLook.FixedGradientHoverFrom = 16248808
      ControlLook.FixedGradientHoverTo = 16248808
      ControlLook.FixedGradientHoverMirrorFrom = 16248808
      ControlLook.FixedGradientHoverMirrorTo = 16248808
      ControlLook.FixedGradientHoverBorder = 16371364
      ControlLook.FixedGradientDownFrom = 16244937
      ControlLook.FixedGradientDownTo = 16244937
      ControlLook.FixedGradientDownMirrorFrom = 16244937
      ControlLook.FixedGradientDownMirrorTo = 16244937
      ControlLook.FixedGradientDownBorder = 14983778
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
      EnhTextSize = True
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
      FixedColWidth = 12
      FixedRowHeight = 22
      FixedColAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clBlack
      FixedFont.Height = -12
      FixedFont.Name = #24494#36719#38597#40657
      FixedFont.Style = [fsBold]
      Flat = True
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glOffice2007
      MouseActions.AllColumnSize = True
      MouseActions.AllRowSize = True
      MouseActions.SizeFixedCol = True
      MouseActions.SizeFixedRow = True
      Multilinecells = True
      Navigation.AdvanceOnEnter = True
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
      ScrollSynch = True
      SearchFooter.Color = 16250613
      SearchFooter.ColorTo = 16250613
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
      SelectionColor = 14327846
      SelectionTextColor = clWhite
      SortSettings.HeaderColor = 16250613
      SortSettings.HeaderColorTo = 16250613
      SortSettings.HeaderMirrorColor = 16250613
      SortSettings.HeaderMirrorColorTo = 16250613
      UIStyle = tsWindows10
      Version = '8.6.11.2'
      ColWidths = (
        12)
      RowHeights = (
        22)
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1416
    Height = 44
    Align = alTop
    TabOrder = 4
    object lblProj: TLabel
      Left = 289
      Top = 1
      Width = 90
      Height = 42
      Margins.Left = 10
      Align = alLeft
      Caption = '  '#24403#21069#39033#30446#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlBottom
      ExplicitHeight = 22
    end
    object rgSelSrc: TRadioGroup
      Left = 1
      Top = 1
      Width = 288
      Height = 42
      Align = alLeft
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        #25968#25454#23548#20837#21040#39033#30446
        #25968#25454#23548#20837#21040#31995#32479)
      ParentCtl3D = False
      TabOrder = 0
      OnClick = rgSelSrcClick
    end
  end
  object fdQrySrcTab: TFDQuery
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
    Left = 384
    Top = 412
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
end
