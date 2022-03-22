object F_user: TF_user
  Left = 508
  Top = 308
  AutoSize = True
  BorderIcons = []
  Caption = #29992#25143#31649#29702
  ClientHeight = 325
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
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
    Left = 260
    Top = 49
    Width = 75
    Height = 25
    Caption = #28155#21152#29992#25143
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 260
    Top = 89
    Width = 75
    Height = 25
    Caption = #21024#38500#29992#25143
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 260
    Top = 211
    Width = 75
    Height = 25
    Caption = #20462#25913#26435#38480
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 260
    Top = 249
    Width = 75
    Height = 25
    Caption = #20462#25913#23494#30721
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TBitBtn
    Left = 45
    Top = 300
    Width = 75
    Height = 25
    Caption = #20445#23384
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TBitBtn
    Left = 162
    Top = 300
    Width = 75
    Height = 25
    Caption = #21462#28040
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    TabOrder = 6
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = fdQryUser
    Left = 133
    Top = 38
  end
  object fdQryUser: TFDQuery
    Left = 200
    Top = 40
  end
end
