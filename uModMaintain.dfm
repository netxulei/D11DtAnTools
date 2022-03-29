object FModMaintain: TFModMaintain
  Left = 0
  Top = 0
  Width = 1494
  Height = 981
  AutoScroll = True
  Caption = #20998#26512#27169#22411#32500#25252#65288'SQL'#65289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object cxdbtrlst1: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 433
    Height = 923
    Align = alLeft
    Bands = <
      item
      end>
    DataController.DataSource = ds1
    DataController.ParentField = 't_parent_id'
    DataController.KeyField = 't_id'
    FilterBox.CustomizeDialog = False
    FilterBox.Position = fpTop
    Images = ImageList1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.SkinName = ''
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.MultiSort = False
    OptionsData.Deleting = False
    OptionsData.SmartRefresh = True
    OptionsSelection.InvertSelect = False
    OptionsView.CellAutoHeight = True
    OptionsView.ColumnAutoWidth = True
    OptionsView.GridLines = tlglBoth
    OptionsView.Indicator = True
    OptionsView.IndicatorWidth = 6
    PopupMenu = pm1
    RootValue = 0
    Styles.Background = cxstyl1
    Styles.Content = cxstyl1
    Styles.BandHeader = cxstyl1
    TabOrder = 0
    OnGetNodeImageIndex = cxdbtrlst1GetNodeImageIndex
    object cxdbtrlst1modiState: TcxDBTreeListColumn
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Images = F_DT.vrtlmglstMenu
      Properties.Items = <
        item
          Description = #23005#65349#29238
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = #28103#57789#25980
          ImageIndex = 1
          Value = '1'
        end
        item
          Description = #37826#26495#58755
          ImageIndex = 2
          Value = '2'
        end
        item
          Description = #37714#29371#27342
          ImageIndex = 3
          Value = '3'
        end>
      Properties.ReadOnly = True
      Properties.ShowDescriptions = False
      Caption.AlignVert = vaTop
      Caption.Text = ' '
      DataBinding.FieldName = 'modiState'
      Options.Editing = False
      Options.Sorting = False
      Width = 60
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlst1t_name: TcxDBTreeListColumn
      Caption.AlignVert = vaTop
      Caption.Text = #27169#22411#21517#31216
      DataBinding.FieldName = 't_name'
      Options.Editing = False
      Options.Sorting = False
      Width = 405
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlst1t_sort: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 't_sort'
      Width = 78
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      SortOrder = soAscending
      SortIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlst1t_id: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 't_id'
      Width = 100
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlst1t_parent_id: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 't_parent_id'
      Width = 100
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object pnl1: TPanel
    Left = 441
    Top = 0
    Width = 1037
    Height = 923
    Align = alClient
    TabOrder = 1
    object pnl6: TPanel
      Left = 1
      Top = 1
      Width = 1035
      Height = 32
      Align = alTop
      TabOrder = 0
      object bitbtnUndoAll: TBitBtn
        Left = 324
        Top = 7
        Width = 75
        Height = 21
        Hint = #25764#38144#19978#27425#20445#23384#21069#25152#26377#22686#21024#25913
        Caption = #20840#25764
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 5
        ImageName = #25764#38144#20840#37096
        Images = F_DT.vrtlmglst1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = bitbtnUndoAllClick
      end
      object bitbtnSave: TBitBtn
        Left = 403
        Top = 7
        Width = 75
        Height = 21
        Caption = #20445#23384
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 8
        ImageName = #20445#23384
        Images = F_DT.vrtlmglst1
        ParentFont = False
        TabOrder = 5
        OnClick = bitbtnSaveClick
      end
      object bitbtnUndoOnce: TBitBtn
        Left = 245
        Top = 7
        Width = 75
        Height = 21
        Hint = #25764#38144#26368#36817#19968#26465#35760#24405#30340#22686#21024#25913#12290#21464#26356#36807#24102#26377#23376#39033#39033#30446#30340#25152#23646#31867#21035#65292#21482#33021#20840#37096#25764#38144#25110#23384#30424#12290
        Caption = #25764#19968
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 4
        ImageName = #25764#38144
        Images = F_DT.vrtlmglst1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bitbtnUndoOnceClick
      end
      object bitbtnExit: TBitBtn
        Left = 639
        Top = 7
        Width = 75
        Height = 21
        Caption = #36864#20986
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 9
        ImageName = #23567#36864#20986
        Images = F_DT.vrtlmglst1
        ParentFont = False
        TabOrder = 8
        OnClick = bitbtnExitClick
      end
      object bitbtnAddBrother: TBitBtn
        Left = 10
        Top = 7
        Width = 75
        Height = 21
        Hint = #26032#22686#24403#21069#39033#30446#24179#32423#39033#30446
        Caption = #26032#22686
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 2
        ImageName = #26032#22686
        Images = F_DT.vrtlmglst1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bitbtnAddBrotherClick
      end
      object bitbtnAddChild: TBitBtn
        Left = 88
        Top = 7
        Width = 75
        Height = 21
        Hint = #26032#22686#24403#21069#39033#30446#30340#19979#19968#32423#23376#39033#30446#65292#21516#26102#24403#21069#39033#30446#23646#24615#21464#20026#31867#21035
        Caption = #23376#39033
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 2
        ImageName = #26032#22686
        Images = F_DT.vrtlmglst1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bitbtnAddChildClick
      end
      object bitbtnDelete: TBitBtn
        Left = 167
        Top = 7
        Width = 75
        Height = 21
        Caption = #21024#38500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 3
        ImageName = #21024#38500' '
        Images = F_DT.vrtlmglst1
        ParentFont = False
        TabOrder = 2
        OnClick = bitbtnDeleteClick
      end
      object bitbtnImport: TBitBtn
        Left = 560
        Top = 7
        Width = 75
        Height = 21
        Caption = #23548#20837
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 10
        ImageName = #23548#20837#27169#22411
        Images = F_DT.vrtlmglstMenu
        ParentFont = False
        TabOrder = 7
        OnClick = bitbtnImportClick
      end
      object cxbtnExp: TcxButton
        Left = 481
        Top = 7
        Width = 75
        Height = 21
        Caption = #23548#20986
        DropDownMenu = pmExport
        Kind = cxbkOfficeDropDown
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = F_DT.vrtlmglstMenu
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
    end
    object pnl3: TPanel
      Left = 1
      Top = 33
      Width = 1035
      Height = 223
      Align = alTop
      TabOrder = 1
      object lbl6: TLabel
        Left = 487
        Top = 4
        Width = 52
        Height = 15
        Caption = #25152#23646#31867#21035
      end
      object lbl1: TLabel
        Left = 28
        Top = 7
        Width = 247
        Height = 15
        Caption = #27169#22411#21517#31216#65288#19968#32423#39033#21644#31867#21035#39033#19981#33021#34987#25191#34892#65289#65306
      end
      object lbl3: TLabel
        Left = 24
        Top = 55
        Width = 65
        Height = 15
        Caption = #21151#33021#25551#36848#65306
      end
      object lbl4: TLabel
        Left = 26
        Top = 145
        Width = 335
        Height = 15
        Caption = #21442#25968#20449#24687#65306#22914#65306'@'#21517#31216'!S:'#20844#21496'@'#26085#26399'!D:20090101@'#37329#39069'!N:100'
      end
      object lbl5: TLabel
        Left = 24
        Top = 201
        Width = 112
        Height = 15
        Alignment = taCenter
        Caption = #27169#22411#20195#30721#65288'SQL'#65289#65306
      end
      object lblDataVer: TLabel
        Left = 529
        Top = 202
        Width = 65
        Height = 15
        Caption = #25968#25454#24211#29256#26412
      end
      object cxdbtxtdt2: TcxDBTextEdit
        Left = 24
        Top = 25
        DataBinding.DataField = 't_name'
        DataBinding.DataSource = ds1
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 457
      end
      object cxdbtxtdt3: TcxDBTextEdit
        Left = 24
        Top = 73
        DataBinding.DataField = 't_memo'
        DataBinding.DataSource = ds1
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 697
      end
      object cxdbchckbx4: TcxDBCheckBox
        Left = 227
        Top = 114
        Hint = #20027#35201#29992#20110#24314#31435#33258#23450#20041#20989#25968#21644#21021#22987#21270#40664#20889#20449#24687
        Caption = #26159#21542#33258#21160#25191#34892
        DataBinding.DataField = 't_auto'
        DataBinding.DataSource = ds1
        ParentShowHint = False
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        ShowHint = True
        TabOrder = 3
        Transparent = True
      end
      object cxdbchckbx3: TcxDBCheckBox
        Left = 125
        Top = 114
        Hint = #27492#39033#20801#35768#29992#25143#25191#34892#65292#21017#20986#29616#29992#25143#27169#22411#36816#34892#30028#38754#12290#33509#19981#21246#36873#65292#36816#34892#30028#38754#23558#38544#34255#27492#27169#22411#12290
        Caption = #20801#35768#29992#25143#25191#34892
        DataBinding.DataField = 't_hide'
        DataBinding.DataSource = ds1
        ParentShowHint = False
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        ShowHint = True
        TabOrder = 4
        Transparent = True
      end
      object cxdbtxtdt4: TcxDBTextEdit
        Left = 24
        Top = 166
        DataBinding.DataField = 't_para'
        DataBinding.DataSource = ds1
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 697
      end
      object pnl4: TPanel
        Left = 1
        Top = 1
        Width = 17
        Height = 221
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object bitbtn3: TBitBtn
          Left = 0
          Top = 24
          Width = 17
          Height = 76
          Hint = #22312#26412#32423#21521#19978#31227#21160#39033#30446#65288#36830#21516#23376#39033#65289
          ImageIndex = 6
          ImageName = #19978#32447
          Images = F_DT.vrtlmglst1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bitbtn3Click
        end
        object bitbtnTypeDown: TBitBtn
          Left = 0
          Top = 106
          Width = 17
          Height = 71
          Hint = #22312#26412#32423#21521#19979#31227#21160#39033#30446#65288#36830#21516#23376#39033#65289
          ImageIndex = 7
          ImageName = #19979#32447
          Images = F_DT.vrtlmglst1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bitbtnTypeDownClick
        end
      end
      object btnTest: TButton
        Left = 142
        Top = 195
        Width = 100
        Height = 25
        Caption = #20195#30721#35268#33539#27979#35797
        ImageIndex = 13
        ImageName = #27979#35797
        Images = F_DT.vrtlmglst1
        TabOrder = 6
        OnClick = btnTestClick
      end
      object cxdbchkbxIsClass: TcxDBCheckBox
        Left = 24
        Top = 114
        Hint = #20026#31867#21035#26102#21487#20197#34987#20854#20182#23376#39033#31227#20837#12290#28155#21152#23376#39033#26102#65292#33258#21160#35774#20026#31867#21035#12290#31867#21035#19981#33021#34987#25191#34892#12290
        Caption = #27492#39033#20026#31867#21035
        DataBinding.DataField = 'isClass'
        DataBinding.DataSource = ds1
        ParentShowHint = False
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        ShowHint = True
        TabOrder = 7
        Transparent = True
        OnEditing = cxdbchkbxIsClassEditing
        OnExit = cxdbchkbxIsClassExit
      end
      object cxDBLkUpComClass: TcxDBLookupComboBox
        Left = 487
        Top = 25
        DataBinding.DataField = 't_parent_id'
        DataBinding.DataSource = ds1
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 260
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 't_id'
        Properties.ListColumns = <
          item
            FieldName = 't_name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds2
        Properties.MaxLength = 400
        Style.Shadow = False
        TabOrder = 8
        OnClick = cxDBLkUpComClassClick
        OnEnter = cxDBLkUpComClassEnter
        Width = 234
      end
      object cxdbtxtdtDataVer: TcxDBTextEdit
        Left = 600
        Top = 195
        DataBinding.DataField = 't_right'
        DataBinding.DataSource = ds1
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Width = 121
      end
    end
    object cxdbm1: TcxDBMemo
      Left = 1
      Top = 256
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
      TabOrder = 2
      Height = 666
      Width = 1035
    end
  end
  object cxspltr1: TcxSplitter
    Left = 433
    Top = 0
    Width = 8
    Height = 923
    Cursor = crHSplit
    Hint = #24038#21491#25302#21160
    HotZoneClassName = 'TcxSimpleStyle'
    Control = cxdbtrlst1
    Color = clSilver
    ShowHint = True
    ParentColor = False
    ParentShowHint = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 923
    Width = 1478
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object ds1: TDataSource
    DataSet = fdQryTree
    OnDataChange = OnDataChange
    Left = 184
    Top = 361
  end
  object ds2: TDataSource
    DataSet = fdQryTitle
    Left = 1256
    Top = 349
  end
  object fdQryTitle: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'select t_id,t_parent_id,t_sort,repeat('#39'  '#39',length(t_sort))||'#39#8857'--' +
        #39'||t_name as t_name from fdQryTree where t_parent_id=0 or isClas' +
        's='#39'1'#39'  union select 0,0,'#39#39','#39'*=================*'#39' order by t_sort')
    Left = 1003
    Top = 272
  end
  object fdQrySameLev: TFDQuery
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'select t_id,t_parent_id,t_sort from fdqryTree where length(t_sor' +
        't)=length('#39'010202'#39') and substr(t_sort,1,length(t_sort)-2)= subst' +
        'r('#39'010202'#39',1,length('#39'010202'#39')-2) order by t_sort')
    Left = 719
    Top = 442
  end
  object fdQryTree: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Active = True
    OnCalcFields = fdQryTreeCalcFields
    CachedUpdates = True
    IndexFieldNames = 't_sort'
    OnUpdateRecord = fdQryTreeUpdateRecord
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      'select * from x_menus order by t_sort')
    Left = 32
    Top = 368
    object fdQryTreemodiState2: TStringField
      FieldKind = fkCalculated
      FieldName = 'modiState'
      Size = 1
      Calculated = True
    end
    object fdQryTreet_id: TIntegerField
      FieldName = 't_id'
      Origin = 't_id'
    end
    object fdQryTreet_parent_id: TIntegerField
      FieldName = 't_parent_id'
      Origin = 't_parent_id'
      OnChange = fdQryTreet_parent_idChange
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
    object fdQryTreet_sort: TStringField
      FieldName = 't_sort'
      Origin = 't_sort'
      Size = 12
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
    object fdQryTreeisClass: TStringField
      FieldName = 'isClass'
      Origin = 'isClass'
      FixedChar = True
      Size = 1
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 104
    Top = 366
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
  object FDLocalSQL1: TFDLocalSQL
    Connection = F_DT.FDConSQLite
    Active = True
    DataSets = <
      item
        DataSet = fdQryTree
        Name = 'fdQryTree'
      end>
    Left = 1087
    Top = 400
  end
  object pm1: TPopupMenu
    Left = 296
    Top = 373
    object MnExpand: TMenuItem
      Caption = #20840#37096#23637#24320
      OnClick = MnExpandClick
    end
    object MnCollapse: TMenuItem
      Caption = #20840#37096#25910#32553
      OnClick = MnCollapseClick
    end
  end
  object fdQryMaxID: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'select max(t_id) as i_max from fdQryTree where t_parent_id=0 ord' +
        'er by t_sort')
    Left = 1085
    Top = 324
  end
  object fdQryMaxSort: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'SELECT max(cast(t_sort as int)) as i_SortMax FROM fdQryTree wher' +
        'e t_parent_id=505')
    Left = 1177
    Top = 320
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 240
    Top = 488
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
  object fdQryMov: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'select t_id,t_parent_id,t_sort from fdQryTree where t_sort like ' +
        #39'01%'#39' order by t_sort')
    Left = 809
    Top = 544
  end
  object fdQryMaxLen: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'select max(length(t_sort)) as max_len from fdQryTree where t_sor' +
        't like '#39'01%'#39' order by t_sort')
    Left = 1105
    Top = 480
  end
  object cxGrdVwrpstry1: TcxGridViewRepository
    Left = 873
    Top = 432
    object cxgrdbtblvwGrdVwrpstry1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds2
      DataController.KeyFieldNames = 't_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxgrdbtblvwGrdVwrpstry1DBTableView1t_id: TcxGridDBColumn
        DataBinding.FieldName = 't_id'
      end
      object cxgrdbtblvwGrdVwrpstry1DBTableView1t_parent_id: TcxGridDBColumn
        DataBinding.FieldName = 't_parent_id'
      end
      object cxgrdbtblvwGrdVwrpstry1DBTableView1t_sort: TcxGridDBColumn
        DataBinding.FieldName = 't_sort'
      end
      object cxgrdbtblvwGrdVwrpstry1DBTableView1t_name: TcxGridDBColumn
        DataBinding.FieldName = 't_name'
      end
    end
  end
  object fdQryCur: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'select t_id,t_parent_id,t_sort from fdQryTree where t_sort like ' +
        #39'01%'#39' order by t_sort')
    Left = 905
    Top = 544
  end
  object fdQryNext: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    SQL.Strings = (
      
        'select t_id,t_parent_id,t_sort from fdQryTree where t_sort like ' +
        #39'01%'#39' order by t_sort')
    Left = 985
    Top = 544
  end
  object pmExport: TPopupMenu
    Left = 1224
    Top = 53
    object MenuItem3: TMenuItem
      Caption = #23548#20986#20840#37096
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #23548#20986#24403#21069#39033#21450#23376#39033
      OnClick = MenuItem4Click
    end
  end
  object dlgSaveExport: TSaveDialog
    FileName = 'file1'
    Filter = #27169#22411#25991#20214' (*.Mod)|*.Mod'
    Title = #23548#20986#27169#22411
    Left = 176
    Top = 640
  end
  object fdQryExport: TFDQuery
    Left = 1229
    Top = 105
  end
end
