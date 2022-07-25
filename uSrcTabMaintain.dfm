object frmSrcTabMaintain: TfrmSrcTabMaintain
  Left = 0
  Top = 0
  Caption = #25509#21475#35268#33539#23450#20041#32500#25252
  ClientHeight = 918
  ClientWidth = 1741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 19
  object DBGridEhSrcTab: TDBGridEh
    Left = 0
    Top = 57
    Width = 1741
    Height = 842
    Align = alClient
    AllowedOperations = [alopUpdateEh, alopDeleteEh]
    AutoFitColWidths = True
    ColumnDefValues.AlwaysShowEditButton = True
    ColumnDefValues.EndEllipsis = True
    ColumnDefValues.Title.EndEllipsis = True
    ColumnDefValues.Title.ToolTips = True
    ColumnDefValues.ToolTips = True
    DataSource = dsSrcTab
    DynProps = <>
    EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    HorzScrollBar.ExtraPanel.Visible = True
    HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiSelAggregationInfoEh]
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghTraceColSizing, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 388
    RowDetailPanel.VertSizing = True
    RowHeight = 4
    RowLines = 1
    RowSizingAllowed = True
    SearchPanel.Enabled = True
    ShowHint = True
    TabOrder = 0
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -12
    TitleParams.Font.Name = #24494#36719#38597#40657
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
        Alignment = taLeftJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tab_name_cn'
        Footers = <>
        Title.Caption = #25509#21475#35268#33539#28304#34920#20013#25991#21517#31216
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 322
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tab_name_en'
        Footers = <>
        Title.Caption = #25509#21475#35268#33539#28304#34920#33521#25991#21517#31216
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
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
        Title.Caption = 'Excel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Hint = 'Excel'#23548#20837#35201#27714#26631#39064#34892#21517#31216#19982#35268#33539#20013'XLS'#23545#24212#23383#27573#19968#33268#65292#23383#27573#25968#37327#19982#39034#24207#21487#20197#23481#38169
        Width = 44
        WordWrap = False
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
        Title.Caption = #25991#26412
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Hint = #25991#26412#23548#20837#35201#27714#25991#26412#25991#20214#23383#27573#25968#37327#12289#23383#27573#20301#32622#19982#35268#33539#19968#33268#65292#23383#27573#21517#31216#21487#20197#23481#38169
        Width = 51
        WordWrap = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'txt_split'
        Footers = <>
        Title.Caption = #20998#38548
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Hint = #25991#26412#25991#20214'.'#20998#38548#19968#34892#25991#26412#21040#22810#20010#23383#27573
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'txt_qualifier'
        Footers = <>
        Title.Caption = #38480#23450
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Hint = #25991#26412#25991#20214'.'#34987#20998#38548#31526#20998#38548#30340#23383#27573#25152#20351#29992#30340#38480#23450#31526#12290
        Width = 37
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
        Title.Caption = #20013#25991
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Hint = #36873#20013#21017#20351#29992#20013#25991#21517#31216#23383#27573#65288#33521#25991#21517#31216#23383#27573#21487#20026#31354#65289#65292#21542#21017#20351#29992#33521#25991#21517#31216#23383#27573#12290
        Width = 42
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
        Title.Caption = #20840#23616
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Hint = #36873#20013#21017#25968#25454#34920#19981#20381#36182#20110#39033#30446#65292#21542#21017#35813#34920#23548#20837#39033#30446#20013
        Width = 38
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type'
        Footers = <>
        LookupParams.KeyFieldNames = 'type'
        LookupParams.LookupDataSet = FDQryTabType
        LookupParams.LookupDisplayFieldName = 'dict_lable'
        LookupParams.LookupKeyFieldNames = 'dict_val'
        Title.Caption = #34892#19994#31867#21035
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 168
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tab_memo'
        Footers = <>
        Title.Caption = #35828#26126
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 619
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEhSrcCol: TDBGridEh
        Left = 0
        Top = 27
        Width = 1574
        Height = 351
        Align = alClient
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        AutoFitColWidths = True
        ColumnDefValues.AlwaysShowEditButton = True
        ColumnDefValues.EndEllipsis = True
        ColumnDefValues.Title.EndEllipsis = True
        ColumnDefValues.Title.ToolTips = True
        ColumnDefValues.ToolTips = True
        DataSource = dsSrcCol
        DynProps = <>
        EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36719#38597#40657' Light'
        Font.Style = []
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -13
        FooterParams.Font.Name = 'Segoe UI'
        FooterParams.Font.Style = []
        FooterParams.ParentFont = False
        HorzScrollBar.ExtraPanel.Visible = True
        HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiSelAggregationInfoEh]
        HorzScrollBar.VisibleMode = sbAlwaysShowEh
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghTraceColSizing, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
        ParentFont = False
        ParentShowHint = False
        RowHeight = 4
        RowLines = 1
        RowSizingAllowed = True
        SearchPanel.Enabled = True
        ShowHint = True
        TabOrder = 0
        TitleParams.Font.Charset = DEFAULT_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -13
        TitleParams.Font.Name = #24494#36719#38597#40657
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
            DropDownBox.Columns = <
              item
                EndEllipsis = True
                FieldName = 'dict_lable'
                Title.Caption = #23383#27573#31867#22411#21517#31216
                Title.EndEllipsis = True
                Width = 200
              end
              item
                EndEllipsis = True
                FieldName = 'dict_val'
                Title.Caption = #23383#27573#31867#22411#23450#20041
                Title.EndEllipsis = True
                Width = 100
              end>
            DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh]
            DropDownShowTitles = True
            DropDownSizing = True
            DropDownWidth = 300
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
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_all_len'
            Footers = <>
            Title.Caption = #23383#27573#38271#24230
            Title.Hint = 
              #33509#26377#8220#32534#30721#20851#32852#8221#65292#21462#25968#25454#23383#20856#20013#32534#30721#23545#24212#20449#24687#26368#22823#38271#24230#65307#13#10#33509#26080#8220#32534#30721#20851#32852#8221#65292#21462#32534#30721#26368#22823#38271#24230#65307#13#10#25968#20540#22411#26681#25454#21487#33021#26368#22823#20540#21462#25968#23567#25968#28857#21069#20960 +
              #20301#38271#24230#12290
            Width = 37
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_dot_len'
            Footers = <>
            Title.Caption = #23567#25968#38271#24230
            Title.Hint = #28014#28857#25968#23567#25968#28857#21518#20960#20301#65288#20854#20182#31867#22411#19981#29992#20851#27880#65289
            Width = 37
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
            Title.Caption = #29420#31435#32034#24341
            Title.Hint = #23548#20837#25968#25454#26102#65292#27492#23383#27573#24314#31435#29420#31435#32034#24341
            Width = 38
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
            DropDownBox.Columns = <
              item
                FieldName = 'dict_type_name_cn'
                Title.Alignment = taCenter
                Title.Caption = #32534#30721#20851#32852#25968#25454#23383#20856
                Title.EndEllipsis = True
                Width = 200
              end
              item
                FieldName = 'dict_type_memo'
                Title.Alignment = taCenter
                Title.Caption = #35828#26126
                Width = 400
              end>
            DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh]
            DropDownRows = 10
            DropDownShowTitles = True
            DropDownSizing = True
            DropDownSpecRow.ShowIfNotInKeyList = False
            DropDownSpecRow.Visible = True
            DropDownWidth = 600
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_Dict'
            Footers = <>
            Layout = tlCenter
            LimitTextToListValues = True
            LookupDisplayFields = 'dict_type_name_cn;dict_type_memo'
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
            Title.Hint = 'Excel'#34920#19981#33021#20026#31354#65281#22810#20010#21517#31216#20197#31446#26464#8220#65372#8221#20998#38548
            Width = 62
          end
          item
            CellButtons = <>
            DropDownBox.Columns = <
              item
                EndEllipsis = True
                FieldName = 'dict_lable'
                Title.Alignment = taCenter
                Title.Caption = #26657#39564#36923#36753#21517#31216
                Title.EndEllipsis = True
                Width = 300
              end
              item
                EndEllipsis = True
                FieldName = 'dict_val'
                Title.Alignment = taCenter
                Title.Caption = #26657#39564#27491#21017#34920#36798#24335
                Title.EndEllipsis = True
                Width = 300
              end>
            DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh]
            DropDownShowTitles = True
            DropDownSizing = True
            DropDownSpecRow.ShowIfNotInKeyList = False
            DropDownSpecRow.Visible = True
            DropDownWidth = 500
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_reg;col_reg_str;col_regName'
            Footers = <>
            LookupDisplayFields = 'dict_lable;dict_val'
            LookupParams.KeyFieldNames = 'col_reg;col_reg_str;col_regName'
            LookupParams.LookupDataSet = fdQryReg
            LookupParams.LookupDisplayFieldName = 'dict_lable'
            LookupParams.LookupKeyFieldNames = 'dict_val_id;dict_val;dict_lable'
            Title.Caption = #26657#39564#35268#21017#65288#27491#21017#34920#36798#24335#65289
            Title.Hint = #27491#21017#34920#36798#24335#26041#24335#30340#26657#39564#35268#21017
            Width = 215
          end
          item
            CellButtons = <>
            DropDownRows = 10
            DropDownSizing = True
            DropDownSpecRow.ShowIfNotInKeyList = False
            DropDownSpecRow.Visible = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_reg_depcol'
            Footers = <>
            Layout = tlCenter
            LookupParams.KeyFieldNames = 'col_reg_depcol'
            LookupParams.LookupDataSet = FDQryCurColLst
            LookupParams.LookupDisplayFieldName = 'col_name'
            LookupParams.LookupKeyFieldNames = 'col_name'
            Title.Caption = #20381#36182#23383#27573
            Title.Hint = #21363#26412#23383#27573#30340#20869#23481#20381#36182#20110#26576#23383#27573#38271#24230#25110#20869#23481#12290#22914#20511#36151#35760#21345#26631#35782#20381#36182#20110#21345#21495#23383#27573#19981#20026#31354#26102#25165#38656#26657#39564
            Width = 129
            OnOpenDropDownForm = DBGridEhSrcColColumns12OpenDropDownForm
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'col_reg_depval'
            Footers = <>
            Title.Caption = #20381#36182#20540
            Title.Hint = #20026#31354#21017#34987#20381#36182#23383#27573#26377#20869#23481#23601#26657#39564#65292#21542#21017#20854#20869#23481#20026#20381#36182#20540#25165#26657#39564
            Width = 73
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
            Width = 333
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object flwpnlDt: TFlowPanel
        Left = 0
        Top = 0
        Width = 1574
        Height = 27
        Align = alTop
        AutoSize = True
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657' Light'
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
          Width = 107
          Height = 24
          Align = alRight
          Ctl3D = False
          FlowStyle = fsRightLeftBottomTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36719#38597#40657' Light'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          object lblComIndex: TLabel
            Left = 34
            Top = -2
            Width = 72
            Height = 25
            Align = alClient
            AutoSize = False
            Caption = #32452#21512#32034#24341
            Color = clHighlight
            ParentColor = False
            Layout = tlCenter
          end
        end
        object DBSynEditComInd: TDBSynEdit
          Left = 721
          Top = 1
          Width = 496
          Height = 25
          Cursor = crIBeam
          Hint = 
            '|'#25163#24037#36755#20837#27491#30830#23383#27573#21517#13#10'1.'#19968#34892#20026#19968#20010#32452#21512#32034#24341#65288#21253#21547#22810#20010#23383#27573#30340#32034#24341#65289#13#10'2.'#27599#20010#32452#21512#32034#24341#33267#23569#21253#21547'2'#20010#23383#27573#65288#20197'","'#25110#8216#8220#25110'";"' +
            #20998#38548#65289#13#10'3.'#29420#31435#32034#24341#22312#19979#34920#21333#29420#26631#35782
          DataField = 'combIndex'
          DataSource = dsSrcTab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Consolas'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          Gutter.DigitCount = 2
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -9
          Gutter.Font.Name = 'Consolas'
          Gutter.Font.Style = []
          Gutter.Font.Quality = fqClearTypeNatural
          Gutter.ShowLineNumbers = True
          Gutter.Bands = <
            item
              Kind = gbkMarks
              Width = 13
            end
            item
              Kind = gbkLineNumbers
            end
            item
              Kind = gbkFold
            end
            item
              Kind = gbkTrackChanges
            end
            item
              Kind = gbkMargin
              Width = 3
            end>
          SelectedColor.Alpha = 0.400000005960464500
        end
        object btnDepend: TButton
          Left = 1217
          Top = 1
          Width = 153
          Height = 25
          Caption = #21047#26032#20381#36182#23383#27573#21015#34920
          TabOrder = 5
          Visible = False
          OnClick = btnDependClick
        end
        object spnBtn1: TSpinButton
          Left = 1370
          Top = 1
          Width = 20
          Height = 25
          Hint = #35843#25972#32534#36753#26694#22823#23567
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          TabOrder = 6
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = spnBtn1DownClick
          OnUpClick = spnBtn1UpClick
        end
      end
    end
  end
  object flwpnlDictType: TFlowPanel
    Left = 0
    Top = 28
    Width = 1741
    Height = 29
    Align = alTop
    AutoSize = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbnvgrDictType: TDBNavigator
      Left = 1
      Top = 1
      Width = 560
      Height = 22
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
      Height = 23
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
      Height = 23
      Caption = #19979#31227
      ImageIndex = 7
      ImageName = #19979#32447
      Images = F_DT.vrtlmglst1
      TabOrder = 2
      OnClick = bitbtnTypeDownClick
    end
    object lblDict: TLabel
      Left = 692
      Top = 1
      Width = 106
      Height = 24
      Align = alClient
      AutoSize = False
      Caption = '  '#23383#27573#31867#22411#26469#28304'  '
      Color = clHighlight
      ParentColor = False
      Layout = tlCenter
    end
    object cxLookupComboBoxDictList: TcxLookupComboBox
      Left = 798
      Top = 1
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
      TabOrder = 3
      Width = 219
    end
    object lblReg: TLabel
      Left = 1017
      Top = 1
      Width = 114
      Height = 24
      Align = alClient
      AutoSize = False
      Caption = '   '#26657#39564#35268#21017#26469#28304
      Color = clHighlight
      ParentColor = False
      Layout = tlCenter
    end
    object cxLookupComboBoxReg: TcxLookupComboBox
      Left = 1131
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
      Width = 262
    end
    object lblTabType: TLabel
      Left = 1393
      Top = 1
      Width = 104
      Height = 24
      Align = alClient
      AutoSize = False
      Caption = #34892#19994#31867#21035#26469#28304
      Color = clHighlight
      ParentColor = False
      Layout = tlCenter
    end
    object cxLookupComboBoxType: TcxLookupComboBox
      Left = 1497
      Top = 1
      Hint = #34892#19994#31867#21035#21487#22312#25968#25454#23383#20856#20013#32500#25252#65292#19968#33324#19981#29992#25913#21464
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'dict_type_id'
      Properties.ListColumns = <
        item
          FieldName = 'dict_type_name_cn'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsDictList
      Properties.OnEditValueChanged = cxLookupComboBoxTypePropertiesEditValueChanged
      Style.BorderColor = clMenuHighlight
      Style.BorderStyle = ebsNone
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Shadow = True
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      Width = 212
    end
  end
  object flwpnlTop: TFlowPanel
    Left = 0
    Top = 0
    Width = 1741
    Height = 28
    Align = alTop
    AutoSize = True
    Ctl3D = True
    FlowStyle = fsLeftRightBottomTop
    ParentCtl3D = False
    TabOrder = 2
    ExplicitTop = -5
    object bitbtnUndoOnce: TBitBtn
      Left = 1
      Top = 1
      Width = 112
      Height = 26
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
      Height = 26
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
      Height = 26
      Caption = #20445#23384
      ImageIndex = 8
      ImageName = #20445#23384
      Images = F_DT.vrtlmglst1
      TabOrder = 2
      OnClick = bitbtnSaveClick
    end
    object bitbtnCopy: TBitBtn
      Left = 337
      Top = 1
      Width = 112
      Height = 26
      Hint = #22797#21046#24403#21069#25509#21475#35268#33539#34920#20026#26032#34920
      Caption = #22797#21046
      ImageIndex = 18
      ImageName = #22797#21046
      Images = F_DT.vrtlmglst1
      TabOrder = 3
      OnClick = bitbtnCopyClick
    end
    object bitbtnExport: TBitBtn
      Left = 449
      Top = 1
      Width = 112
      Height = 26
      Hint = #23548#20986'Excel'#26041#20415#32534#20889#27169#22411#20195#30721#26597#38405
      Caption = #23548#20986'Excel'
      ImageIndex = 0
      ImageName = #23548#20986'excel'
      Images = F_DT.vrtlmglst1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bitbtnExportClick
    end
    object chkOpen: TCheckBox
      AlignWithMargins = True
      Left = 564
      Top = 5
      Width = 103
      Height = 19
      Align = alLeft
      Caption = #23548#20986#21518#25171#24320
      Checked = True
      Ctl3D = True
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 5
      WordWrap = True
      ExplicitTop = 7
    end
    object BitBtnBackUP: TBitBtn
      Left = 670
      Top = 1
      Width = 58
      Height = 26
      Hint = #22791#20221#25509#21475#35268#33539#20449#24687#65292#24517#35201#26102#21487#29992#20110#20849#20139#25968#25454#25509#21475
      Caption = #22791#20221
      ImageIndex = 9
      ImageName = #23548#20986#27169#22411
      Images = F_DT.vrtlmglstMenu
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtnBackUPClick
    end
    object BitBtnRestore: TBitBtn
      Left = 728
      Top = 1
      Width = 61
      Height = 26
      Hint = #24674#22797#25968#25454#25509#21475#35268#33539#65292#20294#35201#27880#24847#25152#29992#25968#25454#23383#20856#20851#32852#24615
      Caption = #24674#22797
      ImageIndex = 10
      ImageName = #23548#20837#27169#22411
      Images = F_DT.vrtlmglstMenu
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtnRestoreClick
    end
    object bitbtnExit: TBitBtn
      Left = 789
      Top = 1
      Width = 112
      Height = 26
      Caption = #36820#22238
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      TabOrder = 8
      OnClick = bitbtnExitClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 899
    Width = 1741
    Height = 19
    Panels = <>
    ParentFont = True
    SimplePanel = True
    UseSystemFont = False
  end
  object dsSrcTabMsDt: TDataSource
    DataSet = fdQrySrcTab
    OnDataChange = dsSrcTabMsDtDataChange
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
    Left = 489
    Top = 537
  end
  object fdQrySrcTab: TFDQuery
    ActiveStoredUsage = [auDesignTime]
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
    object fdQrySrcTabchn_col: TStringField
      FieldName = 'chn_col'
      Origin = 'chn_col'
      FixedChar = True
      Size = 1
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
    object fdQrySrcTabtype: TStringField
      FieldName = 'type'
      Origin = 'type'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcTabtab_memo: TStringField
      DisplayWidth = 400
      FieldName = 'tab_memo'
      Origin = 'tab_memo'
      Size = 400
    end
    object fdQrySrcTabtab_sort: TIntegerField
      FieldName = 'tab_sort'
      Origin = 'tab_sort'
      Required = True
    end
    object fdQrySrcTabcombIndex: TMemoField
      FieldName = 'combIndex'
      Origin = 'combIndex'
      BlobType = ftMemo
    end
  end
  object fdQrySrcCol: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    AfterScroll = fdQrySrcColAfterScroll
    OnCalcFields = StatusCalcFields
    IndexFieldNames = 'tab_id;col_sort'
    MasterSource = dsSrcTabMsDt
    MasterFields = 'tab_id'
    OnUpdateRecord = fdQrySrcColUpdateRecord
    Connection = F_DT.FDConSYS
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
      Size = 32
    end
    object fdQrySrcColcol_regName: TStringField
      FieldName = 'col_regName'
      Origin = 'col_regName'
      Size = 60
    end
    object fdQrySrcColcol_reg_str: TStringField
      FieldName = 'col_reg_str'
      Origin = 'col_reg_str'
      Size = 120
    end
    object fdQrySrcColcol_reg_ok: TStringField
      FieldName = 'col_reg_ok'
      Origin = 'col_reg_ok'
      FixedChar = True
      Size = 1
    end
    object fdQrySrcColcol_reg_depcol: TStringField
      FieldName = 'col_reg_depcol'
      Origin = 'col_reg_depcol'
      Size = 80
    end
    object fdQrySrcColcol_reg_depval: TStringField
      FieldName = 'col_reg_depval'
      Origin = 'col_reg_depval'
    end
    object fdQrySrcColcol_memo: TStringField
      DisplayWidth = 400
      FieldName = 'col_memo'
      Origin = 'col_memo'
      Size = 400
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
    Left = 856
    Top = 240
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
      
        'select dict_type_id, dict_type_name_cn,dict_type_name_en,dict_ty' +
        'pe_memo from dict_type order by dict_type_sort')
    Left = 768
    Top = 384
  end
  object dsDictList: TDataSource
    DataSet = fdQryDictList
    Left = 776
    Top = 304
  end
  object dsColType: TDataSource
    DataSet = fdQryColType
    Left = 784
    Top = 240
  end
  object fdQryReg: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      
        'select distinct dict_val_id,dict_type_name_cn,dict_type_name_en,' +
        'b.dict_val,b.dict_lable,b.dict_val_memo,b.dict_val_sort from dic' +
        't_type a'
      'inner join dict_val b on a.dict_type_id=b.dict_type_id'
      'where a.dict_type_id= :dict_type_id order by b.dict_val_sort')
    Left = 864
    Top = 304
    ParamData = <
      item
        Name = 'DICT_TYPE_ID'
        DataType = ftString
        ParamType = ptInput
        Value = 'C9EA060864084817A56FBA5B9712D00A'
      end>
  end
  object dlgSave1: TSaveDialog
    FileName = 'file1'
    Filter = 'Exce2007'#20197#19978#25991#20214' (*.xlsx)|*.XLSX|Exce97-2003'#25991#20214' (*.xls)|*.XLS'
    Title = #23548#20986'Excel'#25991#20214
    Left = 140
    Top = 130
  end
  object FDQryBKMaster: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      'select * from src_table')
    Left = 1184
    Top = 512
  end
  object FDQryBKDetail: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSysTmp
    SQL.Strings = (
      'SELECT * FROM src_column')
    Left = 1272
    Top = 512
  end
  object fdmtblImp: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 1352
    Top = 512
  end
  object FDQryTmp: TFDQuery
    Left = 1426
    Top = 511
  end
  object dlgSaveExport: TSaveDialog
    FileName = 'file1'
    Filter = #25509#21475#35268#33539#25991#20214' (*.Srcs)|*.Srcs'
    Title = #25509#21475#35268#33539#28304#25968#25454#34920#22791#20221
    Left = 952
    Top = 520
  end
  object dlgOpenRestore: TOpenDialog
    Filter = #25509#21475#35268#33539#25991#20214' (*.Srcs)|*.Srcs'
    Title = #25509#21475#35268#33539#28304#25968#25454#34920#24674#22797
    Left = 1048
    Top = 520
  end
  object dsTabType: TDataSource
    DataSet = FDQryTabType
    Left = 960
    Top = 248
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
    Left = 1032
    Top = 248
    ParamData = <
      item
        Name = 'DICT_TYPE_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '4A7F146696F2412AA5F2DD5AE7772775'
      end>
  end
  object FDLocalSQL1: TFDLocalSQL
    DisableControls = False
    Connection = F_DT.FDConSQLite
    Active = True
    DataSets = <
      item
        DataSet = fdQrySrcCol
        Name = 'fdQrySrcCol'
      end>
    Left = 490
    Top = 618
  end
  object FDQryCurColLst: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = F_DT.FDConSQLite
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      
        'select col_name_cn as col_name from fdQrySrcCol where tab_id = :' +
        'cur_tab_id order by col_sort')
    Left = 589
    Top = 620
    ParamData = <
      item
        Name = 'CUR_TAB_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '6AD26ACD3C53485DB7D27469C1A1D916'
      end>
  end
  object ds1: TDataSource
    DataSet = FDQryCurColLst
    Left = 432
    Top = 720
  end
  object dsCurColLst: TDataSource
    DataSet = FDQryCurColLst
    Left = 688
    Top = 632
  end
end
