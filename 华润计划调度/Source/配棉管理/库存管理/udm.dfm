object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 731
  Top = 165
  Height = 150
  Width = 215
  object ADOConnection1: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 32
  end
end
