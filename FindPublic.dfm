object frmFindPublic: TfrmFindPublic
  Left = 379
  Top = 190
  Width = 420
  Height = 185
  AutoSize = True
  Caption = #19975#33021#26597#25214
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 72
    Height = 13
    AutoSize = False
    Caption = #26597#25214#20869#23481#65306
    Color = clBtnFace
    ParentColor = False
    Transparent = True
  end
  object edtName: TEdit
    Left = 76
    Top = 0
    Width = 223
    Height = 21
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 0
  end
  object bbFind: TBitBtn
    Left = 327
    Top = 8
    Width = 77
    Height = 32
    Caption = #26597'  '#25214'(&F)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bbFindClick
    Glyph.Data = {
      4A030000424D4A030000000000004A0200002800000010000000100000000100
      08000000000000010000120B0000120B0000850000008500000000000000FFFF
      FF00FF00FF00FFFEFE00865A5600A4787400D5C7C600845B5700885E5A007652
      4E008A605C0093686300B79A9700C3A6A300BC9994008C605900AA8680009063
      5A0093675C00BB918700AB7E7100996C5E00C09C91009E716100BB928400A26E
      5A00BD9C8F00B99D9200CDB3A900DCC8C000B07D6500B6907F00BC9E9100A970
      5500A4786300F0E8E400B1714D00AC715100B1836900AA7E6600C0A29100B789
      6C00DCA88700F1E7E100B6693300AD66380090705A00D2B19A00BD8F6E00CFAE
      9600C6987200C2947000BF651600C99B7300CB660000C8660600C7660700DDBF
      A100C0854600F6C68B00F3CB9B00DF993E00F4CA9400F3CF9E00EED1AA00DBC6
      AB00F6CE9600F9D29B00E9D1AE00EDE1D000FBF1E300AA967600AD997900AB98
      7900E2CEAD00F6E3C400F8EAD300F6D59A00F6D69C00F4D49B00F6D79F00F6DB
      AB00FAE1B300AC9C7F00FAE4BC00F6E4C400F7E7CB00FADB9E00F7DAA300F7DD
      AB00EFDAB200FFF1D500FCF8EF00FFEBB800FFEFBD00F9ECC300F2E9CE00FFF1
      BD00FFF9CF00FBF5D000FBF9DF00FEFCD700FFFDDA00FFFEEE00FFFEDF00FFFF
      D500FFFFD900FFFFDC00FFFFDE00FFFFDF00FFFFE300FFFFE400FFFFE600FDFD
      E700FFFFF400FFFFFE0065A9D4004FB5FB0052B8FF0054BAFF001F86DD002190
      EA00228DE80049A9F80053ABF30054ABF1005997CA007C8288005F7794006680
      9E00637D9E0065738C0078819600020F050505050505050505050B02807F0211
      5554525958504E4D4D570B82797402125B3D3D3D3D3D3D3D3D4F817A777D0215
      464C564B4A534947488478767C020217723D3D3A13161A142E7E757B02020222
      735C1D0E45686F60280C83020202022701361E2370696B625D18090202020226
      01361B716A6A6D5F43390402020202290136206E6A6C663F3B44080202020230
      01361F646563513C5E2F07020202023301010D41613E42672B100A0202020232
      0136382431405A1C19060B0202020235013636372C25212D34030B0202020235
      010101010101010101010B02020202352A2A2A2A2A2A2A2A2A2A2A0202020202
      0202020202020202020202020202}
  end
  object bbNo: TBitBtn
    Left = 327
    Top = 89
    Width = 77
    Height = 32
    Cancel = True
    Caption = #21462'  '#28040'(&F)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = bbNoClick
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
  object bbFindDown: TBitBtn
    Left = 327
    Top = 48
    Width = 77
    Height = 32
    Caption = #19979#19968#20010'(&D)'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bbFindDownClick
    Glyph.Data = {
      46020000424D4602000000000000460100002800000010000000100000000100
      08000000000000010000120B0000120B0000440000004400000000000000FFFF
      FF007F7A88008F8B9000FF00FF00918690009C899300A18A9200A8787500B48D
      8900C79C9600D0A59F00C6978F00CAA09800C8A29800BE9D8F00DCB8A800D5B6
      A700C6AC9A00DCC4B400DDBFA900EBC6A800CAAD9600CAB09A00E4C9B200F2C6
      9100F8D29B00F7D7AA00F6D6A400F5D6A600FBDDAC00F4D7A800F9E0B300F6E2
      BA00F8F6F200FBE8B900FCF0C900FFF7CA00F8F5D100FEFBD300FEFDD900FEFD
      DA00FAF9E300FFFFD800FFFFDD00FFFFDE00FFFFE300FFFFE500FFFFE700FFFF
      EF00FFFFF700FFFFFE000066000019AC2C002ABA43003CC95E004DD776004DD7
      770058E0870046B2FF004AB3FF0059A3DC006AC1FF002984D0002B84D1002D87
      D5006E757C00A2ADC20004040404040404040404040434040404040404040404
      0404040404043434040404040404040404040404343439363404040404040404
      04040404343A3A3735340404040404040404040434343A383404040442020404
      0404040404043434040404043D410604040404040404340404040404043C4007
      04040404040404040404040404043B3F050408110B040404040404040404043E
      0317292831090404040404040404044315252D2E322A0A04040404040404040C
      1F202C31332A0A0404040404040404181C19272F302D1204040404040404040D
      211B1D242B260E04040404040404040413221E1A230F04040404040404040404
      04161410160404040404}
  end
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 317
    Height = 118
    BevelWidth = 0
    TabOrder = 2
    object Label2: TLabel
      Left = 5
      Top = 23
      Width = 72
      Height = 13
      AutoSize = False
      Caption = #26597#25214#23383#27573#65306
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 5
      Top = 57
      Width = 72
      Height = 13
      AutoSize = False
      Caption = #25628#32034#26041#21521#65306
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object edtField: TComboBox
      Left = 77
      Top = 17
      Width = 211
      Height = 21
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 13
      TabOrder = 1
      Visible = False
    end
    object edtDirection: TComboBox
      Left = 77
      Top = 52
      Width = 223
      Height = 21
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        #20840#37096#25968#25454
        #24403#21069#34892#21521#19979)
    end
    object edtCaption: TComboBox
      Left = 77
      Top = 17
      Width = 223
      Height = 21
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 13
      TabOrder = 0
    end
    object checkAll: TCheckBox
      Left = 200
      Top = 87
      Width = 89
      Height = 21
      Caption = #20840#23383#21305#37197
      TabOrder = 4
    end
    object chkUpCase: TCheckBox
      Left = 80
      Top = 87
      Width = 105
      Height = 21
      Caption = #21306#20998#22823#23567#20889
      TabOrder = 3
    end
  end
end
