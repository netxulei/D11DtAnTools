object frmSrcTabMaintain: TfrmSrcTabMaintain
  Left = 0
  Top = 0
  Caption = #25509#21475#35268#33539#23450#20041#32500#25252
  ClientHeight = 918
  ClientWidth = 1708
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
  object DBGridEhSrcTab: TDBGridEh
    Left = 0
    Top = 59
    Width = 1708
    Height = 840
    Align = alClient
    AllowedOperations = [alopInsertEh, alopUpdateEh, alopDeleteEh]
    AutoFitColWidths = True
    ColumnDefValues.EndEllipsis = True
    ColumnDefValues.Title.EndEllipsis = True
    ColumnDefValues.Title.ToolTips = True
    ColumnDefValues.ToolTips = True
    DataSource = dsSrcTab
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
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghTraceColSizing, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 314
    RowDetailPanel.VertSizing = True
    RowHeight = 4
    RowLines = 1
    RowSizingAllowed = True
    ShowHint = True
    TabOrder = 0
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -12
    TitleParams.Font.Name = 'Segoe UI'
    TitleParams.Font.Style = []
    TitleParams.MultiTitle = True
    TitleParams.ParentFont = False
    VertScrollBar.SmoothStep = True
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
        FieldName = 'tab_name_cn'
        Footers = <>
        Title.Caption = #25509#21475#35268#33539#28304#34920#20013#25991#21517#31216
        Width = 335
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tab_name_en'
        Footers = <>
        Title.Caption = #25509#21475#35268#33539#28304#34920#33521#25991#21517#31216
        Width = 190
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'tab_XLS'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        Title.Caption = 'Excel'#23548#20837
        Width = 75
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'tab_TXT'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        Title.Caption = #25991#26412#23548#20837
        Width = 62
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'chn_col'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        Title.Caption = #20013#25991#23383#27573
        Title.Hint = #36873#20013#21017#24314#31435#25968#25454#34920#26102#20351#29992#20013#25991#21517#31216#23383#27573#65288#33521#25991#21517#31216#23383#27573#21487#20026#31354#65289#65292#13#10#21542#21017#20351#29992#33521#25991#21517#31216#23383#27573#12290
        Width = 76
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'GloImp'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        Title.Caption = #20840#23616#34920
        Title.Hint = #36873#20013#21017#25968#25454#34920#19981#20381#36182#20110#39033#30446#65292#21542#21017#35813#34920#23548#20837#39033#30446#20013
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tab_memo'
        Footers = <>
        Title.Caption = #35828#26126
        Width = 437
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEhSrcCol: TDBGridEh
        Left = 0
        Top = 27
        Width = 1237
        Height = 277
        Align = alClient
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        AutoFitColWidths = True
        ColumnDefValues.EndEllipsis = True
        ColumnDefValues.Title.Alignment = taCenter
        ColumnDefValues.Title.EndEllipsis = True
        ColumnDefValues.Title.ToolTips = True
        ColumnDefValues.ToolTips = True
        DataSource = dsSrcCol
        DynProps = <>
        EditActions = [geaCopyEh]
        HorzScrollBar.ExtraPanel.Visible = True
        HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiSelAggregationInfoEh]
        HorzScrollBar.VisibleMode = sbAlwaysShowEh
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghTraceColSizing, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
        ParentShowHint = False
        RowHeight = 4
        RowLines = 1
        RowSizingAllowed = True
        ShowHint = True
        TabOrder = 0
        TitleParams.Font.Charset = DEFAULT_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -11
        TitleParams.Font.Name = 'Segoe UI'
        TitleParams.Font.Style = []
        TitleParams.ParentFont = False
        VertScrollBar.SmoothStep = True
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
            FieldName = 'col_name_cn'
            Footers = <>
            Title.Caption = #23383#27573#20013#25991#21517#31216
            Title.Hint = #20351#29992#20013#25991#21517#31216#23383#27573#24314#31435#25968#25454#34920#26102#65292#35813#21015#19981#33021#20026#31354#25110#26377#20081#23383#31526
            Width = 218
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_name_en'
            Footers = <>
            Title.Caption = #23383#27573#33521#25991#21517#31216
            Title.Hint = #20351#29992#21517#31216#21517#31216#23383#27573#24314#31435#25968#25454#34920#26102#65292#35813#21015#19981#33021#20026#31354#25110#26377#20081#23383#31526
            Width = 107
          end
          item
            CellButtons = <>
            DropDownSizing = True
            DropDownWidth = 160
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_type'
            Footers = <>
            LookupDisplayFields = 'dict_lable;dict_val'
            LookupParams.KeyFieldNames = 'col_type'
            LookupParams.LookupDataSet = fdQryColType
            LookupParams.LookupDisplayFieldName = 'dict_lable'
            LookupParams.LookupKeyFieldNames = 'dict_val'
            Title.Caption = #23383#27573#31867#22411
            Title.Hint = #26085#26399#36873#25321'10'#20301#23383#31526#20018
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_all_len'
            Footers = <>
            Title.Caption = #23383#27573#38271#24230
            Title.Hint = #33509#26377#8220#32534#30721#20851#32852#8221#65292#24212#21462#32534#30721#23545#24212#20449#24687#26368#22823#38271#24230#65307#13#10#33509#26080#8220#32534#30721#20851#32852#8221#65292#21462#32534#30721#26368#22823#38271#24230#65307#13#10#25968#20540#22411#26681#25454#21487#33021#26368#22823#20540#21462#25968#23567#25968#28857#21069#20960#20301#38271#24230#12290
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_dot_len'
            Footers = <>
            Title.Caption = #23567#25968#28857#38271#24230
            Title.Hint = #28014#28857#25968#23567#25968#28857#21518#20960#20301#65288#20854#20182#31867#22411#19981#29992#20851#27880#65289
            Width = 94
          end
          item
            CellButtons = <>
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_index'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            PickList.Strings = (
              '0'
              '1')
            Title.Caption = #32034#24341
            Title.Hint = #36873#25321#30830#23450#23548#20837#25968#25454#26102#65292#27492#23383#27573#26159#21542#24314#31435#32034#24341
            Width = 37
          end
          item
            CellButtons = <>
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_rept'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            PickList.Strings = (
              '0'
              '1')
            Title.Caption = #26597#37325
            Title.Hint = #22686#37327#26041#24335#23548#20837#25968#25454#26102#65292#21028#26029#35760#24405#26159#21542#30456#21516#25152#29992#23383#27573#12290
            Width = 35
          end
          item
            CellButtons = <>
            DropDownBox.ColumnDefValues.EndEllipsis = True
            DropDownBox.ColumnDefValues.Layout = tlCenter
            DropDownRows = 10
            DropDownSizing = True
            DropDownSpecRow.CellsText = '<Null>'
            DropDownSpecRow.Visible = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_Dict'
            Footers = <>
            Layout = tlCenter
            LimitTextToListValues = True
            LookupParams.KeyFieldNames = 'col_Dict'
            LookupParams.LookupDataSet = fdQryDictList
            LookupParams.LookupDisplayFieldName = 'dict_type_name_cn'
            LookupParams.LookupKeyFieldNames = 'dict_type_id'
            Title.Caption = #32534#30721#20851#32852
            Title.Hint = #23548#20837#25968#25454#26102#65292#20381#25454#25968#25454#23383#20856#20013#32534#30721#23545#24212#20851#31995#65292#23558#25968#25454#20013#32534#30721#36716#25442#20026#23454#38469#20869#23481
            Width = 153
          end
          item
            CellButtons = <>
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_date_deal'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            PickList.Strings = (
              '0'
              '1')
            Title.Caption = #26085#26399
            Title.Hint = #36873#20013#26631#26126#20026#26085#26399#31867#23383#27573#65292#31995#32479#23613#21487#33021#33258#21160#22788#29702#12290#22914#65306#21024#38500#8216'-'#8217#31561
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_xls_loc'
            Footers = <>
            Title.Caption = 'XLS'#23545#24212#23383#27573
            Title.Hint = 'Excel'#34920#23545#24212#21015#30340#21517#31216#65292#21487#33021#22810#20010#21517#31216#30340#20197#8220'|'#8221#31526#21495#20998#21106
            Width = 287
          end
          item
            CellButtons = <>
            DropDownSizing = True
            DropDownSpecRow.CellsText = '<null>'
            DropDownSpecRow.Visible = True
            DropDownWidth = 300
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_reg;col_reg_str'
            Footers = <>
            LookupDisplayFields = 'dict_lable;dict_val;dict_val_memo'
            LookupParams.KeyFieldNames = 'col_reg;col_reg_str'
            LookupParams.LookupDataSet = fdQryReg
            LookupParams.LookupDisplayFieldName = 'dict_lable'
            LookupParams.LookupKeyFieldNames = 'dict_lable;dict_val'
            Title.Caption = #26657#39564#35268#21017#65288#27491#21017#34920#36798#24335#65289
            Title.Hint = #27491#21017#34920#36798#24335#26041#24335#30340#26657#39564#35268#21017
            Width = 180
          end
          item
            CellButtons = <>
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_reg_ok'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            PickList.Strings = (
              '0'
              '1')
            Title.Caption = #24378#21046
            Title.Hint = #24378#21046#26657#39564#25351#35813#21015#25968#25454#24517#39035#36890#36807#26657#39564#25165#33021#23548#20837#25968#25454#65292#21542#21017#26657#39564#19981#36890#36807#25968#25454#20134#21487#23548#20837
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_memo'
            Footers = <>
            Title.Caption = #35828#26126
            Width = 200
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object flwpnlDt: TFlowPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 27
        Align = alTop
        AutoSize = True
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 1252
        object dbnvgrDictVal: TDBNavigator
          Left = 1
          Top = 1
          Width = 496
          Height = 25
          DataSource = dsSrcCol
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
          Width = 283
          Height = 24
          Align = alRight
          Ctl3D = False
          FlowStyle = fsRightLeftBottomTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657' Light'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          object cxLookupComboBoxDictList: TcxLookupComboBox
            Left = 89
            Top = -2
            Hint = #23383#27573#31867#22411#21487#22312#25968#25454#23383#20856#20013#32500#25252#65292#19968#33324#19981#29992#25913#21464
            Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
            Properties.KeyFieldNames = 'dict_type_id'
            Properties.ListColumns = <
              item
                FieldName = 'dict_type_name_cn'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsDictList
            Properties.OnEditValueChanged = cxLookupComboBoxDictListPropertiesEditValueChanged
            Style.BorderColor = clMenuHighlight
            Style.BorderStyle = ebsNone
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Shadow = True
            Style.ButtonStyle = btsHotFlat
            TabOrder = 0
            Width = 193
          end
          object lblDict: TLabel
            Left = 1
            Top = 0
            Width = 88
            Height = 23
            Align = alClient
            AutoSize = False
            Caption = '  '#23383#27573#31867#22411#26469#28304'  '
            Color = clHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -12
            Font.Name = #24494#36719#38597#40657' Light'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
        end
        object lblReg: TLabel
          Left = 897
          Top = 1
          Width = 88
          Height = 23
          Align = alClient
          AutoSize = False
          Caption = #26657#39564#35268#21017#26469#28304'  '
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -12
          Font.Name = #24494#36719#38597#40657' Light'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object cxLookupComboBoxReg: TcxLookupComboBox
          Left = 985
          Top = 1
          Hint = #26657#39564#35268#21017#21487#22312#25968#25454#23383#20856#20013#32500#25252#65292#19968#33324#19981#29992#25913#21464
          Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
          Properties.KeyFieldNames = 'dict_type_id'
          Properties.ListColumns = <
            item
              FieldName = 'dict_type_name_cn'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsDictList
          Properties.OnEditValueChanged = cxLookupComboBoxRegPropertiesEditValueChanged
          Style.BorderColor = clMenuHighlight
          Style.BorderStyle = ebsNone
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Shadow = True
          Style.ButtonStyle = btsHotFlat
          TabOrder = 4
          Width = 193
        end
      end
    end
  end
  object flwpnlDictType: TFlowPanel
    Left = 0
    Top = 32
    Width = 1708
    Height = 27
    Align = alTop
    AutoSize = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbnvgrDictType: TDBNavigator
      Left = 1
      Top = 1
      Width = 560
      Height = 25
      DataSource = dsSrcTab
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
    object bitbtn3: TBitBtn
      Left = 561
      Top = 1
      Width = 59
      Height = 25
      Caption = #19978#31227
      ImageIndex = 6
      ImageName = #19978#32447
      Images = F_DT.vrtlmglst1
      TabOrder = 1
      OnClick = bitbtn3Click
    end
    object bitbtnTypeDown: TBitBtn
      Left = 620
      Top = 1
      Width = 72
      Height = 25
      Caption = #19979#31227
      ImageIndex = 7
      ImageName = #19979#32447
      Images = F_DT.vrtlmglst1
      TabOrder = 2
      OnClick = bitbtnTypeDownClick
    end
  end
  object flwpnlTop: TFlowPanel
    Left = 0
    Top = 0
    Width = 1708
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
    Top = 899
    Width = 1708
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object dsSrcTabMsDt: TDataSource
    DataSet = fdQrySrcTab
    Left = 128
    Top = 320
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 624
    Top = 536
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 617
    Top = 417
  end
  object dsSrcTab: TDataSource
    DataSet = fdQrySrcTab
    OnDataChange = OnDataChange
    Left = 232
    Top = 320
  end
  object dsSrcCol: TDataSource
    DataSet = fdQrySrcCol
    OnDataChange = OnDataChange
    Left = 552
    Top = 320
  end
  object FDSchemaAdapterAll: TFDSchemaAdapter
    Left = 545
    Top = 489
  end
  object fdQrySrcTab: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Active = True
    OnCalcFields = StatusCalcFields
    IndexFieldNames = 'tab_sort'
    OnUpdateRecord = fdQrySrcTabUpdateRecord
    Connection = F_DT.FDConSysTmp
    SchemaAdapter = FDSchemaAdapterAll
    SQL.Strings = (
      'select * from src_table order by tab_sort')
    Left = 328
    Top = 320
    object fdQrySrcTabmodiState: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'modiState'
      Size = 1
      Calculated = True
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
    object fdQrySrcTabtab_id: TStringField
      FieldName = 'tab_id'
      Origin = 'tab_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 32
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
  object fdQrySrcCol: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Active = True
    OnCalcFields = StatusCalcFields
    IndexFieldNames = 'tab_id;col_sort'
    MasterSource = dsSrcTabMsDt
    MasterFields = 'tab_id'
    OnUpdateRecord = fdQrySrcColUpdateRecord
    Connection = F_DT.FDConSysTmp
    SchemaAdapter = FDSchemaAdapterAll
    SQL.Strings = (
      
        'SELECT * FROM src_column WHERE tab_id = :tab_id order by col_sor' +
        't')
    Left = 448
    Top = 320
    ParamData = <
      item
        Name = 'TAB_ID'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 32
        Value = '6AD26ACD3C53485DB7D27469C1A1D916'
      end>
    object fdQrySrcColmodiState: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'modiState'
      Size = 1
      Calculated = True
    end
    object fdQrySrcColcol_Id: TStringField
      FieldName = 'col_Id'
      Origin = 'col_Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 32
    end
    object fdQrySrcColtab_id: TStringField
      FieldName = 'tab_id'
      Origin = 'tab_id'
      Required = True
      FixedChar = True
      Size = 32
    end
    object fdQrySrcColcol_name_cn: TStringField
      FieldName = 'col_name_cn'
      Origin = 'col_name_cn'
      Size = 80
    end
    object fdQrySrcColcol_name_en: TStringField
      FieldName = 'col_name_en'
      Origin = 'col_name_en'
      Size = 40
    end
    object fdQrySrcColcol_type: TStringField
      FieldName = 'col_type'
      Origin = 'col_type'
      Size = 10
    end
    object fdQrySrcColcol_all_len: TIntegerField
      FieldName = 'col_all_len'
      Origin = 'col_all_len'
    end
    object fdQrySrcColcol_dot_len: TIntegerField
      FieldName = 'col_dot_len'
      Origin = 'col_dot_len'
    end
    object fdQrySrcColcol_index: TStringField
      FieldName = 'col_index'
      Origin = 'col_index'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcColcol_rept: TStringField
      FieldName = 'col_rept'
      Origin = 'col_rept'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcColcol_Dict: TStringField
      FieldName = 'col_Dict'
      Origin = 'col_Dict'
      FixedChar = True
      Size = 32
    end
    object fdQrySrcColcol_date_deal: TStringField
      FieldName = 'col_date_deal'
      Origin = 'col_date_deal'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcColcol_xls_loc: TStringField
      FieldName = 'col_xls_loc'
      Origin = 'col_xls_loc'
      Size = 120
    end
    object fdQrySrcColcol_reg: TStringField
      FieldName = 'col_reg'
      Origin = 'col_reg'
    end
    object fdQrySrcColcol_reg_str: TStringField
      FieldName = 'col_reg_str'
      Origin = 'col_reg_str'
      Size = 40
    end
    object fdQrySrcColcol_reg_ok: TStringField
      FieldName = 'col_reg_ok'
      Origin = 'col_reg_ok'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcColcol_memo: TStringField
      FieldName = 'col_memo'
      Origin = 'col_memo'
      Size = 60
    end
    object fdQrySrcColcol_sort: TIntegerField
      FieldName = 'col_sort'
      Origin = 'col_sort'
      Required = True
    end
  end
  object fdQryColType: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      
        'select distinct dict_type_name_cn,dict_type_name_en,b.dict_val,b' +
        '.dict_lable,b.dict_val_sort from dict_type a'
      'inner join dict_val b on a.dict_type_id=b.dict_type_id'
      'where a.dict_type_id= :dict_type_id order by b.dict_val_sort')
    Left = 864
    Top = 224
    ParamData = <
      item
        Name = 'DICT_TYPE_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '9DA1A56BB935419182BDAB4C86ABF003'
      end>
  end
  object fdQryDictList: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      
        'select dict_type_id, dict_type_name_cn,dict_type_name_en from di' +
        'ct_type order by dict_type_sort')
    Left = 864
    Top = 280
  end
  object dsDictList: TDataSource
    DataSet = fdQryDictList
    Left = 800
    Top = 280
  end
  object dsColType: TDataSource
    DataSet = fdQryColType
    Left = 792
    Top = 224
  end
  object fdQryReg: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      
        'select distinct dict_type_name_cn,dict_type_name_en,b.dict_val,b' +
        '.dict_lable,b.dict_val_memo,b.dict_val_sort from dict_type a'
      'inner join dict_val b on a.dict_type_id=b.dict_type_id'
      'where a.dict_type_id= :dict_type_id order by b.dict_val_sort')
    Left = 1008
    Top = 320
    ParamData = <
      item
        Name = 'DICT_TYPE_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '9DA1A56BB935419182BDAB4C86ABF003'
      end>
  end
  object dlgSave1: TSaveDialog
    FileName = 'file1'
    Filter = 'Exce2007'#20197#19978#25991#20214' (*.xlsx)|*.XLSX|Exce97-2003'#25991#20214' (*.xls)|*.XLS'
    Title = #23548#20986'Excel'#25991#20214
    Left = 140
    Top = 130
  end
end
