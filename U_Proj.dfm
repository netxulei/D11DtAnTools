object F_Proj: TF_Proj
  Left = 380
  Top = 175
  Caption = #39033#30446#35774#32622
  ClientHeight = 469
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 17
  object lbl3: TLabel
    Left = 8
    Top = 295
    Width = 48
    Height = 17
    Caption = #39033#30446#32534#21495
  end
  object lbl4: TLabel
    Left = 108
    Top = 295
    Width = 48
    Height = 17
    Caption = #39033#30446#21517#31216
  end
  object lbl5: TLabel
    Left = 332
    Top = 292
    Width = 60
    Height = 17
    Caption = #39033#30446#29305#24449#30721
  end
  object lbl7: TLabel
    Left = 8
    Top = 348
    Width = 60
    Height = 17
    Caption = #25968#25454#25480#26435#30721
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 838
    Height = 192
    Align = alTop
    AutoFitColWidths = True
    DataSource = ds1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    ParentFont = False
    TabOrder = 0
    OnCellClick = dbgrdh1CellClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_no'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#32534#21495
        Width = 57
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#21517#31216
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_database'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#29305#24449#30721
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
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_memo'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25968#25454#25480#26435#30721
        Width = 245
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'proj_data'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24314#31435#26102#38388
        Width = 104
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
    Height = 25
    TabOrder = 2
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 108
    Top = 311
    Width = 209
    Height = 25
    TabOrder = 3
    Text = 'edt2'
  end
  object edt4: TEdit
    Left = 592
    Top = 239
    Width = 29
    Height = 25
    Enabled = False
    TabOrder = 4
    Text = 'edt4'
    Visible = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 407
    Width = 838
    Height = 62
    Align = alBottom
    TabOrder = 5
    ExplicitTop = 413
    ExplicitWidth = 729
    object btn4: TBitBtn
      Left = 600
      Top = 19
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
      Left = 344
      Top = 19
      Width = 121
      Height = 25
      Hint = #20165#20462#25913#39033#30446#32534#21495#21644#39033#30446#21517#31216
      Caption = #20462#25913#39033#30446#20449#24687
      ImageIndex = 14
      ImageName = #20462#25913
      Images = F_DT.vrtlmglstMenu
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn1: TBitBtn
      Left = 67
      Top = 19
      Width = 115
      Height = 25
      Hint = #26032#24314#39033#30446#33258#21160#29983#25104#39033#30446#29305#24449#30721
      Caption = #26032#24314#39033#30446
      ImageIndex = 2
      ImageName = #26032#22686
      Images = F_DT.vrtlmglst1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 41
    Align = alTop
    TabOrder = 6
    ExplicitWidth = 722
    object lbl2: TLabel
      Left = 1
      Top = 1
      Width = 836
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = #24403#21069#39033#30446
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -12
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 48
    end
    object lbl1: TLabel
      Left = 8
      Top = 20
      Width = 48
      Height = 17
      Caption = #39033#30446#21015#34920
    end
  end
  object edt5: TEdit
    Left = 432
    Top = 279
    Width = 33
    Height = 25
    Enabled = False
    TabOrder = 7
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
    TabOrder = 8
    OnClick = btn5Click
  end
  object pnl3: TPanel
    Left = 0
    Top = 271
    Width = 697
    Height = 2
    TabOrder = 9
  end
  object Edt3: TButtonedEdit
    Left = 332
    Top = 311
    Width = 150
    Height = 25
    Hint = #26032#24314#39033#30446#26102#33258#21160#29983#25104#12290#23548#20986#20132#26435#38480#20154#21592#29983#25104#25968#25454#25480#26435#30721
    Images = F_DT.VirtualImageList1
    ParentShowHint = False
    ReadOnly = True
    RightButton.Hint = #23548#20986#39033#30446#29305#24449#30721#33719#21462#25968#25454#25480#26435#30721
    RightButton.HotImageIndex = 0
    RightButton.HotImageName = #23548#20986' (1)'
    RightButton.ImageIndex = 1
    RightButton.ImageName = #23548#20986
    RightButton.Visible = True
    ShowHint = True
    TabOrder = 10
    Text = 'Edt3'
    OnRightButtonClick = Edt3RightButtonClick
  end
  object Edt6: TButtonedEdit
    Left = 8
    Top = 365
    Width = 822
    Height = 25
    Hint = #23548#20837#25110#24405#20837#25968#25454#25480#26435#30721
    Images = F_DT.VirtualImageList1
    ParentShowHint = False
    RightButton.Hint = #23548#20837#25968#25454#25480#26435#30721
    RightButton.HotImageIndex = 2
    RightButton.HotImageName = #23548#20837' (1)'
    RightButton.ImageIndex = 3
    RightButton.ImageName = #23548#20837
    RightButton.Visible = True
    ShowHint = True
    TabOrder = 11
    Text = 'Edt6'
    OnRightButtonClick = Edt6RightButtonClick
  end
  object lbledtBgn: TLabeledEdit
    Left = 523
    Top = 312
    Width = 121
    Height = 25
    EditLabel.Width = 72
    EditLabel.Height = 17
    EditLabel.Caption = #25480#26435#36215#22987#26085#26399
    Enabled = False
    TabOrder = 12
    Text = ''
  end
  object lbledtEnd: TLabeledEdit
    Left = 664
    Top = 311
    Width = 129
    Height = 25
    EditLabel.Width = 72
    EditLabel.Height = 17
    EditLabel.Caption = #25480#26435#32467#26463#26085#26399
    Enabled = False
    TabOrder = 13
    Text = ''
  end
  object ds1: TDataSource
    DataSet = fdQryProj
    Left = 666
    Top = 74
  end
  object fdQryTmp: TFDQuery
    Left = 416
    Top = 128
  end
  object fdQryProj: TFDQuery
    Left = 496
    Top = 128
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'Aut'
    Filter = #25968#25454#25480#26435#30721#25991#20214'|*.Aut'
    Left = 552
    Top = 112
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'Did'
    Filter = #39033#30446#29305#24449#30721#25991#20214'|*.Did'
    Left = 605
    Top = 120
  end
end
