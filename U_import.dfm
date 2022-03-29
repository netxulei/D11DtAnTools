object F_import: TF_import
  Left = 452
  Top = 248
  Caption = #27169#22411#23548#20837
  ClientHeight = 572
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pnlFileName: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 97
    Align = alTop
    TabOrder = 0
    object spbtnFileName: TSpeedButton
      Left = 465
      Top = 32
      Width = 41
      Height = 28
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000E0000000C0000000100
        200000000000A002000000000000000000000000000000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000FF
        FF000080800000FFFF000080800000FFFF000080800000FFFF00008080000000
        0000FF00FF00FF00FF00FF00FF000000000000FFFF000000000000FFFF000080
        800000FFFF000080800000FFFF000080800000FFFF000080800000000000FF00
        FF00FF00FF000000000000FFFF0000FFFF000000000000FFFF000080800000FF
        FF000080800000FFFF000080800000FFFF000080800000000000FF00FF000000
        000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF000000000000FFFF0000FF
        FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000FFFF0000FFFF000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      OnClick = spbtnFileNameClick
    end
    object rg1: TRadioGroup
      Left = 94
      Top = 59
      Width = 353
      Height = 32
      BiDiMode = bdLeftToRight
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        #22686#37327#26041#24335
        #35206#30422#26041#24335)
      ParentBiDiMode = False
      ParentFont = False
      ShowFrame = False
      TabOrder = 1
      WordWrap = True
    end
    object lbledtFileName: TLabeledEdit
      Left = 8
      Top = 33
      Width = 457
      Height = 25
      AutoSize = False
      EditLabel.Width = 143
      EditLabel.Height = 15
      EditLabel.Caption = #36873#25321#20934#22791#23548#20837#30340#27169#22411#25991#20214
      ReadOnly = True
      TabOrder = 0
      Text = ''
      TextHint = #36873#25321#20934#22791#23548#20837#30340#27169#22411#25991#20214
    end
  end
  object cxDBTreeLst1: TcxDBTreeList
    Left = 0
    Top = 145
    Width = 572
    Height = 427
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = ds1
    Navigator.Buttons.CustomButtons = <>
    OptionsData.Editing = False
    RootValue = -1
    TabOrder = 1
    object cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn1: TcxDBTreeListColumn
      Caption.Text = #27169#22411#21517#31216
      DataBinding.FieldName = 't_name'
      Width = 261
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn2: TcxDBTreeListColumn
      Caption.Text = 'T_ID'
      DataBinding.FieldName = 't_id'
      Width = 63
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn3: TcxDBTreeListColumn
      Caption.Text = 'T_Parent_ID'
      DataBinding.FieldName = 't_par'
      Width = 100
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtrlstclmnDBTreeLst1cxDBTreeListColumn4: TcxDBTreeListColumn
      Caption.Text = 'T_sort'
      Width = 100
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 97
    Width = 572
    Height = 48
    Align = alTop
    TabOrder = 2
    object btn1: TBitBtn
      Left = 130
      Top = 12
      Width = 81
      Height = 24
      Caption = #23548#20837
      ImageIndex = 10
      ImageName = #23548#20837#27169#22411
      Images = F_DT.vrtlmglstMenu
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 277
      Top = 12
      Width = 81
      Height = 24
      Caption = #36820#22238
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btn2Click
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    DefaultExt = 'Mod'
    Filter = #27169#22411#25991#20214'(*.Mod)|*.Mod'
    FilterIndex = 0
    Title = #35831#36873#25321#19982#23548#20837#30340#27169#22411#25991#20214
    Left = 176
    Top = 344
  end
  object FDqryTree: TFDQuery
    Left = 317
    Top = 266
  end
  object FDqryTmp: TFDQuery
    Left = 298
    Top = 335
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
    Left = 216
    Top = 280
  end
  object ds1: TDataSource
    DataSet = fdmtblImp
    Left = 176
    Top = 192
  end
end
