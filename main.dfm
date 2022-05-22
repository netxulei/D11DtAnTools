object MainFrm: TMainFrm
  Left = 640
  Top = 206
  Caption = #24320#25918#24335#36890#29992#25968#25454#20998#26512#24037#20855'__'
  ClientHeight = 997
  ClientWidth = 1604
  Color = clGradientInactiveCaption
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object cxDBTreeList1: TcxDBTreeList
    Left = 0
    Top = 38
    Width = 260
    Height = 959
    Align = alLeft
    Bands = <
      item
      end>
    DataController.DataSource = dsTree
    DataController.ParentField = 't_parent_id'
    DataController.KeyField = 't_id'
    FindPanel.DisplayMode = fpdmAlways
    FindPanel.FocusContentOnApplyFilter = True
    FindPanel.InfoText = #36755#20837#25991#26412#26597#25214#27169#22411#8230#8230
    FindPanel.ShowCloseButton = False
    FindPanel.UseDelayedFind = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Images = F_DT.vrtlmglst1
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.CellHints = True
    OptionsBehavior.ImmediateEditor = False
    OptionsBehavior.HotTrack = True
    OptionsBehavior.IncSearch = True
    OptionsBehavior.Sorting = False
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsSelection.HideFocusRect = False
    OptionsView.CellAutoHeight = True
    OptionsView.ColumnAutoWidth = True
    OptionsView.DropNodeIndicator = True
    OptionsView.GridLines = tlglHorz
    OptionsView.IndicatorWidth = 8
    OptionsView.TreeLineColor = clHotLight
    ParentFont = False
    PopupMenu = pm1
    Preview.AutoHeight = False
    RootValue = -1
    Styles.Background = cxstyl1
    Styles.Content = cxstyl1
    Styles.FindPanel = cxstyl2
    Styles.BandBackground = cxstyl1
    Styles.BandContent = cxstyl1
    Styles.BandHeader = cxstylTraceHot
    Styles.ColumnFooter = cxstyl1
    Styles.ColumnHeader = cxstylTraceHot
    Styles.HotTrack = cxstylTraceHot
    TabOrder = 0
    OnDblClick = cxDBTreeList1DblClick
    OnFocusedNodeChanged = cxDBTreeList1FocusedNodeChanged
    OnGetNodeImageIndex = cxDBTreeList1GetNodeImageIndex
    object cxDBTreeList1t_name: TcxDBTreeListColumn
      Styles.Header = cxstylTraceHot
      Caption.AlignHorz = taCenter
      Caption.GlyphAlignVert = vaBottom
      Caption.Text = #27169#22411#21015#34920#65288#21452#20987#25191#34892#65289
      DataBinding.FieldName = 't_name'
      Width = 100
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1isClass: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'isClass'
      Width = 100
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object Panel1: TPanel
    Left = 268
    Top = 38
    Width = 1336
    Height = 959
    Align = alClient
    Caption = 'Panel1'
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1334
      Height = 49
      Align = alTop
      Caption = 'Panel2'
      ParentBackground = False
      TabOrder = 0
      object lblMemo: TLabel
        Left = 1
        Top = 1
        Width = 64
        Height = 47
        Align = alLeft
        Caption = #21151#33021#25551#36848'    '
        Layout = tlCenter
        ExplicitHeight = 15
      end
      object pnl3: TPanel
        Left = 65
        Top = 1
        Width = 1268
        Height = 47
        Align = alClient
        BevelOuter = bvLowered
        Color = 16776176
        ParentBackground = False
        TabOrder = 0
        OnResize = pnl3Resize
        object DBMemo1: TDBMemo
          Left = 1
          Top = 1
          Width = 1266
          Height = 45
          Align = alClient
          DataField = 't_memo'
          DataSource = dsTree
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object pnl1: TPanel
      Left = 1
      Top = 50
      Width = 1334
      Height = 908
      Align = alClient
      Caption = 'pnl1'
      Color = 16776176
      ParentBackground = False
      TabOrder = 1
      object pnl5: TPanel
        Left = 1
        Top = 1
        Width = 1332
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'Panel2'
        ParentBackground = False
        TabOrder = 0
        object pnl6: TPanel
          Left = 1
          Top = 1
          Width = 1330
          Height = 30
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Emoji'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object spbtnFormat: TSpeedButton
            Left = 503
            Top = 4
            Width = 19
            Height = 23
            Caption = #34920#26684#26684#24335
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000089593EFF814D
              30FF814D30FF814D30FF814738FF814D30FF814D30FF814D30FF814D30FF814D
              30FF814D30FF814D30FF814D30FF814D30FF814D30FF814D30FF92694FFFFAF4
              EFFFFDF5F1FFC99F87FFFBF5F1FFFCF2EAFFC59A82FFFCEFEAFFFCEFEAFFC59A
              82FFFCECE2FFFBE9DFFFBA9179FFFBE5DAFFF1E6D8FF814D30FF92694FFFFFFF
              FFFFFFFFFFFFBAA493FFFFFFFFFFFFFFFFFFC59A82FFFFF7EFFFD1C7E6FFAF8E
              8FFFD1C1D9FFD1C1D9FFA38087FFD1BDD2FFF1E6D8FF814D30FF92694FFFD1A9
              8BFFD1A78FFFC19575FFD1A78FFFD1A78FFFC69979FFD1A78FFFBB9CA1FF1E2C
              D5FF1C2ED3FF1929C3FF1929C3FFAB888EFFBE947CFF814D30FF92694FFFFFFF
              FFFFFFFFFFFFD1A78FFFFFFFFFFFFFFFFFFFD1A78FFFFFFFFFFFD1CEE6FF303F
              E3FFC9C6FFFFC9C6FFFF1929C3FFD1C1D9FFF1E6D8FF814D30FF92694FFFFFFF
              FFFFFFFFFFFFD1A78FFFFFFFFFFFFFFFFFFFD1A78FFFFFFFFFFFD1D4F3FF3947
              E2FFC9D2FFFFC9C6FFFF1D2FD7FFD1C1D9FFF0E5E1FF814D30FF92694FFFD8B0
              91FFD1A78FFFC19575FFD1A78FFFD1A78FFFC19575FFD1A78FFFBB9CA1FF3643
              D9FF3748E0FF2739D9FF1B2DCFFFB39095FFC59A82FF814D30FF92694FFFFFFF
              FFFFFFFFFFFFD1A78FFFFFFFFFFFFFFFFFFFD1A78FFFFFFFFFFFD1D4F3FFB390
              95FFD1D4F3FFD1CEE6FFAB888EFFD1C7E6FFF2E5DEFF814D30FF977158FFFFFF
              FFFFFFFFFFFFD1A78FFFFFFFFFFFFFFFFFFFD1A78FFFFFFFFFFFFFFFFFFFD8AD
              95FFFFFFFFFFFFFFFFFFC59A82FFFFF7EFFFFAECE7FF814D30FFCC8152FFE2A2
              74FFEAA268FFEAA268FFEAA268FFEAA268FFE29259FFE29259FFD68556FFD685
              56FFD68556FFD68556FFE97A39FFE97A39FFE97A39FFB96335FFCE8658FFFDDC
              CDFFFBD7C6FFFAD4BFFFF9D0B8FFF8CDB1FFF7C8AAFFF6C5A3FFF6C19CFFF5BD
              95FFF4BA8EFFF3B587FFF2B280FFF1AE79FFF0AA72FFB96335FFCE8658FFCC8A
              60FFD28A58FFBE8564FFBE8564FFC98559FFC98559FFC57A4FFFC57A4FFFC47C
              52FFB87242FFB87242FFB96335FFB96335FFB96335FFB96335FFA39194FFFFFF
              FFFFA39194FFFFFFFFFFA39194FFFFFFFFFF738C94FFFFFFFFFF738C94FFFFFF
              FFFF738C94FFFFFFFFFF525252FFFFFFFFFF525252FFFFFFFFFF00000000352B
              26FF00000000352B26FF00000000352B26FF00000000352B26FF00000000352B
              26FF00000000352B26FF00000000352B26FF00000000352B26FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentFont = False
            PopupMenu = pm5
            Visible = False
            OnClick = spbtnFormatClick
          end
          object btn2: TBitBtn
            Left = 261
            Top = 2
            Width = 94
            Height = 23
            Caption = #23548#20986#32467#26524
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ImageIndex = 1
            ImageName = #23548#20986#32467#26524
            Images = F_DT.vrtlmglst1
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            OnClick = btn2Click
          end
          object btn1: TBitBtn
            Left = 480
            Top = 4
            Width = 17
            Height = 23
            Caption = #25191#34892#21151#33021
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333333333333333333333333333333333333333333FF333333333333
              3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
              E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
              E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
              E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
              000033333373FF77777733333330003333333333333777333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
            Visible = False
            OnClick = btn1Click
          end
          object chkAfterOpen: TCheckBox
            Left = 361
            Top = 5
            Width = 97
            Height = 17
            Caption = #23548#20986#21518#25171#24320
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 2
          end
          object rdbt1: TRadioButton
            Left = 1
            Top = 7
            Width = 126
            Height = 17
            Hint = #23637#31034#20998#26512#32467#26524#26102#20351#29992'12'#20301#38134#34892#26426#26500#20195#30721#33719#21462#21517#31216
            Caption = #20351#29992#38134#34892#26426#26500#20195#30721
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            TabStop = True
            OnClick = rdbt1Click
          end
          object rdbt2: TRadioButton
            Left = 129
            Top = 7
            Width = 134
            Height = 17
            Hint = #23637#31034#20998#26512#32467#26524#26102#20351#29992'14'#20301#37329#34701#26426#26500#32534#30721#33719#21462#21517#31216
            Caption = #20351#29992#37329#34701#26426#26500#32534#30721
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = rdbt2Click
          end
        end
      end
      object dbgrdh1: TDBGridEh
        Left = 1
        Top = 61
        Width = 1332
        Height = 581
        Hint = #34920#26684#25805#20316#35828#26126#65306'1.'#21452#20987#34920#26684#20248#21270#26174#31034#65307'2.'#28857#20987#26631#39064#21487#25490#24207#65307'3.'#28857#20987#34920#26684#24038#19978#30340#21521#19979#19977#35282#65292#36873#25321#26174#31034#21508#21015#65307'4.'#40736#26631#21491#38190#26356#22810#21151#33021#12290
        Align = alTop
        AllowedOperations = []
        Color = 16776176
        ColumnDefValues.AlwaysShowEditButton = True
        ColumnDefValues.EndEllipsis = True
        ColumnDefValues.Layout = tlCenter
        ColumnDefValues.Title.Alignment = taCenter
        ColumnDefValues.Title.TitleButton = True
        ColumnDefValues.Title.ToolTips = True
        ColumnDefValues.ToolTips = True
        Ctl3D = False
        DataSource = ds1
        DrawMemoText = True
        DynProps = <>
        EditActions = [geaCopyEh, geaSelectAllEh]
        Enabled = False
        EvenRowColor = clMoneyGreen
        Flat = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        HorzScrollBar.SmoothStep = False
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = pm2
        ReadOnly = True
        RowHeight = 2
        RowLines = 1
        RowSizingAllowed = True
        SearchPanel.Enabled = True
        ShowHint = True
        SortLocal = True
        TabOrder = 1
        TitleParams.RowLines = 2
        VertScrollBar.SmoothStep = True
        OnDblClick = dbgrdh1DblClick
        OnKeyUp = dbgrdh1KeyUp
        OnMouseDown = dbgrdh1MouseDown
        OnTitleBtnClick = dbgrdh1TitleBtnClick
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnl2: TPanel
        Left = 1
        Top = 33
        Width = 1332
        Height = 28
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Emoji'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnResize = pnl2Resize
        object lblResult: TLabel
          Left = 84
          Top = 1
          Width = 65
          Height = 26
          Align = alLeft
          Caption = #31579#36873#32467#26524#65306
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object cxtxtdt1: TcxTextEdit
          Left = 149
          Top = 1
          Align = alLeft
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.AutoSelect = False
          Properties.IncrementalSearch = False
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          ShowHint = False
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.Font.Charset = GB2312_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 198
        end
        object chkAssisDis: TCheckBox
          Left = 1
          Top = 1
          Width = 83
          Height = 26
          Align = alLeft
          Caption = #36741#21161#26597#35810
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = chkAssisDisClick
        end
      end
      object pnl9: TPanel
        Left = 1
        Top = 650
        Width = 1332
        Height = 257
        Align = alClient
        Color = 16776176
        ParentBackground = False
        TabOrder = 3
        Visible = False
        OnResize = pnl2Resize
        object dbgrdh2: TDBGridEh
          Left = 1
          Top = 61
          Width = 1330
          Height = 195
          Hint = #34920#26684#25805#20316#35828#26126#65306'1.'#21452#20987#34920#26684#20248#21270#26174#31034#65307'2.'#28857#20987#26631#39064#21487#25490#24207#65307'3.'#28857#20987#34920#26684#24038#19978#30340#21521#19979#19977#35282#65292#36873#25321#26174#31034#21508#21015#65307'4.'#40736#26631#21491#38190#26356#22810#21151#33021#12290
          Align = alClient
          AllowedOperations = []
          Color = 16776176
          ColumnDefValues.AlwaysShowEditButton = True
          ColumnDefValues.Layout = tlCenter
          ColumnDefValues.Title.Alignment = taCenter
          ColumnDefValues.Title.TitleButton = True
          ColumnDefValues.Title.ToolTips = True
          ColumnDefValues.ToolTips = True
          Ctl3D = False
          DataSource = dsAssis
          DrawMemoText = True
          DynProps = <>
          EditActions = [geaCopyEh, geaSelectAllEh]
          Enabled = False
          EvenRowColor = clWindow
          Flat = True
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          FooterRowCount = 1
          FooterParams.Color = clWindow
          HorzScrollBar.SmoothStep = False
          ImeName = #20013#25991' ('#31616#20307') - '#32654#24335#38190#30424
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          PopupMenu = pm3
          ReadOnly = True
          RowHeight = 2
          RowLines = 1
          RowSizingAllowed = True
          ShowHint = True
          SortLocal = True
          TabOrder = 0
          TitleParams.RowLines = 2
          OnDblClick = dbgrdh1DblClick
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1330
          Height = 60
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          ShowCaption = False
          TabOrder = 1
          object chkAssis: TCheckBox
            Left = 9
            Top = 9
            Width = 68
            Height = 17
            Caption = #23454#26102#26174#31034
            TabOrder = 0
          end
          object cxbtnExp: TcxButton
            Left = 81
            Top = 4
            Width = 112
            Height = 27
            Hint = #21517#31216#20026#8221#36741#21161#20449#24687'_'#40664#35748'.asi'#8220#30340#27169#26495#20026#31995#32479#27599#27425#25171#24320#26102#33258#21160#35843#29992#30340#27169#26495
            Caption = #36741#21161#34920#27169#26495
            DropDownMenu = pmAssis
            Kind = cxbkOfficeDropDown
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object lbledtKey: TLabeledEdit
            Left = 713
            Top = 6
            Width = 132
            Height = 23
            EditLabel.Width = 52
            EditLabel.Height = 15
            EditLabel.Caption = #20851#32852#23383#27573
            EditLabel.Layout = tlCenter
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            LabelPosition = lpLeft
            ParentFont = False
            TabOrder = 2
            Text = #36134#21495
          end
          object lbledtTabName: TLabeledEdit
            Left = 529
            Top = 6
            Width = 105
            Height = 23
            EditLabel.Width = 78
            EditLabel.Height = 15
            EditLabel.Caption = #26469#28304#25968#25454#34920#21517
            EditLabel.Layout = tlCenter
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            LabelPosition = lpLeft
            ParentFont = False
            TabOrder = 3
            Text = ' tb_rhzh_dw'
          end
          object lbledtSort: TLabeledEdit
            Left = 926
            Top = 7
            Width = 209
            Height = 23
            EditLabel.Width = 52
            EditLabel.Height = 15
            EditLabel.Caption = #25490#24207#23383#27573
            EditLabel.Layout = tlCenter
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            LabelPosition = lpLeft
            ParentFont = False
            TabOrder = 4
            Text = #36134#21495','#20132#26131#26085#26399
          end
          object lbledtName: TLabeledEdit
            Left = 266
            Top = 6
            Width = 163
            Height = 23
            EditLabel.Width = 65
            EditLabel.Height = 15
            EditLabel.Caption = #36741#21161#34920#21517#31216
            EditLabel.Layout = tlCenter
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            LabelPosition = lpLeft
            ParentFont = False
            TabOrder = 5
            Text = #21333#20301#36134#25143
          end
          object pnlFields: TPanel
            Left = 1
            Top = 36
            Width = 1328
            Height = 23
            Align = alBottom
            Caption = 'pnlFields'
            TabOrder = 6
            object lblFields: TLabel
              Left = 92
              Top = 1
              Width = 52
              Height = 21
              Margins.Left = 30
              Align = alLeft
              Caption = #26597#35810#23383#27573
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object lblBreak: TLabel
              Left = 70
              Top = 1
              Width = 22
              Height = 21
              Margins.Left = 30
              Align = alLeft
              AutoSize = False
              Layout = tlCenter
              WordWrap = True
              ExplicitLeft = 65
              ExplicitHeight = 24
            end
            object lblBk2: TLabel
              Left = 1
              Top = 1
              Width = 5
              Height = 21
              Margins.Left = 30
              Align = alLeft
              AutoSize = False
              Layout = tlCenter
              WordWrap = True
              ExplicitHeight = 24
            end
            object lblbk3: TLabel
              Left = 144
              Top = 1
              Width = 2
              Height = 21
              Margins.Left = 30
              Align = alLeft
              AutoSize = False
              Layout = tlCenter
              WordWrap = True
              ExplicitLeft = 143
              ExplicitHeight = 24
            end
            object bitbtnAssis: TBitBtn
              Left = 6
              Top = 1
              Width = 64
              Height = 21
              Hint = #28857#20987#26174#31034#36741#21161#34920#20449#24687
              Align = alLeft
              Caption = #26174#31034#36741#21161
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              WordWrap = True
              OnClick = bitbtnAssisClick
            end
            object mmoFields: TMemo
              Left = 146
              Top = 1
              Width = 1181
              Height = 21
              Align = alClient
              Lines.Strings = (
                
                  #23384#27454#20154#31867#21035','#27880#20876#22320#22320#21306#20195#30721','#24037#21830#33829#19994#25191#29031#26377#25928#26399','#27880#20876#36164#37329#37329#39069','#32852#31995#30005#35805','#27861#23450#20195#34920#20154#25110#36127#36131#20154#22995#21517','#27861#23450#20195#34920#20154#25110#36127#36131#20154#36523#20221#35777#20214#31181#31867',' +
                  #27861#23450#20195#34920#20154#25110#36127#36131#20154#36523#20221#35777#20214#32534#21495','#19978#32423#21333#20301#21517#31216','#31038#20250#20449#29992#20195#30721
                
                  ','#38134#34892#26426#26500#20195#30721','#36134#25143#24615#36136','#36134#21495','#36134#25143#21517#31216','#36134#25143#35777#26126#25991#20214'1'#32534#21495','#24320#25143#26085#26399','#38144#25143#21407#22240','#20037#24748#26085#26399','#38144#25143#26085#26399','#36134#25143#29366#24577','#36134#25143#24320#25143#22320#22320#21306#20195 +
                  #30721','#22522#26412#23384#27454#36134#25143#24320#25143#22320#22320#21306#20195#30721','#36134#25143#25152#22312#20154#27665#38134#34892#26426#26500#20195#30721','#36164#37329#24615#36136
                #20195#30721','#37096#38376#25110#36164#37329#31649#29702#20154#21517#31216','#20020#26102#23384#27454#36134#25143#26377#25928#26399','#20020#26102#23384#27454#36134#25143#24320#25143#21407#22240','#22791#27880','#22320#22336','#32463#33829#33539#22260)
              ParentShowHint = False
              ShowHint = False
              TabOrder = 1
              OnEnter = mmoFieldsEnter
              OnExit = mmoFieldsExit
            end
          end
        end
      end
      object cxspltr3: TcxSplitter
        Left = 1
        Top = 642
        Width = 1332
        Height = 8
        Hint = #21333#20987#25110#19978#19979#25302#21160
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 40
        AlignSplitter = salTop
        AutoSnap = True
        ResizeUpdate = True
        Control = dbgrdh1
        ShowHint = True
        ParentShowHint = False
        Visible = False
      end
    end
  end
  object cxspltr2: TcxSplitter
    Left = 260
    Top = 38
    Width = 8
    Height = 959
    Hint = #21333#20987#25110#24038#21491#25302#21160
    HotZoneClassName = 'TcxSimpleStyle'
    HotZone.SizePercent = 40
    HotZone.ArrowColor = clBlue
    HotZone.ArrowHighlightColor = clRed
    HotZone.LightColor = clBlue
    AutoSnap = True
    Control = cxDBTreeList1
    ShowHint = True
    ParentShowHint = False
  end
  object tlbTop: TToolBar
    Left = 0
    Top = 0
    Width = 1604
    Height = 38
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 68
    DrawingStyle = dsGradient
    Images = F_DT.vrtlmglstMenu
    Indent = 6
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 3
    object btnProj: TToolButton
      Left = 6
      Top = 0
      Hint = #31383#21475#26631#39064#26174#31034#24403#21069#39033#30446#20449#24687#65281#24517#39035#24314#31435#39033#30446#65292#25968#25454#23548#20837#21644#20998#26512#25165#33021#32487#32493#12290
      Caption = '1.'#39033#30446#31649#29702
      ImageIndex = 1
      ImageName = #39033#30446#31649#29702
      OnClick = btnProjClick
    end
    object btnImport: TToolButton
      Left = 74
      Top = 0
      Hint = #23548#20837#30456#20851#25968#25454#34920
      Caption = '2.'#25968#25454#23548#20837
      ImageIndex = 2
      ImageName = #25968#25454#23548#20837
      OnClick = btnImportClick
    end
    object btnRun: TToolButton
      Left = 142
      Top = 0
      Hint = #27169#22411#21015#34920#20026#38750#31867#21035#39033#30446#25165#33021#25191#34892#12290#27169#22411#21015#34920#21452#20987#39033#30446#36816#34892#26356#26377#25928#29575#12290
      Caption = '3.'#36816#34892#27169#22411
      ImageIndex = 16
      ImageName = #36816#34892' (1)'
      OnClick = btnRunClick
    end
    object btnExport: TToolButton
      Left = 210
      Top = 0
      Hint = #36816#34892#27169#22411#26377#32467#26524#25165#33021#23548#20986'Excel'
      Caption = '4.'#23548#20986#32467#26524
      ImageIndex = 15
      ImageName = #23548#20986#32467#26524
      OnClick = btnExportClick
    end
    object btnsplit: TToolButton
      Left = 278
      Top = 0
      Width = 8
      Enabled = False
      Style = tbsSeparator
    end
    object btnOpen: TToolButton
      Left = 286
      Top = 0
      Hint = #25171#24320#25110#20851#38381#27169#22411#32500#25252#12289#25509#21475#32500#25252#12289#23383#20856#32500#25252#26435#38480
      Caption = #24320#25918#27169#24335
      ImageIndex = 4
      ImageName = #24320#25918#24179#21488
      Style = tbsCheck
      OnClick = btnOpenClick
    end
    object btnMod: TToolButton
      Left = 354
      Top = 0
      Hint = #27169#22411#32500#25252
      Caption = #27169#22411#32500#25252
      Enabled = False
      ImageIndex = 5
      ImageName = #27169#22411#32500#25252' '
      OnClick = btnModClick
    end
    object btnSrc: TToolButton
      Left = 422
      Top = 0
      Hint = #25968#25454#25509#21475#32500#25252
      Caption = #25509#21475#32500#25252
      Enabled = False
      ImageIndex = 6
      ImageName = #25968#25454#32500#25252
      OnClick = btnSrcClick
    end
    object btnDict: TToolButton
      Left = 490
      Top = 0
      Hint = #25968#25454#23383#20856#32500#25252
      Caption = #23383#20856#32500#25252
      Enabled = False
      ImageIndex = 7
      ImageName = #23383#20856#32500#25252
      OnClick = btnDictClick
    end
    object btnNote: TToolButton
      Left = 558
      Top = 0
      Hint = #25171#24320#19968#20010#35760#24405#26412#65292#29992#20110#35760#24405#20998#26512#36807#31243#38656#26242#35760#30340#26377#20851#20869#23481#12290
      Caption = #20020#26102#35760#24405
      ImageIndex = 3
      ImageName = #35760#24405#26412
      OnClick = btnNoteClick
    end
    object btnModIn: TToolButton
      Left = 626
      Top = 0
      Hint = #23548#20837#20849#20139#27169#22411
      Caption = #27169#22411#23548#20837
      ImageIndex = 4
      ImageName = #24320#25918#24179#21488
      OnClick = btnModInClick
    end
    object btnModOut: TToolButton
      Left = 694
      Top = 0
      Hint = #23548#20986#27169#22411#19982#20182#20154#20849#20139
      Caption = #27169#22411#23548#20986
      ImageIndex = 5
      ImageName = #27169#22411#32500#25252' '
      OnClick = btnModOutClick
    end
    object btn3: TToolButton
      Left = 762
      Top = 0
      Width = 15
      Caption = 'btn3'
      ImageIndex = 6
      ImageName = #25968#25454#32500#25252
      Style = tbsSeparator
    end
    object btnExit: TToolButton
      Left = 777
      Top = 0
      Caption = #36864#20986#31995#32479
      ImageIndex = 12
      ImageName = #36864#20986
      OnClick = btnExitClick
    end
  end
  object MainMenu1: TMainMenu
    Images = F_DT.vrtlmglstMenu
    Left = 184
    Top = 48
    object MnProjData: TMenuItem
      Bitmap.Data = {
        36240000424D3624000000000000360000002800000030000000300000000100
        2000000000000024000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000543A076292640CAA895E0B9F543A
        0762000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003223043B98680CB0DB9612FFDB9612FFDB9612FFDB96
        12FF99690DB23424043D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000110C011476510A89DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FF79530A8D100B01120000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000543A
        0762B97F0FD8DB9612FFDB9612FFDB9612FFDB9612FF7A540A8E78520A8CDB96
        12FFDB9612FFDB9612FFDB9612FFBD8110DC593D076700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003223043B98680CB0DB96
        12FFDB9612FFDB9612FFDB9612FFAD760EC9261A032C00000000000000001F15
        0324A16F0DBCDB9612FFDB9612FFDB9612FFDB9612FF9D6C0DB73524043D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000110C011476510A89DB9612FFDB9612FFDB96
        12FFDB9612FFD39011F5583D0767000000000000000000000000000000000000
        00000000000049320655CB8B11ECDB9612FFDB9612FFDB9612FFDB9612FF7D56
        0A910B08010D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000543A0762B97F0FD8DB9612FFDB9612FFDB9612FFDB96
        12FF8B5F0BA20403000500000000000000000000000000000000000000000000
        0000000000000000000000000000724E0985DB9612FFDB9612FFDB9612FFDB96
        12FFC18410E1593D076800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003223043B98680CB0DB9612FFDB9612FFDB9612FFDB9612FFB1790FCE3725
        0440000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002419032A9C6B0DB6DB9612FFDB96
        12FFDB9612FFDB9612FFA16E0DBC302104380000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000110C01147651
        0A89DB9612FFDB9612FFDB9612FFDB9612FFD39011F56948097B000000000000
        0000000000000000000000000000000000002A1D03315B3E076A583C07663A28
        05440000000000000000000000000000000000000000000000004A320656C587
        10E6DB9612FFDB9612FFDB9612FFDB9612FF7E560A9306040007000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000543A0762B97F0FD8DB96
        12FFDB9612FFDB9612FFDB9612FF8F620CA7150E021800000000000000000000
        000000000000000000000806010A6D4B097FD39011F5DB9612FFDB9612FFDB96
        12FF855B0B9B1F15032400000000000000000000000000000000000000000806
        01096F4C0981DB9612FFDB9612FFDB9612FFDB9612FFC68710E6543A07620000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003223043B98680CB0DB9612FFDB9612FFDB96
        12FFDB9612FFB1790FCE48310653000000000000000000000000000000000000
        0000000000004C340658B1790FCEDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFC78910E861430871000000000000000000000000000000000000
        0000000000002D1F043596670CAFDB9612FFDB9612FFDB9612FFDB9612FFA36F
        0DBD2B1D03320000000000000000000000000000000000000000000000000000
        000000000000110C011476510A89DB9612FFDB9612FFDB9612FFDB9612FFD390
        11F56D4B097F0000000000000000000000000000000000000000000000002A1D
        03318F620CA7DB9612FFDB9612FFDB9612FFDB9612FFAF780ECCAE770ECADB96
        12FFDB9612FFDB9612FFDB9612FFA3700DBE3D2A054700000000000000000000
        000000000000000000000000000052380760C08310DFDB9612FFDB9612FFDB96
        12FFDB9612FF79530A8D01010001000000000000000000000000000000000000
        00003F2B0549B97F0FD8DB9612FFDB9612FFDB9612FFDB9612FF8F620CA7261A
        032C00000000000000000000000000000000000000000806010A6D4B097FD390
        11F5DB9612FFDB9612FFDB9612FFD69212F9583D076700000000000000005339
        0761D49111F7DB9612FFDB9612FFDB9612FFDB9612FF7F570A941911021D0000
        000000000000000000000000000000000000110C011477520A8BDB9612FFDB96
        12FFDB9612FFDB9612FFC78910E8442F06500000000000000000000000000000
        0000DB9612FFDB9612FFDB9612FFDB9612FFB1790FCE4C340658000000000000
        0000000000000000000000000000000000004C340658B1790FCEDB9612FFDB96
        12FFDB9612FFDB9612FF855B0B9B010100020000000000000000000000000000
        0000010100017A530A8EDB9612FFDB9612FFDB9612FFDB9612FFC18410E15B3E
        076A0000000000000000000000000000000000000000000000003625043F9C6B
        0DB6DB9612FFDB9612FFDB9612FFA4700DBF0000000000000000000000000000
        0000A8730EC4DB9612FFD39011F56D4B097F0403000500000000000000000000
        000000000000000000002A1D03318F620CA7DB9612FFDB9612FFDB9612FFDB96
        12FFAE770ECA2E20043600000000000000000000000000000000000000000000
        0000000000000000000024180329A06E0DBADB9612FFDB9612FFDB9612FFDB96
        12FF9D6B0DB73725044000000000000000000000000000000000000000000000
        00005B3E076AC18410E1DB9612FF8D600CA40000000000000000000000000000
        00002419032A5037075D2A1D0331000000000000000000000000000000000000
        00000806010A6D4B097FD39011F5DB9612FFDB9612FFDB9612FFCB8B11ED5B3E
        076A000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000046300652C68810E7DB9612FFDB96
        12FFDB9612FFDB9612FF79530A8C130D01160000000000000000000000000000
        0000000000000906010B2E1F0435000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004C34
        0658B1790FCEDB9612FFDB9612FFDB9612FFDB9612FF855B0B9B040300050000
        00000000000000000000000000000000000000000000493206553F2B05490000
        00000000000000000000000000000000000000000000030200046C4A097EDB96
        12FFDB9612FFDB9612FFDB9612FFBB800FD9543A076200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002A1D03318F620CA7DB96
        12FFDB9612FFDB9612FFDB9612FFA3700DBE3122043900000000000000000000
        0000000000000000000000000000442F0650A9740EC5DB9612FFDB9612FFA974
        0EC546300651000000000000000000000000000000000000000000000000261A
        032C92640CABDB9612FFDB9612FFDB9612FFDB9612FF96670CAF302104380000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000806010A6D4B097FD39011F5DB9612FFDB96
        12FFDB9612FFC08410E05D40086C000000000000000000000000000000000000
        0000000000002419032A895E0B9FDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FF8C600BA3291C032F000000000000000000000000000000000000
        00000000000048310654B97F0FD7DB9612FFDB9612FFDB9612FFD89412FC724E
        09850C08010E0000000000000000000000000000000000000000000000000000
        000000000000000000004C340658B1790FCEDB9612FFDB9612FFDB9612FFDB96
        12FF7B540A8F0705010800000000000000000000000000000000000000000503
        00056948097ACD8D11EFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFD29011F46F4C09810B08010D00000000000000000000
        00000000000000000000050400066B49097CDB9612FFDB9612FFDB9612FFDB96
        12FFB47B0FD24E35065B00000000000000000000000000000000000000000000
        00002419032A8F620CA7DB9612FFDB9612FFDB9612FFDB9612FF98680DB13424
        043C00000000000000000000000000000000000000000000000049320655AD77
        0ECADB9612FFDB9612FFDB9612FFDB9612FF90630CA80C08010E0A07010C8D60
        0CA4DB9612FFDB9612FFDB9612FFDB9612FFB57C0FD25138075F000000000000
        000000000000000000000000000000000000281B032E8D610CA5DB9612FFDB96
        12FFDB9612FFDB9612FF90630CA82419032A0000000000000000000000000000
        0000B67D0FD4DB9612FFDB9612FFDB9612FFB67D0FD452380760000000000000
        000000000000000000000000000000000000291C03308D610CA5DB9612FFDB96
        12FFDB9612FFDB9612FFBC810FDB3A2805440000000000000000000000000000
        00003423043CB67D0FD4DB9612FFDB9612FFDB9612FFDB9612FF97680CB03424
        043C0000000000000000000000000000000000000000000000004A330657B078
        0ECDDB9612FFDB9612FFDB9612FFB67D0FD40000000000000000000000000000
        0000A8730EC3DB9612FFD49111F6704D09830A07010B00000000000000000000
        000000000000000000000906010B6D4B097FD29011F4DB9612FFDB9612FFDB96
        12FFDB9612FF6848097A00000000000000000000000000000000000000000000
        000000000000000000005D40086DDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FF7A530A8E170F021A00000000000000000000000000000000000000000805
        01096D4B097FD29011F5DB9612FFAC760EC80000000000000000000000000000
        00002419032A5037075D2A1D0331000000000000000000000000000000000000
        0000000000004E35065AB27A0FCFDB9612FFDB9612FFDB9612FFDB9612FF9465
        0CAC120C01150000000000000000000000000000000000000000000000000000
        00000000000000000000000000000F0A0111875C0B9DDB9612FFDB9612FFDB96
        12FFDB9612FFC08310DF5D3F086C000000000000000000000000000000000000
        0000000000002A1D033162430873000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002E1F
        043592640CAADB9612FFDB9612FFDB9612FFDB9612FFB77D0FD5412C054B0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003525043EB0790ECDDB96
        12FFDB9612FFDB9612FFDB9612FFA36F0DBD3F2B054A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000E090110724E0985D693
        12FADB9612FFDB9612FFDB9612FFDA9512FE6C4A097E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005C3F
        086BD99512FDDB9612FFDB9612FFDB9612FFDB9612FF855B0B9B221703270000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000052380760B67D0FD4DB9612FFDB96
        12FFDB9612FFDB9612FF8F620CA71911021D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000140E021882590B97DB9612FFDB9612FFDB9612FFDB9612FFCB8B11ED6847
        0979040300050000000000000000000000000000000000000000000000000000
        000000000000000000003222043A97670CAFDB9612FFDB9612FFDB9612FFDB96
        12FFB27A0FCF442F065000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003B280544AA750EC6DB9612FFDB9612FFDB9612FFDB96
        12FFAE770ECA4A33065700000000000000000000000000000000000000000000
        00000000000049320655DB9612FFDB9612FFDB9612FFDB9612FFD59211F86747
        0878000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000061430871D49111F6DB9612FFDB96
        12FFDB9612FFDB9612FF563B0764000000000000000000000000000000000000
        000000000000B27A0FCFDB9612FFDB9612FFDB9612FF8A5F0BA11D1402210000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001A12021E875D0B9EDB96
        12FFDB9612FFDB9612FFB67D0FD4000000000000000000000000000000000000
        000000000000CD8D11EFDB9612FFDB9612FF9C6B0DB52E200436000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002D1F04359B6A
        0DB4DB9612FFDB9612FFCF8E11F1000000000000000000000000000000000000
        0000000000008D600CA4DB9612FFDB9612FFDB9612FFDB9612FF79530A8D0806
        010A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000705010874500A87DB9612FFDB96
        12FFDB9612FFDB9612FF92640CAA000000000000000000000000000000000000
        000000000000000000005D40086CC38610E3DB9612FFDB9612FFDB9612FFC386
        10E3563B07640000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004E35065BBF8310DEDB9612FFDB9612FFDB96
        12FFDB9612FF875C0B9D00000000000000000000000000000000000000000000
        00000000000000000000000000001B13022081590B97DB9612FFDB9612FFDB96
        12FFDB9612FFA06E0DBB30210438000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000281B032E95660CAEDB9612FFDB9612FFDB9612FFDB9612FFA672
        0EC2422D054D0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000402C054AA6710EC1DB96
        12FFDB9612FFDB9612FFDB9612FF7E560A920201000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        00026F4C0981DB9612FFDB9612FFDB9612FFDB9612FFC68810E7624308720000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006444
        0874CA8A11EBDB9612FFDB9612FFDB9612FFC88910E9583C0766000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000049320654C587
        10E5DB9612FFDB9612FFDB9612FFDB9612FF82590B971E140222000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000022170328885D0B9FDB9612FFDB9612FFDB9612FFDB9612FFA5710EC1291C
        0330000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000221703289B6A0DB5DB9612FFDB96
        12FFDB9612FFDB9612FFA26F0DBD3E2A05480000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000046300652AC760EC9DB9612FFDB9612FFDB9612FFDB96
        12FF80570A950000000000000000000000000000000000000000000000000000
        0000000000000000000000000000724E0985DB9612FFDB9612FFDB9612FFDB96
        12FFC28510E25E40086D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000040300056B49097CD18F11F3DB9612FFDB96
        12FFDB9612FFCD8D11EF5138075F000000000000000000000000000000000000
        00000000000048320654CB8B11ECDB9612FFDB9612FFDB9612FFDB9612FF7D56
        0A921911021D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000291C03308F620CA6DB96
        12FFDB9612FFDB9612FFDB9612FFA8730EC32318032900000000000000001F15
        0324A16E0DBCDB9612FFDB9612FFDB9612FFDB9612FF9D6C0DB7392705420000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004D35
        065AB37B0FD1DB9612FFDB9612FFDB9612FFDB9612FF79530A8D78520A8CDB96
        12FFDB9612FFDB9612FFDB9612FFBD8210DC593D076800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000B08010D714E0984D89412FBDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FF79530A8D140E02180000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003021043796670CAEDB9612FFDB9612FFDB9612FFDB96
        12FF99690DB23424043D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005439076292640CAA895E0B9F543A
        0762000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = #39033#30446#31649#29702#21450#25968#25454#20934#22791
      ImageIndex = 0
      ImageName = #39033#30446#31649#29702#21450#25968#25454#20934#22791
      object N_Proj: TMenuItem
        Caption = #39033#30446#31649#29702
        ImageIndex = 1
        ImageName = #39033#30446#31649#29702
        OnClick = N_ProjClick
      end
      object mniN38: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #25968#25454#23548#20837
        ImageIndex = 2
        ImageName = #25968#25454#23548#20837
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N27: TMenuItem
        Caption = #20020#26102#35760#24405#26412
        ImageIndex = 3
        ImageName = #35760#24405#26412
        OnClick = N27Click
      end
      object N38: TMenuItem
        Caption = '-'
      end
    end
    object MnOpenMode: TMenuItem
      AutoCheck = True
      Bitmap.Data = {
        F62A0000424DF62A000000000000360000002800000039000000300000000100
        200000000000C02A000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000011660B6829FA1AFF178F0F920000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000029FA1AFF29FA1AFF29FA
        1AFF1DAF12B30000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000028F519FA29FA
        1AFF29FA1AFF29FA1AFF1FBA13BE000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000010630A65147D0D7F072A
        042A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000027EF
        19F429FA1AFF29FA1AFF29FA1AFF29FA1AFF20C514C900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000006260426178E0F9028F519FA29FA1AFF29FA
        1AFF20C615CA0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000026EA18EF29FA1AFF29FA1AFF28F51AFA29FA1AFF29FA1AFF22CF16D40000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000D5008521EB813BC29FA1AFF29FA1AFF29FA1AFF29FA
        1AFF29FA1AFF29FA1AFF0C4B084C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000025E518E929FA1AFF29FA1AFF0E53095427EF19F429FA1AFF29FA
        1AFF24DA17DE0000000000000000000000000000000000000000000000000000
        000003130213147B0D7D25E218E729FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA
        1AFF1CAE12B129FA1AFF29FA1AFF1A9F10A20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000025DF17E429FA1AFF29FA1AFF0A3E06400D4D084E26E9
        18EE29FA1AFF29FA1AFF25E518E9000000000000000000000000000000000A3D
        063F1BA511A829FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA1AFF28F119F61892
        0F950A3E06400938063A29FA1AFF29FA1AFF28F319F806230424000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000024DA17DE29FA1AFF29FA1AFF0A3E06400000
        00000C47074825E318E829FA1AFF29FA1AFF27EF19F40000000011680B6A22CF
        16D429FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA1AFF24D917DD13760C780623
        04230000000000000000000000001FBF14C229FA1AFF29FA1AFF14780C7A0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000023D516D929FA1AFF29FA1AFF0A3E
        064000000000000000000A3E064024DD17E229FA1AFF29FA1AFF29FA1AFF29FA
        1AFF29FA1AFF29FA1AFF29FA1AFF29FA1AFF20C014C40F5A095C010701070000
        00000000000000000000000000000000000010630A6529FA1AFF29FA1AFF21CC
        15D0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000022CF16D429FA1AFF29FA
        1AFF0A3E06400000000000000000000000000936063723D716DC29FA1AFF29FA
        1AFF29FA1AFF29FA1AFF29FA1AFF1CA811AB0A3E064000000000000000000000
        000000000000000000000000000000000000000000000109010926EA18EE29FA
        1AFF29FA1AFF0D51085200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000021CA15CE29FA
        1AFF29FA1AFF0A3E064000000000000000000000000000000000082E052F21CB
        15CF29FA1AFF29FA1AFF178F0F92062304230000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000178E
        0F9129FA1AFF29FA1AFF1BA511A8000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000020C5
        14C929FA1AFF29FA1AFF0A3E0640000000000000000000000000000000000000
        0000031002100A3E064001070107000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000833053429FA1AFF29FA1AFF29F91AFE0728042900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001FBF14C329FA1AFF29FA1AFF0E5809590000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001EB913BD29FA1AFF29FA1AFF157E0D80000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001A9C109F29FA1AFF29FA1AFF29FA1AFF178A0E8D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000F5E0A5F29FA1AFF29FA1AFF22D216D60000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000E58095A20C414C829FA1AFF1BA7
        11AA00000000000000000C47074927ED19F229FA1AFF29FA1AFF29FA1AFF1FBD
        14C1062804280000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000106010625E418E829FA1AFF29FA
        1AFF0E5709590000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000020E010E147A0D7C24DD17E129FA1AFF29FA1AFF29FA
        1AFF29FA1AFF000000000000000000000000062504261FBB13BE29FA1AFF29FA
        1AFF29FA1AFF27F019F50F5A095C000000000000000000000000000000000000
        0000000000000000000000000000062504260000000000000000000000000000
        000000000000000000000000000000000000000000000000000016880E8B29FA
        1AFF29FA1AFF1CAB12AF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000082F053018910F9427EE19F329FA1AFF29FA1AFF29FA1AFF29FA
        1AFF28F419F9147D0D7F00000000000000000000000000000000000000001688
        0E8B29FA1AFF29FA1AFF29FA1AFF29FA1AFF178D0F9000000000000000000000
        00000000000000000000000000000F59095B29FA1AFF20C414C8041B031C0000
        000000000000000000000000000000000000000000000000000000000000082F
        052F29FA1AFF29FA1AFF29FA1AFF0729042A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000B4607471BA311A629FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA1AFF24DD
        17E2147D0D7F0625042500000000000000000000000000000000000000000000
        0000000000000E55095727EB18F029FA1AFF29FA1AFF29FA1AFF20C014C4072B
        042C0000000000000000000000000000000018940F9729FA1AFF29FA1AFF1689
        0E8B000000000000000000000000000000000000000000000000000000000000
        0000000000001DB313B729FA1AFF29FA1AFF16840E8700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001A9C109F29FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA1AFF20C615CA1062
        0A64010701070000000000000000000000000000000000000000000000000000
        0000000000000000000000000000062504251EB813BC29FA1AFF29FA1AFF29FA
        1AFF28F319F80F5E0A5F0000000000000000000000000C47074929FA1AFF29FA
        1AFF28F61AFB0833053400000000000000000000000000000000000000000000
        000000000000000000000E58095A29FA1AFF29FA1AFF23D816DD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000024DB17DF29FA1AFF29FA1AFF29FA1AFF1DAF12B20C4B084C0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000016860E8829FA
        1AFF29FA1AFF29FA1AFF29FA1AFF18900F930000000000000000000000001AA1
        11A429FA1AFF29FA1AFF1AA011A3000000000000000000000000000000000000
        00000000000000000000000000000003000324DE17E329FA1AFF29FA1AFF0F5C
        0A5E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000012700C7329FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA
        1AFF1DAF12B20C4B084C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000E54095526E918ED29FA1AFF29FA1AFF29FA1AFF20C314C7082F05300000
        0000082F053029FA1AFF29FA1AFF29FA1AFF0C4A084C00000000000000000000
        0000000000000000000000000000000000000000000015830E8529FA1AFF29FA
        1AFF1DB112B50000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000083205331895109829F91AFE29FA
        1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B20C4B084C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000062704281EB613BA29FA1AFF29FA1AFF29FA1AFF28F6
        1AFB10610A6300000000178F0F9229FA1AFF29FA1AFF1EB813BB000000000000
        0000000000000000000000000000000000000000000000000000072C042C29FA
        1AFF29FA1AFF29FA1AFF072B042C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000831
        053218940F9729F81AFD29FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B20C4B
        084C000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000015830E8629FA1AFF29FA
        1AFF29FA1AFF29FA1AFF18930F960000000026E818ED29FA1AFF29FA1AFF1062
        0A64000000000000000000000000000000000000000000000000000000000000
        00001CAE12B129FA1AFF29FA1AFF178A0E8D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000830053118930F9628F71AFC29FA1AFF29FA1AFF29FA
        1AFF29FA1AFF1DAF12B20C4B084C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000E56
        095726E618EB29FA1AFF29FA1AFF29FA1AFF20C615CA126D0B7029FA1AFF29FA
        1AFF22CF15D3020C010C00000000000000000000000000000000000000000000
        0000000000000E54095629FA1AFF29FA1AFF24DE17E300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000082F053018920F9528F6
        1AFB29FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B20C4B084C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000729042A1DB413B729FA1AFF29FA1AFF29FA1AFF29F91AFE23D6
        16DB29FA1AFF29FA1AFF14790D7C000000000000000000000000000000000000
        000000000000000000000000000023D816DD29FA1AFF29FA1AFF0F5E0A600000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000072E052F18910F9428F519FA29FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF
        12B20C4B084C0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000016850E8729FA1AFF29FA1AFF29FA
        1AFF29FA1AFF29FA1AFF29FA1AFF26E618EB0623042400000000000000000000
        000000000000000000000000000000000000147D0D7F29FA1AFF29FA1AFF1EB7
        13BB000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000072D052E18910F9328F419F929FA1AFF29FA
        1AFF29FA1AFF29FA1AFF1DAF12B20C4B084C0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000E58095925E4
        18E929FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA1AFF18900F93000000000000
        000000000000000000000000000000000000000000000729042929FA1AFF29FA
        1AFF29FA1AFF072C052D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000072C052D1890
        0F9328F319F829FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B20C4A084B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000072B042C1DB413B729FA1AFF29FA1AFF29FA1AFF29FA1AFF29FA1AFF0A3B
        063C000000000000000000000000000000000000000000000000000000001CA8
        11AB29FA1AFF29FA1AFF18900F93000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000072B042C178F0F9228F219F729FA1AFF29FA1AFF29FA1AFF29FA
        1AFF1DAF12B20C47074800000000000000000000000000000000000000000000
        000000000000000000000000000016870E8929FA1AFF29FA1AFF29FA1AFF29FA
        1AFF1CA811AB0000000000000000000000000000000000000000000000000000
        00000D51085329FA1AFF29FA1AFF25E518E90000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000072A042B178E0F9128F119F629FA
        1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B20B44074500000000000000000000
        000000000000000000000000000000000000000000000F5A095C25E218E729FA
        1AFF29FA1AFF29FA1AFF06250426000000000000000000000000000000000000
        0000000000000000000023D316D729FA1AFF29FA1AFF105F0A61000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000729
        042A178D0F9027F019F529FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B20B41
        074300000000000000000000000000000000000000000000000000000000072D
        052E1EB613B929FA1AFF20C615CA000000000000000000000000000000000000
        0000000000000000000000000000147A0D7D29FA1AFF29FA1AFF1FBD14C10000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000007280429178C0F8F27F019F429FA1AFF29FA1AFF29FA
        1AFF29FA1AFF1DAF12B20A3E0640000000000000000000000000000000000000
        0000000000000000000008320533000000000000000000000000000000000000
        0000000000000000000000000000000000000626042729FA1AFF29FA1AFF29FA
        1AFF072E052F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000006270428178B0E8E27EF
        19F329FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B20A3C063D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001BA311A629FA
        1AFF29FA1AFF18920F9500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000006260427178A0E8D27EE19F229FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF
        12B20939063A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000D4E
        085029FA1AFF29FA1AFF26EB18EF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000626042616890E8C27ED19F229FA1AFF29FA
        1AFF29FA1AFF29FA1AFF1DAF12B2093606370000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000022CD15D129FA1AFF29FA1AFF10610A6300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000062504251688
        0E8B27EC19F129FA1AFF29FA1AFF29FA1AFF29FA1AFF1DAF12B2083305340000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000013770C7A29FA1AFF29FA1AFF20C414C7000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000624042416870E8A27EB18F029FA1AFF29FA1AFF29FA1AFF29FA
        1AFF1DAF12B20831053200000000000000000000000000000000000000000000
        00000000000000000000000000000623042429F81AFD29FA1AFF29FA1AFF082F
        0530000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000623042316860E8926EA18EF29FA
        1AFF29FA1AFF29FA1AFF29FA1AFF1CAE12B1072E052F00000000000000000000
        000000000000000000000000000000000000000000001AA011A329FA1AFF29FA
        1AFF18930F960000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000622
        032316850E8826E918EE29FA1AFF29FA1AFF29FA1AFF29FA1AFF1CAB12AE072B
        042C0000000000000000000000000000000000000000000000000C4C084D29FA
        1AFF29FA1AFF27F119F600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000521032216850E8726E818ED29FA1AFF29FA1AFF29FA
        1AFF29FA1AFF1CA811AB07280429000000000000000000000000000000000000
        000021C915CD29FA1AFF29FA1AFF10620A640000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000520032116840E8626E7
        18EC29FA1AFF29FA1AFF29FA1AFF29FA1AFF1BA511A906250426000000000000
        00000000000013740C7729FA1AFF29FA1AFF20C615CA00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000051F032015830E8526E618EB29FA1AFF29FA1AFF29FA1AFF29FA1AFF1BA2
        11A606230423000000000520032128F219F729FA1AFF29FA1AFF083105320000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000051E031F15820D8426E518EA29FA1AFF29FA
        1AFF29FA1AFF29FA1AFF1AA011A3052003211A9D10A029FA1AFF29FA1AFF1895
        0F98000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000051D031E1581
        0D8325E518E929FA1AFF29FA1AFF29FA1AFF29FA1AFF1A9D10A029FA1AFF29FA
        1AFF28F71AFC0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000051C031D15800D8325E418E829FA1AFF29FA1AFF29FA1AFF29FA
        1AFF29FA1AFF29FA1AFF10640A66000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000041B031C157F0D8225E318E729FA
        1AFF29FA1AFF29FA1AFF29FA1AFF21C815CC0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000041B
        031B157E0D8125E217E629FA1AFF29FA1AFF29FA1AFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000041A031A147D0D8025E117E5147D0D7F}
      Caption = #27169#22411#21644#25968#25454#25509#21475#32500#25252
      ImageIndex = 4
      ImageName = #24320#25918#24179#21488
      Visible = False
      object MnModel: TMenuItem
        Caption = #20998#26512#27169#22411#32500#25252
        ImageIndex = 5
        ImageName = #27169#22411#32500#25252' '
        OnClick = MnModelClick
      end
      object MnRule: TMenuItem
        Caption = #25509#21475#35268#33539#32500#25252
        ImageIndex = 6
        ImageName = #25968#25454#32500#25252
        OnClick = MnRuleClick
      end
      object MnDict: TMenuItem
        Caption = #25968#25454#23383#20856#32500#25252
        ImageIndex = 7
        ImageName = #23383#20856#32500#25252
        OnClick = MnDictClick
      end
    end
    object N11: TMenuItem
      Bitmap.Data = {
        36240000424D3624000000000000360000002800000030000000300000000100
        2000000000000024000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000523807609767
        0CB0895E0BA0291C033000000000000000000000000000000000000000000000
        000000000000000000000E0901107C550A9097670CB052380760000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000291C0330A5710EC0DB9612FFDB96
        12FFDB9612FFCE8D11F00E090110000000000000000000000000000000000000
        00000000000000000000B37A0FD0DB9612FFDB9612FFDB9612FFB37A0FD03726
        0440000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000E090110895E0BA0DB9612FFDB9612FFB27A0FCF442E
        064F895E0B9FDB9612FF895E0BA0000000000000000000000000000000000000
        0000000000006E4B0980DB9612FFA4700DBF442E064FA4700DBFDB9612FFDB96
        12FF895E0BA01B13022000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006E4B0980CE8D11F0DB9612FFCD8D11EF5238075F000000000000
        00000E090110CD8D11EFDB9612FF291C03300000000000000000000000000000
        00001B130220CE8D11F0DB9612FF1B13022000000000000000005238075FCD8D
        11EFDB9612FFCE8D11F06E4B0980000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000452F
        0650C08410E0DB9612FFDB9612FF6D4B097F0E09011000000000000000000000
        00000000000052380760DB9612FFA5710EC00000000000000000000000000000
        0000895E0BA0DB9612FF6E4B0980000000000000000000000000000000000E09
        01106D4B097FDB9612FFDB9612FFC08410E0452F065000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000895E0BA0DB96
        12FFDB9612FF96670CAF1B130220000000000000000000000000000000000000
        00000000000000000000B27A0FCFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFCD8D11EF0E090110000000000000000000000000000000000000
        0000000000001B13022096670CAFDB9612FFDB9612FF895E0BA0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000291C0330DB9612FFB27A
        0FCF372604400000000000000000000000000000000000000000000000000000
        00000000000000000000291C0330CD8D11EFB27A0FCFA4700DBFA4700DBFB27A
        0FCFDB9612FF452F065000000000000000000000000000000000000000000000
        000000000000000000000000000037260440BF8310DFDB9612FF523807600000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000037260440DB9612FF7C55
        0A90000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006E4B0980DB9612FF6E4B09800000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000E090110CD8D11EFDB96
        12FF1B1302200000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000E090110CE8D11F0DB9612FF291C03300000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006E4B0980DB96
        12FF97670CB00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000006E4B0980DB9612FF895E0BA0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000BF83
        10DFDB9612FF3726044000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001B130220DB9612FFCD8D11EF0E090110000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000452F
        0650DB9612FFB37A0FD000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000895E0BA0DB9612FF6E4B098000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006042
        0870DB9612FFB27A0FCF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A4700DBFDB9612FF6E4B098000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B130220CE8D
        11F0DB9612FF291C033000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000291C0330CD8D11EFDB9612FF1B130220000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000895E0BA0DB96
        12FF6E4B09800000000000000000000000000000000000000000000000000000
        0000000000000000000000000000493206557B540A8F97670CAF98680CB18057
        0A95563B0764100B011200000000000000000000000000000000000000000000
        000000000000000000000000000060420870DB9612FF97670CB0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001B1302206E4B09806E4B09806E4B09806E4B09806E4B0980DB9612FFCD8D
        11EF0E0901100000000000000000000000000000000000000000000000000000
        0000000000004F36065CC18410E1DB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFD39111F66D4B097F000000000000000000000000000000000000
        000000000000000000000000000000000000BF8310DFDB9612FF6E4B09806E4B
        09806E4B09806E4B0980523807600E0901100000000000000000000000001B13
        0220CE8D11F0DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF6E4B
        0980000000000000000000000000000000000000000000000000000000000000
        00005C3F086CDB9612FFDB9612FFA4700DBF6D4B097F2419032A1F1503245E40
        086D9C6B0DB6DB9612FFDB9612FF6D4B097F0000000000000000000000000000
        0000000000000000000000000000000000006E4B0980DB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFCE8D11F01B13022000000000000000006E4B
        0980DB9612FF895E0B9F3625043F3625043F3625043F3625043F3625043F0000
        0000000000000000000000000000000000000000000000000000000000006D4B
        097FDB9612FFC78810E8402C054B000000000000000000000000000000000000
        00000000000049320655DB9612FFDB9612FF6D4B097F00000000000000000000
        000000000000000000000000000000000000000000005238075F6D4B097F6D4B
        097F6D4B097F6D4B097F96670CAFDB9612FF7C550A900000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001F150324CB8B
        11EDC78810E8281B032E00000000000000000000000000000000000000000000
        0000000000000000000049320655DB9612FFDB9612FF4E36065B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000007D560A92DB96
        12FF77520A8B0000000000000000000000000000000000000000000000000000
        000000000000000000000000000060420870DB9612FF8D600CA4000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000008050109DB9612FFDB96
        12FF281B032E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000002419032ADB9612FFCB8B11ED000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001710021ADB9612FFC788
        10E8000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B67D0FD4DB9612FF372504400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000261A032CDB9612FFB37B
        0FD1000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000A4700DBFDB9612FF261A032C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000037250440DB9612FFB57C
        0FD2000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000A4700DBFDB9612FF150E02180000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AE770ECBDB96
        12FF281C032F0000000000000000000000000000000000000000000000000000
        00000000000000000000000000001D140221C88910E9C58710E5040300050000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000583C0767DB96
        12FF6D4B097F0000000000000000000000000000000000000000000000000000
        00000000000000000000000000007C550A90DB9612FF6D4B097F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC00000000000000000A571
        0EC0DB9612FF3726044000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000120C0115C385
        10E3DB9612FF6042087000000000000000000000000000000000000000000000
        0000000000000000000049320655DB9612FFC58710E5160F0219000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000037260440DB9612FFA5710EC000000000000000006E4B
        0980DB9612FF97670CB06E4B09806E4B09806E4B09806E4B0980604208700E09
        011000000000000000000000000000000000000000000000000000000000543A
        0762DB9612FFDB9612FF4F36065C000000000000000000000000000000000000
        00000000000049320655DB9612FFDB9612FF6D4B097F00000000000000000000
        0000000000000000000000000000000000000000000037260440372604403726
        04403726044037260440895E0BA0DB9612FF6E4B098000000000000000000E09
        0110BF8310DFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF6E4B
        0980000000000000000000000000000000000000000000000000000000000000
        00005037075DDB9612FFDB9612FFB1790FCE865C0B9C523807604E36065B7D56
        0A92AC760EC8DB9612FFCE8D11F04F36065C0000000000000000000000000000
        0000000000000000000000000000000000006E4B0980DB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFCD8D11EF1B13022000000000000000000000
        00000E090110442E064F6D4B097F6D4B097F6D4B097F6D4B097FDB9612FFCE8D
        11F00E0901100000000000000000000000000000000000000000000000000000
        0000000000002C1E04339E6C0DB8DB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FF9E6C0DB830210438000000000000000000000000000000000000
        00000000000000000000000000000E090110CE8D11F0DB9612FF6D4B097F6D4B
        097F6D4B097F6D4B097F5F41086F0E0901100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000895E0BA0DB96
        12FF6E4B09800000000000000000000000000000000000000000000000000000
        0000000000000000000000000000553A076381580B9699690DB297670CAF7D56
        0A92553A07630000000000000000000000000000000000000000000000000000
        00000000000000000000000000006E4B0980DB9612FF895E0BA0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B130220CD8D
        11EFDB9612FF291C033000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000291C0330DB9612FFCD8D11EF1B130220000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006042
        0870DB9612FFC08410E000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A5710EC0DB9612FF6042087000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006E4B
        0980DB9612FF895E0BA000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A4700DBFDB9612FF5238076000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B130220CE8D
        11F0DB9612FF1B13022000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000291C0330DB9612FFCE8D11F00E090110000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000895E0BA0DB96
        12FF6E4B09800000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000895E0BA0DB9612FF6E4B0980000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000291C0330DB9612FFBF83
        10DF0E0901100000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000E090110CD8D11EFDB9612FF1B1302200000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000006E4B0980DB9612FF6E4B
        0980000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007C550A90DB9612FF452F06500000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000037260440DB9612FFCE8D
        11F0523807600000000000000000000000000000000000000000000000000000
        00000000000000000000452F0650DB9612FFCE8D11F0A5710EC0A5710EC0CE8D
        11F0DB9612FF452F065000000000000000000000000000000000000000000000
        0000000000000000000000000000452F0650C08410E0DB9612FF291C03300000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000007B540A8FDB96
        12FFDB9612FFA5710EC0291C0330000000000000000000000000000000000000
        0000000000000E090110CE8D11F0DB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFC08410E000000000000000000000000000000000000000000000
        000000000000291C0330A5710EC0DB9612FFDB9612FF895E0B9F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003726
        0440B27A0FCFDB9612FFDB9612FF895E0BA00E09011000000000000000000000
        0000000000007C550A90DB9612FF895E0BA00000000000000000000000000000
        000096670CAFDB9612FF6E4B0980000000000000000000000000000000000E09
        01107C550A90DB9612FFDB9612FFBF8310DF3726044000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005238075FCD8D11EFDB9612FFCE8D11F060420870000000000000
        00001B130220DB9612FFCD8D11EF0E0901100000000000000000000000000000
        00001B130220DB9612FFCE8D11F00E090110000000000000000060420870CE8D
        11F0DB9612FFCD8D11EF5F41086F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000E0901106D4B097FDB9612FFDB9612FFC08410E0452F
        0650A5710EC0DB9612FF6E4B0980000000000000000000000000000000000000
        0000000000006E4B0980DB9612FF97670CB0452F0650C08410E0DB9612FFDB96
        12FF7B540A8F0E09011000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001B130220A4700DBFDB9612FFDB96
        12FFDB9612FFB27A0FCF00000000000000000000000000000000000000000000
        0000000000000E090110BF8310DFDB9612FFDB9612FFDB9612FFA4700DBF1B13
        0220000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000372604406D4B
        097F5F41086F0E09011000000000000000000000000000000000000000000000
        000000000000000000000E0901106D4B097F895E0B9F37260440000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = #31995#32479#31649#29702
      ImageIndex = 8
      ImageName = #31995#32479#31649#29702
      object MnModRest: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000DB96
          11FFDB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB96
          11FFD49110F7D49110F7D49110F7DB9611FFDA9511FE00000000DA9511FEDA95
          11FED89411FBD49110F7D49110F7D49110F7D49110F7DB9611FFDB9611FFDB96
          11FFDB9611FFDB9611FFDB9611FFD89411FCDB9611FFDB9611FFD89411FCDB96
          11FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA9511FEDA9511FED99511FDDB96
          11FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA9511FEDA9511FED49110F7DB96
          11FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA9511FEDA9511FEDB9611FFDB96
          11FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA9511FEDA9511FEDB9611FFDB96
          11FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA9511FEDB9611FFDB9611FFDB96
          11FF00000000000000000000F7F70001FDFE0001FBFC00000000000000000000
          000000000000000000000000000000000000DA9511FEDB9611FF000000000000
          0000000000000000000000000000000000000001FCFD0001FCFD000000000000
          000000000000000000000000000000000000DA9511FEDB9611FF000000000000
          000000000000000000000000FAFB0001FCFD0001FEFF0001FDFE0000FAFB0000
          000000000000000000000000000000000000DA9511FEDB9611FF000000000000
          0000000000000001FEFF0001FBFC000000000000FAFB0001FDFE000000000000
          000000000000000000000000000000000000DA9511FEDB9611FF000000000000
          00000001FDFE0000F9F900000000000000000001FEFF00000000000000000000
          000000000000000000000000000000000000DA9511FEDB9611FF000000000001
          FCFD0000FAFA00000000000000000000F9F90000FAFB00000000000000000000
          000000000000000000000000000000000000DA9511FEDA9511FE0000F7F70001
          FDFE000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA9511FEDA9511FE0000FFFF0001
          FBFC000000000000000000000000000000000000000000000000D59211F8D894
          11FBD89411FBD89411FBD89411FBD99511FDDB9611FFD99511FD0000FFFF0000
          0000000000000000000000000000000000000000000000000000D59211F8DB96
          11FFDB9611FFDB9611FFDB9611FFD69211F9D49110F700000000}
        Caption = #23548#20837#27169#22411
        ImageIndex = 10
        ImageName = #23548#20837#27169#22411
        OnClick = MnModRestClick
      end
      object MnModBack: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000D99511FDDB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB96
          11FFDB9611FFDB9611FFDB9611FFD39110F6000000000000000000000000D290
          10F5CD8D10EF0000000000000000000000000000000000000000000000000000
          00000000000000000000D89411FBDA9511FED89411FC0000000000000000CD8D
          10EFD18F10F30000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9611FFCD8D10EF0000000000000000CD8D
          10EFD18F10F30000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D89411FCDA9511FE0000000000000000CD8D
          10EFDB9611FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D89411FCDA9511FE0000000000000000CD8D
          10EFDB9611FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D89411FCDA9511FE0000000000000000DA95
          11FEDB9611FF000000000000000000000000000000000000FFFF0000FFFF0000
          000000000000000000000000000000000000D89411FC0000000000000000DA95
          11FED89411FC000000000000000000000000000000000000FFFF0000FFFF0000
          000000000000000000000000000000000000000000000000000000000000DA95
          11FED89411FC000000000000000000000000000000000000FFFF0000FFFF0000
          FFFF00000000000000000000000000000000000000000000000000000000DA95
          11FED89411FC00000000000000000000000000000000000000000000FFFF0000
          FFFF00000000000000000000FFFF0000FFFF000000000000000000000000DA95
          11FED89411FC0000000000000000000000000000000000000000000000000000
          FFFF0000FFFF00000000000000000000FFFF000000000000000000000000D995
          11FDD99511FD0000000000000000000000000000000000000000000000000000
          00000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000000806
          0109DB9611FFD99511FDD99511FDD99511FDD99511FDD89411FC000000000000
          000000000000000211140000FFFF0000FFFF0000FFFF00000000000000000000
          000000000000D99511FDD99511FDD99511FDD99511FDD89411FC000000000000
          0000000000000000FFFF0000FFFF0001090B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Caption = #23548#20986#27169#22411
        Hint = #24320#25918#27169#24335#19979#21487#20197#36873#25321#27169#22411#23548#20986#65292#26041#20415#20849#20139
        ImageIndex = 9
        ImageName = #23548#20986#27169#22411
        OnClick = MnModBackClick
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object MnPass: TMenuItem
        Caption = #20462#25913#23494#30721
        OnClick = MnPassClick
      end
      object MnUser: TMenuItem
        Caption = #29992#25143#31649#29702
        OnClick = MnUserClick
      end
      object MnOpen: TMenuItem
        Caption = #9733#27169#22411#19982#25509#21475#32500#25252
        OnClick = MnOpenClick
      end
    end
    object MnHelp: TMenuItem
      Bitmap.Data = {
        36240000424D3624000000000000360000002800000030000000300000000100
        2000000000000024000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000402C054B583C07666D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000432E054EA4700DBFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005D40
        086CDB9612FFDB9612FFC08310DF92640CAA6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097FDB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000291C0330DB96
        12FFDB9612FF604208700906010B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF624308730000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF77510A8A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FFDB9612FF664608760906010B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FFDB9612FFDB9612FFC08310DF8D600CA46D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097FDB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF553A0763B67D0FD4DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF37250440000000003F2B0549533907616D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B097F6D4B
        097F6D4B097F6D4B097F6D4B097F6D4B097FDB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF37250440000000000000000000000000000000001E140223000000000000
        000000000000000000000000000000000000000000006D4B097F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF734F09860000
        00000000000000000000000000000000000092640CAADB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FFDB9612FF7F57
        0A9300000000000000000000000092640CAADB9612FFDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FFB67D0FD4DB96
        12FF885D0B9F0000000092640CAADB9612FFCF8E11F1DB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097FB67D
        0FD4DB9612FF92640CAADB9612FFB77E0FD66D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F2419
        032AB67D0FD4DB9612FFA06D0DBA000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        00002419032A6D4B097F00000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF372504400000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FF3F2B05490000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FFDB9612FF4932065500000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000006D4B097FDB9612FF6D4B097F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B130220DB96
        12FFDB9612FFDB9612FF835A0B99493206556D4B097FDB9612FF6D4B097F3725
        0440372504403725044037250440372504406D4B097FDB9612FF6D4B097F3725
        0440372504403725044037250440372504403725044037250440372504403725
        044037250440372504403725044037250440DB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002C1E
        0433835A0B99D59211F7DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000201603256D4B097F855B0B9BA4700DBFA4700DBFA4700DBFA470
        0DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBFA470
        0DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBFA470
        0DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBFA4700DBF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = #24110#21161
      ImageIndex = 11
      ImageName = #24110#21161#25163#20876
      object N32: TMenuItem
        Caption = #26816#26597#25968#25454#25509#21475#35268#33539
        Visible = False
      end
      object N33: TMenuItem
        Caption = #26816#26597#36923#36753#20851#31995#20195#30721#32534#20889#35268#33539
        Visible = False
      end
      object N34: TMenuItem
        Caption = #30456#20851#27861#35268
        Visible = False
      end
      object N35: TMenuItem
        Caption = #25805#20316#25163#20876
        Visible = False
      end
      object N36: TMenuItem
        Caption = #20462#25913#24110#21161#20869#23481#30340#26041#27861
        Visible = False
      end
      object N9: TMenuItem
        Caption = #20851#20110
        ImageIndex = 13
        ImageName = #20851#20110
        OnClick = N9Click
      end
    end
    object MnExit: TMenuItem
      Bitmap.Data = {
        36240000424D3624000000000000360000002800000030000000300000000100
        2000000000000024000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003A270543734F09868A5F0BA1A16F0DBCB87E0FD7CF8E11F2CF8E11F2B87E
        0FD7A16F0DBC8A5F0BA1734F09863323043C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000422D054C835A0B99C587
        10E5DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFC18410E177520A8B3C2905460000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000A07010C5E40086DB1790FCEDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFB179
        0FCE5E40086D0A07010C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000150E021868470979BC810FDBDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFBC810FDB68470979150E02180000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002D1F
        0435B87E0FD7DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFD08E11F2B37A0FD0B37A0FD0D08E
        11F2DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFBC810FDB412C054B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000038260541DB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFCF8E
        11F19E6C0DB8664608762F200437120C01150000000000000000000000000000
        0000120C01152F2004376042087097670CAFCD8D11EFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF553A0763000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000053390761DB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF9F6D0DB9422D054D0805
        0109000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000007050108422D054D9F6D0DB9DB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF654508760000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000065450876DB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFDB9612FFAD760EC95037075D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005037
        075DAD760EC9DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF5339
        0761000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000553A0763DB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FF7F570A94000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000092640CAADB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FF382605410000000000000000000000000000000000000000000000000000
        00000000000000000000412C054BDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FF6D4B097F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000092640CAADB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FF2D1F043500000000000000000000000000000000000000000000
        000000000000150E0218BC810FDBDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FF6D4B097F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000006D4B097FDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFB87E0FD7150E0218000000000000000000000000000000000000
        00000000000068470979DB9612FFDB9612FFDB9612FFDB9612FFDB9612FF9264
        0CAA000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006D4B097FDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FF68470979000000000000000000000000000000000000
        00000A07010CBC810FDBDB9612FFDB9612FFDB9612FFDB9612FF92640CAA0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000007F570A94DB9612FFDB96
        12FFDB9612FFDB9612FFBC810FDB0A07010C0000000000000000000000000000
        00005E40086DDB9612FFDB9612FFDB9612FFDB9612FFAD760EC9000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AD760EC9DB96
        12FFDB9612FFDB9612FFDB9612FF5E40086D0000000000000000000000000000
        0000B1790FCEDB9612FFDB9612FFDB9612FFDB9612FF5037075D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000005037075DDB96
        12FFDB9612FFDB9612FFDB9612FFB1790FCE0000000000000000000000003C29
        0546DB9612FFDB9612FFDB9612FFDB9612FF9F6D0DB900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009F6D
        0DB9DB9612FFDB9612FFDB9612FFDB9612FF422D054C00000000000000007752
        0A8BDB9612FFDB9612FFDB9612FFDB9612FF422D054D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000422D
        054DDB9612FFDB9612FFDB9612FFDB9612FF835A0B990000000000000000C184
        10E1DB9612FFDB9612FFDB9612FFCD8D11EF0705010800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000805
        0109CF8E11F1DB9612FFDB9612FFDB9612FFC58710E5000000003323043CDB96
        12FFDB9612FFDB9612FFDB9612FF97670CAF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009E6C0DB8DB9612FFDB9612FFDB9612FFDB9612FF3A270543734F0986DB96
        12FFDB9612FFDB9612FFDB9612FF604208700000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000066460876DB9612FFDB9612FFDB9612FFDB9612FF734F09868A5F0BA1DB96
        12FFDB9612FFDB9612FFDB9612FF2F2004370000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002F200437DB9612FFDB9612FFDB9612FFDB9612FF8A5F0BA1A16F0DBCDB96
        12FFDB9612FFDB9612FFDB9612FF120C01150000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000120C0115DB9612FFDB9612FFDB9612FFDB9612FFA16F0DBCB87E0FD7DB96
        12FFDB9612FFDB9612FFD08E11F2000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000D08E11F2DB9612FFDB9612FFDB9612FFB87E0FD7CF8E11F2DB96
        12FFDB9612FFDB9612FFB37A0FD0000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000B37A0FD0DB9612FFDB9612FFDB9612FFCF8E11F2D18F11F3DB96
        12FFDB9612FFDB9612FFB1790FCE000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000B1790FCEDB9612FFDB9612FFDB9612FFD18F11F3BD8110DCDB96
        12FFDB9612FFDB9612FFCB8B11EC000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000CB8B11ECDB9612FFDB9612FFDB9612FFBD8110DCA9740EC5DB96
        12FFDB9612FFDB9612FFDB9612FF0A07010B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000A07010BDB9612FFDB9612FFDB9612FFDB9612FFA9740EC595660CAEDB96
        12FFDB9612FFDB9612FFDB9612FF231803290000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000023180329DB9612FFDB9612FFDB9612FFDB9612FF95660CAE81590B97DB96
        12FFDB9612FFDB9612FFDB9612FF4A3306560000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001052228010522280000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004D340659DB9612FFDB9612FFDB9612FFDB9612FF81590B976D4B097FDB96
        12FFDB9612FFDB9612FFDB9612FF97680CB00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000041595B0061ED8FF061ED8FF0415
        95B0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000A16F0DBCDB9612FFDB9612FFDB9612FFDB9612FF6D4B097F160F0219DB96
        12FFDB9612FFDB9612FFDB9612FFDB9612FF1B13022000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000209424E061ED8FF061ED8FF061ED8FF061E
        D8FF0209424F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002116
        0326DB9612FFDB9612FFDB9612FFDB9612FFDB9612FF1A12021E000000009063
        0CA8DB9612FFDB9612FFDB9612FFDB9612FF6445087500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006B49
        097CDB9612FFDB9612FFDB9612FFDB9612FF9D6C0DB70000000000000000422D
        054CDB9612FFDB9612FFDB9612FFDB9612FFB1790FCE0806010A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000806010AB179
        0FCEDB9612FFDB9612FFDB9612FFDB9612FF4E36065B00000000000000000000
        0000B47B0FD1DB9612FFDB9612FFDB9612FFDB9612FF6D4B097F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D4B097FDB96
        12FFDB9612FFDB9612FFDB9612FFBA7F0FD80000000000000000000000000000
        00006D4B097FDB9612FFDB9612FFDB9612FFDB9612FFD39011F52A1D03310000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002A1D0331D39011F5DB96
        12FFDB9612FFDB9612FFDB9612FF6D4B097F0000000000000000000000000000
        000007050108AF780ECBDB9612FFDB9612FFDB9612FFDB9612FF8F620CA70000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008F620CA7DB9612FFDB96
        12FFDB9612FFDB9612FFAF780ECB070501080000000000000000000000000000
        00000000000048310654DB9612FFDB9612FFDB9612FFDB9612FFDB9612FF6D4B
        097F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006D4B097FDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FF48310654000000000000000000000000000000000000
        00000000000000000000895E0BA0DB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FF6D4B097F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        00000000000000000000000000006D4B097FDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FF895E0BA000000000000000000000000000000000000000000000
        0000000000000000000023180329CB8B11ECDB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FF6D4B097F00000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        000000000000000000006D4B097FDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FFCB8B11EC2318032900000000000000000000000000000000000000000000
        000000000000000000000000000049320655DB9612FFDB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FF46300652000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        0000000000003423043CDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
        12FF4D3406590000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000049320655DB9612FFDB9612FFDB96
        12FFDB9612FFDB9612FFA4700DBF000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        000000000000895E0B9FDB9612FFDB9612FFDB9612FFDB9612FFDB9612FF553A
        0763000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000049320655DB9612FFDB96
        12FFDB9612FFDB9612FF875C0B9D000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        000000000000895E0B9FDB9612FFDB9612FFDB9612FFDB9612FF5E40086E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000049320655B97F
        0FD7DB9612FFDB9612FF49320655000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        0000000000006D4B097FDB9612FFDB9612FFDB9612FF6847097A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1502231811021C00000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        0000000000000000000000000000281C032F110C011400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020C5666061ED8FF061ED8FF061ED8FF061E
        D8FF020C56660000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001083842061ED8FF061ED8FF061ED8FF061E
        D8FF010837410000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000003107388061DD2F8061CCCF10310
        7388000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = #36864#20986
      ImageIndex = 12
      ImageName = #36864#20986
      OnClick = MnExitClick
    end
  end
  object dsTree: TDataSource
    DataSet = fdQryTree
    Left = 30
    Top = 155
  end
  object pm1: TPopupMenu
    Left = 72
    Top = 392
    object N24: TMenuItem
      Caption = #20840#37096#23637#24320
      OnClick = N24Click
    end
    object N25: TMenuItem
      Caption = #20840#37096#25910#32553
      OnClick = N25Click
    end
  end
  object ds1: TDataSource
    DataSet = fdmtblRun
    Left = 1091
    Top = 357
  end
  object actlst1: TActionList
    Left = 72
    Top = 176
    object edtcpy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
  end
  object pm2: TPopupMenu
    OnPopup = pm2Popup
    Left = 16
    Top = 392
    object Copy1: TMenuItem
      Action = edtcpy1
      Caption = '&C'#22797#21046#25152#36873
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object N18: TMenuItem
      Caption = #23383#27573#26368#20339#23485#24230
      Checked = True
      OnClick = N18Click
    end
    object N20: TMenuItem
      Caption = #23383#27573#28385#23631#26174#31034
      OnClick = N20Click
    end
    object Excel1: TMenuItem
      Caption = #23548#20986'Excel'
      OnClick = excel1Click
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'file1'
    Filter = 'Exce2007'#20197#19978#25991#20214' (*.xlsx)|*.XLSX|Exce97-2003'#25991#20214' (*.xls)|*.XLS'
    Title = #23548#20986'Excel'#25991#20214
    Left = 112
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Filter = #21151#33021#25991#20214' (*.zh)|*.zh'
    Left = 16
    Top = 80
  end
  object SaveDialog2: TSaveDialog
    FileName = 'file1'
    Filter = #27169#22411#25991#20214' (*.Mod)|*.Mod'
    Title = #23548#20986#27169#22411
    Left = 160
    Top = 96
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 32
    Top = 480
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = 16776176
    end
    object cxstyl2: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientInactiveCaption
    end
    object cxstylTraceHot: TcxStyle
      AssignedValues = [svColor]
      Color = clMenuHighlight
    end
  end
  object dsAssis: TDataSource
    DataSet = fdQryAssis
    Left = 1291
    Top = 541
  end
  object prpstrgh1: TPropStorageEh
    Section = 'datGrid'
    StorageManager = inprpstrgmnh1
    StoredProps.Strings = (
      'cxDBTreeList1.<P>.Width'
      'Panel1.pnl1.cxspltr3.<P>.Visible'
      'Panel1.pnl1.dbgrdh1.<P>.Align'
      'Panel1.pnl1.pnl2.chkAssisDis.<P>.Checked'
      'Panel1.pnl1.pnl9.<P>.Visible')
    Left = 757
    Top = 173
  end
  object inprpstrgmnh1: TIniPropStorageManEh
    IniFileName = 'datgrid'
    Left = 637
    Top = 165
  end
  object pm3: TPopupMenu
    OnPopup = pm3Popup
    Left = 380
    Top = 780
    object MenuItem1: TMenuItem
      Action = edtcpy1
      Caption = '&'#22797#21046#25152#36873
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object N301: TMenuItem
      Caption = #23383#27573#26368#20339#23485#24230
      Checked = True
      OnClick = N301Click
    end
    object N302: TMenuItem
      Caption = #23383#27573#28385#23631#26174#31034
      OnClick = N302Click
    end
  end
  object pm4: TPopupMenu
    OnPopup = pm4Popup
    Left = 200
    Top = 208
    object N50: TMenuItem
      Action = edtcpy1
    end
    object N51: TMenuItem
      Caption = '-'
    end
    object N15: TMenuItem
      Caption = #34920#26684#35774#32622
      OnClick = N15Click
    end
    object N401: TMenuItem
      Caption = #23383#27573#26368#20339#23485#24230
      Checked = True
      OnClick = N401Click
    end
    object N402: TMenuItem
      Caption = #23383#27573#28385#23631#26174#31034
      OnClick = N402Click
    end
  end
  object pm5: TPopupMenu
    Images = F_DT.vrtlmglst1
    Left = 216
    Top = 256
    object N53: TMenuItem
      Caption = #24674#22797#30028#38754#26684#24335
      ImageIndex = 4
      ImageName = #25764#38144
      OnClick = N53Click
    end
    object N49: TMenuItem
      Caption = #20445#23384#30028#38754#26684#24335
      ImageIndex = 8
      ImageName = #20445#23384
      OnClick = N49Click
    end
  end
  object fdSPRun: TFDStoredProc
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 565
    Top = 273
  end
  object fdSPAuto: TFDStoredProc
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 485
    Top = 273
  end
  object fdQryTree: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from x_Menus order by t_order')
    Left = 16
    Top = 216
    object fdQryTreet_id: TIntegerField
      FieldName = 't_id'
      Origin = 't_id'
    end
    object fdQryTreet_parent_id: TIntegerField
      FieldName = 't_parent_id'
      Origin = 't_parent_id'
    end
    object fdQryTreet_name: TStringField
      FieldName = 't_name'
      Origin = 't_name'
      Size = 50
    end
    object fdQryTreet_memo: TStringField
      DisplayWidth = 600
      FieldName = 't_memo'
      Origin = 't_memo'
      Size = 600
    end
    object fdQryTreet_para: TStringField
      DisplayWidth = 400
      FieldName = 't_para'
      Origin = 't_para'
      Size = 400
    end
    object fdQryTreet_proc: TMemoField
      FieldName = 't_proc'
      Origin = 't_proc'
      BlobType = ftMemo
    end
    object fdQryTreet_right: TStringField
      FieldName = 't_right'
      Origin = 't_right'
    end
    object fdQryTreet_order: TIntegerField
      FieldName = 't_order'
      Origin = 't_order'
    end
    object fdQryTreet_auto: TStringField
      FieldName = 't_auto'
      Origin = 't_auto'
      FixedChar = True
      Size = 1
    end
    object fdQryTreet_hide: TStringField
      FieldName = 't_hide'
      Origin = 't_hide'
      FixedChar = True
      Size = 1
    end
    object fdQryTreet_type: TStringField
      FieldName = 't_type'
      Origin = 't_type'
      FixedChar = True
      Size = 1
    end
    object fdQryTreet_sort: TStringField
      FieldName = 't_sort'
      Origin = 't_sort'
      Size = 12
    end
    object fdQryTreeisClass: TStringField
      FieldName = 'isClass'
      Origin = 'isClass'
      FixedChar = True
      Size = 1
    end
  end
  object fdqryTmp: TFDQuery
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 952
    Top = 192
  end
  object fdmtblRun: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 1141
    Top = 353
  end
  object fdqryAuto: TFDQuery
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 80
    Top = 288
  end
  object fdQryExport: TFDQuery
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 389
    Top = 169
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 1157
    Top = 217
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 1141
    Top = 281
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 1149
    Top = 177
  end
  object pmAssis: TPopupMenu
    Left = 336
    Top = 728
    object N3: TMenuItem
      Caption = #35843#21462#35843#21462#36741#21161#34920#26597#35810#27169#26495
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #20445#23384#21040#36741#21161#34920#26597#35810#27169#26495
      OnClick = N4Click
    end
  end
  object dlgOpenAssis: TOpenDialog
    Filter = #36741#21161#34920#26597#35810#27169#26495'(*.asi)|*.asi'
    Title = #36741#21161#34920#26597#35810#27169#26495#25991#20214
    Left = 421
    Top = 625
  end
  object fdQryAssis: TFDQuery
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 1230
    Top = 546
  end
  object dlgSaveAssis: TSaveDialog
    Filter = #36741#21161#34920#26597#35810#27169#26495'(*.asi)|*.asi'
    Title = #36741#21161#34920#26597#35810#27169#26495#25991#20214
    Left = 680
    Top = 801
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 1277
    Top = 177
  end
end
