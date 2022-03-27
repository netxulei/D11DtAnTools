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
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
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
    Left = 270
    Top = 0
    Width = 1334
    Height = 997
    Align = alClient
    Caption = 'Panel1'
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 25
      Width = 1332
      Height = 32
      Align = alTop
      Caption = 'Panel2'
      ParentBackground = False
      TabOrder = 0
      object lblMemo: TLabel
        Left = 1
        Top = 1
        Width = 52
        Height = 30
        Align = alLeft
        Caption = #21151#33021#25551#36848
        Layout = tlCenter
        ExplicitHeight = 15
      end
      object pnl3: TPanel
        Left = 53
        Top = 1
        Width = 1278
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
          Width = 1276
        end
      end
    end
    object pnl1: TPanel
      Left = 1
      Top = 57
      Width = 1332
      Height = 939
      Align = alClient
      Caption = 'pnl1'
      Color = 16776176
      ParentBackground = False
      TabOrder = 1
      object pnl5: TPanel
        Left = 1
        Top = 1
        Width = 1330
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
            Font.Name = 'Segoe UI'
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
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 2
          end
        end
        object pnl4: TPanel
          Left = 313
          Top = 1
          Width = 1016
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
          object lblInfo: TLabel
            Left = 1
            Top = 1
            Width = 1014
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
            ExplicitWidth = 52
            ExplicitHeight = 15
          end
        end
      end
      object dbgrdh1: TDBGridEh
        Left = 1
        Top = 52
        Width = 1330
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
        Width = 1330
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
          Width = 65
          Height = 22
          Align = alLeft
          Caption = #31579#36873#32467#26524#65306
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitTop = 2
        end
        object cxtxtdt1: TcxTextEdit
          Left = 150
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
          ExplicitLeft = 155
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
        end
      end
      object pnl9: TPanel
        Left = 1
        Top = 810
        Width = 1330
        Height = 128
        Align = alClient
        Color = 16776176
        ParentBackground = False
        TabOrder = 3
        Visible = False
        OnResize = pnl2Resize
        object dbgrdh2: TDBGridEh
          Left = 1
          Top = 61
          Width = 1328
          Height = 66
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
          Width = 1328
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
            Width = 1326
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
              Width = 1183
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
        Width = 1330
        Height = 10
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
      Width = 1332
      Height = 24
      Align = alTop
      ParentBackground = False
      TabOrder = 2
      object lblHlp: TLabel
        Left = 1
        Top = 1
        Width = 1330
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
    Width = 10
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
    object MnProjData: TMenuItem
      Caption = #39033#30446#35774#32622#21450#25968#25454#20934#22791
      object N_Proj: TMenuItem
        Bitmap.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA57255FFA26C4EFFA06849FFA06849FFA06849FFA06849FFA06849FFA068
          49FFA06849FFA06849FFA06849FFA06849FFA06849FFA06849FFA06849FFA068
          49FFA06849FFA06849FFA06849FFA06849FFA06849FFA06849FFA06849FFA068
          49FFA06849FFA06849FFA06849FFA06848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97758FFE6D3C7FFECDACFFFE9D8CDFFE5D6CAFFE8D3C7FFCCA890FFEBD6
          CAFFE8D4C8FFE7D2C4FFE6D1C2FFC8A388FFE9D3C4FFE6CFBFFFE6CEBEFFE4CD
          BDFFC8A085FFE5CDBCFFE6CDBEFFE4CBBCFFE3C9B8FFC9A186FFE5CBBAFFE7CC
          BCFFE4CABAFFE4C9B9FFE3C9B8FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFEED6C9FFF9EFEAFFF8EFE9FFF8EEE8FFF8EEE8FFD4A68AFFF7EC
          E6FFF7EBE5FFF6EAE3FFF6E9E1FFCFA488FFF4E7DEFFF4E5DDFFF3E4DBFFF3E3
          D9FFCD9F83FFF2E0D5FFF0DED3FFF0DED3FFF0DDD2FFCFA286FFEFDCCFFFEFDB
          CFFFEFDBCFFFEFDCCFFFE8CCBCFFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFEFE1D6FFFAF2EDFFFAF1ECFFF9F1ECFFF9F0EBFFD4B098FFF8EF
          E9FFF8EEE8FFF7EDE6FFF7ECE5FFCCA386FFF6E9E1FFF4E8DFFFF4E6DEFFF3E5
          DBFFCFA388FFF2E1D7FFF2E0D6FFF0DED3FFF0DED3FFD7A88BFFEFDCD0FFEFDB
          D0FFEFDBCFFFEFDBCFFFEACCBAFFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFEFE3D9FFFBF5F1FFFBF4F0FFFAF3EFFFFAF3EEFFD0B4A2FFFAF1
          ECFFF9F0EBFFF9EFEAFFF8EEE9FFC7A992FFF7EBE4FFF6E9E2FFF6E8E1FFF4E6
          DEFFCFA388FFF3E3D9FFF2E1D7FFF2E0D6FFF0DFD4FFD2A88EFFF0DDD1FFF0DD
          D0FFEFDBD0FFEFDCCFFFEACFBEFFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF0E8E3FFFCF7F4FFFCF6F3FFFCF6F3FFFBF5F2FFDAB9A5FFFBF4
          F0FFFAF3EFFFFAF2EDFFF9F1ECFFD4AF99FFF8EEE8FFF7EBE5FFF6EAE3FF99A7
          F5FF7F73B0FF99A7F5FF99A7F5FF99A7F5FF99A7F5FF7F76B4FF99A7F5FFF0DD
          D1FFF0DDD0FFEFDCD0FFECCCB9FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFD3B7A7FFDBBFAAFFD9B9A2FFD9B59DFFD7AF96FFC8A289FFDAB9
          A6FFD0B5A3FFD3AF9AFFD5AB90FFCA9E81FFDCB49BFFD8AF96FFD2AE95FF7B78
          BBFF0126EAFF0126EAFF0126EAFF0126EAFF0126EAFF0126EAFF7B78BBFFD8AD
          90FFD6AC8EFFD4AC8FFFD4A990FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFEEE0D8FFF5E3D9FFFAE6DDFFF2E2D9FFF1E0D6FFD3AF97FFF3E5
          DDFFECE1D9FFF2DED4FFF2E2DAFFD2AA92FFF4E0D6FFF1DED3FFF0DACEFF99A7
          F5FF0937F4FFD1D7FBFFD1D7FBFFD1D7FBFFD1D7FBFF0126EAFF99A7F5FFEACF
          BBFFE9CDBBFFE7CBB9FFE6CAB9FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF2EEE9FFFEFBFAFFFEFBF9FFFEFBF9FFFEFAF8FFD3B09BFFFDFA
          F8FFFDF9F7FFFDF8F5FFFCF7F4FFD2AA92FFFBF4F0FFFAF2EEFFF9F0EBFF99A7
          F5FF0939F4FFCDD3FBFFE9EBFDFFE9EBFDFFD1D7FBFF0126EAFF99A7F5FFF1E0
          D6FFF1E0D4FFF0DFD3FFEACEBEFFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF3EEEAFFFFFCFBFFFEFCFAFFFEFBFAFFFEFBFAFFDAB7A3FFFEFB
          F9FFFEFAF8FFFDF9F7FFFDF8F6FFCDB09FFFFCF6F2FFFBF4F0FFFAF2EEFF99A7
          F5FF1C40EDFFCFD4FBFFE9EBFDFFE9EBFDFFD1D7FBFF0126EAFF99A7F5FFF2E1
          D7FFF1E0D5FFF1E0D4FFEBD0BFFFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF3EEEAFFFFFCFBFFFFFCFBFFFFFCFBFFFFFCFBFFDBC0ACFFFEFB
          FAFFFEFBF9FFFEFAF8FFFDF9F7FFD1B3A1FFFCF7F4FFFCF6F2FFFBF4F0FF99A7
          F5FF1C3FEEFFD0D5FBFFE9EBFDFFE9EBFDFFD1D7FBFF0126EAFF99A7F5FFF2E2
          D8FFF2E1D7FFF1E0D5FFEDD3C3FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAC7E63FFF0EBE2FFFFFDFCFFFFFDFCFFFFFDFCFFFFFCFBFFDABBA8FFFFFC
          FBFFFEFCFAFFFEFBF9FFFEFAF8FFD3B39CFFFDF8F6FFFCF7F4FFFBF5F1FF99A7
          F5FF2246EFFFCFD4FBFFCFD4FBFFCFD4FBFFCCD2FBFF0126EAFF99A7F5FFF2E3
          D9FFF2E2D8FFF2E1D8FFEBD3C4FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFD1BAA1FFD5BCA3FFD9B8A3FFD9B59EFFCEB6A3FFC7A893FFD9B8
          A3FFD9B59EFFD5B4A1FFD4B39BFFC8A38CFFD7B49DFFD5AC93FFD1A68EFF7B78
          BBFF2949EFFF3054F1FF264AF0FF1C40EDFF0E3CECFF0E37E3FF7B78BBFFCFAD
          97FFC7A994FFD2A88FFFD0A78DFFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF9EAE1FFF9ECE5FFFBEBE0FFF6EAE2FFF5E9E2FFD7B7A4FFF5E9
          E2FFEFE7E2FFF7EAE3FFF4E8E0FFD5B4A0FFF7E7DEFFF4E3D9FFF5E4DAFF99A7
          F5FF7B78BBFF99A7F5FF99A7F5FF99A7F5FF99A7F5FF7B78BBFF99A7F5FFEED6
          C5FFECD1C0FFE9CEBEFFE6C8B8FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF3EFEBFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFDBC0ACFFFFFD
          FCFFFFFDFCFFFFFCFBFFFFFCFBFFD9B8A1FFFEFBF9FFFDF9F7FFFDF8F6FFFCF6
          F3FFD0B29FFFFAF2EDFFF9F0EAFFF7EDE7FFF6EBE4FFD2AA91FFF5E7DFFFF4E5
          DDFFF3E4DAFFF3E3DAFFECD0C0FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF3EFEBFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFDCC3B1FFFFFD
          FCFFFFFDFCFFFFFDFCFFFFFCFBFFDCBBA8FFFEFBF9FFFEFAF8FFFDF9F6FFFCF7
          F4FFCDB5A1FFFAF3EFFFF9F1ECFFF8EEE9FFF7ECE5FFCDAB97FFF5E8E0FFF4E6
          DDFFF4E5DCFFF3E4DAFFEDD3C1FFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFF3EFEBFFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFDAC6B1FFFFFD
          FCFFFFFDFCFFFFFDFCFFFFFCFBFFDCBFACFFFEFBFAFFFEFBF9FFFDF9F7FFFDF8
          F5FFD5BAA0FFFBF4F0FFFAF2EDFFF9EFEAFFF7EDE7FFD7B59CFFF5E9E1FFF5E7
          DFFFF4E6DDFFF4E5DCFFEED9CAFFA26C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFFAEBE3FFFFFDFCFFFFFDFCFFFFFDFCFFFFFDFCFFDFBFAAFFFFFD
          FCFFFFFDFCFFFFFDFCFFFFFCFBFFDFBEAAFFFEFCFAFFFEFBF9FFFEFAF8FFFDF9
          F6FFDEBAA3FFFBF5F2FFFAF3EFFFF9F1ECFFF8EFE9FFDDB7A0FFF6EAE3FFF5E8
          E0FFF4E7DEFFF4E6DDFFF0D8CAFFA46D4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFE1AE90FFE3B18CFFE3B185FFD6AB8CFFD2A387FFD7AB87FFD2A3
          87FFE3A279FFE3A279FFE3A279FFDEA47CFFE3A279FFDB9E70FFD99C6DFFD99C
          6DFFDA9469FFD69064FFD79261FFD79261FFD79261FFD79261FFDC8F5AFFDF8B
          51FFDD854CFFDB834BFFD6804BFFA56744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFFBDAC3FFFBDAC3FFFBDAC3FFFBD9C1FFFBD7BFFFFAD6BCFFFAD5
          BBFFF9D3B8FFF8D2B5FFF8D1B2FFF8CFB1FFF8CEADFFF7CCABFFF7CBAAFFF6CA
          A7FFF6C9A4FFF5C7A2FFF5C7A0FFF5C69CFFF5C59BFFF5C297FFF5C096FFF4BE
          90FFF4BC8CFFF4BA89FFF2B885FFA56744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFFBDAC3FFFBDAC3FFFBDAC3FFFBD9C1FFFBD8BFFFFAD6BDFFFAD5
          BBFFF9D4B8FFF9D2B5FFF8D1B2FFF8CEB0FFF8CEADFFF7CCABFFF6CBA9FFF6CA
          A7FFF5CAA4FFF5C8A2FFF5C69FFFF4C69CFFF5C499FFF5C297FFF5BF93FFF4BE
          8FFFF4BB8CFFF3BA87FFF2B785FFA56744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA97C60FFDBAE8DFFDCB293FFE3B18CFFE3AA7EFFD5A380FFD19D7BFFCF9F
          7EFFCB9B7DFFD69872FFD99C6DFFDE996AFFD99C6DFFDE996AFFDA9469FFD690
          64FFD69064FFD79261FFD28C60FFD28C60FFD28C60FFD28C60FFD28C60FFD689
          58FFE08348FFE08348FFDF8146FFA56744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA3765DFFE5CCBBFFE2C4AFFFD9AB91FFF3D4BBFFC4A691FFCFB0A2FFDBBE
          AFFFB89587FFE3BCA2FFE2B599FFD2A284FFFBC9ABFFCC9976FFD2A284FFE2B5
          99FFB48466FFE2B599FFD5A689FFC39374FFE9C6B1FFCB9471FFD2A284FFDDB1
          95FFA06745FFE3A883FFCB9471FFA16A4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA68171FFC0C0C0FFBBB3B3FFB4A9A6FFCCCAC8FFB4A9A6FFBBB3B3FFC0C0
          C0FFAA9C9FFFC0C0C0FFBBB3B3FFB59FA9FFCCCAC8FFAC9A91FFB4A9A6FFC1B9
          B4FFA28A7DFFBBB3B3FFB4A9A6FFAC9A91FFCCCAC8FFAC9A91FFB4A9A6FFBBB3
          B3FF6D6D6DFFB6B5B5FF9D9A99FF99715AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC0C0C0FF57504CFF7A7573FF9D9A99FF57504CFF7A7573FF9D9A99FF5750
          4CFF7A7573FF9D9A99FF57504CFF7A7573FF9D9A99FF57504CFF7A7573FF9D9A
          99FF57504CFF7A7573FF9D9A99FF57504CFF7A7573FF9D9A99FF57504CFF7A75
          73FF9D9A99FF57504CFF7A7573FFA9968CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA9A8A7FFA9A8A7FFFFFFFFFFA9A8A7FFA9A8A7FFFFFFFFFFA9A8
          A7FFA9A8A7FFFFFFFFFFA9A8A7FFA9A8A7FFFFFFFFFFA9A8A7FFA9A8A7FFFFFF
          FFFFA9A8A7FFA9A8A7FFFFFFFFFFA9A8A7FFA9A8A7FFFFFFFFFFA9A8A7FFA9A8
          A7FFFFFFFFFFA9A8A7FFA9A8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #39033#30446#35774#32622
        OnClick = N_ProjClick
      end
      object mniN38: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Bitmap.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFF9F9F9FFF0F0F0FFEAEAEAFFE9E9E9FFE9E9E9FFEAEA
          EAFFF0F0F0FFF9F9F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFCFCFFF1F1F1FFDFDFDFFFCBCBCBFFBFBFBFFFBCBCBCFFBCBCBCFFBFBF
          BFFFCBCBCBFFDFDFDFFFF1F1F1FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFAFAFAFFF4F4F4FFEEEEEEFFEBEBEBFFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE3E3E3FFD0D0D0FF96B2A4FF2E9264FF008948FF008848FF008848FF0089
          48FF2E9264FF96B2A4FFD2D2D2FFEDEDEDFFFCFCFCFFFFFFFFFFFFFFFFFFFCFC
          FCFFF4F4F4FFE9E9E9FFDFDFDFFFD2D2D2FFC8C8C8FFC1C1C1FFBEBEBEFFBCBC
          BCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBDBD
          BDFFBBBBBBFF4C9B75FF009051FF00B578FF00CD8FFF00D193FF00D193FF00CD
          8FFF00B578FF009051FF4B9C76FFD2D2D2FFF1F1F1FFFEFEFEFFFBFBFBFFECEC
          ECFFD4D4D4FFC1C1C1FFAFAFACFFA2A09BFF98958CFF969189FF938E84FF928D
          83FF918D83FF918D82FF918C82FF918C82FF918C82FF928D83FF968E85FFA490
          8BFF3C8D62FF009553FF00CB8DFF00CD8EFF00C989FF00C584FF00C584FF00C9
          89FF00CD8EFF00CB8EFF009555FF4E9F79FFDFDFDFFFF9F9F9FFF2F2F2FFD1D1
          D1FFA5A29CFF969086FFA09A90FFB0A9A0FFC4BBB3FFCBC2B9FFE3D8D0FFE5DC
          D4FFEADFD7FFEDE2DCFFF2E6DFFFF3E7E0FFEEE4DDFFECE1D9FFEFDFDAFFB5C9
          B4FF008D48FF00C88AFF00CA8BFF00C787FF00C27FFFFFFFFFFFFFFFFFFF00C2
          7FFF00C787FF00CA8BFF00C98CFF009150FFA2BDB0FFF0F0F0FFEAEAEAFFA4A1
          9AFF9F9A90FFC8C0B6FFD2CAC0FFD3CBC1FFD7CEC4FFD9D0C8FFDDD3CBFFDFD6
          CEFFE3D9D1FFE6DCD5FFEBE0D9FFECE1DAFFE7DDD6FFE7DBD3FFF0DBD7FF3A9D
          6CFF00AF6DFF00C888FF00C485FF00C282FF00BD78FFFFFFFFFFFFFFFFFF00BD
          78FF00C282FF00C485FF00C889FF00B273FF329868FFEAEAEAFFE9E9E9FF9893
          88FFC8C0B6FFCBC3B9FFCEC5BCFFD0C8BEFFD4CBC1FFD7CEC5FFDBD1C9FFDED5
          CDFFE2D8D0FFE5DBD4FFE9DED7FFEBDFD8FFE6DCD5FFE6DAD3FFF4DCD9FF0080
          39FF00C283FF00C281FF00BD7BFF00BB76FF00B76EFFFFFFFFFFFFFFFFFF00B7
          6EFF00BB76FF00BD7BFF00C282FF00C486FF008949FFE9E9E9FFE9E9E9FF9892
          88FFCAC1B8FFCAC2B8FFCDC4BBFFD0C8BEFFD4CBC1FFD7CEC5FFDBD1C9FFDED5
          CDFFE2D8D0FFE5DBD4FFE9DED7FFEADFD8FFE6DCD5FFE6DAD3FFF5DCD9FF0080
          39FF16CC93FF00BC79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00BC79FF1ACD95FF008848FFE9E9E9FFE9E9E9FF9993
          89FFC9C0B7FFC9C1B7FFCCC3BAFFCEC5BCFFD2C9BFFFD5CCC3FFD9CFC7FFDCD3
          CBFFE1D6CEFFE4D9D2FFE9DDD6FFEADED7FFE5DAD3FFE6D9D1FFF4DBD8FF0080
          38FF34D29EFF00BA76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00BA76FF38D3A1FF008847FFEAEAEAFFE9E9E9FF9994
          88FFC8BFB6FFC7BFB5FFD4CDC3FFE4DDD6FFF2EDE5FFF6F1EAFFFFFCF5FFFFFB
          F4FFFFFBF4FFFEFAF3FFFDFAF3FFFDFAF3FFFEFAF3FFFFFBF6FFFFFFFFFF007F
          36FF68DAB5FF00BA77FF00B873FF00B670FF00B167FFFFFFFFFFFFFFFFFF00B1
          67FF00B670FF00B873FF00BA77FF6DDCB8FF008846FFF0F0F0FFEBEBEBFF9994
          89FFD3CCC2FFF6F1EAFFEFE9E3FFDAD5CDFFCAC1B9FFBBB2AAFFB3AAA0FFB3A9
          A0FFB5ABA1FFB7ADA5FFB9AFA5FFBAAFA7FFB8ACA4FFB8ABA4FFC3AEA8FF258F
          5BFF57C399FF27C893FF00B977FF00B877FF00B36DFFFFFFFFFFFFFFFFFF00B3
          6DFF00B877FF00B977FF29C894FF62C79FFF3BA070FFF9F9F9FFEFEFEFFF9A94
          8AFFF2ECE4FFB7AEA5FFA49B90FFAAA197FFBAB1A8FFC4B9B0FFD1C8BEFFD5CB
          C1FFE5DBD3FFE8DED7FFECE1DAFFEEE2DBFFE9DFD8FFE7DCD4FFE7D7D1FFA6BC
          A7FF008D4AFF87E1C2FF1BC389FF00B673FF00B26CFFFFFFFFFFFFFFFFFF00B2
          6CFF00B673FF1CC38AFF8CE2C5FF0C9356FFC1DCD0FFFEFEFEFFEFEFEFFFADA9
          A2FFB4ABA3FFB4ACA1FFC9C0B7FFD3CBC1FFD6CDC3FFD9D0C8FFDDD3CBFFDFD6
          CEFFE3D9D1FFE6DCD5FFEADFD8FFECE0D9FFE7DDD6FFE4DAD2FFE3D8D1FFECD7
          D3FF409F70FF039454FF91E2C5FF5AD4AAFF0BBB7DFF00AF67FF00AF67FF0BBB
          7EFF5CD4ABFF97E4C9FF13995EFF63B38DFFFCFCFCFFFFFFFFFFEBEBEBFFAAA6
          9FFFB6AEA3FFCBC4B9FFCEC5BCFFD1C9BFFFD4CBC1FFD7CEC5FFDBD1C9FFDED5
          CDFFE2D8D0FFE5DBD4FFE9DED7FFEBDFD8FFE6DCD5FFE3D9D1FFE0D6CEFFE2D4
          CDFFEAD4D0FF51A479FF008D49FF53C095FF8FE0C3FF9AE7CDFF9BE7CEFF93E2
          C5FF5EC39BFF0A9355FF64B48EFFFCFCFCFFFFFFFFFFFFFFFFFFE9E9E9FF9F98
          8EFFCAC1B8FFCAC2B8FFCDC4BBFFD0C8BEFFD4CBC1FFD7CEC5FFDBD1C9FFDED5
          CDFFE2D8D0FFE5DBD4FFE9DED7FFEADFD8FFE6DCD5FFE3D9D1FFDFD6CEFFDDD2
          CAFFDDD0C9FFE3CFCAFFA2B9A5FF2D9763FF008138FF00823AFF00853DFF0087
          42FF41A474FFC7E2D5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FF9F99
          8DFFC9C0B7FFC9C1B7FFCCC3BAFFCEC5BCFFD2C9BFFFD5CCC3FFD9CFC7FFDCD3
          CBFFE1D6CEFFE4D9D2FFE9DDD6FFEADED7FFE5DAD3FFE2D7CFFFDDD4CCFFDAD0
          C8FFD7CDC4FFD7CBC2FFD8C9C2FFDBC8C2FFDBC4C0FFDDC4C1FFB89A97FFE9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FF9F99
          8EFFC8BFB6FFC7BFB5FFD4CDC3FFE4DDD6FFF2EDE5FFF6F1EAFFFFFCF5FFFFFB
          F4FFFFFBF4FFFEFAF3FFFDFAF3FFFDFAF3FFFEFAF3FFFEFAF4FFFFFBF4FFFFFC
          F5FFF6F0EAFFF2EDE5FFE5DFD6FFD7CEC5FFCBBFB7FFCDC0B8FFA79A91FFE9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFF9F99
          8DFFD3CBC2FFF6F1EAFFEFE9E3FFDAD5CDFFCAC1B9FFBBB2AAFFB3AAA0FFB3A9
          A0FFB5ABA2FFB7ADA5FFB9AFA5FFBAAFA7FFB8ADA4FFB6ABA2FFB4AAA1FFB4A9
          A1FFBBB3AAFFCAC2B9FFDAD4CDFFEEE9E2FFF6F0EAFFD2CBC1FFA0998DFFEBEB
          EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFA199
          8EFFF1EBE4FFB6AEA5FFA49B90FFAAA197FFBAB1A8FFC4B9B0FFD1C8BEFFD5CB
          C1FFE1D7CFFFE8DED7FFECE1DAFFEEE2DBFFE9DFD8FFE6DCD4FFD9CEC7FFD2C9
          BFFFCFC4BCFFBDB4ABFFB3AAA1FFAAA097FFB6ADA4FFF0EBE3FFA7A095FFEFEF
          EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFB0AC
          A5FFB3ABA2FFB4ACA1FFC9C0B7FFD3CBC1FFD6CDC3FFD9D0C8FFDDD3CBFFDFD6
          CFFFE3D9D1FFE6DCD5FFEADFD8FFECE0D9FFE7DDD6FFE4DAD2FFE0D7CFFFDDD3
          CBFFDAD1C9FFD7CEC4FFD3CBC1FFD0C8BEFFBEB6AEFFB5ADA4FFB0ACA5FFEFEF
          EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFFAEAA
          A2FFB5ADA3FFCBC3B9FFCEC5BCFFD1C9BFFFD4CBC1FFD7CEC5FFDBD1C9FFDED5
          CDFFE2D8D0FFE5DBD4FFE9DED7FFEBDFD8FFE6DCD5FFE3D9D1FFDFD6CEFFDCD2
          CAFFD8CFC7FFD5CCC2FFD1C9BFFFCFC7BDFFCCC3BAFFBBB3AAFFAEA9A2FFEBEB
          EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFA49D
          92FFC9C0B8FFCAC2B8FFCDC4BBFFD0C8BEFFD4CBC1FFD7CEC5FFDBD1C9FFDED5
          CDFFE2D8D0FFE5DBD4FFE9DED7FFEADFD8FFE6DCD5FFE3D9D1FFDFD6CEFFDCD2
          CAFFD8CFC7FFD5CCC2FFD1C9BFFFCEC5BCFFCBC2B9FFCAC1B9FFA49D92FFE9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFA59E
          93FFC8BFB7FFC9C1B7FFCCC2B9FFCEC5BCFFD2C8BEFFD5CBC2FFD9CEC5FFDCD2
          CAFFE0D6CEFFE3D9D2FFE8DDD6FFEADED7FFE5DAD3FFE1D7CFFFDDD4CCFFDACF
          C7FFD6CCC3FFD3C9BFFFCFC7BDFFCDC3BAFFCAC1B8FFCAC0B8FFA59E93FFE9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFA69F
          92FFC7BDB5FFC5BEB3FFD2CBC1FFE2DBD3FFF0EAE2FFF3EEE7FFFDFAF3FFFDF9
          F2FFFDF8F2FFFCF8F1FFFCF8F1FFFCF8F1FFFCF8F1FFFDF8F2FFFDF9F2FFFDF9
          F3FFF3EEE7FFEFEAE2FFE2DCD3FFD3CCC2FFC7BEB5FFC8BEB6FFA69F92FFE9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFA59E
          92FFCFC8BEFFF8F4ECFFFFFAF4FFF8F2EBFFE9E2DAFFE3DAD3FFD7CFC5FFD4CB
          C1FFD4CBC1FFD4CBC1FFD4CBC1FFD4CBC1FFD4CBC1FFD4CBC1FFD4CBC1FFD7CF
          C5FFE3DAD3FFE9E2DAFFF8F2EBFFFFFAF4FFF4F0E8FFCFC8BEFFA59E92FFE9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FFA59D
          92FFFFFCF5FFEAE3DBFFD3C9BFFFCDC2B8FFCEC4B9FFCEC4BAFFCFC5BAFFCFC5
          BBFFCFC5BBFFCFC5BBFFCFC5BBFFCFC5BBFFCFC5BBFFCFC5BBFFCFC5BBFFCFC5
          BAFFCEC4BAFFCEC4B9FFCDC2B8FFD3C9BFFFEAE3DBFFFFFCF5FFAAA398FFE9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFA59E
          92FFECE5DDFFD5CCC1FFD5CCC1FFD6CDC2FFD7CEC2FFD7CEC3FFD7CEC3FFD7CE
          C3FFD7CEC3FFD7CEC3FFD7CEC3FFD7CEC3FFD7CEC3FFD7CEC3FFD7CEC3FFD7CE
          C3FFD7CEC3FFD7CEC2FFD6CDC2FFD5CCC1FFD5CCC1FFECE5DDFFA59E92FFEAEA
          EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFA8A1
          95FFE0D6CDFFE0D6CCFFDED5CBFFDDD4CAFFDDD4CAFFDDD4CAFFDDD4CAFFDDD4
          CAFFDDD4CAFFDDD4CAFFDDD4CAFFDDD4CAFFDDD4CAFFDDD4CAFFDDD4CAFFDDD4
          CAFFDDD4CAFFDDD4CAFFDDD4CAFFDED5CBFFDFD6CCFFE0D6CDFFA8A195FFF2F2
          F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFC0BA
          B2FFB4ACA0FFDED5CBFFE9E1D7FFE7DFD5FFE6DED4FFE5DDD3FFE5DDD3FFE4DC
          D2FFE4DCD2FFE4DCD2FFE4DCD2FFE4DCD2FFE4DCD2FFE4DCD2FFE4DCD2FFE5DD
          D3FFE5DDD3FFE6DED4FFE7DFD5FFE9E1D7FFE2DAD0FFB4ACA0FFC0BAB2FFFBFB
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCFFCFCAC4FFA9A295FFB6ADA2FFC8BEB3FFD9D1C5FFDDD5CAFFF1E9DFFFF0E8
          DEFFF0E8DEFFF0E8DEFFF0E8DEFFF0E8DEFFF0E8DEFFF0E8DEFFF0E8DEFFF1E9
          DFFFDDD5CAFFD9D1C5FFC8BEB3FFB6ADA2FFA9A195FFCFCAC4FFFCFCFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFEAE8E6FFD0CCC6FFB7B0A7FFB1AAA0FFA9A195FFA9A1
          95FFA9A195FFA9A195FFA9A195FFA9A195FFA9A195FFA9A195FFA9A195FFA9A1
          95FFB1AAA0FFB7B0A7FFD0CCC6FFEAE8E6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #25968#25454#37319#38598
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N27: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DA9512FEDA9512FEDA9512FEDA9512FEDA9512FEDB9612FFDB9612FFDA95
          12FEDA9512FE0000000000000000000000000000000000000000000000000000
          0000DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDA9512FEDB96
          12FFDA9512FEDB9612FF00000000000000000000000000000000000000000000
          0000DB9612FF0000000000000000000000000000000000000000DA9512FE6D4B
          098000000000DB9612FFDB9612FF060400070000000000000000000000000000
          0000DB9612FF00000000DB9612FFDB9612FFDB9612FFDB9612FF00000000DB96
          12FFDA9512FE00000000DB9612FFDB9612FF1E14022300000000000000000000
          0000DB9612FF00000000DB9612FFDB9612FFDB9612FFDB9612FF000000000000
          0000DB9612FFDB9612FF00000000DB9612FFDB9612FF00000000000000000000
          0000DB9612FF0000000000000000000000000000000000000000000000000000
          000007050108DB9612FFDB9612FFDB9612FFDB9612FF00000000000000000000
          0000DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
          12FFDA9512FEDB9612FFDB9612FFDB9612FF0000000000000000000000000000
          0000DB9612FF0000000000000000000000000000000000000000000000000000
          00000000000000000000DB9612FF000000000000000000000000000000000000
          0000DB9612FF00000000DB9612FFDB9612FFDB9612FFDB9612FF000000000000
          00000000000000000000DB9612FF000000000000000000000000000000000000
          0000DB9612FF00000000DB9612FFDB9612FFDB9612FFDB9612FF00000000DB96
          12FFDA9512FEDA9512FEDB9612FF000000000000000000000000000000000000
          0000DB9612FF000000000000000000000000000000000000000000000000DB96
          12FFDB9612FFDB9612FFDB9612FF000000000000000000000000000000000000
          0000DB9612FF000000000000000000000000000000000000000000000000DB96
          12FFD99512FDDB9612FFDB9612FF000000000000000000000000000000000000
          0000DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
          12FFDB9612FFDB9612FF00000000000000000000000000000000000000000000
          0000DA9512FEDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
          12FFDB9612FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Caption = #20020#26102#35760#24405#26412
        OnClick = N27Click
      end
      object N38: TMenuItem
        Caption = '-'
      end
    end
    object MnOpenMode: TMenuItem
      AutoCheck = True
      Caption = #9679#24320#25918#27169#24335#21151#33021
      object MnModel: TMenuItem
        Caption = #27169#22411#32500#25252
        OnClick = MnModelClick
      end
      object MnRule: TMenuItem
        Caption = #25509#21475#35268#33539#32500#25252
        OnClick = MnRuleClick
      end
      object MnDict: TMenuItem
        Caption = #25968#25454#23383#20856#32500#25252
        OnClick = MnDictClick
      end
    end
    object N11: TMenuItem
      Caption = #31995#32479#31649#29702
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
        OnClick = MnModBackClick
      end
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
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002419
          032A000000000000000000000000000000000000000000000000000000000000
          0000000000002419032A0000000000000000000000000000000000000000B67D
          0FD4100B01120000000000000000000000000000000000000000000000000000
          0000100B0112B67D0FD40000000000000000000000000000000000000000B67D
          0FD44E35065B0000000000000000000000000000000000000000000000000000
          00004E35065BB67D0FD400000000110C0114DB9612FF00000000000000006042
          0870B67D0FD40000000000000000000000000000000000000000000000000000
          0000B67D0FD46042087000000000442F064FB67D0FD400000000000000000000
          000092640CAAA4700DBF0806010A0000000000000000000000000A07010BA470
          0DBF92640CAA000000002B1D0432C78810E8553A076300000000000000000000
          000000000000895E0B9FB1790FCE8E610CA56D4B09808E610CA5B67D0FD4895E
          0B9F3C29054664440874CF8E11F25C3F086B0000000000000000000000000000
          000000000000000000008D600CA4DB9612FF6D4B0980DB9612FF8D600CA40000
          0000A4700DBFB67D0FD42419032A000000000000000000000000000000000000
          00000000000049320655B77D0FD5000000000000000000000000B87E0FD64932
          0655000000005E40086DA8730EC4000000000000000000000000000000000000
          0000000000006D4B09806D4B09800000000000000000000000006D4B09806D4B
          09800000000000000000DB9612FF000000000000000000000000000000000000
          00000000000049320655A4700DBF000000000000000000000000A4700DBF4932
          0655160F02196D4B09806D4B0980000000000000000000000000000000000000
          00000000000000000000DB9612FFAF780ECC6D4B0980AF780ECCDB9612FF2C1E
          0433DB9612FF95660CAD37250440000000000000000000000000000000000000
          0000000000000000000000000000432E064E6D4B0980432E064E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Caption = #29992#25143#31649#29702
        OnClick = MnUserClick
      end
      object MnOpen: TMenuItem
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E090110DB9612FFDB9612FFDB9612FFDB96
          12FF0E0901100000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FF0000000000000000000000000000000000000000000000000000
          0000DB9612FFDB9612FFDB9612FFDB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FFDB9612FFDB9612FFDB9612FF0000000000000000000000000E09
          0110DB9612FFDB9612FFDB9612FFDB9612FF0000000000000000000000000000
          0000DB9612FFDB9612FFDB9612FFDB9612FF0E0901100000000000000000DB96
          12FFDB9612FF00000000000000000000000000000000DB9612FFDB9612FF0000
          0000000000000000000000000000DB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FF000000000000000000000000DB9612FFDB9612FFDB9612FFDB96
          12FF000000000000000000000000DB9612FFDB9612FF00000000000000000000
          0000DB9612FFDB9612FF00000000DB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FF00000000DB9612FFDB9612FF0000000000000000000000000000
          0000DB9612FFDB9612FF00000000DB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FF00000000DB9612FFDB9612FF000000000000000000000000DB96
          12FFDB9612FF000000000000000000000000DB9612FFDB9612FFDB9612FFDB96
          12FF000000000000000000000000DB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FF00000000000000000000000000000000DB9612FFDB9612FF0000
          0000000000000000000000000000DB9612FFDB9612FF00000000000000000E09
          0110DB9612FFDB9612FFDB9612FFDB9612FF0000000000000000000000000000
          0000DB9612FFDB9612FFDB9612FFDB9612FF0E09011000000000000000000000
          0000DB9612FFDB9612FFDB9612FFDB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FFDB9612FFDB9612FFDB9612FF0000000000000000000000000000
          0000000000000000000000000000DB9612FFDB9612FF0000000000000000DB96
          12FFDB9612FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E090110DB9612FFDB9612FFDB9612FFDB96
          12FF0E0901100000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Caption = #25171#24320#24320#25918#27169#24335
        OnClick = MnOpenClick
      end
    end
    object MnHelp: TMenuItem
      Caption = #24110#21161
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
    object MnExit: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000061ED8FF061ED8FF061ED8FF061ED8FF061E
        D8FF061ED8FF0000000000000000000000000000000000000000000000000000
        00000000000000000000061ED8FF061ED8FF061ED8FF061ED8FF061ED8FF061E
        D8FF061ED8FF061ED8FF00000000000000000000000000000000000000000000
        000000000000061ED8FF061ED8FF000107080000000000000000000000000000
        000000010607061ED8FF061ED8FF000000000000000000000000000000000000
        0000061ED8FF061ED8FF00000000000000000000000000000000000000000000
        00000000000000000000061ED8FF061ED8FF000000000000000000000000061E
        D8FF061ED8FF00010A0C00000000000000000000000000000000000000000000
        0000000000000000000000010A0C061ED8FF061ED8FF0000000000000000061E
        D8FF061ED8FF00000000000000000000000000000000061ED8FF061ED8FF0000
        0000000000000000000000000000061ED8FF061ED8FF0000000000000000061E
        D8FF061ED8FF00000000000000000000000000000000061ED8FF061ED8FF0000
        0000000000000000000000000000061ED8FF061ED8FF0000000000000000061E
        D8FF061ED8FF00000000000000000000000000000000061ED8FF061ED8FF0000
        0000000000000000000000000000061ED8FF061ED8FF0000000000000000061E
        D8FF061ED8FF00000000000000000000000000000000061ED8FF061ED8FF0000
        0000000000000000000000000000061ED8FF061ED8FF0000000000000000061E
        D8FF061ED8FF00000000000000000000000000000000061ED8FF061ED8FF0000
        0000000000000000000000000000061ED8FF061ED8FF00000000000000000000
        0000061ED8FF061ED8FF000000000000000000000000061ED8FF061ED8FF0000
        00000000000000000000061ED8FF061ED8FF0000000000000000000000000000
        0000061ED8FF061ED8FF061ED8FF0000000000000000061ED8FF061ED8FF0000
        000000000000061ED8FF061ED8FF00020D0F0000000000000000000000000000
        000000000000061ED8FF061ED8FF061ED8FF00000000061ED8FF061ED8FF0000
        0000061ED8FF061ED8FF061ED8FF000000000000000000000000000000000000
        0000000000000000000000000000061ED8FF00000000061ED8FF061ED8FF0000
        0000061ED8FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = #36864#20986
      OnClick = MnExitClick
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
