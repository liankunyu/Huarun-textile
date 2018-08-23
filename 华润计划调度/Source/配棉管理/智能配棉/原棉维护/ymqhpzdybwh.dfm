object FrmYmqhfpzdybwh: TFrmYmqhfpzdybwh
  Left = 427
  Top = 63
  Width = 733
  Height = 512
  Caption = #21069#21518#32442#21697#31181#23545#24212#34920#32500#25252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 725
    Height = 374
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource3
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellEndEllipsis = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Background = cxStyle1
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle10
      Styles.ContentOdd = cxStyle10
      Styles.Selection = cxStyle6
      Styles.Header = cxStyle8
      object cxGrid1DBTableView1DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #24207#21495
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #26041#26696#21495
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #36215#22987#26085#26399
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #32456#27490#26085#26399
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #20998#21378
      end
      object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #21069#32442#21697#31181
      end
      object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #32454#32433#21697#31181
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = #21407#26825#20135#22320#32500#25252
      GridView = cxGrid1DBTableView1
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 374
    Width = 725
    Height = 50
    Align = alBottom
    BorderOuter = fsNone
    Color = clSkyBlue
    TabOrder = 1
    object RzLabel11: TRzLabel
      Left = 206
      Top = 16
      Width = 24
      Height = 13
      Caption = #20998#21378
    end
    object RzLabel1: TRzLabel
      Left = 358
      Top = 16
      Width = 48
      Height = 13
      Caption = #21069#32442#21697#31181
    end
    object RzLabel2: TRzLabel
      Left = 550
      Top = 16
      Width = 36
      Height = 13
      Caption = #26041#26696#21495
    end
    object RzLabel3: TRzLabel
      Left = 22
      Top = 16
      Width = 48
      Height = 13
      Caption = #36215#22987#26085#26399
    end
    object RzEdit2: TRzEdit
      Left = 608
      Top = 16
      Width = 89
      Height = 21
      TabOrder = 0
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 248
      Top = 16
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = #22791#27880
      Properties.ListColumns = <
        item
          FieldName = #22791#27880
        end>
      Properties.ListSource = DM.ds2
      TabOrder = 1
      Width = 89
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 432
      Top = 16
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = #22791#27880
      Properties.ListColumns = <
        item
          FieldName = #22791#27880
        end>
      Properties.ListSource = DM.ds2
      TabOrder = 2
      Width = 89
    end
    object DateTimePicker3: TDateTimePicker
      Left = 84
      Top = 12
      Width = 101
      Height = 21
      Date = 40847.451858356480000000
      Time = 40847.451858356480000000
      Enabled = False
      TabOrder = 3
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 424
    Width = 725
    Height = 54
    Align = alBottom
    BorderInner = fsButtonDown
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clSkyBlue
    GradientColorStop = clTeal
    GradientDirection = gdDiagonalDown
    TabOrder = 2
    VisualStyle = vsGradient
    object bquery: TRzBitBtn
      Left = 176
      Top = 16
      Width = 104
      Height = 24
      FrameColor = clMaroon
      Caption = #12304#26597#35810#12305
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = bqueryClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183FF00FFFF00FFFF00FF636E7BFEEED4F7E3C5F6DFBCF5DBB4F3
        D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FF5E98C7
        3489D07F859DF6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
        97F3D199B78183FF00FFFF00FFFF00FF4BB6FF288BE0858498F5E3CBF5DFC3F3
        DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
        B481764DB5FF278BDE79819AF6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
        99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF44CB9FF5A91BFA48179BE
        978EAC7E79BE9589D6B49BF1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
        BA8E85FFFFFDFBF4ECBFA19FC7A59CE1C9B8F2DFC6E0C3ADC59F90D7B49BF0D4
        A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5C09C97E3CEC4F9
        EADAF8E7D2FFFFF7E0C2ADBE9589F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
        CB9A82FFFFFFFFFEFDAC7F7BF8EEE7F9EFE3F8EADAFFFFF0F3DEC7AC7E79F4DB
        B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFC19F9CE6D6D1FB
        F3EBFAEFE2FFFFDEE2C8B8BE978DF7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
        DCA887FFFFFFFFFFFFDFCDCBC9ACA9E6D6D1F8EEE6E3CEC4C7A59CC3A394E6D9
        C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFDFCDCBC1
        9F9CAC7F7BC09D97D6BAB1B8857AB8857AB8857AB78183FF00FFFF00FFFF00FF
        E3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B8857AE8B2
        70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
        EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
        86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
        A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
    end
    object breturn: TRzBitBtn
      Left = 448
      Top = 16
      Width = 104
      Height = 24
      FrameColor = clTeal
      Caption = #12304#36820#22238#12305
      Color = 15791348
      HotTrack = True
      TabOrder = 1
      OnClick = breturnClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF7F4026814125814125814125814125814125FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824125814125CB6600CB6600CB
        6600CB6600CB6600CB6600814125814125FF00FFFF00FFFF00FFFF00FFFF00FF
        9B4E18C56203CA6500CA6500CA6500CA6500CA6500CB6600CB6600CB6600C563
        03814125FF00FFFF00FFFF00FF994D19C46202C86300C66100C66100C66100C6
        6100C86300C96400CB6600CB6600CB6600C56303814125FF00FFFF00FFBB5D06
        C66201C46002C25E02BF5B02CE833FD6955AD8975BD68F4BD07720CB6600CB66
        00CB6600824125FF00FFA85411C96707C7680AC56809C26608C16405E7C3A0FE
        FEFEFEFEFEFEFEFEFEFEFEDB9957CB6600CB6600CB66007F4026AC570FCD7114
        CA7218C8721AC7711AC56F17C56F18C6711CC46E1AC56D1EE4B78DFEFEFECA65
        00CB6600CB6600824125AB5812D48434CF7F2ECD7E2DCD7F2FCC7D2CEACCACC6
        7019C2680CBF6003C66915FEFEFECA6500CB6600CB6600824125AC5915DEA264
        D7934DD38B41D48D44ECCFB1FEFEFECB7B2AC67019C3670BD7985DFEFEFECA65
        00CB6600CB6600824125AA5711E6B482E3B17CDA9854F4E0CCFEFEFEFEFEFEF8
        EEE3F3E1CFF2DFCCFEFEFEE5B88DCA6500CB6600CB6600824125AA550EE7B27D
        F0D3B5E5B079F5E1CCFEFEFEFEFEFEF4E2D0EBCBABE9C7A4DB9E60C76303CA65
        00CB6600CB66007F4026FF00FFAF6221F3D9BFF4D9BEEABB8BF2D8BDFEFEFED5
        8E45D08232CD7720CB6F11CA6604CA6500CB6600824125FF00FFFF00FFAA550E
        E9B782F8E7D5F6DFC8E9BB8BEFCFAED78F45D38433D07A22CF7417CB6808CB66
        00C563037D3F27FF00FFFF00FFFF00FFAB5610EBB986F6E0CAF7E6D4F0D1B1E8
        B98AE3AA71DFA060D98F44CE7111C563038F481EFF00FFFF00FFFF00FFFF00FF
        FF00FFAC570FB36728ECBC8BF0CBA6EECAA4EABC8EE1A263D47E28B05C158945
        21FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE5911B05D17B2
        611DB1601AB05B149C5019FF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 176
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientActiveCaption
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnHighlight
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGreen
      TextColor = clBackground
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clCaptionText
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = clOlive
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = clNavy
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor]
      Color = clTeal
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor]
      Color = clGray
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.con1
    Parameters = <>
    SQL.Strings = (
      'select distinct '#20998#21378
      'from fg50'#21069#21518#32442#20135#21697#23545#24212#34920)
    Left = 248
    Top = 359
  end
  object ADOQuery2: TADOQuery
    Connection = DM.con1
    Parameters = <>
    SQL.Strings = (
      'select distinct '#21069#32442#21697#31181
      'from fg50'#21069#21518#32442#20135#21697#23545#24212#34920)
    Left = 440
    Top = 359
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 288
    Top = 360
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 480
    Top = 360
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 152
    Top = 176
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = DM.con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from fg50'#21069#21518#32442#20135#21697#23545#24212#34920
      'where not('#24207#21495' is null)')
    Left = 104
    Top = 176
  end
end
