object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 192
  Top = 160
  Height = 281
  Width = 340
  object con1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 32
  end
  object qryDepName: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#37096#38376#20449#24687#34920)
    Left = 112
    Top = 32
  end
  object dsDepName: TDataSource
    DataSet = qryDepName
    Left = 176
    Top = 32
  end
  object qryUserName: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    Left = 104
    Top = 96
  end
  object dsUserName: TDataSource
    DataSet = qryUserName
    Left = 184
    Top = 96
  end
  object qryLogin: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    Left = 104
    Top = 176
  end
  object qryLoginLog: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    Left = 176
    Top = 176
  end
end
