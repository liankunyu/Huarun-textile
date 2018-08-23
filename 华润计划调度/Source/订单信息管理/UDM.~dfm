object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 357
  Top = 146
  Height = 557
  Width = 717
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 8
  end
  object qryBCustomer: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#36141#24067#23458#25143#20449#24687#34920)
    Left = 584
    Top = 8
  end
  object dsBCustomer: TDataSource
    DataSet = qryBCustomer
    Left = 648
    Top = 8
  end
  object qryBUnApprovedOrderModify: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 186
    Top = 162
  end
  object qryBAutoOrderID: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 584
    Top = 72
  end
  object qrySCustomer: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#36141#32433#23458#25143#20449#24687#34920)
    Left = 480
    Top = 144
  end
  object dsSCustomer: TDataSource
    DataSet = qrySCustomer
    Left = 576
    Top = 144
  end
  object qryBCategory: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#26825#24067#22383#21035#34920)
    Left = 184
    Top = 72
  end
  object dsBCategory: TDataSource
    DataSet = qryBCategory
    Left = 264
    Top = 72
  end
  object qryBApprovedOrder: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 144
    Top = 8
  end
  object dsBApprovedOrder: TDataSource
    DataSet = qryBApprovedOrder
    Left = 255
    Top = 8
  end
  object qryBUnApprovedOrder: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from v_'#26825#24067#35746#21333#20449#24687'  where '#20844#21496#39046#23548#23457#25209#29366#24577'<>1')
    Left = 368
    Top = 8
  end
  object dsBUnApprovedOrder: TDataSource
    DataSet = qryBUnApprovedOrder
    Left = 480
    Top = 8
  end
  object qryBUnApprovedOrderDelete: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 352
    Top = 152
  end
  object spBApproveStateUpdate: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 178
    Top = 218
  end
  object spSApproveStateUpdate: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 263
    Top = 220
  end
  object qryBUnApprovedOrderInsert: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 64
    Top = 72
  end
  object qryBOrderExamine: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 366
    Top = 76
  end
  object dsBOrderExamine: TDataSource
    DataSet = qryBOrderExamine
    Left = 480
    Top = 72
  end
  object qryfrxBApprovedOrder: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 330
    Top = 283
  end
  object qryfrxBUnApprovedOrder: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 581
    Top = 223
  end
  object qrysbxx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 45
    Top = 296
  end
  object dssbxx: TDataSource
    DataSet = qrysbxx
    Left = 117
    Top = 298
  end
  object ADOQuerycw: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 194
    Top = 282
  end
  object DataSourcecw: TDataSource
    DataSet = ADOQuerycw
    Left = 265
    Top = 282
  end
  object ADOQueryzbgc: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 332
    Top = 206
  end
  object DataSourcezbgc: TDataSource
    DataSet = ADOQueryzbgc
    Left = 408
    Top = 287
  end
  object ADOQuerywlcg: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 568
    Top = 283
  end
  object DataSourcewlcg: TDataSource
    DataSet = ADOQuerywlcg
    Left = 601
    Top = 282
  end
  object ADOQueryldsh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 51
    Top = 365
  end
  object DataSourceldsh: TDataSource
    DataSet = ADOQueryldsh
    Left = 140
    Top = 367
  end
  object ADOQueryldsp: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 237
    Top = 365
  end
  object DataSourceldsp: TDataSource
    DataSet = ADOQueryldsp
    Left = 325
    Top = 361
  end
  object qrygsd: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 410
    Top = 331
  end
  object dsgsd: TDataSource
    DataSet = qrygsd
    Left = 468
    Top = 339
  end
  object qrygsdyxsh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 524
    Top = 337
  end
  object dsgsdyxsh: TDataSource
    DataSet = qrygsdyxsh
    Left = 582
    Top = 337
  end
  object qrygsdzbsh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 412
    Top = 389
  end
  object dsgsdzbsh: TDataSource
    DataSet = qrygsdzbsh
    Left = 462
    Top = 380
  end
  object qrygsdwlsh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 524
    Top = 422
  end
  object dsgsdwlsh: TDataSource
    DataSet = qrygsdwlsh
    Left = 593
    Top = 398
  end
  object qrygsdgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 636
    Top = 344
  end
  object spgsdyxsh: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 643
    Top = 428
  end
  object qryzfd: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 42
    Top = 419
  end
  object dszfd: TDataSource
    DataSet = qryzfd
    Left = 107
    Top = 419
  end
  object qryzfdxssh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 157
    Top = 417
  end
  object dszfdxssh: TDataSource
    DataSet = qryzfdxssh
    Left = 222
    Top = 417
  end
  object qryzfdgl: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 275
    Top = 421
  end
  object qryzfdldsh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 44
    Top = 469
  end
  object dszfdldsh: TDataSource
    DataSet = qryzfdldsh
    Left = 102
    Top = 468
  end
  object qryzfdfsyxbsh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 157
    Top = 470
  end
  object dszfdfsyxbsh: TDataSource
    DataSet = qryzfdfsyxbsh
    Left = 221
    Top = 472
  end
  object spzfdyxsh: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 278
    Top = 472
  end
  object qryzfdscglbsh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 332
    Top = 421
  end
  object dszfdscglbsh: TDataSource
    DataSet = qryzfdscglbsh
    Left = 383
    Top = 408
  end
  object qryzfdgssp: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 332
    Top = 469
  end
  object dszfdgssp: TDataSource
    DataSet = qryzfdgssp
    Left = 366
    Top = 468
  end
  object qrydy: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 36
    Top = 244
  end
  object qryqx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 39
    Top = 155
  end
  object qry1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 451
    Top = 450
  end
  object sp1: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 160
  end
  object qrydyzt: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 83
    Top = 239
  end
  object qry2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 507
    Top = 466
  end
  object qry3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 70
    Top = 121
  end
  object qryzfzt: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 259
    Top = 137
  end
  object dszfzt: TDataSource
    DataSet = qryzfzt
    Left = 306
    Top = 134
  end
  object qrytx: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 639
    Top = 118
  end
  object qry4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 437
    Top = 213
  end
  object qry5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 482
    Top = 211
  end
  object qry6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 437
    Top = 259
  end
  object qry7: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 479
    Top = 259
  end
  object qry8: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 498
    Top = 303
  end
  object qry9: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 523
    Top = 205
  end
  object qry10: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 574
    Top = 195
  end
end
