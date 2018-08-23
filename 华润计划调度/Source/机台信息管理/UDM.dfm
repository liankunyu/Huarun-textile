object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 285
  Top = 242
  Height = 493
  Width = 639
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 8
  end
  object qryJTLoomReportInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 146
    Top = 10
  end
  object dsJTLoomReportInfo: TDataSource
    DataSet = qryJTLoomReportInfo
    Left = 272
    Top = 8
  end
  object qryJTInsert: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 464
    Top = 8
  end
  object qryJTCheck: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 376
    Top = 8
  end
  object qryFTLoomReportInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 144
    Top = 72
  end
  object dsFTLoomReportInfo: TDataSource
    DataSet = qryFTLoomReportInfo
    Left = 264
    Top = 72
  end
  object qryTotalLoomReportInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 136
    Top = 152
  end
  object dsTotalLoomReportInfo: TDataSource
    DataSet = qryTotalLoomReportInfo
    Left = 264
    Top = 152
  end
  object qryFTCheck: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 368
    Top = 80
  end
  object qryFTInsert: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 464
    Top = 71
  end
  object qryLoomDriveInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 120
    Top = 280
  end
  object dsLoomDriveInfo: TDataSource
    DataSet = qryLoomDriveInfo
    Left = 264
    Top = 280
  end
  object qryBdriveCheck: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 384
    Top = 280
  end
  object qryBDriveInsert: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 480
    Top = 280
  end
  object qryTotalWeavingLength: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 384
    Top = 152
  end
  object qryBTeamReportInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 144
    Top = 208
  end
  object dsBTeamReportInfo: TDataSource
    DataSet = qryBTeamReportInfo
    Left = 256
    Top = 216
  end
  object qryBShutDownDaysQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 504
    Top = 184
  end
  object qry1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 468
    Top = 124
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 512
    Top = 127
  end
  object qryLJ: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 405
    Top = 372
  end
  object qryLJinsert: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 496
    Top = 380
  end
  object qry2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 142
    Top = 360
  end
  object qrygy: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 271
    Top = 366
  end
  object qry3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 34
    Top = 219
  end
  object qry4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 35
    Top = 288
  end
  object qry5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 395
    Top = 203
  end
  object qry6: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 340
    Top = 366
  end
  object qry7: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 312
    Top = 400
  end
end
