object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 913
  Top = 132
  Height = 365
  Width = 369
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog='#21326#28070#32442#24067#37197#26825';Data Source=PEAKCHEN;Use Procedure ' +
      'for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation I' +
      'D=PEAKCHEN;Use Encryption for Data=False;Tag with column collati' +
      'on when possible=False'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 8
  end
  object qry1: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from FG11'#21407#26825#20135#22320#32500#25252' where not('#21378#20869#32534#21495' is null)')
    Left = 16
    Top = 64
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 56
    Top = 64
  end
  object qry2: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct '#22791#27880'  from  FG11'#21407#26825#20135#22320#32500#25252)
    Left = 16
    Top = 120
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 56
    Top = 120
  end
  object ADOQuery1: TADOQuery
    Connection = con1
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 16
    Top = 184
  end
end
