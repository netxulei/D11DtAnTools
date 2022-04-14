object F_Proj: TF_Proj
  Left = 380
  Top = 175
  Caption = #39033#30446#35774#32622
  ClientHeight = 407
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object lbl3: TLabel
    Left = 8
    Top = 295
    Width = 52
    Height = 15
    Caption = #39033#30446#32534#21495
  end
  object lbl4: TLabel
    Left = 117
    Top = 295
    Width = 52
    Height = 15
    Caption = #39033#30446#21517#31216
  end
  object lbl5: TLabel
    Left = 556
    Top = 295
    Width = 65
    Height = 15
    Caption = #39033#30446#25968#25454#24211
  end
  object lbl7: TLabel
    Left = 347
    Top = 295
    Width = 26
    Height = 15
    Caption = #22791#27880
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 699
    Height = 192
    Align = alTop
    AutoFitColWidths = True
    DataSource = ds1
    DynProps = <>
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    TabOrder = 0
    OnMouseDown = dbgrdh1MouseDown
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_no'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#32534#21495
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#21517#31216
        Width = 118
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_database'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25968#25454#24211#21517#31216
        Width = 114
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_ver'
        Footers = <>
        KeyList.Strings = (
          '1'
          '2'
          '3')
        PickList.Strings = (
          #36134#25143#26816#26597
          #39118#38505#30417#27979
          #20854#20182)
        Title.Alignment = taCenter
        Title.Caption = #29256#26412
        Width = 106
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_memo'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22791#27880
        Width = 118
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object btn3: TBitBtn
    Left = 130
    Top = 238
    Width = 193
    Height = 25
    Caption = #35774#32622#25152#36873#20026#24403#21069#39033#30446
    ImageIndex = 10
    ImageName = #30830#35748
    Images = F_DT.vrtlmglst1
    TabOrder = 1
    OnClick = btn3Click
  end
  object edt1: TEdit
    Left = 8
    Top = 311
    Width = 87
    Height = 23
    TabOrder = 2
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 117
    Top = 311
    Width = 209
    Height = 23
    TabOrder = 3
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 556
    Top = 311
    Width = 117
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 4
    Text = 'ZH_2020021391256'
  end
  object edt4: TEdit
    Left = 452
    Top = 279
    Width = 29
    Height = 23
    Enabled = False
    TabOrder = 5
    Text = 'edt4'
    Visible = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 366
    Width = 699
    Height = 41
    Align = alBottom
    TabOrder = 6
    object btn4: TBitBtn
      Left = 500
      Top = 8
      Width = 121
      Height = 25
      Caption = #36820#22238
      ImageIndex = 9
      ImageName = #23567#36864#20986
      Images = F_DT.vrtlmglst1
      TabOrder = 0
      OnClick = btn4Click
    end
    object btn2: TBitBtn
      Left = 278
      Top = 8
      Width = 121
      Height = 25
      Caption = #20462#25913#39033#30446#20449#24687
      ImageIndex = 14
      ImageName = #20462#25913
      Images = F_DT.vrtlmglstMenu
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn1: TBitBtn
      Left = 56
      Top = 8
      Width = 115
      Height = 25
      Caption = #26032#24314#39033#30446
      ImageIndex = 2
      ImageName = #26032#22686
      Images = F_DT.vrtlmglst1
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 41
    Align = alTop
    TabOrder = 7
    object lbl2: TLabel
      Left = 1
      Top = 1
      Width = 697
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #24403#21069#39033#30446
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 52
    end
    object lbl1: TLabel
      Left = 8
      Top = 20
      Width = 52
      Height = 15
      Caption = #39033#30446#21015#34920
    end
  end
  object edt5: TEdit
    Left = 400
    Top = 279
    Width = 33
    Height = 23
    Enabled = False
    TabOrder = 8
    Text = 'edt5'
    Visible = False
  end
  object btn5: TBitBtn
    Left = 378
    Top = 238
    Width = 153
    Height = 25
    Caption = #21024#38500#25152#36873#39033#30446
    ImageIndex = 3
    ImageName = #21024#38500' '
    Images = F_DT.vrtlmglst1
    TabOrder = 9
    OnClick = btn5Click
  end
  object pnl3: TPanel
    Left = 0
    Top = 271
    Width = 697
    Height = 2
    TabOrder = 10
  end
  object edt6: TEdit
    Left = 348
    Top = 311
    Width = 181
    Height = 23
    TabOrder = 11
    Text = 'edt1'
  end
  object ds1: TDataSource
    DataSet = fdQryProj
    Left = 552
    Top = 168
  end
  object fdQryTmp: TFDQuery
    Left = 416
    Top = 128
  end
  object fdQryProj: TFDQuery
    Left = 496
    Top = 128
  end
end
