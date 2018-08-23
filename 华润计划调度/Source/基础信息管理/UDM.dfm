object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 367
  Top = 86
  Height = 490
  Width = 767
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object qryYarnInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 320
    Top = 24
  end
  object dsYarnInfo: TDataSource
    DataSet = qryYarnInfo
    Left = 392
    Top = 24
  end
  object qryBCategory: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#26825#24067#22383#21035#34920' order by '#32534#21495)
    Left = 32
    Top = 104
  end
  object dsBCategory: TDataSource
    DataSet = qryBCategory
    Left = 96
    Top = 104
  end
  object qryDep: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#37096#38376#20449#24687#34920'  ')
    Left = 160
    Top = 96
  end
  object dsDep: TDataSource
    DataSet = qryDep
    Left = 208
    Top = 96
  end
  object qryBCustomer: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#36141#24067#23458#25143#20449#24687#34920' order by '#23458#25143#21495)
    Left = 288
    Top = 96
  end
  object dsBCustomer: TDataSource
    DataSet = qryBCustomer
    Left = 360
    Top = 96
  end
  object qrySCustomer: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#36141#32433#23458#25143#20449#24687#34920' order by '#23458#25143#21495)
    Left = 192
    Top = 168
  end
  object dsSCustomer: TDataSource
    DataSet = qrySCustomer
    Left = 312
    Top = 176
  end
  object qryBCustomerModify: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32433#20379#24212#21830#20449#24687#34920' order by '#20379#24212#21830#32534#21495)
    Left = 432
    Top = 96
  end
  object qrySCustomerModify: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32433#20379#24212#21830#20449#24687#34920' order by '#20379#24212#21830#32534#21495)
    Left = 432
    Top = 176
  end
  object qryGreyInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#26825#24067#20449#24687#34920' order by '#21697#21517)
    Left = 144
    Top = 16
  end
  object dsGreyInfo: TDataSource
    DataSet = qryGreyInfo
    Left = 232
    Top = 24
  end
  object qryBCraftInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 24
    Top = 184
  end
  object dsBCraftInfo: TDataSource
    DataSet = qryBCraftInfo
    Left = 88
    Top = 184
  end
  object qryBCraftTurn: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 184
    Top = 328
  end
  object dsBCraftTurn: TDataSource
    DataSet = qryBCraftTurn
    Left = 303
    Top = 312
  end
  object qrySCraftInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 24
    Top = 256
  end
  object dsSCraftInfo: TDataSource
    DataSet = qrySCraftInfo
    Left = 88
    Top = 256
  end
  object qrySCraftTurn: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 24
    Top = 328
  end
  object dsSCraftTurn: TDataSource
    DataSet = qrySCraftTurn
    Left = 96
    Top = 328
  end
  object spBCraftStateUpdate: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 385
    Top = 314
  end
  object qryBCraftInfoInsert: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#26825#24067#24037#33402#34920)
    Left = 192
    Top = 240
  end
  object dsBCraftInfoInsert: TDataSource
    DataSet = qryBCraftInfoInsert
    Left = 312
    Top = 240
  end
  object spBExamineStateUpdate: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 497
    Top = 320
  end
  object qryCraftInfoPrint: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 416
    Top = 256
  end
  object qryBCraftInfoDelete: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 512
    Top = 264
  end
  object qryProductNameWhetherInOrderInfo: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 584
    Top = 24
  end
  object qryProductNameWhetherInCraftInfo: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 592
    Top = 88
  end
  object qryCraftInProductionInfo: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 600
    Top = 160
  end
  object qrygyhz: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from '#26825#24067#24037#33402#34920' order by '#35268#26684)
    Left = 600
    Top = 240
  end
  object dsgyhz: TDataSource
    DataSet = qrygyhz
    Left = 668
    Top = 237
  end
  object qryzw: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32844#21153#34920'  ')
    Left = 602
    Top = 309
  end
  object dszw: TDataSource
    DataSet = qryzw
    Left = 663
    Top = 307
  end
  object qryqx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 494
    Top = 163
  end
  object qry1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 243
    Top = 319
  end
  object qryjsyxgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32463#32433#33829#38144#31649#29702)
    Left = 10
    Top = 393
  end
  object dsjsyxgl: TDataSource
    DataSet = qryjsyxgl
    Left = 50
    Top = 392
  end
  object qryjscg: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32463#32433#37319#36141' order by '#20379#24212#21830)
    Left = 112
    Top = 394
  end
  object dsjscg: TDataSource
    DataSet = qryjscg
    Left = 148
    Top = 393
  end
  object qry2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 201
    Top = 395
  end
  object qry3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 236
    Top = 397
  end
  object qrywsyxgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32428#32433#33829#38144#31649#29702)
    Left = 268
    Top = 367
  end
  object dswsyxgl: TDataSource
    DataSet = qrywsyxgl
    Left = 306
    Top = 403
  end
  object qrywscg: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32428#32433#37319#36141' order by '#20379#24212#21830)
    Left = 362
    Top = 374
  end
  object dswscg: TDataSource
    DataSet = qrywscg
    Left = 427
    Top = 393
  end
  object qry4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 484
    Top = 395
  end
  object qry5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 519
    Top = 397
  end
  object qryzzjl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#29983#20135#35745#21010#20449#24687' where ('#35746#21333#21495' in (select '#35746#21333#21495' from '#26825#24067#35746#21333#20449#24687#34920' ' +
        'where '#20837#24211#29366#24577'=0 and '#19978#26426#29366#24577'=1 and '#23436#25104#29366#24577'=0 and '#20316#24223#29366#24577'=0))  and NOT ('#35745#21010#19978#26426#36827#24230 +
        ' IS NULL) order by '#21697#21517
      '')
    Left = 566
    Top = 389
  end
  object dszzjl: TDataSource
    DataSet = qryzzjl
    Left = 596
    Top = 388
  end
  object qry6: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 629
    Top = 386
  end
  object qry7: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 667
    Top = 393
  end
  object qry8: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 705
    Top = 363
  end
  object qry9: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 706
    Top = 403
  end
  object qrypmpd: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 704
    Top = 158
  end
end
