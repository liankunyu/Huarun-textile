object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 373
  Top = 171
  Height = 355
  Width = 495
  object ADOConnection1: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 8
  end
  object ATDepartment: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #37096#38376#20449#24687#34920
    Left = 48
    Top = 56
  end
  object DSDepartment: TDataSource
    DataSet = ATDepartment
    Left = 48
    Top = 104
  end
  object ATDoctor: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #21592#24037#20449#24687#34920
    Left = 112
    Top = 56
  end
  object DSDoctor: TDataSource
    DataSet = ATDoctor
    Left = 112
    Top = 104
  end
  object AQDoctor1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#21592#24037#20449#24687#34920)
    Left = 128
    Top = 152
  end
  object DSPost: TDataSource
    DataSet = AQPost
    Left = 280
    Top = 200
  end
  object AQPost: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 280
    Top = 152
  end
  object AQDepartment: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 48
    Top = 152
  end
  object DSDepartment1: TDataSource
    DataSet = AQDepartment
    Left = 48
    Top = 200
  end
  object AQ1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 304
    Top = 56
  end
  object DS1: TDataSource
    DataSet = AQ1
    Left = 304
    Top = 104
  end
  object DSDoctor1: TDataSource
    DataSet = AQDoctor1
    Left = 128
    Top = 208
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from '#21592#24037#20449#24687#34920)
    Left = 136
    Top = 8
  end
  object qryStaffQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 216
    Top = 8
  end
  object qryStaffModify: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 280
    Top = 8
  end
end
