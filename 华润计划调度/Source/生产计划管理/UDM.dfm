object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 506
  Top = 90
  Height = 481
  Width = 624
  object con1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
  object qryBVarietiesTurn: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    Left = 136
    Top = 16
  end
  object dsBVarietiesTurn: TDataSource
    DataSet = qryBVarietiesTurn
    Left = 248
    Top = 16
  end
  object qryBProductionPlan: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 128
    Top = 87
  end
  object dsBProductionPlan: TDataSource
    DataSet = qryBProductionPlan
    Left = 232
    Top = 88
  end
  object qryBProductionPlanModify: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    Left = 344
    Top = 88
  end
  object qryBProductionPlanInsert: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 360
    Top = 16
  end
  object spBPlanAddStateUpdate: TADOStoredProc
    Connection = con1
    Parameters = <>
    Left = 128
    Top = 224
  end
  object qryBXX: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 128
    Top = 152
  end
  object dsBXX: TDataSource
    DataSet = qryBXX
    Left = 208
    Top = 152
  end
  object spBProductNameAdd: TADOStoredProc
    Connection = con1
    Parameters = <>
    Left = 240
    Top = 224
  end
  object qryBShutDownDaysQuery: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 344
    Top = 152
  end
  object qryBSchedulingInsert: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 352
    Top = 224
  end
  object qryBWhetherHasRecords: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 124
    Top = 307
  end
  object sp1: TADOStoredProc
    Connection = con1
    Parameters = <>
    Left = 472
    Top = 232
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 456
    Top = 128
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 544
    Top = 152
  end
  object qry3: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 37
    Top = 182
  end
  object qry4: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 37
    Top = 260
  end
  object qry2: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 292
    Top = 332
  end
  object qry5: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 338
    Top = 332
  end
  object qry6: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 386
    Top = 338
  end
  object qry7: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    Left = 533
    Top = 53
  end
  object qry8: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 46
    Top = 321
  end
end
