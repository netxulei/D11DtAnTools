object FrmDtHlp: TFrmDtHlp
  Left = 0
  Top = 0
  Caption = #26367#25442#25110#29992'Word'#32534#36753#30446#24405#19979#30340'DataHelp.rtf'#25991#20214#21487#26356#26032#20869#23481
  ClientHeight = 487
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object RichEdit1: TRichEdit
    Left = 0
    Top = 33
    Width = 823
    Height = 454
    Hint = #27492#22788#21487#31616#21333#20462#25913#26356#26032#65292#26356#22909#30340#26684#24335#35831#21033#29992'wps'#25110'word'
    Align = alClient
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssBoth
    ShowHint = True
    TabOrder = 0
    ExplicitTop = 176
    ExplicitHeight = 311
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 33
    Align = alTop
    TabOrder = 1
    object btnSave: TButton
      Left = 107
      Top = 4
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object chkEdit: TCheckBox
      Left = 20
      Top = 9
      Width = 81
      Height = 17
      Caption = #21482#35835#27169#24335
      Checked = True
      State = cbChecked
      TabOrder = 1
      Visible = False
      OnClick = chkEditClick
    end
    object btnExit: TButton
      Left = 188
      Top = 4
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 2
      OnClick = btnExitClick
    end
  end
end
