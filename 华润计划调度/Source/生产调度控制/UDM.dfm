object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 435
  Top = 138
  Height = 523
  Width = 743
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 39
    Top = 24
  end
  object qryWeavingDynamicInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from v_'#32455#24067#29983#20135#21160#24577#20449#24687' order by '#35746#21333#21495)
    Left = 151
    Top = 14
  end
  object dsWeavingDynamicInfo: TDataSource
    DataSet = qryWeavingDynamicInfo
    Left = 288
    Top = 8
  end
  object qryWeavingDynamicInfoDelete: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 144
    Top = 168
  end
  object qryBWhetherHasRecords: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 288
    Top = 168
  end
  object qryWeavingDynamicInfoModify: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 448
    Top = 24
  end
  object dsBCustomerInfo: TDataSource
    DataSet = qryBCustomerInfo
    Left = 528
    Top = 96
  end
  object qryBCustomerInfo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 424
    Top = 96
  end
  object spBFinishStateUpdate: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 40
    Top = 120
  end
  object qryBOrderAmountQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 416
    Top = 168
  end
  object qryscjh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 171
    Top = 126
  end
  object dsscjh: TDataSource
    DataSet = qryscjh
    Left = 212
    Top = 123
  end
  object qryBOrderID: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforeOpen = qryBOrderIDBeforeOpen
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#29983#20135#35745#21010#20449#24687' where ('#35746#21333#21495' in (select '#35746#21333#21495' from '#26825#24067#35746#21333#20449#24687#34920' ' +
        'where '#20837#24211#29366#24577'=0))  and NOT ('#35745#21010#19978#26426#36827#24230' IS NULL) order by '#21697#21517)
    Left = 13
    Top = 369
  end
  object qryBFinishStateQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 560
    Top = 168
  end
  object qryBScheduling: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 40
    Top = 248
  end
  object dsBScheduling: TDataSource
    DataSet = qryBScheduling
    Left = 128
    Top = 248
  end
  object qrySchedulingModify: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 272
    Top = 248
  end
  object qryqrySchedulingDelete: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 392
    Top = 248
  end
  object qryBShutDownDaysQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 536
    Top = 248
  end
  object spBMachineStateUpdate: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 42
    Top = 311
  end
  object dsBOrderID: TDataSource
    DataSet = qryBOrderID
    Left = 106
    Top = 376
  end
  object qryzjxx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#25972#32463#20449#24687' order by '#21697#21517)
    Left = 270
    Top = 368
  end
  object dsBzjxx: TDataSource
    DataSet = qryzjxx
    Left = 306
    Top = 372
  end
  object qryzzdtxx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from V_'#36710#21488#32455#36724#21160#24577' order by '#24320#22987#26085#26399)
    Left = 345
    Top = 82
  end
  object qryzbdt: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from V_'#36710#21488#32455#36724#21160#24577' order by '#24320#22987#26085#26399)
    Left = 95
    Top = 70
  end
  object qrysbxx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 129
    Top = 305
  end
  object qrydy: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 182
    Top = 308
  end
  object qrydsdd: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#29983#20135#35745#21010#20449#24687' where ('#35746#21333#21495' in (select '#35746#21333#21495' from '#26825#24067#35746#21333#20449#24687#34920' ' +
        'where '#20837#24211#29366#24577'=0 and '#19978#26426#29366#24577'=0 and '#32455#36896#29366#24577'=0 and '#20316#24223#29366#24577'=0))  and NOT ('#35745#21010#19978#26426#36827#24230 +
        ' IS NULL) order by '#21697#21517
      '')
    Left = 57
    Top = 420
  end
  object dsBdsdd: TDataSource
    DataSet = qrydsdd
    Left = 109
    Top = 429
  end
  object dsBtlscdd: TDataSource
    DataSet = qrytlscdd
    Left = 228
    Top = 367
  end
  object dsBljdd: TDataSource
    DataSet = qryljdd
    Left = 270
    Top = 427
  end
  object qrytlscdd: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#29983#20135#35745#21010#20449#24687' where ('#35746#21333#21495' in (select '#35746#21333#21495' from '#26825#24067#35746#21333#20449#24687#34920' ' +
        'where '#20837#24211#29366#24577'=0 and '#19978#26426#29366#24577'=1 and '#23436#25104#29366#24577'=0 and '#32455#36896#29366#24577'=0 and '#20316#24223#29366#24577'=0))  and ' +
        'NOT ('#35745#21010#19978#26426#36827#24230' IS NULL) order by '#21697#21517)
    Left = 174
    Top = 374
  end
  object qryljdd: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#29983#20135#35745#21010#20449#24687' where ('#35746#21333#21495' in (select '#35746#21333#21495' from '#26825#24067#35746#21333#20449#24687#34920' ' +
        'where '#20837#24211#29366#24577'=0 and '#23436#25104#29366#24577'=1 and '#20316#24223#29366#24577'=0))  and NOT ('#35745#21010#19978#26426#36827#24230' IS NULL) o' +
        'rder by '#21697#21517)
    Left = 210
    Top = 431
  end
  object qryjsyxgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32463#32433#33829#38144#31649#29702)
    Left = 329
    Top = 330
  end
  object qrywsyxgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32428#32433#33829#38144#31649#29702)
    Left = 445
    Top = 333
  end
  object qryjsgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32463#32433#31649#29702' order by '#20379#24212#21830)
    Left = 559
    Top = 327
  end
  object qrywsgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#32428#32433#31649#29702' order by '#20379#24212#21830)
    Left = 652
    Top = 323
  end
  object qry5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 390
    Top = 385
  end
  object qry6: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 464
    Top = 396
  end
  object dsBjsyxgl: TDataSource
    DataSet = qryjsyxgl
    Left = 384
    Top = 330
  end
  object dsBwsyxgl: TDataSource
    DataSet = qrywsyxgl
    Left = 494
    Top = 330
  end
  object dsBjsgl: TDataSource
    DataSet = qryjsgl
    Left = 593
    Top = 328
  end
  object dsBwsgl: TDataSource
    DataSet = qrywsgl
    Left = 684
    Top = 324
  end
  object ds5: TDataSource
    DataSet = qry5
    Left = 422
    Top = 386
  end
  object ds6: TDataSource
    DataSet = qry6
    Left = 496
    Top = 391
  end
  object qry1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 560
    Top = 385
  end
  object qry2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 597
    Top = 385
  end
  object qryddsczj: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#35746#21333#29983#20135#24635#32467' order by '#21697#21517)
    Left = 338
    Top = 433
  end
  object dsBddsczj: TDataSource
    DataSet = qryddsczj
    Left = 401
    Top = 434
  end
  object qryjtxx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 621
    Top = 67
  end
  object dsjtxx: TDataSource
    DataSet = qryjtxx
    Left = 674
    Top = 67
  end
  object qry3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 656
    Top = 253
  end
  object qry4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 637
    Top = 136
  end
  object qry7: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 657
    Top = 196
  end
  object sp1: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 115
    Top = 120
  end
  object qry8: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 683
    Top = 130
  end
  object qry9: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 694
    Top = 199
  end
  object qrycjly: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 652
    Top = 385
  end
  object qry10: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 494
    Top = 439
  end
  object qry11: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 525
    Top = 437
  end
  object qryzzdd: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from v_'#26825#24067#29983#20135#35745#21010#20449#24687' where ('#35746#21333#21495' in (select '#35746#21333#21495' from '#26825#24067#35746#21333#20449#24687#34920' ' +
        'where '#20837#24211#29366#24577'=0 and '#32455#36896#29366#24577'=1 and '#23436#25104#29366#24577'=0 and '#20316#24223#29366#24577'=0))  and NOT ('#35745#21010#19978#26426#36827#24230 +
        ' IS NULL) order by '#21697#21517)
    Left = 587
    Top = 438
  end
  object dszzdd: TDataSource
    DataSet = qryzzdd
    Left = 639
    Top = 439
  end
  object qry12: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 242
    Top = 320
  end
  object TDataSource
    DataSet = qryzzdd
    Left = 253
    Top = 74
  end
  object qry13: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 611
    Top = 232
  end
  object qry14: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 206
    Top = 217
  end
  object qry15: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 568
    Top = 12
  end
end
