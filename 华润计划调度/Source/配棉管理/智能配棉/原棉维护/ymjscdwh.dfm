object FrmYmjscdwh: TFrmYmjscdwh
  Left = 305
  Top = 94
  Width = 691
  Height = 470
  Caption = #21407#26825#25216#26415#38271#24230#32500#25252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 683
    Height = 370
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds1
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
        Width = 73
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        Width = 82
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #25216#26415#21697#32423
        Width = 89
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #23545#24212#38271#24230
        Width = 89
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #36215#22987#38271#24230
        Width = 86
      end
      object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #26631#24535#19968
        Width = 89
      end
      object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #32456#27490#38271#24230
        Width = 88
      end
      object cxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #26631#24535#20108
        Width = 89
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = #21407#26825#20135#22320#32500#25252
      GridView = cxGrid1DBTableView1
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 370
    Width = 683
    Height = 66
    Align = alBottom
    BorderInner = fsButtonDown
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clSkyBlue
    GradientColorStop = clTeal
    GradientDirection = gdDiagonalDown
    TabOrder = 1
    VisualStyle = vsGradient
    object breturn: TRzBitBtn
      Left = 552
      Top = 24
      Width = 104
      Height = 24
      FrameColor = clTeal
      Caption = #12304#36820#22238#12305
      Color = 15791348
      HotTrack = True
      TabOrder = 0
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
    Left = 136
    Top = 120
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
  object tbl1: TADOTable
    Active = True
    Connection = DM.con1
    CursorType = ctStatic
    TableName = 'FG11'#21407#26825#25216#26415#38271#24230#32500#25252#34920
    Left = 208
    Top = 112
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 256
    Top = 112
  end
end
