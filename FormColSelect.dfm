object FrmColSelect: TFrmColSelect
  Left = 425
  Top = 180
  AutoSize = True
  BorderStyle = bsDialog
  Caption = #34920#26684#35774#32622
  ClientHeight = 562
  ClientWidth = 552
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 552
    Height = 109
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 552
      Height = 107
      Align = alTop
      Caption = #34920#26684#21442#25968
      TabOrder = 0
      object Label1: TLabel
        Left = 67
        Top = 67
        Width = 45
        Height = 18
        Caption = #22266#23450#21015
      end
      object ChkSumList: TCheckBox
        Left = 22
        Top = 26
        Width = 104
        Height = 22
        Caption = #26174#31034#21512#35745#26639
        TabOrder = 1
      end
      object chkAutoColWidth: TCheckBox
        Left = 145
        Top = 26
        Width = 63
        Height = 22
        Caption = #25972#26639
        TabOrder = 2
      end
      object ChkMultiTitle: TCheckBox
        Left = 500
        Top = 62
        Width = 98
        Height = 22
        Caption = #22810#26639#26631#39064
        TabOrder = 6
        Visible = False
      end
      object chkGridSort: TCheckBox
        Left = 373
        Top = 26
        Width = 63
        Height = 22
        Caption = #25490#24207
        TabOrder = 3
        Visible = False
        OnClick = chkGridSortClick
      end
      object ChkGridMultiSort: TCheckBox
        Left = 445
        Top = 23
        Width = 94
        Height = 22
        Caption = #22810#26639#25490#24207
        TabOrder = 0
        Visible = False
      end
      object chkSortLocal: TCheckBox
        Left = 480
        Top = 82
        Width = 96
        Height = 22
        Caption = #26412#22320#25490#24207
        TabOrder = 9
        Visible = False
      end
      object EdtFix: TEdit
        Left = 22
        Top = 63
        Width = 12
        Height = 24
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ReadOnly = True
        TabOrder = 7
        Text = '0'
      end
      object UpDownFix: TUpDown
        Left = 34
        Top = 63
        Width = 19
        Height = 24
        Associate = EdtFix
        TabOrder = 8
      end
      object ColorBox1: TColorBox
        Left = 135
        Top = 59
        Width = 172
        Height = 22
        Hint = #22855#25968#34892#39068#33394
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeDefault, cbCustomColor]
        BevelKind = bkFlat
        ItemHeight = 16
        TabOrder = 4
      end
      object ColorBox2: TColorBox
        Left = 323
        Top = 59
        Width = 167
        Height = 22
        Hint = #20598#25968#34892#39068#33394
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeDefault, cbCustomColor]
        BevelKind = bkFlat
        ItemHeight = 16
        TabOrder = 5
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 109
    Width = 552
    Height = 453
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object CLB: TCheckListBox
      Left = 0
      Top = 8
      Width = 354
      Height = 439
      BevelEdges = []
      BevelOuter = bvRaised
      BevelKind = bkTile
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      Style = lbOwnerDrawFixed
      TabOrder = 1
      OnClick = CLBClick
      OnDragOver = CLBDragOver
    end
    object Panel3: TPanel
      Left = 367
      Top = 0
      Width = 185
      Height = 453
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        185
        453)
      object BitBtn1: TBitBtn
        Left = 35
        Top = 405
        Width = 115
        Height = 39
        Anchors = [akBottom]
        Cancel = True
        Caption = #21462#28040'&C'
        ModalResult = 2
        TabOrder = 3
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
      end
      object BitBtn2: TBitBtn
        Left = 35
        Top = 360
        Width = 115
        Height = 39
        Anchors = [akBottom]
        Caption = #30830#23450'&O'
        Default = True
        TabOrder = 2
        OnClick = Button2Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 305
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 13
          Top = 0
          Width = 172
          Height = 305
          Align = alRight
          Caption = #23383#27573#21442#25968
          TabOrder = 0
          object SpeedButton6: TSpeedButton
            Left = 8
            Top = 26
            Width = 29
            Height = 28
            Hint = #36873#25321#39033#32622#39030
            Caption = #39030
            Flat = True
            OnClick = SpeedButton6Click
          end
          object SpeedButton1: TSpeedButton
            Left = 49
            Top = 26
            Width = 29
            Height = 28
            Hint = #36873#25321#39033#19978#31227
            Caption = #19978
            Flat = True
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 90
            Top = 26
            Width = 30
            Height = 28
            Hint = #36873#25321#39033#19979#31227
            Caption = #19979
            Flat = True
            OnClick = SpeedButton2Click
          end
          object SpeedButton7: TSpeedButton
            Left = 131
            Top = 26
            Width = 30
            Height = 28
            Hint = #36873#25321#39033#32622#24213
            Caption = #24213
            Flat = True
            OnClick = SpeedButton7Click
          end
          object Label3: TLabel
            Left = 10
            Top = 186
            Width = 60
            Height = 18
            Caption = #32479#35745#23383#27573
          end
          object Label2: TLabel
            Left = 12
            Top = 134
            Width = 60
            Height = 18
            Caption = #32479#35745#31867#22411
          end
          object EditSumField: TComboBox
            Left = 10
            Top = 207
            Width = 156
            Height = 22
            BevelKind = bkFlat
            Style = csOwnerDrawFixed
            Enabled = False
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ItemHeight = 16
            TabOrder = 4
            OnExit = OnSaveFieldValue
          end
          object CbxSumType: TComboBox
            Left = 10
            Top = 156
            Width = 156
            Height = 22
            BevelKind = bkSoft
            Style = csOwnerDrawFixed
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ItemHeight = 16
            TabOrder = 3
            OnChange = CbxSumTypeChange
            OnExit = OnSaveFieldValue
            Items.Strings = (
              #19981#32479#35745
              #26174#31034#25991#23383
              #23383#27573#20540
              #24179#22343#20540
              #35745#25968#20540
              #21512#35745#20540)
          end
          object ChkSort: TCheckBox
            Left = 13
            Top = 111
            Width = 94
            Height = 21
            Caption = #26159#21542#25490#24207
            TabOrder = 2
            OnExit = OnSaveFieldValue
          end
          object ChkReadOnly: TCheckBox
            Left = 129
            Top = 107
            Width = 73
            Height = 22
            Caption = #21482#35835
            TabOrder = 1
            Visible = False
            OnExit = OnSaveFieldValue
          end
          object EdtFieldTitle: TLabeledEdit
            Left = 10
            Top = 78
            Width = 156
            Height = 24
            EditLabel.Width = 60
            EditLabel.Height = 18
            EditLabel.Caption = #26174#31034#26631#39064
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 0
            OnExit = OnSaveFieldValue
          end
          object EditSumValue: TLabeledEdit
            Left = 9
            Top = 267
            Width = 156
            Height = 24
            EditLabel.Width = 60
            EditLabel.Height = 18
            EditLabel.Caption = #26174#31034#25991#23383
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 5
            Visible = False
            OnExit = OnSaveFieldValue
          end
        end
      end
      object BitBtn3: TBitBtn
        Left = 35
        Top = 315
        Width = 115
        Height = 39
        Anchors = [akLeft, akBottom]
        Caption = #37325#32622'&R'
        TabOrder = 1
        OnClick = BitBtn3Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object EdtFieldName: TLabeledEdit
      Left = 21
      Top = 401
      Width = 155
      Height = 24
      Color = cl3DLight
      EditLabel.Width = 60
      EditLabel.Height = 18
      EditLabel.Caption = #23383#27573#21517#31216
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
      Visible = False
    end
  end
end
