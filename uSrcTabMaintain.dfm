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
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'modiState'
        Footers = <>
        ImageList = imgLstStat
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
        Width = 43
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
        Width = 1252
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
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'modiState'
            Footers = <>
            ImageList = imgLstStat
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
            Width = 24
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
        Width = 1252
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
          ImageIndex = 2
          Images = imgLstBtn
          TabOrder = 1
          OnClick = bitbtnValUpClick
        end
        object bitbtnValDown: TBitBtn
          Left = 553
          Top = 1
          Width = 61
          Height = 25
          Caption = #19979#31227
          ImageIndex = 3
          Images = imgLstBtn
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
      ImageIndex = 2
      Images = imgLstBtn
      TabOrder = 1
      OnClick = bitbtn3Click
    end
    object bitbtnTypeDown: TBitBtn
      Left = 620
      Top = 1
      Width = 72
      Height = 25
      Caption = #19979#31227
      ImageIndex = 3
      Images = imgLstBtn
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
      Images = imgLstBtn
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
      Images = imgLstBtn
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
      Images = imgLstBtn
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
      ImageIndex = 6
      Images = imgLstBtn
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
      ImageIndex = 10
      Images = imgLstBtn
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
  object imgLstBtn: TImageList
    Left = 272
    Top = 416
    Bitmap = {
      494C01010B001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F1DF00DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200DB96120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB961200DB961200DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200DB961200DB9612000000000000000000CECBC300B4A38200B4A3
      8200B4A38200B4A38200B4A38200B5A686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200FEFDFA000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB961200DB96120000000000B6A88B00B3986400BEB5
      A500BEB5A500BEB5A500BEB5A500C0B8AA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DB9612000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6A88B00BBB19E000000
      00000000000000000000000000000000000000000000C2C2D000D2D2D9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DB9612000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000DB9612000000
      00000000000000000000000000000000000000000000B6A88B00BBB19E000000
      00000000000000000000000000000000000000000000B8B8CA001C1CE100D0D0
      D700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DB9612000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000DB961200DB96
      12000000000000000000000000000000000000000000B6A88B00BBB19E000000
      0000000000000000000000000000000000000000000000000000B5B5C9001C1C
      E100D1D1D8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DB9612000000000000000000DB96120000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB96
      1200DB96120000000000000000000000000000000000B6A88B00BBB19E000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      C9001C1CE100D0D0D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DB9612000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB961200DB961200000000000000000000000000B6A88B00BBB19E000000
      0000000000008484BC008484BC008484BC008484BC008484BC008484BC008484
      BC004040CB001515E700D7D7DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB961200DB961200DB961200DB961200DB961200DB961200DB961200FBF6
      EA0000000000DB9612000000000000000000DB96120000000000DB961200DB96
      120000000000DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200DB961200000000000000000000000000B6A88B00BBB19E000000
      0000000000008484BC008484BC008484BC008484BC008484BC008484BC008484
      BC003939D0001E1EE000DEDEE200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB961200000000000000000000000000000000000000000000000000DB96
      120000000000DB9612000000000000000000DB96120000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0A4
      3200DB96120000000000000000000000000000000000B6A88B00BBB19E000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      C3002121DD00DCDCE10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB96120000000000DB961200DB961200DB961200DB96120000000000DB96
      120000000000DB9612000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000DB961200DB96
      12000000000000000000000000000000000000000000B6A88B00BBB19E000000
      0000000000000000000000000000000000000000000000000000A4A4C2002121
      DD00DCDCDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB961200000000000000000000000000000000000000000000000000DB96
      120000000000DB9612000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000DB9612000000
      00000000000000000000000000000000000000000000B6A88B00BBB19E000000
      00000000000000000000000000000000000000000000ACACC5002121DD00DCDC
      E100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB961200000000000000000000000000000000000000000000000000DB96
      120000000000000000000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6A88B00BBB19E000000
      00000000000000000000000000000000000000000000C6C6D200DCDCDF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB96120000000000000000000000000000000000FFFDFD00DB9712000000
      000000000000000000000000000000000000DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFA22E00FCF7EC0000000000B6A88B00B4965D00BAAE
      9900BAAE9900BAAE9900BAAE9900BBB19C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB961200FDF9F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB961200F9F1DF0000000000D6D3CE00B7A98F00B7A9
      8F00B7A98F00B7A98F00B7A98F00B7AA92000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DB961200DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200DB961200DB961200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B7934D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B7A78C00B4A2800000000000000000000000
      00000000000000000000B39A6600B99247000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B4965D00DB961200B39A6A0000000000000000000000
      000000000000B3A17F00DB961200B7A78C000000000000000000C2903300C290
      3300C2903300C2903300C2903300C2903300C2903300C2903300C2903300C290
      3300C2903300C290330000000000000000000000000000000000DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200DB96120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0DEDD00BE913800DB961200DB961200B39A6A0000000000000000000000
      0000B3986500D8931000CF921D00000000000000000000000000DB961200B793
      4D00B49B6F00B49B6F00B49B6F00B49B6F00B49B6F00B49B6F00B49B6F00B49B
      6F00B7934D00DB96120000000000000000000000000000000000DB961200B398
      6500B9AB9300B9AB9300B9AB9300B9AB9300B9AB9300B9AB9300B9AB9300B9AB
      9300B3986500DB96120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DB9612000000000000000000000000000000000000000000CAC6
      BD00CD922000DB961200DB961200DB961200CC911F00BD913E00C0913700D392
      1700DB961200D8931100BBAF9B00000000000000000000000000DB961200BFB7
      A800000000000000000000000000000000000000000000000000000000000000
      0000BFB7A800DB96120000000000000000000000000000000000DB961200BFB7
      A800000000000000000000000000000000000000000000000000000000000000
      0000BFB7A800DB96120000000000000000000000000000000000000000000000
      000000000000DB961200DB961200000000000000000000000000000000000000
      0000DB961200DB9612000000000000000000000000000000000000000000BBB1
      9D00D5931300DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200D8941100B3A07D0000000000000000000000000000000000B8934C00CCC8
      BF00000000000000000000000000000000000000000000000000000000000000
      0000CCC7BF00B8934C0000000000000000000000000000000000B39C7000D4D2
      CC0000000000000000000000000000000000DDDAD80000000000000000000000
      0000D4D2CC00B39C700000000000000000000000000000000000000000000000
      0000DB961200DB961200DB96120000000000000000000000000000000000DB96
      1200DB961200E5B4550000000000000000000000000000000000000000000000
      0000BFB7A800D2931800DB961200DB961200CC912000BD903C00B7934E00C090
      3500B39969000000000000000000000000000000000000000000000000000000
      0000BEB4A200B7A78C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5955700CD921E00D0CDC800000000000000
      000000000000000000000000000000000000000000000000000000000000DB96
      1200DB961200DB961200DB961200000000000000000000000000DB961200DB96
      1200DB961200000000000000000000000000000000000000000000000000CECB
      C400C8912600B7A99000BE913B00DB961200B39A6A0000000000D1CFCA00D292
      1A00BAAF9C000000000000000000000000000000000000000000000000000000
      0000D0CDC800CB922400000000000000000000000000B5A48500DCDAD7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6935100DB961200DB961200CF911D00CDC9C2000000
      0000000000000000000000000000000000000000000000000000DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200000000000000000000000000000000000000000000000000BAAE9900D493
      1600DB961200C2BBAE0000000000B4976000B39B6D00D1CFCA00CC912100D492
      1600000000000000000000000000000000000000000000000000000000000000
      000000000000C2923200B7934C000000000000000000B49B6F00C7912900DEDE
      DB00000000000000000000000000000000000000000000000000000000000000
      000000000000C3923200DB961200DB961200DB961200DB961200D1921B00CAC6
      BD00000000000000000000000000000000000000000000000000DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB9612000000
      00000000000000000000000000000000000000000000B39A6A00D8931000DB96
      1200DB961200B9AE970000000000D7D5D100B4A38100D2921900DB961200B29C
      7400000000000000000000000000000000000000000000000000000000000000
      000000000000C3BDAF00D8931000CF921D00B6945200CA912400DB961200C690
      2B00000000000000000000000000000000000000000000000000000000000000
      000000000000E1E0DE00DEDEDB00C0913700DB961200B3A27E00DEDEDB000000
      000000000000000000000000000000000000000000000000000000000000DB96
      1300DB961200DB961200DB961200F8EAD0000000000000000000000000000000
      000000000000000000000000000000000000BA924500DB961200DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200C09137000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7A99000D5931500DB961200DB961200DB961200DB96
      1200B7934E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B39A6600DB961200B4A28200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFC00DB961200DB961200000000000000000000000000000000000000
      000000000000000000000000000000000000BFB7A700D2931A00DB961200DB96
      1200DB961200DB961200DB961200DB961200D8931000B7934E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDFDC00B7A99000BD903C00DB961200C591
      2C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D5D100D4931500CA912400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB961200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D3CE00C5902D00DB96
      1200DB961200B4965E00B5A68A00BEB5A400DFDFDC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B49B6F00CA912400DFDF
      DC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2BBAE00CF921D00C2903300C9C4
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B892
      4C00DB961200C2BBAE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8AA9100C9C6BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3A17A00C391
      3000B3A17F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B3A17A00D0CDC70000000000000000000000000000000000000000000000
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
      000000000000000000000E44FFFF0E44FFFF0E44FFFF335FFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44
      FFFF0000000000000000000000000000000000000000F9F1E100DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200DB96120000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E44
      FFFF0E44FFFF0000000000000000E2E8FFFFE2E8FFFFE2E8FFFFE2E8FFFF0E44
      FFFF0E44FFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB961200DB961200DB96120000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E44FFFF2052
      FFFF000000000000000000000000E2E8FFFFE2E8FFFFE2E8FFFFE2E8FFFFE2E8
      FFFF0E44FFFF0E44FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DB961200DB961200DB96120000000000DB961200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612FF0000000000000000000000000000
      000000000000000000000000000000000000000000000E44FFFF0E44FFFF0000
      00000000000000000000F0F4FFFFE2E8FFFFE2E8FFFFE2E8FFFFE2E8FFFFE2E8
      FFFFE2E8FFFF0E44FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EECE9100E8C0700000000000DB9612000000000000000000E8C070000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612FF0000000000000000000000000000
      000000000000000000000000000000000000000000000E44FFFF000000000000
      0000000000000000000000000000E2E8FFFFE2E8FFFFE2E8FFFFE2E8FFFFE2E8
      FFFFE2E8FFFF0E44FFFF3462FFFF000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612FF0000000000000000000000000000
      000000000000000000000000000000000000000000000E44FFFF000000000000
      0000000000000000000000000000E2E8FFFFE2E8FFFFE2E8FFFFE2E8FFFFE2E8
      FFFFE2E8FFFF0E44FFFF0E44FFFF000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB9612FFDB96
      12FF00000000000000000000000000000000000000000E44FFFF000000000000
      0000000000000E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44FFFFE2E8
      FFFFE2E8FFFF0E44FFFF0E44FFFF000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612FF0000000000000000000000000000
      000000000000000000000000000000000000000000000E44FFFF000000000000
      0000000000000000000000000000000000000000000000000000F1F3FFFF0000
      0000000000000E44FFFF0E44FFFF000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612FF0000000000000000000000000000
      000000000000000000000000000000000000000000000E44FFFF0E44FFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E44FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E44FFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E44FFFF0E44FFFF00000000000000000000000000000000000000000000
      000000000000DB96120000000000DB96120000000000DB961200DB9612000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB9612000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E44FFFF0E44
      FFFF000000000000000000000000000000000000000000000000000000002354
      FFFF0E44FFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000DB961200DB961200DB961200DB961200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E44
      FFFF0E44FFFF0E44FFFF000000000000000000000000000000000E44FFFF0E44
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB961200DB96120000000000000000000000
      00000000000000000000000000000000000000000000FBF6EA00DB961200DB96
      1200DB961200DB961200DB961200DB961200DB961200DB961200DB961200DB96
      1200DB961200DB96120000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44FFFF0E44FFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F1DF00F9F1
      DF00F9F1DF00F9F1DF00F9F1DF00F9F1DF00F9F1DF00F9F1DF00F9F1DF00F9F1
      DF00F9F1DF00F9F1DF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFF8003FFFF0000FFFF000180FF0000
      C0037FFC80FF0000FFFB7FFF9F9F0000FFFB7FDF9F8F0000FFFB7FCF9FC70000
      FFFB7FE79FE30000FFFB7FF398010000F00B480398010000F7EB7FE79FE30000
      F42B7FCF9FC70000F7EB7FDF9F8F0000F7EF7FFF9F9F0000F79F7FFC80FF0000
      FFFF3FFC80FF0000FFFF8001FFFF0000FFFFFFFEFFFFFFFFFFFFFE7CFFFFFFFF
      FFFFFC78C003C003FFFFF071C003C003FFFBE001CFF3CFF3F9F3E003CFF3CF73
      F1E3F007F3FFFE3FE1C7E047F39FFC1FC00FC20FF98FF80FC01F820FF80FF81F
      E0FF001FFC07FE3FF1FF003FFE0FFE3FFDFF807FFF8FFF0FFFFFE3FFFF9FFFC7
      FFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFF
      FFFFF00F8003FEFFFFFFE607FFFFFC7FFEFFCE03FFFFF8BFFEFF9C03FEFFF2DF
      FEFFBE01FEFFFEFFFEFFBE01FEFFFEFFF00FB801FEFFFEFFFEFFBFD9FEFFFEFF
      FEFF9FFBFEFFFEFFFEFFDFF3FA9FFEFFFFFFCFE7FC3FFFFFFFFFE3CFFE7F8003
      FFFFF81FFFFFC003FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object FDSchemaAdapterAll: TFDSchemaAdapter
    Left = 545
    Top = 489
  end
  object imgLstStat: TImageList
    Height = 12
    Width = 12
    Left = 392
    Top = 416
    Bitmap = {
      494C01010400140004000C000C00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000300000001800000001002000000000000012
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
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFCDD5
      CD0045D739002CF01F002CF01F0076BD7000CED5CD00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCED5D50045CBD3002DE2EB002DE2EB0076B8
      BC00CED5D500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCD
      D5002C3CBF000B22D0000B22D0006971B300CDCDD500FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECE004B4B4B0036363600363636007A7A
      7A00CECECE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72BE6D0028F6
      190085BC8200A7C1A400A7C1A40046D53C0028F6190072BE6D00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF73B8BC0029E6F00085B8BA00A7BFC100A7BFC10047CA
      D10029E6F00073B8BC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666FB100051D
      D4007D83B300A3A5BE00A3A5BE002E3EBD00051DD400666FB100FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF767676003232320087878700A8A8A800A8A8A8004D4D
      4D003232320076767600FFFFFFFFFFFFFFFFFFFFFFFF34E82700B9C9B70046D5
      3C0029FA1A0029FA1A0029FA1A0029FA1A0046D53C00B9C9B70072BE6D00FFFF
      FFFFFFFFFFFF35DAE300B9C8C80047CAD1002AEAF4002AEAF4002AEAF4002AEA
      F40047CAD100B9C8C80073B8BC00FFFFFFFFFFFFFFFF1529CB00B6B7C6002E3E
      BE00061ED800061ED800061ED800061ED8002E3EBE00B6B7C600666FB100FFFF
      FFFFFFFFFFFF3C3C3C00B9B9B9004D4D4D003333330033333300333333003333
      33004D4D4D00B9B9B90076767600FFFFFFFFCDD5CD00A4C0A10046D53C0029FA
      1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0046D53C0028F61900CDD5
      CD00CED5D500A4BFC00047CAD1002AEAF4002AEAF4002AEAF4002AEAF4002AEA
      F4002AEAF40047CAD10029E6F000CED5D500CDCDD5009FA2BC002E3EBD00061E
      D800061ED800061ED800061ED800061ED800061ED8002E3EBE00051DD400CDCD
      D500CECECE00A5A5A5004D4D4D00333333003333330033333300333333003333
      3300333333004D4D4D0032323200CECECE0076BD700094BD900029FA1A0029FA
      1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0046D53C0076BD
      700076B8BC0094BABC002AEAF4002AEAF4002AEAF4002AEAF4002AEAF4002AEA
      F4002AEAF4002AEAF40047CAD10076B8BC006971B3008C91B600061ED800061E
      D800061ED800061ED800061ED800061ED800061ED800061ED8002E3EBD006971
      B3007A7A7A009595950033333300333333003333330033333300333333003333
      330033333300333333004D4D4D007A7A7A002CF01F002BF11E0029FA1A0029FA
      1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A00A7C1A4002CF0
      1F002DE2EB002CE1EA002AEAF4002AEAF4002AEAF4002AEAF4002AEAF4002AEA
      F4002AEAF4002AEAF400A7BFC1002DE2EB000B22D0000A22D100061ED800061E
      D800061ED800061ED800061ED800061ED800061ED800061ED800A3A5BE000B22
      D000363636003535350033333300333333003333330033333300333333003333
      33003333330033333300A8A8A800363636002CF01F002BF11E0029FA1A0029FA
      1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A00A7C1A4002CF0
      1F002DE2EB002CE1EA002AEAF4002AEAF4002AEAF4002AEAF4002AEAF4002AEA
      F4002AEAF4002AEAF400A7BFC1002DE2EB000B22D0000A22D100061ED800061E
      D800061ED800061ED800061ED800061ED800061ED800061ED800A3A5BE000B22
      D000363636003535350033333300333333003333330033333300333333003333
      33003333330033333300A8A8A8003636360045D739004CD1410029FA1A0029FA
      1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0085BC820045D7
      390045CBD3004CC7CD002AEAF4002AEAF4002AEAF4002AEAF4002AEAF4002AEA
      F4002AEAF4002AEAF40085B8BA0045CBD3002C3CBF003545BB00061ED800061E
      D800061ED800061ED800061ED800061ED800061ED800061ED8007D83B3002C3C
      BF004B4B4B005151510033333300333333003333330033333300333333003333
      33003333330033333300878787004B4B4B00CDD5CD00A4C0A10046D53C0029FA
      1A0029FA1A0029FA1A0029FA1A0029FA1A0029FA1A0046D53C0028F61900CDD5
      CD00CED5D500A4BFC00047CAD1002AEAF4002AEAF4002AEAF4002AEAF4002AEA
      F4002AEAF40047CAD10029E6F000CED5D500CDCDD5009FA2BC002E3EBD00061E
      D800061ED800061ED800061ED800061ED800061ED8002E3EBE00051DD400CDCD
      D500CECECE00A5A5A5004D4D4D00333333003333330033333300333333003333
      3300333333004D4D4D0032323200CECECE00FFFFFFFF34E72700B9C9B70046D5
      3C0029FA1A0029FA1A0029FA1A0029FA1A0046D53C00B9C9B70072BE6D00FFFF
      FFFFFFFFFFFF35D9E300B9C8C80047CAD1002AEAF4002AEAF4002AEAF4002AEA
      F40047CAD100B9C8C80073B8BC00FFFFFFFFFFFFFFFF1529CB00B6B7C6002E3E
      BD00061ED800061ED800061ED800061ED8002E3EBD00B6B7C600666FB100FFFF
      FFFFFFFFFFFF3C3C3C00B9B9B9004D4D4D003333330033333300333333003333
      33004D4D4D00B9B9B90076767600FFFFFFFFFFFFFFFF55CB4C0034E82700A4C0
      A1004CD141002BF11E002BF11E0094BD9000A4C0A10034E82700FFFFFFFFFFFF
      FFFFFFFFFFFF55C2C80035DAE300A4BFC0004CC7CD002CE1EA002CE1EA0094BA
      BC00A4BFC00035DAE300FFFFFFFFFFFFFFFFFFFFFFFF414FB7001529CB009FA2
      BC003545BB000A22D1000A22D1008C91B6009FA2BC001529CB00FFFFFFFFFFFF
      FFFFFFFFFFFF5B5B5B003C3C3C00A5A5A5005151510035353500353535009595
      9500A5A5A5003C3C3C00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFCDD5
      CD0045D739002CF01F002CF01F0076BD7000CDD5CD00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCED5D50045CBD3002DE2EB002DE2EB0076B8
      BC00CED5D500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCD
      D5002C3CBF000B22D0000B22D0006971B300CDCDD500FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECE004B4B4B0036363600363636007A7A
      7A00CECECE00FFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000030000000180000000100010000000000C00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
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
