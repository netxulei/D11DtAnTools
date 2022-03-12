object f_item: Tf_item
  Left = 285
  Top = 31
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #20998#26512#27169#22411#32500#25252#65288'SQL'#65289
  ClientHeight = 860
  ClientWidth = 1266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object btn1: TBitBtn
    Left = 130
    Top = 117
    Width = 75
    Height = 25
    Caption = #21462#28040#20462#25913
    TabOrder = 2
  end
  object btn2: TBitBtn
    Left = 131
    Top = 159
    Width = 75
    Height = 25
    Caption = #23384#30424
    TabOrder = 4
  end
  object cxdbtrlst1: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 222
    Height = 860
    Align = alLeft
    Bands = <
      item
      end>
    DataController.DataSource = ds1
    DataController.ParentField = 't_parent_id'
    DataController.KeyField = 't_id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Images = ImageList1
    Navigator.Buttons.CustomButtons = <>
    OptionsData.Deleting = False
    OptionsSelection.InvertSelect = False
    OptionsView.CellAutoHeight = True
    OptionsView.ColumnAutoWidth = True
    OptionsView.GridLines = tlglBoth
    ParentFont = False
    PopupMenu = pm1
    RootValue = 0
    TabOrder = 0
    OnGetNodeImageIndex = cxdbtrlst1GetNodeImageIndex
    object cxdbtrlstclmn_name: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = #27169#22411#21517#31216
      DataBinding.FieldName = 't_name'
      Options.Editing = False
      Width = 239
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlstclmn_order: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = #39034#24207
      DataBinding.FieldName = 't_order'
      Width = 40
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object cxspltr1: TcxSplitter
    Left = 222
    Top = 0
    Width = 8
    Height = 860
    Cursor = crHSplit
    Hint = #24038#21491#25302#21160
    HotZoneClassName = 'TcxSimpleStyle'
    Control = cxdbtrlst1
    Color = clSilver
    ShowHint = True
    ParentColor = False
    ParentShowHint = False
  end
  object pnl1: TPanel
    Left = 230
    Top = 0
    Width = 1036
    Height = 860
    Align = alClient
    TabOrder = 1
    OnResize = pnl1Resize
    object pnl6: TPanel
      Left = 1
      Top = 1
      Width = 1034
      Height = 25
      Align = alTop
      TabOrder = 0
      object btn6: TBitBtn
        Left = 221
        Top = 1
        Width = 70
        Height = 21
        Caption = #20445#23384#20462#25913
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btn6Click
      end
      object btn7: TBitBtn
        Left = 291
        Top = 1
        Width = 70
        Height = 21
        Caption = #21462#28040#36820#22238
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btn7Click
      end
      object btn4: TBitBtn
        Left = 150
        Top = 1
        Width = 70
        Height = 21
        Caption = #21462#28040#20462#25913
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn4Click
      end
      object btn8: TBitBtn
        Left = 362
        Top = 1
        Width = 70
        Height = 21
        Caption = #20445#23384#36820#22238
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btn8Click
      end
      object btn3: TBitBtn
        Left = 10
        Top = 1
        Width = 70
        Height = 21
        Caption = #22686#21152#27169#22411
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn3Click
      end
      object btn5: TBitBtn
        Left = 80
        Top = 1
        Width = 70
        Height = 21
        Caption = #21024#38500#27169#22411
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btn5Click
      end
      object cxdbnvgtr1: TcxDBNavigator
        Left = 929
        Top = 1
        Width = 104
        Height = 23
        Buttons.CustomButtons = <>
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = True
        Buttons.NextPage.Visible = False
        Buttons.Insert.Visible = False
        Buttons.Append.Visible = False
        Buttons.Delete.Visible = False
        Buttons.Edit.Visible = False
        Buttons.Post.Visible = False
        Buttons.Cancel.Visible = False
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = ds1
        Align = alRight
        TabOrder = 6
      end
    end
    object cxdbm1: TcxDBMemo
      Left = 1
      Top = 273
      Align = alClient
      DataBinding.DataField = 't_proc'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Height = 586
      Width = 1034
    end
    object pnl2: TPanel
      Left = 1
      Top = 26
      Width = 1034
      Height = 247
      Align = alTop
      TabOrder = 2
      object lbl1: TLabel
        Left = 10
        Top = 31
        Width = 36
        Height = 12
        Caption = #21517#31216#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 399
        Top = 31
        Width = 48
        Height = 12
        Caption = #25152#23646#31867#21035
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 11
        Top = 74
        Width = 60
        Height = 12
        Caption = #21151#33021#25551#36848#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 11
        Top = 117
        Width = 60
        Height = 12
        Caption = #27169#22411#31867#21035#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 2
        Top = 165
        Width = 318
        Height = 12
        Caption = #21442#25968#20449#24687#65306#22914#65306'@'#21517#31216'!S:'#20844#21496'@'#26085#26399'!D:20090101@'#37329#39069'!N:100'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        OnClick = lbl4Click
      end
      object lbl5: TLabel
        Left = 3
        Top = 212
        Width = 60
        Height = 12
        Caption = #26041#27861#20195#30721#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 285
        Top = 212
        Width = 180
        Height = 12
        Caption = #25968#25454#24211#29256#26412#21495#65288'2019'#25110'2014'#25110#31354#65289
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object cxdbtxtdt2: TcxDBTextEdit
        Left = 3
        Top = 47
        DataBinding.DataField = 't_name'
        DataBinding.DataSource = ds1
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 368
      end
      object cxdblk1: TcxDBLookupComboBox
        Left = 393
        Top = 46
        DataBinding.DataField = 't_parent_id'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 10
        Properties.DropDownSizeable = True
        Properties.KeyFieldNames = 't_id'
        Properties.ListColumns = <
          item
            FieldName = 't_name'
          end>
        Properties.ListOptions.ColumnSorting = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds2
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 276
      end
      object cxdbtxtdt3: TcxDBTextEdit
        Left = 3
        Top = 91
        DataBinding.DataField = 't_memo'
        DataBinding.DataSource = ds1
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 667
      end
      object cbbt_type: TDBComboBoxEh
        Left = 3
        Top = 131
        Width = 121
        Height = 16
        Ctl3D = False
        DataField = 't_type'
        DataSource = ds1
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Flat = True
        Items.Strings = (
          #25152#26377#27169#22411#20849#29992
          #36134#25143#26816#26597#20849#29992
          #21333#20301#36134#25143#26816#26597
          #20010#20154#36134#25143#26816#26597
          #39118#38505#30417#27979#20849#29992
          #21333#20301#39118#38505#30417#27979
          #20010#20154#39118#38505#30417#27979
          #20020#26102#20998#26512)
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 3
        Visible = True
      end
      object grp1: TGroupBox
        Left = 174
        Top = 115
        Width = 247
        Height = 41
        Caption = #26159#21542#26174#31034
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object cxdbchckbx1: TcxDBCheckBox
          Left = 1
          Top = 15
          Caption = #23545#24212#20154#34892#36134#25143#20449#24687
          DataBinding.DataField = 't_table1'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
        end
        object cxdbchckbx2: TcxDBCheckBox
          Left = 114
          Top = 15
          Caption = #23545#24212#21830#34892#20132#26131#20449#24687
          DataBinding.DataField = 't_table2'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Transparent = True
        end
      end
      object cxdbchckbx3: TcxDBCheckBox
        Left = 434
        Top = 135
        Caption = #20801#35768#29992#25143#25191#34892#65288#21487#20197#38544#34255#26412#21151#33021#65289
        DataBinding.DataField = 't_hide'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Transparent = True
      end
      object cxdbchckbx4: TcxDBCheckBox
        Left = 432
        Top = 118
        Caption = #26159#21542#33258#21160#25191#34892#65288#29992#20110#21021#22987#21270#25968#25454#65289
        DataBinding.DataField = 't_auto'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Transparent = True
      end
      object cxdbtxtdt4: TcxDBTextEdit
        Left = 2
        Top = 182
        DataBinding.DataField = 't_para'
        DataBinding.DataSource = ds1
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Width = 665
      end
      object cxdbtxtdt1: TcxDBTextEdit
        Left = 484
        Top = 208
        DataBinding.DataField = 't_right'
        DataBinding.DataSource = ds1
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 180
      end
    end
  end
  object ADOqr1: TADOQuery
    Parameters = <>
    Left = 40
    Top = 33
  end
  object ds1: TDataSource
    DataSet = ADOqr1
    Left = 80
    Top = 33
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 128
    Top = 150
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      0000000000000000000000000000000000000000000000000000FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B0000000000FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B0000000000000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFAB
      8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB
      8E00FFAB8E00FFAB8E00FF8F6B0000000000FF8F6B00FFFFFF00FFAB8E00FFFF
      FF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB
      8E00FFFFFF00FF8F6B0000000000000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFFF
      FF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB
      8E00FFFFFF00FFFFFF00FF8F6B0000000000FF8F6B00FF8F6B00FFFFFF00FFFF
      FF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF734800FF734800FF734800FF734800FF73
      4800FF734800FF734800FF734800FF7348000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFFF
      FF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB
      8E00FFFFFF00FFFFFF00FF8F6B0000000000FF8F6B00FF8F6B00FFFFFF00FFAB
      8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFF
      FF00FFAB8E00FFFFFF00FF8F6B00000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FF734800FF7348008EFFFF00FF734800FF48B800FF48
      B800FF48B800FF48B800FF48B800FF7348000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFAB
      8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB
      8E00FFAB8E00FFAB8E00FF8F6B0000000000FF8F6B00FF8F6B00FF8F6B00FFFF
      FF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB
      8E00FFFFFF00FFFFFF00FF8F6B00000000000000000000000000FF8F6B00FFFF
      FF00D0B07B00D0B07B00FF734800FF7348008EFFFF00FF734800FF8ED400FF8E
      D400FF8ED400FF8ED400FF8ED400FF7348000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFFF
      FF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB
      8E00FFFFFF00FFFFFF00FF8F6B0000000000FF8F6B00FFFFFF00FF8F6B00FFFF
      FF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFF
      FF00FFFFFF00FFAB8E00FF8F6B00000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF734800FF734800FF734800FF734800FF73
      4800FF734800FF734800FF734800FF7348000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFFF
      FF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB
      8E00FFFFFF00FFFFFF00FF8F6B0000000000FF8F6B00FFFFFF00FF8F6B00FF8F
      6B00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFF
      FF00FFAB8E00FFFFFF00FFFFFF00FF8F6B000000000000000000FF8F6B00FFFF
      FF00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFAB
      8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB8E00FFAB
      8E00FFAB8E00FFAB8E00FF8F6B0000000000FF8F6B00FFFFFF00FFFFFF00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFAB8E00FFFF
      FF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB8E00FFFFFF00FFFFFF00FFAB
      8E00FFFFFF00FFFFFF00FF8F6B0000000000FF8F6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000FF8F6B00FFFF
      FF00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B0000000000FF8F6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B0000000000000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF8F6B00000000000000000000000000000000000000
      000000000000000000000000000000000000FF8F6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8F6B00FFFF
      FF00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00D0B07B00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00000000000000000000000000000000000000
      000000000000000000000000000000000000FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8F6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF8F6B00FF8F
      6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F6B00FF8F
      6B00FF8F6B00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFC0030000
      80010003C003000080010003C003000080010003C000000080010001C0000000
      80010001C000000080010001C000000080010000C003000080010000C0030000
      80010003C003000080010003C003000081FF03FFC003000081FF03FFC0030000
      FFFFFFFFC0030000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object pm1: TPopupMenu
    Left = 168
    Top = 37
    object N24: TMenuItem
      Caption = #20840#37096#23637#24320
      OnClick = N24Click
    end
    object N25: TMenuItem
      Caption = #20840#37096#25910#32553
      OnClick = N25Click
    end
  end
  object ADOqr2: TADOQuery
    Parameters = <>
    Left = 968
    Top = 60
  end
  object ds2: TDataSource
    DataSet = ADOqr2
    Left = 1044
    Top = 53
  end
  object ADOqrtmp: TADOQuery
    Parameters = <>
    Left = 1043
    Top = 121
  end
end
