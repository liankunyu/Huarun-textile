object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 421
  Top = 209
  Height = 271
  Width = 305
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 8
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 56
    Top = 64
  end
  object AQUser: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select User_ID,User_Name,User_Popedom from Users')
    Left = 152
    Top = 8
  end
  object AQPopedom: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 224
    Top = 8
  end
  object DSUser: TDataSource
    DataSet = AQUser
    Left = 152
    Top = 72
  end
  object DSPopedom: TDataSource
    DataSet = AQPopedom
    Left = 224
    Top = 72
  end
  object qryUserQuery: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 152
    Top = 136
  end
  object qryDepName: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 56
    Top = 136
  end
end
