object F_user: TF_user
  Left = 508
  Top = 308
  AutoSize = True
  BorderIcons = []
  Caption = #29992#25143#31649#29702
  ClientHeight = 284
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 248
    Height = 284
    AllowedOperations = []
    AutoFitColWidths = True
    ColumnDefValues.Title.Alignment = taCenter
    ColumnDefValues.Title.TitleButton = True
    DataSource = ds1
    DynProps = <>
    FooterParams.Color = clWindow
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    ReadOnly = True
    RowHeight = 4
    RowLines = 1
    SortLocal = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ManagerName'
        Footers = <>
        Title.Caption = #29992#25143#21517
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ManagerLevel'
        Footers = <>
        Title.Caption = #29992#25143#26435#38480
        Width = 77
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object btn1: TBitBtn
    Left = 253
    Top = 18
    Width = 103
    Height = 25
    Caption = #28155#21152#29992#25143
    ImageIndex = 2
    ImageName = #26032#22686
    Images = F_DT.vrtlmglst1
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 253
    Top = 60
    Width = 103
    Height = 25
    Caption = #21024#38500#29992#25143
    ImageIndex = 3
    ImageName = #21024#38500' '
    Images = F_DT.vrtlmglst1
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 253
    Top = 102
    Width = 103
    Height = 25
    Caption = #20462#25913#26435#38480
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 253
    Top = 144
    Width = 103
    Height = 25
    Caption = #20462#25913#23494#30721
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 253
    Top = 186
    Width = 103
    Height = 25
    Caption = #20445#23384
    ImageIndex = 8
    ImageName = #20445#23384
    Images = F_DT.vrtlmglst1
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 253
    Top = 228
    Width = 103
    Height = 25
    Caption = #21462#28040
    ImageIndex = 9
    ImageName = #23567#36864#20986
    Images = F_DT.vrtlmglst1
    NumGlyphs = 2
    TabOrder = 6
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = fdQryUser
    Left = 117
    Top = 54
  end
  object fdQryUser: TFDQuery
    CachedUpdates = True
    Left = 184
    Top = 56
  end
end
