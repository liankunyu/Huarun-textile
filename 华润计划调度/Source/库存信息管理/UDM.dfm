object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 295
  Top = 95
  Height = 437
  Width = 617
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object qryBOutOfWarehouseInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from '#26825#24067#20986#24211#20449#24687#34920' order by '#35746#21333#21495
      '')
    Left = 160
    Top = 74
  end
  object dsBOutOfWarehouseInfo: TDataSource
    DataSet = qryBOutOfWarehouseInfo
    Left = 309
    Top = 69
  end
  object qryBProductName: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 221
    Top = 182
  end
  object dsBProductName: TDataSource
    DataSet = qryBProductName
    Left = 302
    Top = 181
  end
  object qryBOutOfWarehouseInfoModify: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 132
    Top = 124
  end
  object qryBTotalOutOfWarehouse: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#20986#24211#20449#24687'  where '#35746#21333#21495' in (select '#35746#21333#21495' from '#26825#24067#35746#21333#20449#24687#34920' wh' +
        'ere '#19978#26426#29366#24577'=1 and '#20132#36135#29366#24577'=0) order by '#21697#21517)
    Left = 160
    Top = 16
  end
  object dsBTotalOutOfWarehouse: TDataSource
    DataSet = qryBTotalOutOfWarehouse
    Left = 296
    Top = 16
  end
  object qryBOutOfWarehouseInfoDelete: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 285
    Top = 130
  end
  object qryWeaverStorage: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from V_'#32455#36724#24211#23384#20449#24687)
    Left = 31
    Top = 279
  end
  object dsWeaverStorage: TDataSource
    DataSet = qryWeaverStorage
    Left = 130
    Top = 282
  end
  object qryWeftStorage: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from V_'#32428#32433#24211#23384#20449#24687)
    Left = 233
    Top = 280
  end
  object dsWeftStorage: TDataSource
    DataSet = qryWeftStorage
    Left = 303
    Top = 279
  end
  object qryBCustomerName: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 396
    Top = 188
  end
  object dsBCustomerName: TDataSource
    DataSet = qryBCustomerName
    Left = 474
    Top = 190
  end
  object qryBOrderID: TADOQuery
    Connection = ADOConnection1
    BeforeOpen = qryBOrderIDBeforeOpen
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#35746#21333#20449#24687'  where '#20132#36135#29366#24577'=0 and '#19978#26426#29366#24577'=1 and '#20316#24223#29366#24577'=0 order' +
        ' by '#21697#21517)
    Left = 54
    Top = 192
  end
  object qryBDeliveryStateUpdate: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 421
    Top = 130
  end
  object qryzzkcxx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from V_'#32455#36724#24211#23384#20449#24687)
    Left = 377
    Top = 276
  end
  object dszzkcxx: TDataSource
    DataSet = qryzzkcxx
    Left = 438
    Top = 278
  end
  object qryzzkcxxzj: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 513
    Top = 276
  end
  object qrywskc: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from V_'#32428#32433#24211#23384#20449#24687)
    Left = 374
    Top = 330
  end
  object dswskc: TDataSource
    DataSet = qrywskc
    Left = 441
    Top = 329
  end
  object qrywskczj: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 516
    Top = 331
  end
  object dsBOrderID: TDataSource
    DataSet = qryBOrderID
    Left = 119
    Top = 199
  end
end
