object F_DT: TF_DT
  OnCreate = DataModuleCreate
  Height = 752
  Width = 850
  PixelsPerInch = 96
  object ADOCN1: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 49
    Top = 18
  end
  object ADOCN2: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 103
    Top = 19
  end
  object ADOCN3: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 49
    Top = 74
  end
  object ADOcn4: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 105
    Top = 74
  end
  object ADOconGD2: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 153
    Top = 74
  end
  object ADOconGD3: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 217
    Top = 74
  end
  object FDConSYS: TFDConnection
    Left = 88
    Top = 256
  end
  object FDConProj: TFDConnection
    Left = 157
    Top = 259
  end
  object FDconGen: TFDConnection
    Left = 16
    Top = 256
  end
  object FDConSysTmp: TFDConnection
    Params.Strings = (
      'Database=hnxlsys'
      'Server=.'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    ConnectedStoredUsage = [auDesignTime]
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 352
  end
  object FDConProjTmp: TFDConnection
    Params.Strings = (
      'Database=ZH_2022030182435 '
      'Server=.'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 152
    Top = 352
  end
  object imgLstStat: TImageList
    Height = 12
    Width = 12
    Left = 464
    Top = 328
    Bitmap = {
      494C01010400080004000C000C00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000000000000000000000004A
      6A7700B79BE200F64CFE00F64CFE00B79BE2004A6A7700000000000000000000
      000000000000000000000000000000417070009AD7D700E1FCFC00E1FCFC009A
      D7D7004170700000000000000000000000000000000000000000000000000101
      3F40010197990202DDE00202DDE00101979901013F4000000000000000000000
      0000000000000000000000000000004A6A7714A98FE4956720FF956720FF14A9
      8FE4004A6A770000000000000000000000000000000000000000004A6A7700E9
      6EFB00FF00FF00FF00FF00FF00FF00FF00FF00E96EFB004A6A77000000000000
      000000000000000000000041707000CDF5F500FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00CDF5F5004170700000000000000000000000000000000001013F400202
      CACC0202FCFF0202FCFF0202FCFF0202FCFF0202CACC01013F40000000000000
      00000000000000000000004A6A77638F43FDFF0000FFFF0000FFFF0000FFFF00
      00FF638F43FD004A6A770000000000000000000000000000000000B79BE200FF
      00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B79BE2000000000000
      00000000000000000000009AD7D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF009AD7D700000000000000000000000000000000010197990202
      FCFF0202FCFF0202FCFF0202FCFF0202FCFF0202FCFF01019799000000000000
      0000000000000000000014A98FE4FF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF14A98FE40000000000000000000000000000000000F64CFE00FF
      00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F64CFE000000000000
      0000000000000000000000E1FCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00E1FCFC000000000000000000000000000000000202DDE00202
      FCFF0202FCFF0202FCFF0202FCFF0202FCFF0202FCFF0202DDE0000000000000
      00000000000000000000956720FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF956720FF0000000000000000000000000000000000F64CFE00FF
      00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F64CFE000000000000
      0000000000000000000000E1FCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00E1FCFC000000000000000000000000000000000202DDE00202
      FCFF0202FCFF0202FCFF0202FCFF0202FCFF0202FCFF0202DDE0000000000000
      00000000000000000000956720FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF956720FF0000000000000000000000000000000000B79BE200FF
      00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B79BE2000000000000
      00000000000000000000009AD7D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF009AD7D700000000000000000000000000000000010197990202
      FCFF0202FCFF0202FCFF0202FCFF0202FCFF0202FCFF01019799000000000000
      0000000000000000000014A98FE4FF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF14A98FE400000000000000000000000000000000004A6A7700E9
      6EFB00FF00FF00FF00FF00FF00FF00FF00FF00E96EFB004A6A77000000000000
      000000000000000000000041707000CDF5F500FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00CDF5F5004170700000000000000000000000000000000001013F400202
      CACC0202FCFF0202FCFF0202FCFF0202FCFF0202CACC01013F40000000000000
      00000000000000000000004A6A77638F43FDFF0000FFFF0000FFFF0000FFFF00
      00FF638F43FD004A6A770000000000000000000000000000000000000000004A
      6A7700B79BE200F64CFE00F64CFE00B79BE2004A6A7700000000000000000000
      000000000000000000000000000000417070009AD7D700E1FCFC00E1FCFC009A
      D7D7004170700000000000000000000000000000000000000000000000000101
      3F40010197990202DDE00202DDE00101979901013F4000000000000000000000
      0000000000000000000000000000004A6A7714A98FE4956720FF956720FF14A9
      8FE4004A6A770000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
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
  object FDConSQLite: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    ConnectedStoredUsage = [auDesignTime]
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 184
  end
  object FDqryTmp: TFDQuery
    Connection = FDConSYS
    Left = 339
    Top = 218
  end
end
