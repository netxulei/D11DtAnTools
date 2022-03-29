object frmDictMaintain: TfrmDictMaintain
  Left = 0
  Top = 0
  Caption = #25968#25454#23383#20856#32500#25252#65288#23383#20856#20462#25913#21518#27880#24847#28304#25968#25454#34920#30340#19968#33268#24615#65289
  ClientHeight = 755
  ClientWidth = 1295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object DBGridEhSrcTab: TDBGridEh
    Left = 0
    Top = 59
    Width = 1295
    Height = 677
    Align = alClient
    AllowedOperations = [alopUpdateEh, alopDeleteEh]
    AutoFitColWidths = True
    ColumnDefValues.EndEllipsis = True
    ColumnDefValues.Title.EndEllipsis = True
    ColumnDefValues.Title.ToolTips = True
    ColumnDefValues.ToolTips = True
    DataSource = dsDictType
    DynProps = <>
    EditActions = [geaCopyEh]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    HorzScrollBar.ExtraPanel.Visible = True
    HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiSelAggregationInfoEh]
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 173
    RowDetailPanel.VertSizing = True
    RowSizingAllowed = True
    ShowHint = True
    TabOrder = 0
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -12
    TitleParams.Font.Name = #24494#36719#38597#40657
    TitleParams.Font.Style = [fsBold]
    TitleParams.MultiTitle = True
    TitleParams.ParentFont = False
    Columns = <
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'modiState'
        Footers = <>
        ImageList = F_DT.vrtlmglstState
        KeyList.Strings = (
          '0'
          '1'
          '2'
          '3')
        PickList.Strings = (
          #35760#24405#26410#20462#25913
          #35760#24405#24050#20462#25913
          #35760#24405#26032#22686#21152
          #35760#24405#24050#21024#38500)
        Width = 28
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'dict_type_name_cn'
        Footers = <>
        Title.Caption = #23383#20856#31867#22411#20013#25991#21517#31216
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 335
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'dict_type_name_en'
        Footers = <>
        Title.Caption = #23383#20856#31867#22411#33521#25991#21517#31216
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 158
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'dict_type_memo'
        Footers = <>
        Title.Caption = #35828#26126
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEhSrcCol: TDBGridEh
        Left = 0
        Top = 27
        Width = 1108
        Height = 136
        Align = alClient
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        AutoFitColWidths = True
        ColumnDefValues.EndEllipsis = True
        ColumnDefValues.Title.Alignment = taCenter
        ColumnDefValues.Title.EndEllipsis = True
        ColumnDefValues.Title.ToolTips = True
        ColumnDefValues.ToolTips = True
        DataSource = dsDictVal
        DynProps = <>
        EditActions = [geaCopyEh]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        HorzScrollBar.ExtraPanel.Visible = True
        HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiSelAggregationInfoEh]
        HorzScrollBar.VisibleMode = sbAlwaysShowEh
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleParams.Font.Charset = DEFAULT_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -11
        TitleParams.Font.Name = 'Segoe UI'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'modiState'
            Footers = <>
            ImageList = F_DT.vrtlmglstState
            KeyList.Strings = (
              '0'
              '1'
              '2'
              '3')
            PickList.Strings = (
              #35760#24405#26410#20462#25913
              #35760#24405#24050#20462#25913
              #35760#24405#26032#22686#21152
              #35760#24405#24050#21024#38500)
            Width = 16
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'dict_val'
            Footers = <>
            Title.Caption = #23383#20856#20540
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'dict_lable'
            Footers = <>
            Title.Caption = #23383#20856#20013#25991#21517#31216
            Width = 261
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'dict_val_memo'
            Footers = <>
            Title.Caption = #35828#26126
            Width = 303
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object flwpnlDt: TFlowPanel
        Left = 0
        Top = 0
        Width = 1108
        Height = 27
        Align = alTop
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 1123
        object dbnvgrDictVal: TDBNavigator
          Left = 1
          Top = 1
          Width = 496
          Height = 25
          DataSource = dsDictVal
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
          Align = alCustom
          Flat = True
          Hints.Strings = (
            #39318#26465
            #19978#26465
            #19979#35843
            #26411#26465
            #25554#20837
            #21024#38500
            #20462#25913
            #25552#20132
            #25764#38144
            #21047#26032
            #20445#23384
            #24674#22797)
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          BeforeAction = dbnvgrDictValBeforeAction
        end
        object bitbtnValUp: TBitBtn
          Left = 497
          Top = 1
          Width = 56
          Height = 25
          Caption = #19978#31227
          ImageIndex = 6
          ImageName = #19978#32447
          Images = F_DT.vrtlmglst1
          TabOrder = 1
          OnClick = bitbtnValUpClick
        end
        object bitbtnValDown: TBitBtn
          Left = 553
          Top = 1
          Width = 61
          Height = 25
          Caption = #19979#31227
          ImageIndex = 7
          ImageName = #19979#32447
          Images = F_DT.vrtlmglst1
          TabOrder = 2
          OnClick = bitbtnValDownClick
        end
        object FlowPanel1: TFlowPanel
          Left = 614
          Top = 1
          Width = 307
          Height = 24
          Align = alRight
          FlowStyle = fsRightLeftBottomTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  object flwpnlDictType: TFlowPanel
    Left = 0
    Top = 32
    Width = 1295
    Height = 27
    Align = alTop
    AutoSize = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbnvgrDictType: TDBNavigator
      Left = 1
      Top = 1
      Width = 560
      Height = 25
      DataSource = dsDictType
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
      Align = alCustom
      Flat = True
      Hints.Strings = (
        #39318#26465
        #19978#26465
        #19979#35843
        #26411#26465
        #25554#20837
        #21024#38500
        #20462#25913
        #25552#20132
        #25764#38144
        #21047#26032
        #20445#23384
        #24674#22797)
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = dbnvgrDictTypeBeforeAction
      OnClick = dbnvgrDictTypeClick
    end
    object bitbtnTypeUp: TBitBtn
      Left = 561
      Top = 1
      Width = 59
      Height = 25
      Caption = #19978#31227
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 6
      ImageName = #19978#32447
      Images = F_DT.vrtlmglst1
      ParentFont = False
      TabOrder = 1
      OnClick = bitbtnTypeUpClick
    end
    object bitbtnTypeDown: TBitBtn
      Left = 620
      Top = 1
      Width = 72
      Height = 25
      Caption = #19979#31227
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 7
      ImageName = #19979#32447
      Images = F_DT.vrtlmglst1
      ParentFont = False
      TabOrder = 2
      OnClick = bitbtnTypeDownClick
    end
  end
  object flwpnlTop: TFlowPanel
    Left = 0
    Top = 0
    Width = 1295
    Height = 32
    Align = alTop
    AutoSize = True
    Ctl3D = True
    FlowStyle = fsTopBottomLeftRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object bitbtnUndoOnce: TBitBtn
      Left = 1
      Top = 1
      Width = 112
      Height = 30
      Align = alLeft
      Caption = #25764#38144#19968#27425
      ImageIndex = 4
      ImageName = #25764#38144
      Images = F_DT.vrtlmglst1
      TabOrder = 0
      OnClick = bitbtnUndoOnceClick
    end
    object bitbtnUndoAll: TBitBtn
      Left = 113
      Top = 1
      Width = 112
      Height = 30
      Caption = #25764#38144#25152#26377
      ImageIndex = 5
      ImageName = #25764#38144#20840#37096
      Images = F_DT.vrtlmglst1
      TabOrder = 1
      OnClick = bitbtnUndoAllClick
    end
    object bitbtnSave: TBitBtn
      Left = 225
      Top = 1
      Width = 112
      Height = 30
      Caption = #20445#23384
      ImageIndex = 8
      ImageName = #20445#23384
      Images = F_DT.vrtlmglst1
      TabOrder = 2
      OnClick = bitbtnSaveClick
    end
    object bitbtnExport: TBitBtn
      Left = 337
      Top = 1
      Width = 112
      Height = 30
      Hint = #23548#20986'Excel'#26041#20415#32534#20889#27169#22411#20195#30721#26597#38405
      Caption = #23548#20986'Excel'
      ImageIndex = 0
      ImageName = #23548#20986'excel'
      Images = F_DT.vrtlmglst1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bitbtnExportClick
    end
    object chkOpen: TCheckBox
      AlignWithMargins = True
      Left = 452
      Top = 4
      Width = 112
      Height = 24
      Align = alLeft
      Caption = #23548#20986#21518#25171#24320
      Checked = True
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      State = cbChecked
      TabOrder = 4
      WordWrap = True
    end
    object bitbtnExit: TBitBtn
      Left = 567
      Top = 1
      Width = 112
      Height = 30
      Caption = #36864#20986
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      TabOrder = 5
      OnClick = bitbtnExitClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 736
    Width = 1295
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object dsDictTypeMsDt: TDataSource
    DataSet = fdQryDictType
    Left = 127
    Top = 320
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 376
    Top = 576
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 504
    Top = 576
  end
  object dsDictType: TDataSource
    DataSet = fdQryDictType
    OnDataChange = OnDataChange
    Left = 232
    Top = 320
  end
  object dsDictVal: TDataSource
    DataSet = fdQryDictVal
    OnDataChange = OnDataChange
    Left = 552
    Top = 320
  end
  object FDSchemaAdapterAll: TFDSchemaAdapter
    Left = 49
    Top = 465
  end
  object fdQryDictType: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Active = True
    OnCalcFields = StatusCalcFields
    IndexFieldNames = 'dict_type_sort'
    OnUpdateRecord = fdQryDictTypeUpdateRecord
    Connection = F_DT.FDConSysTmp
    SchemaAdapter = FDSchemaAdapterAll
    SQL.Strings = (
      'select * from Dict_type order by dict_type_sort')
    Left = 328
    Top = 320
    object fdQryDictTypemodiState: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'modiState'
      Size = 1
      Calculated = True
    end
    object fdQryDictTypedict_type_id: TStringField
      FieldName = 'dict_type_id'
      Origin = 'dict_type_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 32
    end
    object fdQryDictTypedict_type_name_cn: TStringField
      FieldName = 'dict_type_name_cn'
      Origin = 'dict_type_name_cn'
      Size = 40
    end
    object fdQryDictTypedict_type_name_en: TStringField
      FieldName = 'dict_type_name_en'
      Origin = 'dict_type_name_en'
    end
    object fdQryDictTypedict_type_sort: TIntegerField
      FieldName = 'dict_type_sort'
      Origin = 'dict_type_sort'
    end
    object fdQryDictTypedict_type_memo: TStringField
      FieldName = 'dict_type_memo'
      Origin = 'dict_type_memo'
      Size = 100
    end
  end
  object fdQryDictVal: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Active = True
    OnCalcFields = StatusCalcFields
    IndexFieldNames = 'dict_type_id;dict_val_sort'
    MasterSource = dsDictTypeMsDt
    MasterFields = 'dict_type_id'
    OnUpdateRecord = fdQryDictValUpdateRecord
    Connection = F_DT.FDConSysTmp
    SchemaAdapter = FDSchemaAdapterAll
    FetchOptions.AssignedValues = [evDetailCascade]
    SQL.Strings = (
      
        'SELECT * FROM Dict_val WHERE dict_type_id = :dict_type_id order ' +
        'by dict_val_sort')
    Left = 448
    Top = 320
    ParamData = <
      item
        Name = 'DICT_TYPE_ID'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 32
        Value = '9DA1A56BB935419182BDAB4C86ABF003'
      end>
    object fdQryDictValmodiState: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'modiState'
      Size = 1
      Calculated = True
    end
    object fdQryDictValdict_val_id: TStringField
      FieldName = 'dict_val_id'
      Origin = 'dict_val_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 32
    end
    object fdQryDictValdict_type_id: TStringField
      FieldName = 'dict_type_id'
      Origin = 'dict_type_id'
      FixedChar = True
      Size = 32
    end
    object fdQryDictValdict_val: TStringField
      FieldName = 'dict_val'
      Origin = 'dict_val'
      Size = 40
    end
    object fdQryDictValdict_lable: TStringField
      FieldName = 'dict_lable'
      Origin = 'dict_lable'
      Size = 40
    end
    object fdQryDictValdict_val_sort: TIntegerField
      FieldName = 'dict_val_sort'
      Origin = 'dict_val_sort'
    end
    object fdQryDictValdict_val_memo: TStringField
      FieldName = 'dict_val_memo'
      Origin = 'dict_val_memo'
      Size = 100
    end
  end
  object dlgSave1: TSaveDialog
    FileName = 'file1'
    Filter = 'Exce2007'#20197#19978#25991#20214' (*.xlsx)|*.XLSX|Exce97-2003'#25991#20214' (*.xls)|*.XLS'
    Title = #23548#20986'Excel'#25991#20214
    Left = 284
    Top = 306
  end
end
