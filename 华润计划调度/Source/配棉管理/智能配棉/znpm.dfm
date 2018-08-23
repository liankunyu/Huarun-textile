object FrmZnpm: TFrmZnpm
  Left = 385
  Top = 24
  Width = 928
  Height = 476
  Caption = #26234#33021#37197#26825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 201
    Height = 442
    Align = alLeft
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellEndEllipsis = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Background = cxStyle11
      Styles.Content = cxStyle11
      Styles.ContentEven = cxStyle20
      Styles.ContentOdd = cxStyle20
      Styles.Selection = cxStyle16
      Styles.Header = cxStyle18
      object cxGridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #25903#25968
        Width = 70
      end
      object cxGridDBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #31867#21035
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 117
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = #37197#26825#25903#25968#21450#20854#23545#24212#31867#21035
      GridView = cxGridDBTableView1
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 48
    Top = 160
    PixelsPerInch = 96
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientActiveCaption
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnHighlight
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor]
      Color = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGreen
      TextColor = clBackground
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clCaptionText
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor]
      Color = clOlive
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = clNavy
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor]
      Color = clTeal
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor]
      Color = clGray
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
  end
end
