object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 516
  Top = 215
  Height = 343
  Width = 479
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object qryDep: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#37096#38376#20449#24687#34920)
    Left = 120
    Top = 24
  end
  object dsDep: TDataSource
    DataSet = qryDep
    Left = 176
    Top = 24
  end
  object qryUserCheck: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 248
    Top = 144
  end
  object qryPopemID: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 320
    Top = 80
  end
  object qryPwdChange: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 376
    Top = 144
  end
  object qryLog: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 120
    Top = 200
  end
  object qryBackUp: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 376
    Top = 200
  end
  object qryRestore: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 248
    Top = 200
  end
  object qryClear: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 304
    Top = 200
  end
  object dsLog: TDataSource
    DataSet = qryLog
    Left = 176
    Top = 200
  end
  object qryUser: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 120
    Top = 144
  end
  object dsUser: TDataSource
    DataSet = qryUser
    Left = 176
    Top = 144
  end
  object dsPopem: TDataSource
    DataSet = qryPopem
    Left = 176
    Top = 80
  end
  object qryPopem: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#26435#38480#25551#36848#34920)
    Left = 120
    Top = 80
  end
  object qryUserModify: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 304
    Top = 144
  end
  object qryPopemFunc: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 248
    Top = 80
  end
  object spUnVisibleNum: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 400
    Top = 80
  end
  object qryWhetherTableEmpty: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#37096#38376#20449#24687#34920)
    Left = 366
    Top = 23
  end
  object qryzw: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32844#21153#34920)
    Left = 121
    Top = 252
  end
  object dszw: TDataSource
    DataSet = qryzw
    Left = 173
    Top = 254
  end
end
