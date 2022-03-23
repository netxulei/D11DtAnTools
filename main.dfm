object MainFrm: TMainFrm
  Left = 640
  Top = 206
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #24320#25918#24335#29616#22330#26816#26597#25968#25454#20998#26512#24037#20855'__'
  ClientHeight = 997
  ClientWidth = 1604
  Color = clGradientInactiveCaption
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI Emoji'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object cxDBTreeList1: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 260
    Height = 997
    Align = alLeft
    Bands = <
      item
      end>
    DataController.DataSource = dsTree
    DataController.ParentField = 't_parent_id'
    DataController.KeyField = 't_id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Images = ImageList1
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.CellHints = True
    OptionsBehavior.ImmediateEditor = False
    OptionsBehavior.Sorting = False
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsSelection.HideFocusRect = False
    OptionsView.CellAutoHeight = True
    OptionsView.ColumnAutoWidth = True
    OptionsView.GridLines = tlglHorz
    OptionsView.IndicatorWidth = 8
    OptionsView.TreeLineColor = clHotLight
    ParentFont = False
    PopupMenu = pm1
    RootValue = -1
    StateImages = ImageList1
    Styles.Background = cxstyl1
    Styles.Content = cxstyl1
    Styles.Inactive = cxstyl2
    Styles.BandBackground = cxstyl1
    Styles.BandContent = cxstyl1
    Styles.BandHeader = cxstyl1
    Styles.ColumnFooter = cxstyl1
    TabOrder = 0
    OnDblClick = cxDBTreeList1DblClick
    OnFocusedNodeChanged = cxDBTreeList1FocusedNodeChanged
    OnGetNodeImageIndex = cxDBTreeList1GetNodeImageIndex
    object cxDBTreeList1t_name: TcxDBTreeListColumn
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
  end
  object Panel1: TPanel
    Left = 268
    Top = 0
    Width = 1336
    Height = 997
    Align = alClient
    Caption = 'Panel1'
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 25
      Width = 1334
      Height = 32
      Align = alTop
      Caption = 'Panel2'
      ParentBackground = False
      TabOrder = 0
      object lblMemo: TLabel
        Left = 1
        Top = 1
        Width = 56
        Height = 30
        Align = alLeft
        Caption = #21151#33021#25551#36848
        Layout = tlCenter
        ExplicitHeight = 19
      end
      object pnl3: TPanel
        Left = 57
        Top = 1
        Width = 1276
        Height = 30
        Align = alClient
        BevelOuter = bvLowered
        Color = 16776176
        ParentBackground = False
        TabOrder = 0
        OnResize = pnl3Resize
        object cxdbtxtdt1: TcxDBTextEdit
          Left = 1
          Top = 1
          Align = alClient
          AutoSize = False
          DataBinding.DataField = 't_memo'
          DataBinding.DataSource = dsTree
          Enabled = False
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.Color = clBtnHighlight
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TransparentBorder = True
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.TextColor = clBlack
          TabOrder = 0
          Height = 28
          Width = 1274
        end
      end
    end
    object pnl1: TPanel
      Left = 1
      Top = 57
      Width = 1334
      Height = 939
      Align = alClient
      Caption = 'pnl1'
      Color = 16776176
      ParentBackground = False
      TabOrder = 1
      object pnl5: TPanel
        Left = 1
        Top = 1
        Width = 1332
        Height = 27
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'Panel2'
        ParentBackground = False
        TabOrder = 0
        object pnl6: TPanel
          Left = 1
          Top = 1
          Width = 312
          Height = 25
          Align = alLeft
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Emoji'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object spbtnFormat: TSpeedButton
            Left = 190
            Top = 1
            Width = 82
            Height = 22
            Caption = #34920#26684#26684#24335
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
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
            OnClick = spbtnFormatClick
          end
          object btn2: TBitBtn
            Left = 9
            Top = 0
            Width = 84
            Height = 23
            Caption = #23548#20986#32467#26524
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
              333333333333337FF3333333333333903333333333333377FF33333333333399
              03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
              99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
              99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
              03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
              33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
              33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
              3333777777333333333333333333333333333333333333333333}
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            OnClick = btn2Click
          end
          object btn1: TBitBtn
            Left = 278
            Top = 1
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
            Left = 99
            Top = 3
            Width = 97
            Height = 17
            Caption = #23548#20986#21518#25171#24320
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
        end
        object pnl4: TPanel
          Left = 313
          Top = 1
          Width = 1018
          Height = 25
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnResize = pnl4Resize
          ExplicitLeft = 282
          ExplicitWidth = 1049
          object lblInfo: TLabel
            Left = 1
            Top = 1
            Width = 1016
            Height = 23
            Align = alClient
            Caption = #24403#21069#39033#30446
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 56
            ExplicitWidth = 992
          end
        end
      end
      object dbgrdh1: TDBGridEh
        Left = 1
        Top = 52
        Width = 1332
        Height = 748
        Hint = #34920#26684#25805#20316#35828#26126#65306'1.'#21452#20987#34920#26684#20248#21270#26174#31034#65307'2.'#28857#20987#26631#39064#21487#25490#24207#65307'3.'#28857#20987#34920#26684#24038#19978#30340#21521#19979#19977#35282#65292#36873#25321#26174#31034#21508#21015#65307'4.'#40736#26631#21491#38190#26356#22810#21151#33021#12290
        Align = alTop
        AllowedOperations = []
        Color = 16776176
        ColumnDefValues.AlwaysShowEditButton = True
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
        ImeName = #20013#25991' ('#31616#20307') - '#32654#24335#38190#30424
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
        OnDblClick = dbgrdh1DblClick
        OnKeyUp = dbgrdh1KeyUp
        OnMouseDown = dbgrdh1MouseDown
        OnTitleBtnClick = dbgrdh1TitleBtnClick
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnl2: TPanel
        Left = 1
        Top = 28
        Width = 1332
        Height = 24
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
          Left = 85
          Top = 1
          Width = 70
          Height = 22
          Align = alLeft
          Caption = #31579#36873#32467#26524#65306
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 1
          ExplicitHeight = 19
        end
        object cxtxtdt1: TcxTextEdit
          Left = 155
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
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 0
          ExplicitLeft = 71
          Width = 198
        end
        object chkAssisDis: TCheckBox
          Left = 1
          Top = 1
          Width = 84
          Height = 22
          Align = alLeft
          Caption = #36741#21161#26597#35810
          TabOrder = 1
          OnClick = chkAssisDisClick
          ExplicitLeft = -19
          ExplicitTop = 3
        end
      end
      object pnl9: TPanel
        Left = 1
        Top = 808
        Width = 1332
        Height = 130
        Align = alClient
        Color = 16776176
        ParentBackground = False
        TabOrder = 3
        Visible = False
        OnResize = pnl2Resize
        ExplicitTop = 409
        ExplicitHeight = 529
        object dbgrdh2: TDBGridEh
          Left = 1
          Top = 61
          Width = 1330
          Height = 68
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
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
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
          Font.Name = 'Segoe UI Emoji'
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
            Width = 100
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
            Left = 670
            Top = 5
            Width = 118
            Height = 24
            EditLabel.Width = 48
            EditLabel.Height = 16
            EditLabel.Caption = #20851#32852#23383#27573
            EditLabel.Layout = tlCenter
            EditLabel.WordWrap = True
            LabelPosition = lpLeft
            TabOrder = 2
            Text = #36134#21495
          end
          object lbledtTabName: TLabeledEdit
            Left = 504
            Top = 5
            Width = 105
            Height = 24
            EditLabel.Width = 72
            EditLabel.Height = 16
            EditLabel.Caption = #26469#28304#25968#25454#34920#21517
            EditLabel.Layout = tlCenter
            EditLabel.WordWrap = True
            LabelPosition = lpLeft
            TabOrder = 3
            Text = ' tb_rhzh_dw'
          end
          object lbledtSort: TLabeledEdit
            Left = 850
            Top = 5
            Width = 209
            Height = 24
            EditLabel.Width = 48
            EditLabel.Height = 16
            EditLabel.Caption = #25490#24207#23383#27573
            EditLabel.Layout = tlCenter
            EditLabel.WordWrap = True
            LabelPosition = lpLeft
            TabOrder = 4
            Text = #36134#21495','#20132#26131#26085#26399
          end
          object lbledtName: TLabeledEdit
            Left = 262
            Top = 5
            Width = 163
            Height = 24
            EditLabel.Width = 60
            EditLabel.Height = 16
            EditLabel.Caption = #36741#21161#34920#21517#31216
            EditLabel.Layout = tlCenter
            LabelPosition = lpLeft
            TabOrder = 5
            Text = #21333#20301#36134#25143
          end
          object pnlFields: TPanel
            Left = 1
            Top = 33
            Width = 1328
            Height = 26
            Align = alBottom
            Caption = 'pnlFields'
            TabOrder = 6
            object lblFields: TLabel
              Left = 92
              Top = 1
              Width = 48
              Height = 24
              Margins.Left = 30
              Align = alLeft
              Caption = #26597#35810#23383#27573
              Layout = tlCenter
              WordWrap = True
              ExplicitHeight = 16
            end
            object lblBreak: TLabel
              Left = 70
              Top = 1
              Width = 22
              Height = 24
              Margins.Left = 30
              Align = alLeft
              AutoSize = False
              Layout = tlCenter
              WordWrap = True
              ExplicitLeft = 65
            end
            object lblBk2: TLabel
              Left = 1
              Top = 1
              Width = 5
              Height = 24
              Margins.Left = 30
              Align = alLeft
              AutoSize = False
              Layout = tlCenter
              WordWrap = True
            end
            object lblbk3: TLabel
              Left = 140
              Top = 1
              Width = 2
              Height = 24
              Margins.Left = 30
              Align = alLeft
              AutoSize = False
              Layout = tlCenter
              WordWrap = True
              ExplicitLeft = 143
            end
            object bitbtnAssis: TBitBtn
              Left = 6
              Top = 1
              Width = 64
              Height = 24
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
              Left = 142
              Top = 1
              Width = 1185
              Height = 24
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
        Top = 800
        Width = 1332
        Height = 8
        Hint = #21333#20987#25110#19978#19979#25302#21160
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 40
        HotZone.ArrowColor = clBlue
        HotZone.ArrowHighlightColor = clRed
        HotZone.LightColor = clBlue
        AlignSplitter = salTop
        AutoSnap = True
        ResizeUpdate = True
        Control = dbgrdh1
        ShowHint = True
        ParentShowHint = False
        Visible = False
        ExplicitTop = 937
      end
      object btn3: TButton
        Left = 424
        Top = 224
        Width = 75
        Height = 25
        Caption = 'btn3'
        TabOrder = 5
        OnClick = btn3Click
      end
    end
    object pnl7: TPanel
      Left = 1
      Top = 1
      Width = 1334
      Height = 24
      Align = alTop
      ParentBackground = False
      TabOrder = 2
      object lblHlp: TLabel
        Left = 1
        Top = 1
        Width = 1332
        Height = 22
        Align = alClient
        Caption = #34920#26684#25805#20316#35828#26126#65306'1.'#21452#20987#34920#26684#20248#21270#26174#31034#65307'2.'#28857#20987#26631#39064#21487#25490#24207#65307'3.'#28857#20987#34920#26684#24038#19978#30340#21521#19979#19977#35282#65292#36873#25321#26174#31034#21508#21015#65307'4.'#40736#26631#21491#38190#26356#22810#21151#33021#12290
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 712
        ExplicitHeight = 13
      end
    end
  end
  object cxspltr2: TcxSplitter
    Left = 260
    Top = 0
    Width = 8
    Height = 997
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
  object MainMenu1: TMainMenu
    Left = 128
    Top = 32
    object N1: TMenuItem
      Bitmap.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF9F9F9FFF1F1
        F1FFEBEBEBFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFEBEB
        EBFFF1F1F1FFF9F9F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF2F2F2FFE0E0E0FFCDCD
        CDFFC1C1C1FFBDBDBDFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBDBDBDFFC1C1
        C1FFCDCDCDFFE0E0E0FFF2F2F2FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFBFBFFF2F2F2FFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE4E4E4FFD3D3D3FFB3B1AEFF9891
        87FF8D8175FF8B7E71FF8A7E70FF897D70FF897D70FF8A7E70FF8B7E71FF8D81
        75FF989187FFB2B0ADFFD8D8D8FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF2F2F2FFD4D4D4FFC0C0C0FFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
        BCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBABABAFFA4A09BFF968B7FFFB4AC
        A1FFCDC2B9FFE2D9D1FFE9E0D8FFF0E5DFFFF3E8E2FFEAE1DAFFE4DBD3FFCEC4
        BAFFB5ADA2FF988B7FFFACA7A2FFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEAEAEAFFA39585FF958069FF947F68FF947F68FF947F68FF947F68FF947F
        68FF947F68FF947F68FF947F68FF947F68FF957F67FF908679FFCAC2B8FFD1C9
        C0FFD6CDC3FFDCD3CAFFE3D9D1FFE9DED7FFECE1DAFFE4DAD3FFDED4CCFFD7CF
        C7FFD3CBC2FFCBC4BBFF928779FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF95806AFFD4C9B3FFCFC2ADFFCDC0ABFFCDC0ABFFCDC0ABFFCDC0
        ABFFCDC0ABFFCDC0ABFFCDC0ABFFCDC1ABFFD0C3ADFF8F8578FFCBC2BAFFCEC5
        BCFFD4CBC1FFDAD1C8FFE1D7CFFFE7DCD5FFEADFD8FFE2D8D1FFDCD2CAFFD5CD
        C3FFD0C8BEFFCDC5BBFF93897CFFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF958069FFD3C7B4FFCABCA8FFFFFEF3FFC5B7A3FFFFFDF2FFC5B7
        A3FFFFFDF2FFC5B7A3FFFFFDF2FFC7B8A3FFFFFFF6FF8F8478FFC9C0B8FFCCC3
        BAFFD2C9BFFFD8CFC4FFDFD5CDFFE9DFD8FFE9DDD6FFE0D6CFFFDAD0C8FFD3CB
        C1FFCEC5BCFFCBC3B9FF968A7EFFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF96816AFFD4CAB7FFC9BCA6FFC4B8A1FFFFFAEFFFC2B59FFFFFFA
        EFFFC2B59FFFFFFAEFFFC2B59FFFFFFBF0FFC9BBA4FF908679FFC9C2B9FFE3DE
        D4FFF5EFE9FFFFFBF4FFFEFAF3FFFDF9F2FFFDF9F2FFFDFAF3FFFFFBF4FFF6F0
        E8FFE4DDD6FFCDC7BCFF988D80FFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF97826AFFD8CEBCFFCABDA7FFFFFDF2FFC5B9A3FFFFFBF0FFC5B9
        A2FFFFFBF0FFC7B9A3FFFFFCF1FFC9BAA4FFFFFFF4FFA99D8DFFF9F4EEFFD7D0
        C8FFC5BDB5FFBDB4AAFFC1B8AEFFC7BBB3FFC8BDB4FFC2B8B0FFBEB5ABFFC7BE
        B6FFD8D1CAFFFBF7F0FFABA49DFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF98836BFFDAD1BFFFCCBFAAFFCBBEA8FFCBBEA8FFCBBDA8FFCBBE
        A8FFCBBEA8FFD0BFAAFFD7C0ADFFD8C1AEFFD3C2ADFFAEA293FFA2998FFFB5AD
        A3FFC8BEB5FFD8CFC7FFE3D9D1FFEADED8FFECE1DAFFE4DAD3FFDAD1C9FFCAC0
        B7FFB7AEA5FFA59D93FFABA59CFFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF97826CFFDDD3C3FFCEC0ACFFCEC0ACFFCEC0ACFFCEC0ACFFCEC0
        ACFFD0C0ADFFD7C2B0FF008939FF008A39FFDBC5B2FF9D9389FFCAC1B9FFCFC7
        BDFFD5CCC2FFDAD1C8FFE1D7CFFFE8DCD6FFEADFD8FFE2D8D1FFDCD2CAFFD6CE
        C4FFD1C9BFFFCCC4BBFFA1978BFFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF98836CFFDFD6C7FFCFC1ADFFD0C3AFFFD0C3B0FFD0C3B0FFD0C3
        B0FFD1C4B1FFD5C4B3FFDDC7B6FFDDC8B6FFD8C8B4FF9F988BFFC8BFB7FFCCC2
        B9FFD2C8BEFFD8CEC4FFDFD5CDFFE9DED8FFE9DDD6FFE0D6CFFFDACFC7FFD3CB
        C1FFCEC5BCFFCAC2B8FFA29A8DFFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF99846DFFE1D9CBFFD1C3B0FFC0A787FFC1A989FFC1A989FFC1A9
        89FFC1A989FFC2A98AFFC3A98AFFC4AA8BFFC5AA8AFFA0998EFFC8C0B8FFE1DB
        D2FFF3EDE6FFFDF9F2FFFCF8F1FFFBF7F0FFFBF7F0FFFCF8F1FFFDF8F2FFF4EE
        E6FFE2DBD3FFCBC3B9FFA39B8FFFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9A856EFFE3DCCEFFD1C3AFFFBEA584FFBEA685FFBEA685FFBEA6
        85FFBEA685FFBEA685FFBEA685FFBFA685FFC1A786FFA19B90FFFBF6F0FFEEE7
        DEFFE3DCD3FFDDD5CCFFDDD5CBFFDDD4CBFFDDD4CBFFDDD4CBFFDDD5CBFFE3DC
        D3FFEEE7DEFFFBF7F0FFA49E91FFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9B866FFFE7DED2FFD1C1AEFFFAF9F8FFF9F8F7FFF9F8F7FFF9F8
        F7FFF9F8F7FFF9F8F7FFF9F8F7FFFAF9F7FFFDFCF9FFA39D92FFE1D7CEFFE1D8
        CEFFDFD6CCFFDFD6CBFFDFD5CBFFDFD5CBFFDFD5CBFFDFD5CBFFDFD6CBFFDFD6
        CCFFE1D8CEFFE2D8CFFFA9A296FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9C876FFFE8E0D5FFD1C3AEFFD1C3AFFFD1C3AFFFD1C3AFFFD1C3
        AFFFD1C3AFFFD1C3AFFFD1C3AFFFD1C4B0FFD4C7B2FFC1B8A7FFB0AAA0FFCFC8
        BDFFE0D9CEFFEFE7DDFFEFE6DDFFEFE6DDFFEEE6DDFFEEE6DDFFEFE7DDFFE2DA
        CFFFD1C9BDFFB3ACA0FFD3D0CBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9C8670FFEAE4D9FFD3C7B2FFBFA686FFC0A788FFC0A888FFC0A8
        88FFC0A888FFC0A888FFC0A888FFC0A888FFC1A989FFC2A989FFBCA98CFFB9B2
        A4FFB1ACA0FFABA69AFFACA69AFFACA69AFFABA69AFFABA69AFFACA69AFFADA9
        9DFFC4C0B9FFE9E7E5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9D8771FFECE5DBFFD4C5B2FFBEA483FFBEA585FFBEA685FFBEA6
        85FFBEA685FFBEA685FFBEA685FFBEA685FFBEA685FFBEA685FFBFA583FFD6C7
        B3FFEEE6DBFF9B846CFFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9E8871FFEEE7DEFFD3C4B0FFFBFAF8FFFAF9F8FFFAF9F7FFFAF9
        F7FFFAF9F7FFFAF9F7FFFAF9F7FFFAF9F7FFFAF9F7FFFAF9F8FFFBFAF8FFD4C4
        B0FFEFE7DEFF9D8770FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9F8972FFF0EBE1FFD5C7B2FFD6C8B4FFD6C8B4FFD6C8B4FFD6C8
        B4FFD6C8B4FFD6C8B4FFD6C8B4FFD6C8B4FFD6C8B4FFD6C8B4FFD6C8B4FFD5C7
        B2FFF0EBE1FF9E8972FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FF9F8A73FFF2ECE4FFD7C9B5FFBEA685FFC0A787FFC0A788FFC0A7
        88FFC0A788FFC0A788FFC0A788FFC0A788FFC0A788FFC0A787FFBEA685FFD7C9
        B5FFF2ECE4FF9F8A73FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FFA08B74FFF4EFE8FFD8CAB5FFBDA482FFBEA584FFBEA585FFBEA5
        85FFBEA585FFBEA585FFBEA585FFBEA585FFBEA585FFBEA584FFBDA482FFD8CA
        B5FFF4EFE8FFA08B74FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FFA08B75FFF6F0EAFFD7C8B4FFFDFAFAFFFCFAFAFFFCFAFAFFFCFA
        FAFFFCFAFAFFFCFAFAFFFCFAFAFFFCFAFAFFFCFAFAFFFCFAFAFFFDFAFAFFD7C8
        B4FFF6F0EAFFA08B75FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FFA18C76FFF7F4ECFFD8C9B5FFD9CBB7FFD9CBB7FFD9CBB7FFD9CB
        B7FFD9CBB7FFD9CBB7FFD9CBB7FFD9CBB7FFD9CBB7FFD9CBB7FFD9CBB7FFD8C9
        B5FFF7F4ECFFA18C76FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FFA28D76FFF9F5F0FFDACCB8FFBEA584FFBFA787FFC0A788FFC0A7
        88FFC0A788FFC0A788FFC0A788FFC0A788FFC0A788FFBFA787FFBEA584FFDACC
        B8FFF9F5F0FFA28D76FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FFA38E77FFFBF7F2FFDBCCB8FFBDA382FFBEA584FFBEA585FFBEA5
        85FFBEA585FFBEA585FFBEA585FFBEA585FFBEA585FFBEA584FFBDA382FFDBCC
        B8FFFBF7F2FFA38E77FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E9E9FFA48F77FFFBF8F5FFDACAB5FFFBFAF8FFFBFAF8FFFBFAF8FFFBFA
        F8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFDACA
        B5FFFBF8F5FFA48F77FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEAEAEAFFA48F79FFFDFAF7FFDACAB5FFDAC9B4FFDAC9B4FFDAC9B4FFDAC9
        B4FFDAC9B4FFDAC9B4FFDAC9B4FFDAC9B4FFDAC9B4FFDAC9B4FFDAC9B4FFDACA
        B5FFFDFAF7FFA48F79FFEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF2F2F2FFA7927BFFFFFFFDFFFDFAF6FFFBF8F5FFFBF8F4FFFBF8F4FFFBF8
        F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F5FFFDFA
        F6FFFFFFFDFFA7927BFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFBFBFFBFB1A3FFA6907AFFC9BAA5FFCDBFAAFFCCBEA8FFCCBEA8FFCCBE
        A8FFCCBEA8FFCCBEA8FFCCBEA8FFCCBEA8FFCCBEA8FFCCBEA8FFCDBFAAFFC9BA
        A5FFA6907AFFBFB1A3FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCFFC1B3A6FFBEAC97FFE0D3BFFFDFD1BEFFDFD1BDFFDFD1
        BDFFDFD1BDFFDFD1BDFFDFD1BDFFDFD1BDFFDFD1BDFFDFD1BEFFE0D3BFFFBEAC
        97FFC1B3A6FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFBFBFBFFC2B5A6FFAC9782FFAB9681FFAB9681FFAB96
        81FFAB9681FFAB9681FFAB9681FFAB9681FFAB9681FFAB9681FFAC9782FFC2B5
        A6FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = #39033#30446#35774#32622#21450#25968#25454#20934#22791
      object N_Proj: TMenuItem
        Bitmap.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFCCCC00FFFFFF00FFCC
          CC000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000A4A0A000DDDDDD00FFCCCC00FFFF
          FF00000000007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000099999900A4A0A000DDDDDD00FFCC
          CC0000000000A4A0A0007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000009999990099999900A4A0A000DDDD
          DD0000000000FFCCCC00A4A0A0007777770000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000099999900999999000000
          0000F0FBFF00DDDDDD00FFCCCC00A4A0A0007777770000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000999999000000
          0000FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0A0007777770000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0A000777777000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
          FF00F0FBFF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0A0007777
          770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FB
          FF00FFFFFF00F0FBFF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0
          A0007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00DDDDDD00FFCC
          CC00F0FBFF00FFFFFF00F0FBFF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCC
          CC00A4A0A0007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDD
          DD00FFCCCC00F0FBFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00DDDD
          DD00FFCCCC00A4A0A00000000000FFFFFF000000000000000000000000000000
          00006699CC006699CC006699CC00000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDDDD00FFCC
          CC00DDDDDD00FFCCCC00F0FBFF00000000000000000000000000FFFFFF00F0FB
          FF00DDDDDD000000000000000000000000006699CC006699CC006699CC006699
          CC0099CCFF0099CCFF006699CC00000000000000000000000000FFFFFF00FFFF
          FF0000000000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDDDD00FFCCCC00DDDD
          DD00FFCCCC00DDDDDD00FFCCCC00F0FBFF00000000006699CC00000000000000
          0000000000006699CC006699CC006699CC0099CCFF0099CCFF0099CCFF0099CC
          FF0099CCFF0099CCFF006699CC00000000000000000000000000FFFFFF000000
          0000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDDDD00FFCCCC00DDDDDD00FFCC
          CC00DDDDDD00FFCCCC00DDDDDD00FFCCCC000000000000FFFF0000000000CCFF
          FF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CC
          FF0099CCFF0099CCFF006699CC00000000000000000000000000FFFFFF000000
          0000FFFFFF00DDDDDD00FFCCCC0000000000FFCCCC00DDDDDD00A4A0A000DDDD
          DD00FFCCCC00DDDDDD00FFCCCC00DDDDDD00FFCCCC000000000000FFFF000000
          000000000000000000000000000000000000CCFFFF0099CCFF0099CCFF0099CC
          FF0099CCFF0099CCFF006699CC0000000000000000000000000000000000A4A0
          A000A4A0A000FFCCCC00DDDDDD000000000000000000FFCCCC0099999900A4A0
          A000DDDDDD00FFCCCC00DDDDDD00FFCCCC00000000006699CC000000000000FF
          FF006699CC000000000000000000FFFFFF00000000003366FF0099CCFF0099CC
          FF0099CCFF0099CCFF0000000000000000000000000000000000000000007777
          7700A4A0A000A4A0A000FFCCCC00000000007777770000000000999999009999
          9900A4A0A000DDDDDD00FFCCCC00DDDDDD000000000099CCFF006699CC000000
          000000FFFF006699CC000000000000000000000000006699CC0099CCFF0099CC
          FF0099CCFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006633
          330077777700A4A0A00000000000FF9999009999990077777700000000009999
          990099999900A4A0A000DDDDDD00FFCCCC00DDDDDD000000000099CCFF006699
          CC000000000000FFFF006699CC0000000000000000006699CC006699CC0099CC
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          00000000000000000000CCCCCC00FFCCCC00FF99990099999900777777000000
          00009999990099999900A4A0A000DDDDDD00FFCCCC00DDDDDD000000000099CC
          FF006699CC000000000000FFFF006699CC0000000000000000006699CC000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF999900999999007777
          7700000000009999990099999900A4A0A000DDDDDD00FFCCCC00A4A0A0000000
          000099CCFF006699CC000000000033FFFF006699CC000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF9999009999
          990077777700000000009999990099999900A4A0A000DDDDDD00777777000000
          00000000000099CCFF006699CC000000000033FFFF006699CC00000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF99
          990099999900777777000000000099999900999999007777770000000000FFFF
          FF00FFFFFF000000000000000000000000000000000000FFFF006699CC000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCC
          CC00FF9999009999990077777700000000007777770000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF006699
          CC000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00CCCC
          CC00FFCCCC00FF999900999999007777770000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF006699CC000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FB
          FF00CCCCCC00FFCCCC00FF999900999999007777770000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          000000FFFF0000000000CC66FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
          FF00F0FBFF00CCCCCC00FFCCCC00FF999900999999007777770000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000CC66FF00CC66FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF9999009999990000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00A4A0A00000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00FFCCCC00FFCCCC00A4A0A00000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Caption = #39033#30446#35774#32622
        OnClick = N_ProjClick
      end
      object mniN38: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #25968#25454#37319#38598
        OnClick = N2Click
      end
      object N38: TMenuItem
        Caption = '-'
      end
      object N40: TMenuItem
        Caption = '-'
      end
      object N_Err: TMenuItem
        Caption = #26174#31034#19978#27425#25968#25454#23548#20837#30340#20986#38169#20449#24687
        OnClick = N_ErrClick
      end
    end
    object MnOpenMode: TMenuItem
      AutoCheck = True
      Caption = #9679#24320#25918#27169#24335#32500#25252
      object MnModel: TMenuItem
        Caption = #27169#22411#32500#25252
        OnClick = MnModelClick
      end
      object MnRule: TMenuItem
        Caption = #25968#25454#35268#33539#32500#25252
        OnClick = MnRuleClick
      end
      object MnDict: TMenuItem
        Caption = #25968#25454#23383#20856#32500#25252
        OnClick = MnDictClick
      end
    end
    object N11: TMenuItem
      Bitmap.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000809C9C004B787A00648E8E0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00000000009BADAD00ADBFBF004D7A7A0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
        00005E69690089959700A4B4B4005E8181004B7A780000000000000000000000
        000000000000F0F0F50000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000575A5B00000000000000000000000000000000002B27
        27007B7C7C00979C9E009CA7A900A4B4B4005E8181004D787800648E8E0085A7
        A700BBD0D000C8D9D900E8F5F00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000C2D1D100BAC3C300929494008E8C8C008C8686008B8585008C86
        86008E8C8C0092939300979E9C009CA7A700A4B3B400ADBFBF00B7CACA00C1D2
        D200CEDCDC00DBE6E700DBE6E700EBF6F20000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00979E9E00929494008E8C8C008C8888008B85
        85008C8688008E8C8C0092939400979C9E009CA7A900A4B4B300ADBFBF00B7CA
        C900C1D2D200CEDCDC00D4E1E10000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000CBDFDF009DA9AA00979E9E00929494008E8C8C008C86
        86008B8585008C8686008E8A8C0092939300979E9E009CA7A700A4B4B400ADBF
        BF00B8CAC900C1D2D20093B2B20000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000D7EEEC00A4B4B4009DA9A900979E9E00929494008E8C
        8C00958F8F00B4ACAC00FFF9F900FFFFFF00E9ECEC00979C9C009DA9A700A4B4
        B300ADBFBF00B8CACA00779C9C0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000B1C5C500AEBFC000A4B4B4009DA9A900979E9E009C9E
        9E0091909000000000000000000000000000FFFFFF00E7ECEC00979C9E009DA9
        A900A4B4B400ADBFBF004B787A0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000B3C9C900B4C9CB00B8CACA00ADC0C000A4B4B400A8B4B4009BA2
        A30000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00E9EAEA00979C
        9E009CA7A700A4B4B4005E8181004D7A78000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F6F9
        F900D6E5E300D3E1E100CEDCDC00C4D2D200B7CACA00AEC0C00093A6A6000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000EDE6E6009294
        9300979E9C009CA7A700A4B4B3005E8181004B787A00648E8E0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00F9F9FB00EBF1F100DBE6E700CEDCDC00C1D2D200B8CACA004D7275000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000ADA6A6008E8C
        8A0092939400979C9C009DA9A700A4B3B400ADBFBF006388880000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00EBF1F100DCE6E700CEDCDC00C1D2D2004D7A7A000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000807979008C86
        86008E8C8C0092949400979E9E00A8B2B200D4E9E900B1C5C50000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000FFFFFF00FFFFFF00E9F1F100DCE6E700CEDCDC0085A7AB004D7A
        7A0000000000FFFFFF00FFFFFF00FFFFFF0000000000504F4D00746D6F008B85
        85008C8886008E8C8C009B9E9D009AA0A2000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00F9F9FB00E9F1F100DBE6E700CEDCDC0085A7
        A7004D7A7A000000000000000000000000005E6969007B7E7E008E8C8C008C86
        86008B8585008C8686007874760000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00F6F9F900EBF1F100DCE6E700CEDC
        DC0085A7AB004D7A7A0032615F005672740089989700979E9E00929494008E8C
        8C008C8688008B8585000200000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00F9FBF900EBF1F100DBE6
        E700CEDCDC00C4D2D400B8CACA00AEBFBF00A4B4B4009DA9A900979E9E009294
        94008E8C8C008C8688000000000000000000FFFFFF00FFFFFF00000000000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9FB00EBF1
        F100DCE6E700CEDCDC00C4D2D200B8CACA00ADC0BF00A4B4B4009DA9A900979E
        9E00929494008E8C8C000000000000000000FFFFFF000000000000AFD20000C8
        D20000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9FB
        FB00E9F1F100DBE6E700CEDCDC00C1D4D200B8CACA00AEBFC000A4B4B4009DA9
        A900979E9E00000000000082CE000020AF000000000000A1D5000DCBE30000B1
        D20000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EBF1F100DCE6E700CEDCDC00CEE2E200EEFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000039EBFF000060C400007CD00000A3DB002FC5E40000AD
        D20000B6D20000CAD70000DEE30000EBE80000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
        0000FFFFFF00FFFFFF00EBF1F100EAF5F500D3E1E20000000000000000000000
        0000000000000000000040FFFF002DBCE10028ACDF0029B1EE0038F0FF004DFF
        FF0039D7E8003FE3EA004BFBFF0000EDEE0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00F9FBF900E5EEED0000000000FFFFFF00FFFFFF00FFFF
        FF00000000000000000028DAE80034CDE80030C3F00029B0E400000000005BFF
        FF004FFFFF0039D9E80011DFE90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
        000000F0F10000DDE50019E0E9003EEAFA0034D0EC0000000000FFFFFF000000
        00005BFFFF0051FFFF0000B8D60000BED20000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
        000085FFFF007BFFFF0046ECF10011DFE90000000000FFFFFF00FFFFFF00FFFF
        FF000000000033D4FF0034CDE80000B8D60000C0D70000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000ADFFFF0079FFFF0000D8E00000B9D20000000000FFFFFF000000
        00000075CE000097DB0030C9F00043FFFF003DE2F00000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000005FFFFF004CF2F40000D8E00000B6D2000000000000A5
        D50000A1DB0026A6DF00009CDB000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00000000004EFAF80033F9F70051F7F6004BF1F40000D6E00000D1E0000DCC
        E3002FC2E40029B1E100003BB90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000B5FFFF00A0FFFF00A0FFFF00A0FFFF0079FFFF0044EAEF0042EF
        FD0049FFFF0049FFFF00004DBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000000000000000000000000085FFFF004FFFFF0045EE
        F5000000000076FFFF002FC3E90000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B3FFFF0075FFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Caption = #31995#32479#31649#29702
      object MnModBack: TMenuItem
        Caption = #23548#20986#27169#22411
        Hint = #24320#25918#27169#24335#19979#21487#20197#36873#25321#27169#22411#23548#20986#65292#26041#20415#20849#20139
        OnClick = MnModBackClick
      end
      object MnModRest: TMenuItem
        Caption = #23548#20837#27169#22411
        OnClick = MnModRestClick
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
        Caption = #25171#24320#24320#25918#27169#24335
        OnClick = MnOpenClick
      end
    end
    object N31: TMenuItem
      Bitmap.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF2F2F2FFEBEBEBFFEBEBEBFFF2F2
        F2FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFEFEF
        EFFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFE2E2E2FFCFCFCFFFC0C0C0FFC0C0C0FFCFCF
        CFFFE2E2E2FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFEFEFEFFFFAFAFAFFEFEFEFFFCECE
        CEFFBDBDBDFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
        BCFFBCBCBCFFBCBCBCFFBCBCBCFFB8B8B8FFB78E5DFFA56314FFA56314FFB78E
        5DFFB8B8B8FFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
        BCFFBCBCBCFFBCBCBCFFBCBCBCFFBDBDBDFFCECECEFFEFEFEFFFE9E9E9FFBB82
        3BFFA56314FFA56314FFA56314FFA56314FFA56314FFA56314FFA56314FFA563
        14FFA56314FFA56314FFA56314FFA56314FFA56314FF8598A5FF949288FFA563
        14FFA56314FFA56314FFA56314FFA56314FFA56314FFA56314FFA56314FFA563
        14FFA56314FFA56314FFA56314FFA56314FFBB823BFFE9E9E9FFE9E9E9FFBE7C
        2DFF939797FF969590FF96958FFF96958FFF96958FFF96958FFF96958FFF9695
        8FFF96958FFF96958FFF969590FF96958FFF97958EFF87A0B8FF87A0B8FF9795
        8EFF96958FFF969590FF96958FFF96958FFF96958FFF96958FFF96958FFF9695
        8FFF96958FFF96958FFF969590FF939797FFBD7C2DFFE9E9E9FFE9E9E9FFBE7A
        29FF8CA6BFFF8DA0B2FF8D9FAFFF8D9FAFFF8E9FAFFF8E9FB0FF8FA0B0FF90A1
        B1FF91A2B2FF92A3B3FF93A4B4FF93A4B4FF93A4B3FF93A3B2FF93A3B2FF92A3
        B3FF92A4B4FF91A3B4FF90A2B2FF8DA0B1FF8A9EB0FF899CAFFF889CAEFF889C
        AEFF899CAEFF8A9DAEFF8B9FB1FF8BA5BFFFBD7A29FFE9E9E9FFE9E9E9FFBD79
        27FF9CC0E0FFD6F2FFFFCDEAFEFFC7E6FBFFC1E3F7FFBBDFF5FFB7DCF2FFAAD0
        E8FF98BBD4FF8AAAC2FF83A2BAFF82A2B9FF83A6BFFF92BCD6FF8EBCD8FF89A8
        C0FF86A4B9FF89A5BAFF9EB7CBFFB9CEDBFFE4EEF5FFFFFFFFFFFFFFFFFFFEFF
        FFFFF6FFFFFFEEFDFFFFEAFEFFFF9FC2E0FFBC7927FFE9E9E9FFE9E9E9FFBC78
        26FF9CBEDEFFD4EFFFFFC9E5F8FFC2E1F5FFBDDEF2FFB8DAF0FFB4D7EDFFAFD5
        ECFFABD2EAFFA6CFE8FFA1CCE6FF9CC9E4FF94C2DFFFB0CFE1FF90BEDBFFA4CC
        E3FFB3D5E9FFC3DEEDFFD2E7F2FFE0EDF6FFEDF6FAFFFBFEFFFFFEFFFFFFF6FC
        FFFFEFF9FFFFE7F6FFFFE6F9FFFF9DC0DEFFBC7826FFE9E9E9FFE9E9E9FFBC78
        26FF9CBFDEFFD4EFFFFFC7E3F7FFC1E0F4FFBCDDF1FFB7D9EFFFB3D6ECFFAED3
        EAFFA9D0E8FFA4CDE6FF9EC9E3FF98C3DFFF98BAD0FFD6E7F3FF8DBBD9FFA1C9
        E0FFB1D2E6FFBFDAEAFFCEE3EEFFDCEAF3FFEBF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F5FEFFE6F8FFFF9EC1DEFFBB7726FFE9E9E9FFE9E9E9FFBC78
        26FF9FC0DEFFD6EFFFFFC7E3F7FFC1E0F4FFBCDDF1FFB7D9F0FFB3D7EDFFAED4
        EBFFA8D0E8FFA1CAE2FF9BBDD6FF9EBBCFFFD7E7F2FFEBFAFFFF8AB9D8FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F5FEFFE7F8FFFFA0C2DFFFBB7726FFE9E9E9FFE9E9E9FFBC77
        26FFA0C1E0FFD7F0FFFFC7E3F6FFC1E0F4FFBCDEF2FFB1D2E6FFA9CBE0FFA0C0
        D6FF9BB9CEFFA5BFD1FFD6E2EBFFF4FAFEFFEEFAFFFFE8F8FFFF8AB9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFE8F9FFFFA1C2DFFFBB7726FFE9E9E9FFE9E9E9FFBB77
        26FFA1C3E1FFDAF1FFFFC7E3F6FFC1E0F4FFBCDEF3FFACC5D8FFB7D0E0FFCADC
        E9FFEEF6FBFFFFFFFFFFFFFFFFFFF3FBFFFFEBF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFE9F9FFFFA2C3E0FFBB7726FFE9E9E9FFE9E9E9FFBB77
        26FFA2C4E1FFDBF1FFFFC7E3F6FFC1E0F4FFBCDEF3FFACC0D1FFE5F7FFFFECF8
        FFFFF5FCFFFFFEFFFFFFFCFEFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFE9FAFFFFA3C4E1FFBB7726FFE9E9E9FFE9E9E9FFBB77
        26FFA3C5E2FFDDF2FFFFC7E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE3F5FFFFE9F6
        FFFFF3FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFEAFAFFFFA6C5E1FFBA7726FFE9E9E9FFE9E9E9FFBB77
        26FFA5C7E2FFDEF3FFFFC7E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFECFAFFFFA7C7E3FFBA7726FFE9E9E9FFE9E9E9FFBB77
        26FFA6C7E3FFDFF3FFFFC5E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFEDFBFFFFA8C8E3FFBA7726FFE9E9E9FFE9E9E9FFBB77
        26FFA7C8E3FFE2F5FFFFC5E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFEEFBFFFFA9CAE4FFBA7726FFE9E9E9FFE9E9E9FFBA77
        26FFA8C9E4FFE3F6FFFFC5E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE5F4FDFFEFFBFFFFAACBE4FFBA7726FFE9E9E9FFE9E9E9FFBA77
        26FFABCAE5FFE5F6FFFFC5E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE4F4FDFFF0FCFFFFADCCE5FFBA7726FFE9E9E9FFE9E9E9FFBA77
        26FFACCBE5FFE6F7FFFFC5E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE4F4FDFFF1FCFFFFAECDE6FFBA7726FFE9E9E9FFE9E9E9FFBA77
        26FFADCDE6FFE9F8FFFFC4E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE4F4FDFFF2FDFFFFAFCEE6FFBA7626FFE9E9E9FFE9E9E9FFBA77
        26FFAECEE6FFEAF8FFFFC4E3F6FFC1E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE4F4FDFFF3FDFFFFB0CEE7FFBA7626FFE9E9E9FFEAEAEAFFBA77
        26FFB0CFE8FFEBF9FFFFC4E2F6FFC0E0F4FFBCDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFDFFFDFFFFFFF4FA
        FEFFEDF7FEFFE4F4FDFFF3FDFFFFB2CFE7FFB97626FFEAEAEAFFF1F1F1FFBA77
        26FFB1CFE8FFEEFBFFFFC4E2F6FFBFE0F5FFBBDEF3FFABBFD0FFE2F4FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D7FFA0C8
        DFFFB0D1E5FFBED9E9FFCDE2EEFFDCEAF3FFEAF3F8FFFAFCFEFFFDFFFFFFF5FB
        FFFFEDF7FFFFE4F5FEFFF5FFFFFFB4D1E9FFB97626FFF1F1F1FFFBFBFBFFC592
        56FFB4D3EBFFE4F7FFFFDFF1FEFFDBEFFCFFD9EEFCFFABC0D1FFE2F5FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEAF7FFFFE7F7FFFF89B9D8FFA0C9
        E0FFB0D1E5FFBED9E9FFCEE3EFFFE6F1F8FFF6FBFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFAFFFFFFF5FDFFFFF2FEFFFFB7D4EBFFC59256FFFBFBFBFFFFFFFFFFFAFA
        FAFFAEC5DAFFACC0D1FFAABECDFFA9BDCCFFA7BBCBFFACC1D3FFE2F5FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFBFDFFFFF1F9FEFFEBF8FFFFE2F3FFFF92B6CEFFA0CA
        E2FFB1D3E8FFC1DCECFFD2E7F3FFD1E0EAFFC8D5DDFFBAC9D2FFB5C3CFFFB3C2
        CFFFB3C1CFFFB1C1CDFFB0C2D1FFADC6DAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFDCDEE0FFADC3D4FFE3F5FFFFE8F5
        FFFFF2FAFEFFFDFFFFFFFCFEFFFFF3FAFFFFEEFBFFFFC3D9E6FFCAD0D6FFA8B7
        C3FFA9BBCAFFA8BBC8FFA2B3BEFFB0BDC8FFCAD2D9FFE0E5E8FFE8ECEEFFE9ED
        EFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFADC3D4FFE3F5FFFFE8F5
        FFFFF3FAFEFFFDFFFFFFFEFFFFFFF7FEFFFFD1E3EFFFD3DDE4FFFDFDFDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFACC2D4FFE3F5FFFFE9F6
        FFFFF5FCFFFFFFFFFFFFFEFFFFFFC4D7E5FFD5E0E6FFFDFDFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFFACC2D3FFE4F6FFFFEDF9
        FFFFF4FBFFFFDEE8F0FFBED0DDFFF6F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFADC2D4FFDAECFAFFD0E1
        E9FFDBE4EBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = #24110#21161
      object N27: TMenuItem
        Bitmap.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFCCCC00FFFFFF00FFCC
          CC000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000A4A0A000DDDDDD00FFCCCC00FFFF
          FF00000000007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000099999900A4A0A000DDDDDD00FFCC
          CC0000000000A4A0A0007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000009999990099999900A4A0A000DDDD
          DD0000000000FFCCCC00A4A0A0007777770000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000099999900999999000000
          0000F0FBFF00DDDDDD00FFCCCC00A4A0A0007777770000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000999999000000
          0000FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0A0007777770000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0A000777777000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
          FF00F0FBFF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0A0007777
          770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FB
          FF00FFFFFF00F0FBFF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCCCC00A4A0
          A0007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00DDDDDD00FFCC
          CC00F0FBFF00FFFFFF00F0FBFF00FFFFFF00FFFFFF00F0FBFF00DDDDDD00FFCC
          CC00A4A0A0007777770000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDD
          DD00FFCCCC00F0FBFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00DDDD
          DD00FFCCCC00A4A0A00000000000FFFFFF000000000000000000000000000000
          00006699CC006699CC006699CC00000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDDDD00FFCC
          CC00DDDDDD00FFCCCC00F0FBFF00000000000000000000000000FFFFFF00F0FB
          FF00DDDDDD000000000000000000000000006699CC006699CC006699CC006699
          CC0099CCFF0099CCFF006699CC00000000000000000000000000FFFFFF00FFFF
          FF0000000000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDDDD00FFCCCC00DDDD
          DD00FFCCCC00DDDDDD00FFCCCC00F0FBFF00000000006699CC00000000000000
          0000000000006699CC006699CC006699CC0099CCFF0099CCFF0099CCFF0099CC
          FF0099CCFF0099CCFF006699CC00000000000000000000000000FFFFFF000000
          0000FFFFFF00FFFFFF00DDDDDD00FFCCCC00DDDDDD00FFCCCC00DDDDDD00FFCC
          CC00DDDDDD00FFCCCC00DDDDDD00FFCCCC000000000000FFFF0000000000CCFF
          FF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CC
          FF0099CCFF0099CCFF006699CC00000000000000000000000000FFFFFF000000
          0000FFFFFF00DDDDDD00FFCCCC0000000000FFCCCC00DDDDDD00A4A0A000DDDD
          DD00FFCCCC00DDDDDD00FFCCCC00DDDDDD00FFCCCC000000000000FFFF000000
          000000000000000000000000000000000000CCFFFF0099CCFF0099CCFF0099CC
          FF0099CCFF0099CCFF006699CC0000000000000000000000000000000000A4A0
          A000A4A0A000FFCCCC00DDDDDD000000000000000000FFCCCC0099999900A4A0
          A000DDDDDD00FFCCCC00DDDDDD00FFCCCC00000000006699CC000000000000FF
          FF006699CC000000000000000000FFFFFF00000000003366FF0099CCFF0099CC
          FF0099CCFF0099CCFF0000000000000000000000000000000000000000007777
          7700A4A0A000A4A0A000FFCCCC00000000007777770000000000999999009999
          9900A4A0A000DDDDDD00FFCCCC00DDDDDD000000000099CCFF006699CC000000
          000000FFFF006699CC000000000000000000000000006699CC0099CCFF0099CC
          FF0099CCFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006633
          330077777700A4A0A00000000000FF9999009999990077777700000000009999
          990099999900A4A0A000DDDDDD00FFCCCC00DDDDDD000000000099CCFF006699
          CC000000000000FFFF006699CC0000000000000000006699CC006699CC0099CC
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          00000000000000000000CCCCCC00FFCCCC00FF99990099999900777777000000
          00009999990099999900A4A0A000DDDDDD00FFCCCC00DDDDDD000000000099CC
          FF006699CC000000000000FFFF006699CC0000000000000000006699CC000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF999900999999007777
          7700000000009999990099999900A4A0A000DDDDDD00FFCCCC00A4A0A0000000
          000099CCFF006699CC000000000033FFFF006699CC000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF9999009999
          990077777700000000009999990099999900A4A0A000DDDDDD00777777000000
          00000000000099CCFF006699CC000000000033FFFF006699CC00000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF99
          990099999900777777000000000099999900999999007777770000000000FFFF
          FF00FFFFFF000000000000000000000000000000000000FFFF006699CC000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCC
          CC00FF9999009999990077777700000000007777770000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF006699
          CC000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FBFF00CCCC
          CC00FFCCCC00FF999900999999007777770000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF006699CC000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00F0FB
          FF00CCCCCC00FFCCCC00FF999900999999007777770000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          000000FFFF0000000000CC66FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
          FF00F0FBFF00CCCCCC00FFCCCC00FF999900999999007777770000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000CC66FF00CC66FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00FF9999009999990000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF00F0FBFF00CCCCCC00FFCCCC00A4A0A00000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00FFCCCC00FFCCCC00A4A0A00000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Caption = #20020#26102#35760#24405#26412
        OnClick = N27Click
      end
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
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      Bitmap.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FDFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B60B60002219B000C289B000C2C
        AC00132FA000132FA0000C2CAC00132FA0000C2CAC000C2CAC000C2CAC000C2C
        AC000C2CAC000C2CAC000324A4000324A4000324A4000324A4000C289B001A3A
        B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF003353CD000D36C900183DC700183DC7002142
        C3002142C3002142C3002142C3002142C300183DC700183DC700183DC700183D
        C7000D36C9000D36C9000D36C9000D36C9000331D2000331D200032DC4000228
        B6004B60B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000D36C900133DD8001C44DD002A4CD2002C50
        DB002C50DB002C50DB002C50DB002C50DB002C50DB002C50DB00244CE000244C
        E0001C4EE6001C44DD000D45E600063CE200063CE200063CE2000331D200032D
        C4000324A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000736D9001C44DD00244CE0003053E0003356
        E3003759E3003759E3003759E3003356E3003759E3002E58E5002E58E5002757
        E8002155E9001C4EE600144BE800144BE8000D45E600063CE2000736D9000331
        D2000324A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00133DD800244CE0003053E0003759E3003E5F
        E5003E5FE5004262E5005A75E900A1B1F300D6E7F900F6FAFD00F3F9FD00CDD7
        F90094A7F1004067E7001C4EE600144BE8000D45E6000D45E600063CE2000331
        D2000324A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00133DD8002B51E2003759E3003E5FE5004665
        E5004A67E500889EEF00F3F9FD00FFFFFF00E9F2FC00E5EAFC00E5EAFC00EFF5
        FC00FFFFFF00E9F2FC00668AEF00144BE800144BE8000D45E600063CE2000331
        D2000324A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF001C44DD003053E0003E5FE5004665E5004A67
        E50094A7F100FFFFFF00EFF5FC00B0BFF400647EE9004067E7003864E8005E85
        F100A1B1F300F3F9FD00FBFDFF00668AEF00144BE8000D45E6000D45E6000736
        D9000324A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF001C44DD003759E3004663E5004A67E5006982
        EA00F3F9FD00EFF5FC007D94ED004669E7004669E7004067E7003864E8003360
        E8002C5DE9007091F000EFF5FC00E5EAFC003864E800144BE800133DD8000D36
        C9000C2CAC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00244CE0003E5FE5004A67E5004F6DE700B0BF
        F400FFFFFF00A1B1F3004F6DE7004A6AE6004669E700FFFFFF00FFFFFF003360
        E8002C5DE9002757E800A1B1F300FFFFFF00889EEF001C4EE600144BE800133D
        D8000C2CAC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF002B51E2004665E5004F6DE700526EE700E5EA
        FC00E9F2FC006982EA004F6DE7004A6AE6004067E700FFFFFF00FFFFFF003360
        E8002C5DE9002757E8004D75EC00EFF5FC00CDD7F9001C4EE6001C44DD00183D
        C7000C2CAC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF003053E0004A67E5005571E7005571E700FBFD
        FF00D6E7F900526EE7004E6AE6004A67E5004665E500FFFFFF00FFFFFF002E58
        E5002E58E5002450E5001C4EE600E5EAFC00F3F9FD001C4EE600244CE0002347
        D000132FA000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF003356E3004F6DE7005873E8005A75E900FFFF
        FF00D6E7F900526EE7004E6AE6004A67E5004262E500FFFFFF00FFFFFF002E58
        E5002757E8002450E5002450E500E5EAFC00F6FAFD002450E500244CE0002347
        D0001635AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF003A5CE3005873E8005F79E9005F79E900E5EA
        FC00E5EAFC006982EA004E6AE6004A67E5004262E500FFFFFF00FFFFFF003356
        E3002B51E2002450E500496DE900E9F2FC00CDD7F9002450E5002C50DB002347
        D0001635AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF003E5FE5005F79E900647EE9005F79E700BDCA
        F700FFFFFF00A1B1F3004E6AE6004A67E5004262E500FFFFFF00FFFFFF003356
        E3002B51E200244CE000A1B1F300FFFFFF0094A7F1002B51E2002C50DB002A4C
        D2001635AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF003E5FE500647EE9006D86EB006982EA007D94
        ED00F6FAFD00E9F2FC00748CEC004A67E5004663E5003E5FE5003A5CE3003356
        E3003053E000647EE900EFF5FC00EFF5FC004A6AE6002B51E2002C50DB002142
        C3001635AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF004665E5006982EA00748CEC006D86EB006982
        EA00A1B1F300FFFFFF00E9F2FC00A1B1F3005A75E9004663E5003E5FE5005873
        E80094A7F100EFF5FC00FFFFFF007D94ED002B51E2002B51E2002C50DB002A4C
        D2001635AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF004665E500748CEC007D94ED00748CEC006D86
        EB00647EE900A1B1F300FDFFFF00FFFFFF00E5EAFC00CDD7F900CDD7F900E5EA
        FC00FFFFFF00F6FAFD007D94ED003053E0003053E0003053E0003053E0002A4C
        D200132FA000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF004F6DE7007D94ED00889EEF007D94ED00748C
        EC006D86EB006982EA007D94ED00B0BFF400E5EAFC00FFFFFF00FFFFFF00E5EA
        FC00A1B1F300647EE9004262E5003A5CE3003A5CE3003356E3002C50DB002142
        C3001635AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF005571E700889EEF0094A7F10094A7F1007D94
        ED00748CEC006D86EB006982EA00647EE900647EE9005F79E9005F79E9005A75
        E9005571E700526EE7004E6AE6004A67E5004262E5003A5CE3003053E0002347
        D000132FA000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF005A75E90094A7F100A1B1F30094A7F100889E
        EF00748CEC00748CEC006D86EB006982EA006982EA00647EE900647EE900647E
        E9005F79E9005A75E9005571E7004F6DE7004665E5003A5CE3002C50DB002142
        C3000C2CAC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00748CEC007D94ED00889EEF00889EEF00748C
        EC006D86EB006982EA00647EE9005F79E9005F79E9005A75E9005873E8005571
        E700526EE7004F6DE7004A6AE6004665E5003E5FE5003356E3002A4CD200183D
        C7004B60B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00748CEC005873E800526EE7004A67
        E5004665E5004262E5003E5FE5003A5CE3003A5CE3003A5CE3003759E3003356
        E3003356E3003053E0002B51E2002B51E200244CE0001C44DD00133DD800546D
        D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Caption = #36864#20986
      OnClick = N10Click
    end
  end
  object dsTree: TDataSource
    DataSet = fdQryTree
    Left = 30
    Top = 155
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 80
    Top = 48
    Bitmap = {
      494C010106000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFC0B8AA00B39A6700000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFD3D0
      CB00BA914400D8931100DB961200D2CFCB00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFDAD7D500E17C5200CC836500000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFB3986500D793
      1100DB961200DB961200DB961200D3D0CB00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFD7D3
      D100E87B4E00FD7C4600FD7C4600D0816000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFCB922400DB961200DB96
      1200DB961200DB961200DB961200CF921D00CD921E00CD921E00CD921E00CC91
      2000BA914400C7C2B900000000FF000000FF000000FF000000FFD5D1CE00E87B
      4D00FD7C4600D97E5800ED7A4A00FD7C4600D2805E00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFB7935200DB961200DB96
      1200DB961200DB961200DB961200C1903400BD913E00BD913E00BD913E00C191
      3400D8931000D6941300CAC6BE00000000FF000000FFD4CFCD00EA7B4D00FD7C
      4600D37F5B00000000FFD2CDCA00EB7B4C00FD7C4600D4815D00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFC1BAAB00C591
      2C00DB961200DB961200DB961200D3D0CB00000000FF000000FF000000FF0000
      00FFBDB3A000D8931000B9924500000000FFD2CDCA00EC7B4C00FD7C4600D381
      5D00000000FF000000FF000000FFD4CFCD00EA7B4D00FD7C4600D5805B000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFB4A48400D1921A00DB961200D5D2CD00000000FF000000FF000000FF0000
      00FF000000FFC4912D00D4931400000000FFE67C4F00FD7C4600D28160000000
      00FF000000FF000000FF000000FF000000FFD5D1CE00E87B4D00FD7C4600D77F
      5A00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFC0B7A900000000FF000000FF000000FF000000FF0000
      00FF000000FFC5912D00D4931600000000FFBE938100C5897000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD7D3D100E87B4E00FD7C
      4600D77F5A00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFB7A98F00DB961200B7934E00000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFD9D5D400E67C
      4F00FD7C4600DA7E5800000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFB5A48300C0903500C0903500C0903500C890
      2700DB961200CF921D00D9D7D400000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDCD8
      D600E47C5000FD7C4600DB7E5700000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFB39C7300CD911F00CD921E00CD921E00C991
      2700B4965D00DDDAD800000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFDCDAD800E37C5100FD7C4600D77F5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFDEDBDA00DB7E5700CD8364000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000007F4735007F4735007F47
      35007F4735007F4735007F4735007F4735007F4735007F4735007F4735007F47
      35007F4735007F4735007F473500000000007F4735007F4735007F4735007F47
      35007F4735007F4735007F4735007F4735007F4735007F4735007F4735007F47
      35007F4735007F47350000000000000000000000000000000000FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B000000000000000000000000FFD1921900D4931400D493
      1400D4931400D4931400000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000FF8F6B00FFB29800FFC7
      B500FFB29800FFB29800FFC7B500FFB29800FFB29800FFC7B500FFB29800FFB2
      9800FFC7B500FFB29800FF8F6B0000000000FF8F6B00FF9D7C00FF9D7C00FF9D
      7C00FF9D7C00FF9D7C00FF9D7C00FF9D7C00FF9D7C00FF9D7C00FF9D7C00FF9D
      7C00FF9D7C00FF8F6B003F231A00000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B000000000000000000000000FFD5931500D8931000D593
      1500D5931500D5931500000000FF000000FF000000FFCCC7BF00000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000FF8F6B00FFC0AA00FFD5
      C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0
      AA00FFD5C600FFC0AA00FF8F6B0000000000FF8F6B00FFB29800FFC0AA00FFD5
      C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0
      AA00FFD5C600FF9D7C007F473500000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B000000000000000000000000FFD5931500D49314000000
      00FF000000FF000000FF000000FF000000FFB6A58700D8931000B4A382000000
      00FF000000FF000000FF000000FF000000FF00000000FF8F6B00FFC0AA00FFD5
      C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0
      AA00FFD5C600FFC0AA00FF8F6B0000000000FF8F6B00FF8F6B00FFD5C600FFC0
      AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5
      C600FFC0AA00FFB9A100BF6B5000000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF967500FF734800FF734800FF734800FF73
      4800FF734800FF734800FF734800FF734800000000FFD5931500D59315000000
      00FF000000FF000000FF000000FF000000FFCCC7BF00CF921D00D8931000B5A4
      8300000000FF000000FF000000FF000000FF00000000FF8F6B00FFD5C600FFFF
      FF00FFD5C600FFD5C600FFFFFF00FFD5C600FFD5C600FFFFFF00FFD5C600FFD5
      C600FFFFFF00FFD5C600FF8F6B0000000000FF8F6B00FFAB9000FFB29800FFC0
      AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0
      AA00FFC0AA00FFD5C600FF8F6B00000000000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00FF734800E29675008EFFFF00FF734800FF59BF00FF59
      BF00FF59BF00FF59BF00FF59BF00FF734800000000FFD5931500D59315000000
      00FF000000FF000000FF000000FF000000FF000000FFD4D2CC00CB912300D893
      1000B4A38200000000FF000000FF000000FF00000000FF8F6B00FFC0AA00FFD5
      C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0
      AA00FFD5C600FFC0AA00FF8F6B0000000000FF8F6B00FFE3DA00FF8F6B00FFD5
      C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0
      AA00FFD5C600FFC0AA00FF9D7C007F4735000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00FFB9A300FF734800C6B9A300FF734800FF808E00FF80
      8E00FF808E00FF808E00FF808E00FF734800000000FFD5931500D59315000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFD9D7D400C791
      2900D8931000B5A48300000000FF000000FF00000000FF8F6B00FFC0AA00FFD5
      C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0
      AA00FFD5C600FFC0AA00FF8F6B0000000000FF8F6B00FFFFFF00FFAB9000FFB2
      9800FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5
      C600FFC0AA00FFC0AA00FFB9A100BF6B50000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00E7D7BD00E7B48F00E7916100E7916100E7916100F3A5
      8200FFB9A300FF8159007F3924007F392400000000FFD5931500D59315000000
      00FFD4931400D4931400D4931400D4931400D4931400D4931400D4931400D793
      1200DB961200D8931000B4A38200000000FF00000000FF8F6B00FFD5C600FFFF
      FF00FFD5C600FFD5C600FFFFFF00FFD5C600FFD5C600FFFFFF00FFD5C600FFD5
      C600FFFFFF00FFD5C600FF8F6B0000000000FF8F6B00FFFFFF00FFE3DA00FF8F
      6B00FFC7B500FFB29800FFB29800FFC7B500FFB29800FFB29800FFC7B500FFB2
      9800FFB29800FFC7B500FFB29800FF8F6B000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00F3EB
      DE00FFFFFF00FF8F6B000000000000000000000000FFD5931500D59315000000
      00FFD5931500D5931500D5931500D5931500D5931500D5931500D5931500D693
      1200DB961200D8931000B4A38200000000FF00000000FF8F6B00FFC0AA00FFD5
      C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0AA00FFD5C600FFC0AA00FFC0
      AA00FFD5C600FFC0AA00FF8F6B0000000000FF8F6B00FFFFFF00FFFFFF00FFC7
      B500FFC7B500FFC7B500FFC7B500FFC7B500FFC7B500FFC7B500FFC7B500FFC7
      B500FFC7B500FF8F6B007F4735007F4735000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00F3EB
      DE00FFFFFF00FF8F6B000000000000000000000000FFD5931500D59315000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFD9D7D400C690
      2A00D8931000B4A38200000000FF000000FF00000000FF8F6B00FFB29800FFC7
      B500FFB29800FFB29800FFC7B500FFB29800FFB29800FFC7B500FFB29800FFB2
      9800FFC7B500FFB29800FF8F6B0000000000FF8F6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFE3DA00FFC7B500FFC7B500FFC7B500FFC7B500FFC7B500FFC7
      B500FFC7B500FF8F6B0000000000000000000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00F3EB
      DE00FFFFFF00FF8F6B000000000000000000000000FFD5931500D59315000000
      00FF000000FF000000FF000000FF000000FF000000FFD4D2CC00CB912300D893
      1000B4A38200000000FF000000FF000000FF00000000FF8F6B00FFC7B500FFC7
      B500FFC7B500FFC7B500FFAB9000BF6B50007F4735007F4735007F4735007F47
      35007F4735007F4735007F47350000000000FF8F6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFC7B500BF6B50007F4735007F4735007F4735007F4735007F47
      35007F4735007F47350000000000000000000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00F3EB
      DE00FFFFFF00FF8F6B000000000000000000000000FFD5931500D59315000000
      00FF000000FF000000FF000000FF000000FFCCC7BF00CF921D00D8931000B5A4
      8300000000FF000000FF000000FF000000FF00000000FF8F6B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFC7B5007F4735000000000000000000000000000000
      000000000000000000000000000000000000FF8F6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFC7B5007F473500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8F6B00FFFF
      FF00F3EBDE00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00E7D7BD00F3EB
      DE00FFFFFF00FF8F6B000000000000000000000000FFD5931500D49314000000
      00FF000000FF000000FF000000FF000000FFB5A68600D8931000B4A382000000
      00FF000000FF000000FF000000FF000000FF00000000FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B007F4735000000000000000000000000000000
      000000000000000000000000000000000000FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B007F473500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B000000000000000000000000FFD5931500D8931000D593
      1400D4931400D4931400000000FF000000FF000000FFCCC7BF00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B000000000000000000000000FFD2921A00D5931500D593
      1500D5931500D5931500000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      F9FFFFFF00000000E0FFF1FF00000000C0FFE0FF000000008003C07F00000000
      8001843F00000000C0F10E1F00000000F0F91F0F00000000FDF93F8700000000
      FFF1FFC300000000FE01FFE100000000FE03FFF000000000FFFFFFF800000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFF80010003C00383FF
      80010001C00383BF80010001C0039F1F80010001C0009F0F80010001C0009F87
      80010000C0009FC380010000C000900180010000C003900180010000C0039FC3
      80010003C0039F8780010003C0039F0F80FF01FFC0039F1F80FF01FFC00383BF
      FFFFFFFFC00383FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
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
    Left = 16
    Top = 16
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
  end
  object dsAssis: TDataSource
    DataSet = fdQryAssis
    Left = 1291
    Top = 541
  end
  object prpstrgh1: TPropStorageEh
    Active = False
    StorageManager = inprpstrgmnh1
    StoredProps.Strings = (
      'cxDBTreeList1.<P>.Width'
      'Panel1.pnl1.dbgrdh1.<P>.Columns.<ForAllItems>.Visible'
      'Panel1.pnl1.dbgrdh1.<P>.Columns.<ForAllItems>.Width'
      'Panel1.pnl1.pnl10.<P>.Height'
      'Panel1.pnl1.pnl10.dbgrdh3.<P>.Columns.<ForAllItems>.Visible'
      'Panel1.pnl1.pnl10.dbgrdh3.<P>.Columns.<ForAllItems>.Width'
      'Panel1.pnl1.pnl9.<P>.Height'
      'Panel1.pnl1.pnl9.dbgrdh2.<P>.Columns.<ForAllItems>.Visible'
      'Panel1.pnl1.pnl9.dbgrdh2.<P>.Columns.<ForAllItems>.Width')
    Left = 781
    Top = 173
  end
  object inprpstrgmnh1: TIniPropStorageManEh
    IniFileName = 'zhgrid'
    Left = 637
    Top = 165
  end
  object pm3: TPopupMenu
    OnPopup = pm3Popup
    Left = 160
    Top = 144
    object MenuItem1: TMenuItem
      Action = edtcpy1
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object N48: TMenuItem
      Caption = #34920#26684#35774#32622
      OnClick = N48Click
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
    Top = 176
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
    Left = 216
    Top = 256
    object N53: TMenuItem
      Caption = #24674#22797#30028#38754#26684#24335
      ShortCut = 16466
      OnClick = N53Click
    end
    object N49: TMenuItem
      Caption = #20445#23384#30028#38754#26684#24335
      ShortCut = 16467
      OnClick = N49Click
    end
  end
  object fdSPRun: TFDStoredProc
    Left = 565
    Top = 273
  end
  object fdSPAuto: TFDStoredProc
    Left = 485
    Top = 273
  end
  object fdQryTree: TFDQuery
    Connection = F_DT.FDConSysTmp
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
      FieldName = 't_memo'
      Origin = 't_memo'
      Size = 200
    end
    object fdQryTreet_para: TStringField
      FieldName = 't_para'
      Origin = 't_para'
      Size = 300
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
    Left = 80
    Top = 288
  end
  object fdQryExport: TFDQuery
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
    Left = 1230
    Top = 546
  end
  object dlgSaveAssis: TSaveDialog
    Filter = #36741#21161#34920#26597#35810#27169#26495'(*.asi)|*.asi'
    Title = #36741#21161#34920#26597#35810#27169#26495#25991#20214
    Left = 422
    Top = 570
  end
end
