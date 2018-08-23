object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 576
  Top = 211
  Height = 292
  Width = 307
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object qryDepName: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 16
  end
  object qryStaffID: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 120
    Top = 104
  end
  object AQLogin: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 208
    Top = 192
  end
  object dsDepName: TDataSource
    DataSet = qryDepName
    Left = 184
    Top = 24
  end
  object dsStaffID: TDataSource
    DataSet = qryStaffID
    Left = 184
    Top = 96
  end
end
