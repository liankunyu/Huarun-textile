object Fxxcx: TFxxcx
  Left = 192
  Top = 138
  Width = 753
  Height = 516
  Caption = #21697#31181#32763#25913#21450#35843#24230#20449#24687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rzpnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 219
    Align = alTop
    BorderOuter = fsGroove
    Color = clSkyBlue
    TabOrder = 0
    object lblSpecification: TRzLabel
      Left = 9
      Top = 99
      Width = 52
      Height = 13
      Caption = #19979#26426#21697#31181':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDeliveryTimeAndAmount: TRzLabel
      Left = 24
      Top = 155
      Width = 28
      Height = 13
      Caption = #19978#26426':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblEfficiency: TRzLabel
      Left = 377
      Top = 100
      Width = 28
      Height = 13
      Caption = #25467#24230':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblMachineTime: TRzLabel
      Left = 560
      Top = 99
      Width = 28
      Height = 13
      Caption = #31570#37325':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDeliveryTime: TRzLabel
      Left = 208
      Top = 99
      Width = 28
      Height = 13
      Caption = #31995#25968':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 102
      Height = 13
      Caption = #32433#21697#31181#32763#25913#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 72
      Top = 96
      Width = 121
      Height = 21
      DataField = #19979#26426#21697#31181
      Enabled = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 240
      Top = 96
      Width = 121
      Height = 21
      DataField = #31995#25968
      Enabled = False
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 424
      Top = 96
      Width = 121
      Height = 21
      DataField = #25467#24230
      Enabled = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 600
      Top = 96
      Width = 121
      Height = 21
      DataField = #31570#37325
      Enabled = False
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 72
      Top = 144
      Width = 289
      Height = 49
      DataField = #19978#26426
      Enabled = False
      TabOrder = 4
    end
    object rzgrpbxQueryCondition: TRzGroupBox
      Left = 184
      Top = 8
      Width = 345
      Height = 57
      Caption = #35746#21333#20449#24687
      Color = clSkyBlue
      FlatColor = clActiveBorder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GradientColorStyle = gcsCustom
      GradientColorStop = clSkyBlue
      GroupStyle = gsStandard
      ParentFont = False
      TabOrder = 5
      VisualStyle = vsGradient
      object RzLabel1: TRzLabel
        Left = 8
        Top = 26
        Width = 39
        Height = 13
        Caption = #35746#21333#21495':'
      end
      object lblProductName1: TRzLabel
        Left = 188
        Top = 26
        Width = 27
        Height = 13
        Caption = #35268#26684':'
      end
      object edtOrderID: TRzEdit
        Left = 53
        Top = 20
        Width = 116
        Height = 21
        Enabled = False
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ReadOnly = True
        TabOrder = 0
      end
      object edtgg: TRzEdit
        Left = 224
        Top = 20
        Width = 113
        Height = 21
        Enabled = False
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 219
    Width = 745
    Height = 263
    Align = alClient
    BorderOuter = fsGroove
    Color = clSkyBlue
    TabOrder = 1
    object RzLabel2: TRzLabel
      Left = 9
      Top = 35
      Width = 24
      Height = 13
      Caption = #23450#37327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel3: TRzLabel
      Left = 384
      Top = 131
      Width = 36
      Height = 26
      Caption = #21464#26356#39033#13#10#30446#21517#31216
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel4: TRzLabel
      Left = 377
      Top = 36
      Width = 40
      Height = 13
      Caption = #38189#25968'/'#21488
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel5: TRzLabel
      Left = 544
      Top = 35
      Width = 48
      Height = 13
      Caption = #32599#25289#30452#24452
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel6: TRzLabel
      Left = 176
      Top = 35
      Width = 72
      Height = 13
      Caption = #21697#22343#21495#25968#20998#37327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel8: TRzLabel
      Left = 200
      Top = 83
      Width = 24
      Height = 13
      Caption = #36895#24230
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel9: TRzLabel
      Left = 8
      Top = 91
      Width = 36
      Height = 13
      Caption = #25467#32553#29575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel10: TRzLabel
      Left = 376
      Top = 88
      Width = 52
      Height = 13
      Caption = #39033#30446'/'#25903#21035
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel11: TRzLabel
      Left = 16
      Top = 152
      Width = 24
      Height = 13
      Caption = #26426#21495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel12: TRzLabel
      Left = 200
      Top = 136
      Width = 24
      Height = 13
      Caption = #21488#25968
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel13: TRzLabel
      Left = 560
      Top = 88
      Width = 24
      Height = 13
      Caption = #26426#22411
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel14: TRzLabel
      Left = 560
      Top = 144
      Width = 36
      Height = 13
      Caption = #21407#25968#25454
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel15: TRzLabel
      Left = 8
      Top = 208
      Width = 36
      Height = 13
      Caption = #25913#25968#25454
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel16: TRzLabel
      Left = 208
      Top = 208
      Width = 24
      Height = 13
      Caption = #22791#27880
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 96
      Height = 13
      Caption = #32433#35843#24230#36890#30693#21333#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnExit: TRzToolButton
      Left = 620
      Top = 196
      Width = 100
      Height = 33
      GradientColorStyle = gcsCustom
      SelectionColorStart = clHighlight
      SelectionColorStop = clCaptionText
      SelectionFrameColor = clHighlight
      ImageIndex = 6
      Images = cxImageList1
      ShowCaption = True
      UseToolbarButtonLayout = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsGradient
      Caption = #36864#20986
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 32
      Width = 121
      Height = 21
      DataField = #23450#37327
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 248
      Top = 32
      Width = 121
      Height = 21
      DataField = #24179#22343#21495#25968#20998#37327
      Enabled = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 30
      Width = 121
      Height = 21
      DataField = #38189#25968'/'#21488
      Enabled = False
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 600
      Top = 30
      Width = 121
      Height = 21
      DataField = #32599#25289#30452#24452
      Enabled = False
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 48
      Top = 88
      Width = 121
      Height = 21
      DataField = #25467#32553#29575
      Enabled = False
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 248
      Top = 82
      Width = 121
      Height = 21
      DataField = #36895#24230
      Enabled = False
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 424
      Top = 84
      Width = 121
      Height = 21
      DataField = #39033#30446'/'#25903#21035
      Enabled = False
      TabOrder = 6
    end
    object DBEdit12: TDBEdit
      Left = 600
      Top = 84
      Width = 121
      Height = 21
      DataField = #26426#22411
      Enabled = False
      TabOrder = 7
    end
    object DBEdit13: TDBEdit
      Left = 48
      Top = 144
      Width = 121
      Height = 21
      DataField = #26426#21495
      Enabled = False
      TabOrder = 8
    end
    object DBEdit14: TDBEdit
      Left = 248
      Top = 133
      Width = 121
      Height = 21
      DataField = #21488#25968
      Enabled = False
      TabOrder = 9
    end
    object DBEdit15: TDBEdit
      Left = 424
      Top = 137
      Width = 121
      Height = 21
      DataField = #32534#21495
      Enabled = False
      TabOrder = 10
    end
    object DBEdit16: TDBEdit
      Left = 600
      Top = 137
      Width = 121
      Height = 21
      DataField = #21407#25968#25454
      Enabled = False
      TabOrder = 11
    end
    object DBEdit17: TDBEdit
      Left = 48
      Top = 200
      Width = 121
      Height = 21
      DataField = #25913#25968#25454
      Enabled = False
      TabOrder = 12
    end
    object DBMemo2: TDBMemo
      Left = 248
      Top = 184
      Width = 297
      Height = 49
      DataField = #22791#27880
      Enabled = False
      TabOrder = 13
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 23068776
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FDFEFD00AF98
          9400F3ECE500FEF6E400FEF6E400F3ECE500129A1F00129A1F00129A1F00129A
          1F0077BB7E00FDE9CB00FDE9CB00FBD6AF0039C7670039C76700FFFFFF00AF98
          9400E0DEDB00FEF6E400FEF6E400FEF6E400129A1F00129A1F00129A1F00129A
          1F00129A1F00129A1F00FDE9CB00FDE9CB00FBD6AF00129A1F00FDFEFD00AF98
          9400F3ECE500FEF6E400FEF6E400FEF6E400FEF6E400FEF6E400F3ECE500FEF6
          E400FDE9CB00FDE9CB00FDE9CB00FDE9CB00FDE9CB00FDE9CB00FFFFFF00E0AD
          8C00F3ECE500FDFEFD00FEF6E40077BB7E00FEF6E400FEF6E400FEF6E400FEF6
          E400FDE9CB00FDE9CB00FDE9CB00FDE9CB00FDE9CB00FDE9CB00FFFFFF00AF98
          9400F0F0F000FDFEFD00FDFEFD0077BB7E009EDBAC00FEF6E400FEF6E400F3EC
          E500129A1F00129A1F00129A1F00129A1F00129A1F00FDE9CB00FFFFFF00E0AD
          8C00F0F0F000FDFEFD00FDFEFD00E0DEDB00129A1F009EDBAC00FEF6E400FEF6
          E400FDE9CB00129A1F00129A1F00129A1F00129A1F00FDE9CB00FFFFFF00AF98
          9400F0F0F000FFFFFF00FFFFFF00FDFEFD00129A1F00129A1F0077BB7E00E0DE
          DB00FDE9CB00129A1F00129A1F00129A1F00129A1F00F3ECE500FDFEFD00E0AD
          8C00F0F0F000FFFFFF00FDFEFD00FFFFFF00E0DEDB00129A1F00129A1F00129A
          1F00129A1F00129A1F00129A1F00129A1F00129A1F00FDE9CB00FDFEFD00E0AD
          8C00F0F0F000FFFFFF00FFFFFF00FFFFFF00FDFEFD009EDBAC00129A1F00129A
          1F00129A1F00129A1F00129A1F00129A1F00129A1F00FDE9CB00FFFFFF00E0AD
          8C00ECFBFB00FFFFFF00FDFEFD00FFFFFF00FFFFFF00FDFEFD00E0DEDB0077BB
          7E0039C7670039C7670077BB7E00FDE9CB00129A1F00F4CAC000FFFFFF00E0AD
          8C00FDFEFD00FFFFFF00FDFEFD00FFFFFF00FFFFFF00FDFEFD00FDFEFD00FDFE
          FD00FEF6E400FEF6E400FEF6E400FEF6E400FEF6E400AB706800FFFFFF00E0AD
          8C00FDFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FDFEFD00FDFEFD00FEF6E400FDFEFD00FEF6E400AB706800FFFFFF00E0AD
          8C00FDFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
          FF00FFFFFF00FDFEFD00FDFEFD00FDFEFD00FDFEFD00AB706800FFFFFF00E0AD
          8C00FFFFFF00FDFEFD00FDFEFD00FDFEFD00FDFEFD00FDFEFD00F0F0F000F0F0
          F000F0F0F000F0F0F000F0F0F000F3ECE500F3ECE500AB706800FFFFFF00E0AD
          8C00E0AD8C00E0AD8C00E0AD8C00E0AD8C00E0AD8C00E0AD8C00E0AD8C00E0AD
          8C00E0AD8C00E0AD8C00E0AD8C00E0AD8C00E0AD8C00AB706800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = 16645885
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E1DCE000B6B2B500A6AAA600A6ABA600B6B3
          B600E3DEE300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
          FE00FFFFFF00F1EEF00078817B00387447001D85330013852500158320002280
          27003D6F3D007C827B00F2EFF200FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
          FF00CBC8CA003565470018AC480023C448002BBF37002BBA2C002CB929002EBA
          2D002BB82C00239A21003C5F3A00CDCBCD00FFFFFF00FFFFFF00FFFFFF00ECE8
          EA003167490015BD580028C648002DB82F003DBA360066C8600066C860003DBA
          37002EB62C002FBB300025A32100395F3700EDEBED00FFFFFF00FFFFFF006C7B
          740012BC610024CB54002CBC370028BB35005CCC6700F4FBF500F4FBF5005CCC
          670027BB35002BBC39002DBE3600249F2200707A7000FFFFFF00D9D2D5002C81
          590019D66D0027C3480027C1440023C0410058D06F00F5FCF600F5FCF60058D0
          6F0023C0410027C1440028C244002ABC330037713600D9D4D900B1AFB0000C9A
          5B001CD66C0024C7500091E3A700BCEDC900CAF1D400FBFEFC00FBFEFC00CAF1
          D400BCEDC90091E3A70023C8530028C545001E802200B1AFB100A5ACA900029F
          5D001CD9710020CD5C00C8F2D700FFFFFF00FFFFFF00FFFEFF00FFFEFF00FFFF
          FF00FFFFFF00C8F2D7001FCE5F0025CB520014821F00A5ABA500A5AAA60002A0
          600017DF7F001CD36A0082E7B000ABEFCA00BCF3D500FBFEFC00FBFEFC00BCF3
          D500ABEFCA0082E7AF001BD46D0023CE590013852400A5ABA500B1ACAB000C99
          590013E68E0018D9780011D773000AD66E0046E09200F4FDF800F4FDF80046E0
          92000AD66E0011D7730019D8770023CD580019852E00B1AEAF00D8D2D600317A
          47000DE8950013E28C0015DF850011DF83004AE6A100EDFCF500EDFCF5004AE6
          A10011DF840014E087001BD6700021CA530033753F00D8D2D700FFFFFF006E77
          6A0010C068000EEC9D0011E4910010E490001FE698004AEBAE004AECAE001EE6
          990010E4910016DC800020D3650019B147006D776C00FFFFFF00FFFFFF00EBE8
          EA0034623D000EC76F000EEC9D0010E695000FE695000CE695000CE5930011E2
          8D0019DA7A001CD9720015BD580034623E00EBE8EA00FFFFFF00FFFFFF00FFFF
          FF00CBC8C900366444000DBC6C000CE8980010EA970013E68F0015E3880015E1
          850011DF85000FB9640035654600CAC7C800FFFFFF00FFFFFF00FFFFFF00FEFE
          FE00FFFFFF00F1EEF00079827C00347D5B000BA1710000AE7F0000AF81000AA3
          7400327F5E0079827D00F1EDEF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E3DDDF00B7B1B300A6ADAB00A6ADAB00B7B1
          B300E3DCDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F6F800FAFBFD00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
          F800A4A4A4007A7A7A00797979008080800066605500675A41006A5E4700736F
          6700C0C0C100FCFCFE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00E6E6E6006969
          680091908B00BFBEBB00C5C4C000BEBEBC00A59E8D0095824F008E6D0F008659
          00005B3B0000645B4A00DCDDDF00FFFFFF00FFFFFF00FFFFFF008C8C8B008281
          7A00A19F960095814C00B2953B00C1AA5200D1C38C00DAD6C600C7C2B1009981
          590088560000784B000060554100DFE0E300FFFFFF00FFFFFF0062625F009695
          8F00715E2F00A57C0000C4A01800CFAF2C00D0B13700C3A13600C8B37700DBD7
          C300B6AC9D0089662400764E000070695A00FFFFFF00FFFFFF006F6F6E00817E
          740098731000C19C1A00D3B63B00D7BC4E00BE963700C4A04600CDAE4D00CCB2
          5C00D8D0AF00C6C3B8008F762900513A0200D7D8D900FFFFFF00AAABAD00594C
          2D00AE861300CEB03700DBC35B00CEAE5400BD903B00C8A24F00CCAA5700DDC7
          7200DAC36400D5C89400C5C3BA006E5B2D008B8A8900FFFFFF00D3D4D8006855
          2800B9942000D5BA4B00DCC66C00C9A55200D3AF6600D6B57200CDA85D00DBC5
          7C00E2CF7C00D8C05C00D3C9A000B1ADA40069686600FFFFFF00D9DBDE006E5B
          2F00BB982B00D8BF5A00E3D08300D5B86F00E0C68F00E2CA9600D4B67200CBAA
          5A00E0CD8500DFC96E00CBB25000CCC5AC0079787700BCBCBC00F0F1F300695C
          4100B4912C00D7BF6000E7D69000DCC48200E6D1A300E7D7AC00E3D2A000D7BF
          7A00E4D39200E1CD7800C8AA4000B9A672009E9D990086868600FFFFFF008482
          7F0094732300D1B75F00E0CE8600D7BF7600E1CE9500E4D39D00E7D9A900DBC6
          8600E7D79800DEC97900BA973A00927C4900B2B0AA0069696800FFFFFF00E1E2
          E30059482400BD9F5300DBC68200DBC68300EDE3B800EFE7C200E1D19500DCC9
          8800E4D49600D1B870009878340088806C009C9B950077777600FFFFFF00FFFF
          FF00AEADAD00614F2C00C4AC7400E1D1A200F0E7C500F2EBCE00F0E7C500EDE2
          BC00DBC79600B3966000988E76009190890061605C00C9C9CA00FFFFFF00FFFF
          FF00FFFFFF00B3B3B2005D50390099845B00D3C29F00E0D5B900DDD1B400C6B2
          8B00796541004B433400535351006F6F6D00C5C5C500FFFFFF00FFFFFF00FEFE
          FE00FFFFFF00FFFFFF00EAEBEC009A9A9A006D675D006F6553006D645400726F
          6900BDBEBE00F6F7F800F8F8F800FBFBFC00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F700F9FAFB00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FEFEFF00FAFAFF00F2F2FF00E6E6FF00E0DFFF00DFDFFF00E6E6
          FF00F1F1FF00FAFAFF00FEFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FDFDFF00F2F1FF00D4D4FF00ADADFE008688F4007276EE007176ED008486
          F400AAAAFE00D1D0FF00F0F0FF00FCFCFF00FFFFFF00FFFFFF00FFFFFF00FDFD
          FF00EBEBFF00B7B7FE006066E6003A4AD200435CD500516DDB00516CDA00445B
          D4003B4AD1005D62E500B2B2FE00E8E7FF00FDFDFF00FFFFFF00FFFFFF00F7F7
          FF00C1C1FE005156DA002F41C7005169DA006683EB006A8CF1006A8AF0006580
          E9005268D8003241C4004B50D700BABAFE00F5F5FF00FFFFFF00FFFFFF00EEEE
          FF00676BDD001E2BB9004457D5005D75E7005677EE005B7FF3005A7DF1005473
          EC005B70E3004253D1001F2AB6006163DB00E9E9FF00FFFFFF00FFFFFF00D6D6
          FC001C22B5002834BF006473DD00CED5F7008B9FF1004C6DEB004C6CEA00899D
          F000CED3F600616ED9002731BD001A1FB300D1D1FB00FFFFFF00FFFFFF008F8F
          E0000F13B1002832C300989FE500FFFFFF00F7F8FE0092A3EF0092A2EE00F7F8
          FE00FFFFFF00969CE300252CC0000C0FAE008C8CDF00FFFFFF00FFFFFF006161
          CB001417B5002C32C4003E48CF00ABB1EC00FFFFFF00F6F7FD00F6F7FD00FFFF
          FF00AAAFEB003B43CC00282CC2001012B3005F60CB00FFFFFF00FAFAFF005555
          C9002323BC003E40CA00454AD1004F57D800D4D7F600FFFFFF00FFFFFF00D4D6
          F6004C53D6004246CF003A3BC7002121BA005353C800FAFAFF00FFFFFF006363
          CE003534C4005151D100595BD8009597E800F4F5FD00FFFFFF00FFFFFF00F4F5
          FD009395E7005556D6004C4CCE003737C3006161CD00FFFFFF00FFFFFF009393
          E5004646CC006969DA00A6A6EB00FAFAFE00FFFFFF00CDCDF900CDCDF800FFFF
          FF00FAFAFE00A3A3E9006262D7004747CA009090E400FFFFFF00FFFFFF00D9D9
          F8005151D2007B7BE000B2B2F000F9F9FE00D4D4FB009F9FF6009E9EF500D3D3
          FA00F9F9FE00AFAFEE007777DE005050D000D8D8F700FFFFFF00FFFFFF00FFFF
          FF009B9BEB007979E1009898EC00ADADF400AAAAF800AEAEFB00ACACFA00A6A6
          F600AAAAF2009292EA007979E0009A9AEA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F5F5FD009B9BEB009696EC00ACACF400B3B3F900B9B9FD00B7B7FC00B0B0
          F800A9A9F2009595EB009A9AEA00F4F4FD00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FDFDFF00BEBEF700A4A4F300ABABF700B0B0F800B0B0F800AAAA
          F600A4A4F100BCBCF600FDFDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00EFEFFD00D5D5FB00D5D5FA00D5D5FA00D4D4
          FA00EEEEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B2B5B20049664D00B7B8B700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
          FE00FFFFFF00F0EDEF002D6239001EAB370033673900D8D4D700FFFFFF00FEFE
          FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0077827B0024AF4F0034D05B0022A73900536F5600FCFAFC00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00CAC5C800277B4B0039D7740037CF670033CD57001C8830009F9F9F00FFFF
          FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFB
          FD004E76620030C67A0044DD87003CD5770037CF670030CA56002A6F3800C9C6
          C800FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00B4B2
          B3002197660053ECA6004BE1940042DC87003CD5760038D1680024B046004D6C
          5300FDFAFC00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFFFF00E8E2E4003B76
          62005AEDB6005AEDB10034E4910023CC6B0039DD83003ED6770037D368001F9A
          3E00898E8A00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFFFF0080918C0037B6
          91004FFAC4001AE29E00167F47003157330018AD5E0035DF83003DD5760034D1
          650026703A00C7C3C600FFFFFF00FEFEFE00FEFEFE00FFFFFF00065C420014EC
          AD0006A27E004F776C00D0CBCD00FDF8FB006F7F77000F945C002EE085003ED7
          77002BBE59003C6A4900F2EFF100FFFFFF00FEFEFE00FFFFFF00456657003370
          5700AEAEAE00F9F5F600FFFFFF00FFFFFF00FAF7F8008C9593000991640026DD
          86003EDB770020A14A00858B8600FFFFFF00FEFEFE00FFFFFF00FDFBFC00FBF8
          F900FFFFFF00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00AAABAC001880
          65001ED6820039DA7600237D4100B1B0B100FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00C3BF
          C1001E785D0019CD79002CC9670038684900F3EFF200FFFFFF00FFFFFF00FEFE
          FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFF
          FF00DAD4D60044715F0015B9660020B95D006E7C7300FEFBFD00FFFFFF00FEFE
          FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FFFFFF00E6E1E3004E705D0013A44E0019854600AEAFAE00FFFFFF00FEFE
          FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00FFFFFF00F6F2F4007D847A001282310013472700FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FEFCFE008991880061716400}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E3E3DC00B7B7B100A6A6AB00A6A6AB00B7B7
          B200E4E4DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
          FE00FFFFFF00F1F1ED00787881002E2E7A000404910000009300000092000404
          8D002F2F77007B7B8300F3F3EF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
          FF00CBCBC8002D2D69000000BA000000D6000000D4000000D1000000D1000000
          D0000000CE000000AD002F2F6500CECECB00FFFFFF00FFFFFF00FFFFFF00ECEC
          E8002A2A6A000000C9000000D9000000CE000000CC000000CC000000CC000000
          CC000000CD000000D1000000B8002B2B6500EEEEEA00FFFFFF00FFFFFF006C6C
          7C000000C7000000DC000000D0000000D0000000D0000000D0000000D0000000
          D0000000D0000000D0000000D3000000B3006E6E7C00FFFFFF00DADAD2002525
          86000000E3000000D5000101D4000101D4000101D4000101D4000101D4000101
          D4000101D4000101D4000000D4000000D10026267B00DBDBD400B1B1AE000000
          A1000000E4000303D8009E9EF000BBBBF400B9B9F400B9B9F400B9B9F400B9B9
          F400BBBBF4009E9EF0000303D9000000D80000008F00B1B1AF00A5A5AC000000
          A5000000E6000404DC00E3E3FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E3E3FB000404DC000000DB0000009200A5A5AB00A5A5AA000000
          A5000000EA000303E0009090F200AAAAF500A8A8F400A8A8F400A8A8F400A8A8
          F400AAAAF5009090F2000303E1000000DE0000009300A5A5AA00B0B0AB000000
          9B000000EF000000E4000000E3000000E3000000E3000000E3000000E3000000
          E3000000E3000000E3000000E4000000DE0000008D00B1B1AD00D9D9D2002426
          76000000EE000000EB000000E8000000E9000000E9000000E9000000E9000000
          E9000000E9000000E9000000E2000000D90025277400D9D9D200FFFFFF006B6B
          75000000BE000001F4000000EC000000EC000000EC000000EC000000EC000000
          EC000000EC000000E7000001E2000000B4006B6B7600FFFFFF00FFFFFF00ECEC
          E800292B5E000001C5000003F3000000EE000000ED000000EE000000ED000000
          EB000000E5000003E6000001BF00292B5E00ECECE800FFFFFF00FFFFFF00FFFF
          FF00CBCBC8002E2F61000002B9000007EB000003F1000000EF000000ED000003
          EC000007E5000002B7002D2F6100CBCAC700FFFFFF00FFFFFF00FFFFFF00FEFE
          FE00FFFFFF00F2F1EE00797981002E2F7A00040A9F000001AE000001AF00040A
          A1002E2F7C0079798100F1F1EE00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E3E3DD00B7B7B100A6A6AC00A6A6AD00B7B6
          B100E3E3DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF007F4026008141250081412500814125008141
          250081412500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008241250081412500CB660000CB660000CB660000CB660000CB66
          0000CB6600008141250081412500FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF009B4E1800C5620300CA650000CA650000CA650000CA650000CA650000CB66
          0000CB660000CB660000C563030081412500FF00FF00FF00FF00FF00FF00994D
          1900C4620200C8630000C6610000C6610000C6610000C6610000C8630000C964
          0000CB660000CB660000CB660000C563030081412500FF00FF00FF00FF00BB5D
          0600C6620100C4600200C25E0200BF5B0200CE833F00D6955A00D8975B00D68F
          4B00D0772000CB660000CB660000CB66000082412500FF00FF00A8541100C967
          0700C7680A00C5680900C2660800C1640500E7C3A000FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00DB995700CB660000CB660000CB6600007F402600AC570F00CD71
          1400CA721800C8721A00C7711A00C56F1700C56F1800C6711C00C46E1A00C56D
          1E00E4B78D00FEFEFE00CA650000CB660000CB66000082412500AB581200D484
          3400CF7F2E00CD7E2D00CD7F2F00CC7D2C00EACCAC00C6701900C2680C00BF60
          0300C6691500FEFEFE00CA650000CB660000CB66000082412500AC591500DEA2
          6400D7934D00D38B4100D48D4400ECCFB100FEFEFE00CB7B2A00C6701900C367
          0B00D7985D00FEFEFE00CA650000CB660000CB66000082412500AA571100E6B4
          8200E3B17C00DA985400F4E0CC00FEFEFE00FEFEFE00F8EEE300F3E1CF00F2DF
          CC00FEFEFE00E5B88D00CA650000CB660000CB66000082412500AA550E00E7B2
          7D00F0D3B500E5B07900F5E1CC00FEFEFE00FEFEFE00F4E2D000EBCBAB00E9C7
          A400DB9E6000C7630300CA650000CB660000CB6600007F402600FF00FF00AF62
          2100F3D9BF00F4D9BE00EABB8B00F2D8BD00FEFEFE00D58E4500D0823200CD77
          2000CB6F1100CA660400CA650000CB66000082412500FF00FF00FF00FF00AA55
          0E00E9B78200F8E7D500F6DFC800E9BB8B00EFCFAE00D78F4500D3843300D07A
          2200CF741700CB680800CB660000C56303007D3F2700FF00FF00FF00FF00FF00
          FF00AB561000EBB98600F6E0CA00F7E6D400F0D1B100E8B98A00E3AA7100DFA0
          6000D98F4400CE711100C56303008F481E00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00AC570F00B3672800ECBC8B00F0CBA600EECAA400EABC8E00E1A2
          6300D47E2800B05C150089452100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00AE591100B05D1700B2611D00B1601A00B05B
          14009C501900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end>
  end
end
