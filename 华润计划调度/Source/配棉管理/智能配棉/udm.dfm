object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 702
  Top = 102
  Height = 291
  Width = 387
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 32
  end
end
