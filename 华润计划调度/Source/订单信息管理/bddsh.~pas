unit bddsh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,IniFiles,
  cxLabel, cxBlobEdit, cxTextEdit, cxPC, RzButton, ImgList, StdCtrls, Mask,
  RzEdit, RzLabel, cxCalendar, cxCheckBox, cxContainer, frxClass,
  frxGradient, frxRich, frxExportXLS, frxDBSet, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBDDSH = class(TForm)
    cxgrdbtblvwMarketingDepReport: TcxGridDBTableView;
    cxgrdlvlMarketingDepReport: TcxGridLevel;
    cxgrdOrderExamine: TcxGrid;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxgrdbclmnSpecification1: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn18: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn21: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn22: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn24: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn26: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportColumn1: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportColumn2: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn669: TcxGridDBColumn;
    cxGridDBColumn670: TcxGridDBColumn;
    cxGridDBColumn671: TcxGridDBColumn;
    cxGridDBColumn672: TcxGridDBColumn;
    cxGridDBColumn673: TcxGridDBColumn;
    cxGridDBColumn674: TcxGridDBColumn;
    cxGridDBColumn675: TcxGridDBColumn;
    cxGridDBColumn676: TcxGridDBColumn;
    cxGridDBColumn677: TcxGridDBColumn;
    cxGridDBColumn678: TcxGridDBColumn;
    cxGridDBColumn679: TcxGridDBColumn;
    cxGridDBColumn680: TcxGridDBColumn;
    cxGridDBColumn681: TcxGridDBColumn;
    cxGridDBColumn682: TcxGridDBColumn;
    cxGridDBColumn683: TcxGridDBColumn;
    cxGridDBColumn684: TcxGridDBColumn;
    cxGridDBColumn685: TcxGridDBColumn;
    cxGridDBColumn686: TcxGridDBColumn;
    cxGridDBColumn687: TcxGridDBColumn;
    cxGridDBColumn688: TcxGridDBColumn;
    cxGridDBColumn689: TcxGridDBColumn;
    cxGridDBColumn690: TcxGridDBColumn;
    cxGridDBColumn691: TcxGridDBColumn;
    cxGridDBColumn692: TcxGridDBColumn;
    cxGridDBColumn693: TcxGridDBColumn;
    cxGridDBColumn694: TcxGridDBColumn;
    cxGridDBColumn695: TcxGridDBColumn;
    cxGridDBColumn696: TcxGridDBColumn;
    cxGridDBColumn697: TcxGridDBColumn;
    cxGridDBColumn698: TcxGridDBColumn;
    cxGridDBColumn699: TcxGridDBColumn;
    cxGridDBColumn700: TcxGridDBColumn;
    cxGridDBColumn701: TcxGridDBColumn;
    cxGridDBColumn702: TcxGridDBColumn;
    cxGridDBColumn703: TcxGridDBColumn;
    cxGridDBColumn704: TcxGridDBColumn;
    cxGridDBColumn705: TcxGridDBColumn;
    cxGridDBColumn706: TcxGridDBColumn;
    cxGridDBColumn707: TcxGridDBColumn;
    cxGridDBColumn708: TcxGridDBColumn;
    cxGridDBColumn709: TcxGridDBColumn;
    cxGridDBColumn710: TcxGridDBColumn;
    cxGridDBColumn711: TcxGridDBColumn;
    cxGridDBColumn712: TcxGridDBColumn;
    cxGridDBColumn713: TcxGridDBColumn;
    cxGridDBColumn714: TcxGridDBColumn;
    cxGridLevel18: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn1005: TcxGridDBColumn;
    cxGridDBColumn1006: TcxGridDBColumn;
    cxGridDBColumn1007: TcxGridDBColumn;
    cxGridDBColumn1008: TcxGridDBColumn;
    cxGridDBColumn1009: TcxGridDBColumn;
    cxGridDBColumn1010: TcxGridDBColumn;
    cxGridDBColumn1011: TcxGridDBColumn;
    cxGridDBColumn1012: TcxGridDBColumn;
    cxGridDBColumn1013: TcxGridDBColumn;
    cxGridDBColumn1014: TcxGridDBColumn;
    cxGridDBColumn1015: TcxGridDBColumn;
    cxGridDBColumn1016: TcxGridDBColumn;
    cxGridDBColumn1017: TcxGridDBColumn;
    cxGridDBColumn1018: TcxGridDBColumn;
    cxGridDBColumn1019: TcxGridDBColumn;
    cxGridDBColumn1020: TcxGridDBColumn;
    cxGridDBColumn1021: TcxGridDBColumn;
    cxGridDBColumn1022: TcxGridDBColumn;
    cxGridDBColumn1023: TcxGridDBColumn;
    cxGridDBColumn1024: TcxGridDBColumn;
    cxGridDBColumn1025: TcxGridDBColumn;
    cxGridDBColumn1026: TcxGridDBColumn;
    cxGridDBColumn1027: TcxGridDBColumn;
    cxGridDBColumn1028: TcxGridDBColumn;
    cxGridDBColumn1029: TcxGridDBColumn;
    cxGridDBColumn1030: TcxGridDBColumn;
    cxGridDBColumn1031: TcxGridDBColumn;
    cxGridDBColumn1032: TcxGridDBColumn;
    cxGridDBColumn1033: TcxGridDBColumn;
    cxGridDBColumn1034: TcxGridDBColumn;
    cxGridDBColumn1035: TcxGridDBColumn;
    cxGridDBColumn1036: TcxGridDBColumn;
    cxGridDBColumn1037: TcxGridDBColumn;
    cxGridDBColumn1038: TcxGridDBColumn;
    cxGridDBColumn1039: TcxGridDBColumn;
    cxGridDBColumn1040: TcxGridDBColumn;
    cxGridDBColumn1041: TcxGridDBColumn;
    cxGridDBColumn1042: TcxGridDBColumn;
    cxGridDBColumn1043: TcxGridDBColumn;
    cxGridDBColumn1044: TcxGridDBColumn;
    cxGridDBColumn1045: TcxGridDBColumn;
    cxGridDBColumn1046: TcxGridDBColumn;
    cxGridDBColumn1047: TcxGridDBColumn;
    cxGridDBColumn1048: TcxGridDBColumn;
    cxGridDBColumn1049: TcxGridDBColumn;
    cxGridDBColumn1050: TcxGridDBColumn;
    cxGridDBColumn1051: TcxGridDBColumn;
    cxGridDBColumn1052: TcxGridDBColumn;
    cxGridDBColumn1053: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn1344: TcxGridDBColumn;
    cxGridDBColumn1345: TcxGridDBColumn;
    cxGridDBColumn1346: TcxGridDBColumn;
    cxGridDBColumn1347: TcxGridDBColumn;
    cxGridDBColumn1348: TcxGridDBColumn;
    cxGridDBColumn1349: TcxGridDBColumn;
    cxGridDBColumn1350: TcxGridDBColumn;
    cxGridDBColumn1351: TcxGridDBColumn;
    cxGridDBColumn1352: TcxGridDBColumn;
    cxGridDBColumn1353: TcxGridDBColumn;
    cxGridDBColumn1354: TcxGridDBColumn;
    cxGridDBColumn1355: TcxGridDBColumn;
    cxGridDBColumn1356: TcxGridDBColumn;
    cxGridDBColumn1357: TcxGridDBColumn;
    cxGridDBColumn1358: TcxGridDBColumn;
    cxGridDBColumn1359: TcxGridDBColumn;
    cxGridDBColumn1360: TcxGridDBColumn;
    cxGridDBColumn1361: TcxGridDBColumn;
    cxGridDBColumn1362: TcxGridDBColumn;
    cxGridDBColumn1363: TcxGridDBColumn;
    cxGridDBColumn1364: TcxGridDBColumn;
    cxGridDBColumn1365: TcxGridDBColumn;
    cxGridDBColumn1366: TcxGridDBColumn;
    cxGridDBColumn1367: TcxGridDBColumn;
    cxGridDBColumn1368: TcxGridDBColumn;
    cxGridDBColumn1369: TcxGridDBColumn;
    cxGridDBColumn1370: TcxGridDBColumn;
    cxGridDBColumn1371: TcxGridDBColumn;
    cxGridDBColumn1372: TcxGridDBColumn;
    cxGridDBColumn1373: TcxGridDBColumn;
    cxGridDBColumn1374: TcxGridDBColumn;
    cxGridDBColumn1375: TcxGridDBColumn;
    cxGridDBColumn1376: TcxGridDBColumn;
    cxGridDBColumn1377: TcxGridDBColumn;
    cxGridDBColumn1378: TcxGridDBColumn;
    cxGridDBColumn1379: TcxGridDBColumn;
    cxGridDBColumn1380: TcxGridDBColumn;
    cxGridDBColumn1381: TcxGridDBColumn;
    cxGridDBColumn1382: TcxGridDBColumn;
    cxGridDBColumn1383: TcxGridDBColumn;
    cxGridDBColumn1384: TcxGridDBColumn;
    cxGridDBColumn1385: TcxGridDBColumn;
    cxGridDBColumn1386: TcxGridDBColumn;
    cxGridDBColumn1387: TcxGridDBColumn;
    cxGridDBColumn1388: TcxGridDBColumn;
    cxGridDBColumn1389: TcxGridDBColumn;
    cxGridDBColumn1390: TcxGridDBColumn;
    cxGridDBColumn1391: TcxGridDBColumn;
    cxGridDBColumn1392: TcxGridDBColumn;
    cxGridDBColumn1393: TcxGridDBColumn;
    cxGridDBColumn1394: TcxGridDBColumn;
    cxGridDBColumn1395: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn1686: TcxGridDBColumn;
    cxGridDBColumn1687: TcxGridDBColumn;
    cxGridDBColumn1688: TcxGridDBColumn;
    cxGridDBColumn1689: TcxGridDBColumn;
    cxGridDBColumn1690: TcxGridDBColumn;
    cxGridDBColumn1691: TcxGridDBColumn;
    cxGridDBColumn1692: TcxGridDBColumn;
    cxGridDBColumn1693: TcxGridDBColumn;
    cxGridDBColumn1694: TcxGridDBColumn;
    cxGridDBColumn1695: TcxGridDBColumn;
    cxGridDBColumn1696: TcxGridDBColumn;
    cxGridDBColumn1697: TcxGridDBColumn;
    cxGridDBColumn1698: TcxGridDBColumn;
    cxGridDBColumn1699: TcxGridDBColumn;
    cxGridDBColumn1700: TcxGridDBColumn;
    cxGridDBColumn1701: TcxGridDBColumn;
    cxGridDBColumn1702: TcxGridDBColumn;
    cxGridDBColumn1703: TcxGridDBColumn;
    cxGridDBColumn1704: TcxGridDBColumn;
    cxGridDBColumn1705: TcxGridDBColumn;
    cxGridDBColumn1706: TcxGridDBColumn;
    cxGridDBColumn1707: TcxGridDBColumn;
    cxGridDBColumn1708: TcxGridDBColumn;
    cxGridDBColumn1709: TcxGridDBColumn;
    cxGridDBColumn1710: TcxGridDBColumn;
    cxGridDBColumn1711: TcxGridDBColumn;
    cxGridDBColumn1712: TcxGridDBColumn;
    cxGridDBColumn1713: TcxGridDBColumn;
    cxGridDBColumn1714: TcxGridDBColumn;
    cxGridDBColumn1715: TcxGridDBColumn;
    cxGridDBColumn1716: TcxGridDBColumn;
    cxGridDBColumn1717: TcxGridDBColumn;
    cxGridDBColumn1718: TcxGridDBColumn;
    cxGridDBColumn1719: TcxGridDBColumn;
    cxGridDBColumn1720: TcxGridDBColumn;
    cxGridDBColumn1721: TcxGridDBColumn;
    cxGridDBColumn1722: TcxGridDBColumn;
    cxGridDBColumn1723: TcxGridDBColumn;
    cxGridDBColumn1724: TcxGridDBColumn;
    cxGridDBColumn1725: TcxGridDBColumn;
    cxGridDBColumn1726: TcxGridDBColumn;
    cxGridDBColumn1727: TcxGridDBColumn;
    cxGridDBColumn1728: TcxGridDBColumn;
    cxGridDBColumn1729: TcxGridDBColumn;
    cxGridDBColumn1730: TcxGridDBColumn;
    cxGridDBColumn1731: TcxGridDBColumn;
    cxGridDBColumn1732: TcxGridDBColumn;
    cxGridDBColumn1733: TcxGridDBColumn;
    cxGridDBColumn1734: TcxGridDBColumn;
    cxGridDBColumn1735: TcxGridDBColumn;
    cxGridDBColumn1736: TcxGridDBColumn;
    cxGridDBColumn1737: TcxGridDBColumn;
    cxGridDBColumn1738: TcxGridDBColumn;
    cxGridDBColumn1739: TcxGridDBColumn;
    cxGridDBColumn1740: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnAdd: TRzToolButton;
    btnModify: TRzToolButton;
    btnExit: TRzToolButton;
    cxgrdOrderExamineLevel1: TcxGridLevel;
    cxgrdbtblvwsbxx: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn1: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn2: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn1: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn2: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn3: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn4: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn5: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn6: TcxGridDBColumn;
    RzToolButton1: TRzToolButton;
    cxgrdbtblvwsbxxColumn7: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn8: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn9: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn10: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn11: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn12: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn14: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn15: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn16: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn17: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn18: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn19: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn20: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn21: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn3: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn4: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn5: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn6: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn7: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn8: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn9: TcxGridDBColumn;
    RzPanel1: TRzPanel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBTableView4Column2: TcxGridDBColumn;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5Column2: TcxGridDBColumn;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn10: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn11: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn12: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn13: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn14: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn15: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn22: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn23: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn24: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn25: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn26: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn27: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn28: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn29: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn30: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn31: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn32: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn33: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn34: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn35: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn36: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn37: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn38: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn39: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn40: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn41: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn42: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn43: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn44: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn45: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn46: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn47: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn48: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn49: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn50: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn13: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn51: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn52: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn53: TcxGridDBColumn;
    btnPrint: TRzToolButton;
    frxDBDataset1: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxrprt1: TfrxReport;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridDBTableView3Column5: TcxGridDBColumn;
    cxGridDBTableView4Column3: TcxGridDBColumn;
    cxGridDBTableView4Column4: TcxGridDBColumn;
    cxGridDBTableView4Column5: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBTableView5Column4: TcxGridDBColumn;
    cxGridDBTableView5Column5: TcxGridDBColumn;
    cxGridDBTableView6Column3: TcxGridDBColumn;
    cxGridDBTableView6Column4: TcxGridDBColumn;
    cxGridDBTableView6Column5: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn54: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView3Column6: TcxGridDBColumn;
    cxGridDBTableView4Column6: TcxGridDBColumn;
    cxGridDBTableView5Column6: TcxGridDBColumn;
    cxGridDBTableView6Column6: TcxGridDBColumn;
    RzToolButton2: TRzToolButton;
    frxDBDataset2: TfrxDBDataset;
    RzToolButton7: TRzToolButton;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn55: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn56: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn57: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn58: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn59: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn60: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBColumn339: TcxGridDBColumn;
    cxGridDBColumn338: TcxGridDBColumn;
    cxGridDBColumn340: TcxGridDBColumn;
    cxGridDBColumn341: TcxGridDBColumn;
    cxGridDBColumn342: TcxGridDBColumn;
    cxGridDBColumn343: TcxGridDBColumn;
    cxGridDBColumn344: TcxGridDBColumn;
    cxGridDBColumn345: TcxGridDBColumn;
    cxGridDBColumn346: TcxGridDBColumn;
    cxGridDBColumn347: TcxGridDBColumn;
    cxGridDBColumn348: TcxGridDBColumn;
    cxGridDBColumn349: TcxGridDBColumn;
    cxGridDBColumn350: TcxGridDBColumn;
    cxGridDBColumn351: TcxGridDBColumn;
    cxGridDBColumn352: TcxGridDBColumn;
    cxGridDBColumn353: TcxGridDBColumn;
    cxGridDBColumn354: TcxGridDBColumn;
    cxGridDBColumn355: TcxGridDBColumn;
    cxGridDBTableView2Column11: TcxGridDBColumn;
    cxGridDBTableView2Column12: TcxGridDBColumn;
    cxGridDBTableView2Column13: TcxGridDBColumn;
    cxGridDBTableView2Column14: TcxGridDBColumn;
    cxGridDBTableView2Column15: TcxGridDBColumn;
    cxGridDBTableView2Column16: TcxGridDBColumn;
    cxGridDBColumn356: TcxGridDBColumn;
    cxGridDBColumn357: TcxGridDBColumn;
    cxGridDBColumn358: TcxGridDBColumn;
    cxGridDBColumn359: TcxGridDBColumn;
    cxGridDBColumn360: TcxGridDBColumn;
    cxGridDBColumn361: TcxGridDBColumn;
    cxGridDBColumn362: TcxGridDBColumn;
    cxGridDBColumn363: TcxGridDBColumn;
    cxGridDBColumn364: TcxGridDBColumn;
    cxGridDBColumn365: TcxGridDBColumn;
    cxGridDBColumn366: TcxGridDBColumn;
    cxGridDBColumn367: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxGridDBColumn368: TcxGridDBColumn;
    cxGridDBTableView2Column4: TcxGridDBColumn;
    cxGridDBColumn369: TcxGridDBColumn;
    cxGridDBTableView2Column5: TcxGridDBColumn;
    cxGridDBTableView2Column17: TcxGridDBColumn;
    cxGridDBColumn371: TcxGridDBColumn;
    cxGridDBColumn372: TcxGridDBColumn;
    cxGridDBColumn373: TcxGridDBColumn;
    cxGridDBColumn374: TcxGridDBColumn;
    cxGridDBColumn375: TcxGridDBColumn;
    cxGridDBTableView2Column10: TcxGridDBColumn;
    cxGridDBColumn376: TcxGridDBColumn;
    cxGridDBColumn377: TcxGridDBColumn;
    cxGridDBColumn378: TcxGridDBColumn;
    cxGridDBTableView2Column6: TcxGridDBColumn;
    cxGridDBTableView2Column7: TcxGridDBColumn;
    cxGridDBTableView2Column8: TcxGridDBColumn;
    cxGridDBTableView2Column9: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    RzToolButton8: TRzToolButton;
    RzToolButton9: TRzToolButton;
    btn1: TRzToolButton;
    cxstyl2: TcxStyle;
    cxstylrpstry2: TcxStyleRepository;
    cxstyl5: TcxStyle;
    cxstyl6: TcxStyle;
    cxstyl7: TcxStyle;
    cxstyl8: TcxStyle;
    cxstyl9: TcxStyle;
    cxstyl10: TcxStyle;
    cxstyl11: TcxStyle;
    cxstyl12: TcxStyle;
    cxstyl13: TcxStyle;
    cxstyl14: TcxStyle;
    cxstyl15: TcxStyle;
    cxstyl16: TcxStyle;
    cxstyl17: TcxStyle;
    cxstyl18: TcxStyle;
    cxstyl19: TcxStyle;
    cxgrdbclmnMarketingDepReportColumn16: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column13: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView2Column18: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3Column7: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView4Column7: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView5Column7: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView6Column7: TcxGridDBColumn;
    tmr1: TTimer;
    cxgrdbclmnGridDBTableView1Column14: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3Column8: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView6Column8: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView5Column8: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure cxgrdbtblvwMarketingDepReportDblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView6DblClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cxgrdbtblvwMarketingDepReportStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    //procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure frxrprt1GetValue(const VarName: String; var Value: Variant);
    procedure btnPrintClick(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxgrdbtblvwMarketingDepReportFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView4StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView5StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView6StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);

    //procedure RzToolButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
     user,Dep,zw:string;   //录入人和所在部门信息
    { Public declarations }
     AWarnStyle:TcxStyle;
  end;

var
  FrmBDDSH: TFrmBDDSH;
  lFile:TiniFile;
  procedure pbddsh(AHandle:THandle);stdcall;

implementation
uses UDM,byxbsb,byxbsh,cwbsh,zbgcssh,wlcgbsh,gsldsh,gsldsp,bddxxcz,ddpscz;

{$R *.dfm}

procedure pbddsh(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBDDSH:=TFrmBDDSH.Create(Application);
  try
    FrmBDDSH.ShowModal;
  finally
    TFrmBDDSH(FrmBDDSH).Free;
  end;
end;

procedure TFrmBDDSH.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
  with DM.qryqx do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 职务 from 用户信息表 where 用户名=:yh ');
      Parameters.ParamByName('yh').Value:=user;
      Open;
    end;
    zw:=DM.qryqx.FieldByName('职务').AsString;
  if (Dep='营销部') and (zw='织部营销业务员') then
  begin
    cxTabSheet1.TabVisible:=True;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    cxTabSheet7.TabVisible:=False;
    with DM.qryBUnApprovedOrder do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from V_棉布订单审核表状态跟踪 where 营销打印状态=0 order by 销售部申报状态,销售部审核状态,财务部审核状态,织部工程师审核状态,物流采购部审核状态,公司领导审核状态,公司领导审批状态');   //作为申报环节要把握整个审核全局 原来为select * from V_棉布订单审核表状态跟踪 where 公司领导审批状态=0
      Open;
    end;
     with DM.qrysbxx do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 棉布订单评审表 where 订单号 in (select 订单号 from 棉布订单信息表 where 营销打印状态=0)');   //公司领导审批之后不能再修改了
      Open;
    end;
   // cxgrdbtblvwMarketingDepReport.ViewData.Expand(True);
  end;
  if (Dep='营销部') and (zw='织部营销经理')then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=True;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    cxTabSheet7.TabVisible:=False;
    with DM.qryBOrderExamine do
    begin
      Close;                                //营销自审通过后订单到达下一个部门，此部门不再显示
      SQL.Clear;
      SQL.Add('select * from v_棉布订单审核 where 订单号 in (select 订单号 from 棉布订单信息表 where 销售部申报状态=1 and 销售部审核状态=0) and 销售部审核人 is null');
      Open;
    end;
  end;
  if Dep='财务部' then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=True;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    cxTabSheet7.TabVisible:=False;
    with DM.ADOQuerycw do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单审核  where 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1) and 财务部审核人 is null order by 财务部审核日期 ');
      Open;
    end;
  end;
  if Dep='织部工程师' then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=True;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    cxTabSheet7.TabVisible:=False;
    with DM.ADOQueryzbgc do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单审核 where 订单号 in (select 订单号 from 棉布订单信息表 where 织部工程师审核状态=0 and 财务部审核状态=1) and 织部工程师审核人 is null');
      Open;
    end;
  end;
  if Dep='物流采购部' then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=True;
    cxTabSheet6.TabVisible:=False;
    cxTabSheet7.TabVisible:=False;
    with DM.ADOQuerywlcg do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单审核 where 订单号 in (select 订单号 from 棉布订单信息表 where 织部工程师审核状态=1 and 物流采购部审核状态=0) and 物流采购部审核人 is null');
      Open;
    end;
  end;
  if (Dep='公司领导') and (zw='织部副总') then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=True;
    cxTabSheet7.TabVisible:=False;
    with DM.ADOQueryldsh do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单审核 where 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审核状态=0 and 物流采购部审核状态=1) and 公司领导审核人 is null');
      Open;
    end;
  end;
  if (Dep='公司领导') and (zw='总经理') then       //如果跟换领导可以改名字实现更改或者修改部门名称
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    cxTabSheet7.TabVisible:=True;
    with DM.ADOQueryldsp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单审核 where 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审核状态=1 and 公司领导审批状态=0) and 公司领导审批人 is null');
      Open;
    end;
  end;
end;

procedure TFrmBDDSH.cxgrdbtblvwMarketingDepReportDblClick(Sender: TObject);
begin
  if DM.qryBUnApprovedOrder.FieldByName('销售部申报状态').Value=true then
  begin
    Application.MessageBox('该订单已申报！','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
   if cxgrdbtblvwMarketingDepReport.ViewData.RowCount>0 then
   begin
    FrmYXBSB:=TFrmYXBSB.Create(Self);
    FrmYXBSB.tag:=1;
    FrmYXBSB.ShowModal;
    FreeAndNil(FrmYXBSB);
   end;
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if cxGridDBTableView1.ViewData.RowCount>0 then
  begin
    FrmYXBSH:=TFrmYXBSH.Create(Self);
    FrmYXBSH.ShowModal;
    FreeAndNil(FrmYXBSH);
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView2DblClick(Sender: TObject);
begin
   if DM.ADOQuerycw.FieldByName('财务部审核人').Value<>null then
  begin
    Application.MessageBox('已审核！','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
   if cxGridDBTableView2.ViewData.RowCount>0 then
   begin
    FrmCWBSH:=TFrmCWBSH.Create(Self);
    FrmCWBSH.ShowModal;
    FreeAndNil(FrmCWBSH);
   end;
   end;
end;

procedure TFrmBDDSH.cxGridDBTableView3DblClick(Sender: TObject);
begin
  if cxGridDBTableView3.ViewData.RowCount>0 then
  begin
    FrmZBGCSSH:=TFrmZBGCSSH.Create(Self);
    FrmZBGCSSH.ShowModal;
    FreeAndNil(FrmZBGCSSH);
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView4DblClick(Sender: TObject);
begin
  if cxGridDBTableView4.ViewData.RowCount>0 then
  begin
    FrmWLCGBSH:=TFrmWLCGBSH.Create(Self);
    FrmWLCGBSH.ShowModal;
    FreeAndNil(FrmWLCGBSH);
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView5DblClick(Sender: TObject);
begin
  if cxGridDBTableView5.ViewData.RowCount>0 then
  begin
    FrmGSLDSH:=TFrmGSLDSH.Create(Self);
    FrmGSLDSH.ShowModal;
    FreeAndNil(FrmGSLDSH);
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView6DblClick(Sender: TObject);
begin
  if cxGridDBTableView6.ViewData.RowCount>0 then
  begin
    FrmGSLDSP:=TFrmGSLDSP.Create(Self);
    FrmGSLDSP.ShowModal;
    FreeAndNil(FrmGSLDSP);
  end;
end;

procedure TFrmBDDSH.btnQueryClick(Sender: TObject);
begin
    FrmBDDXXCZ:=TFrmBDDXXCZ.Create(Self);
    FrmBDDXXCZ.tag:=2;
    FrmBDDXXCZ.ShowModal;
    FreeAndNil(FrmBDDXXCZ);

end;

procedure TFrmBDDSH.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmBDDSH.RzToolButton1Click(Sender: TObject);
begin
    with cxgrdbtblvwMarketingDepReport.DataController.Filter  do
    begin
      Root.Clear;
      Active:=True;
    end;
    cxgrdbtblvwMarketingDepReport.ViewData.Expand(True);
end;

procedure TFrmBDDSH.cxgrdbtblvwMarketingDepReportStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnMarketingDepReportColumn16.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end
  else
  begin
  if ((ARecord.Values[cxgrdbtblvwMarketingDepReportColumn5.Index]=False) and (ARecord.Values[cxgrdbtblvwMarketingDepReportColumn10.Index]<>null)) or
     ((ARecord.Values[cxgrdbtblvwMarketingDepReportColumn4.Index]=False) and (ARecord.Values[cxgrdbtblvwMarketingDepReportColumn11.Index]<>null)) or
     ((ARecord.Values[cxgrdbtblvwMarketingDepReportColumn6.Index]=False) and (ARecord.Values[cxgrdbtblvwMarketingDepReportColumn12.Index]<>null)) or
     ((ARecord.Values[cxgrdbtblvwMarketingDepReportColumn7.Index]=False) and (ARecord.Values[cxgrdbtblvwMarketingDepReportColumn13.Index]<>null)) or
     ((ARecord.Values[cxgrdbtblvwMarketingDepReportColumn8.Index]=False) and (ARecord.Values[cxgrdbtblvwMarketingDepReportColumn14.Index]<>null)) or
     ((ARecord.Values[cxgrdbtblvwMarketingDepReportColumn9.Index]=False) and (ARecord.Values[cxgrdbtblvwMarketingDepReportColumn15.Index]<>null))
  then   //当各部门审核不通过时预警，如销售部门审核状态=0 and 销售不闷骚申报人 is not null
   begin
    AStyle:=AWarnStyle;
   end;
  {if  (ARecord.Values[cxgrdbtblvwMarketingDepReportColumn15.Index]=1)  then
    AStyle:=cxstyl14; }
  end;
end;

procedure TFrmBDDSH.FormCreate(Sender: TObject);
begin
  AWarnStyle:=TcxStyle.Create(Self);
  AWarnStyle.Color:=clRed;
  AWarnStyle.TextColor:=clBlue;
end;

procedure TFrmBDDSH.btnModifyClick(Sender: TObject);
begin
 if DM.qryBUnApprovedOrder.FieldByName('销售部审核状态').Value=False then
  begin
    Application.MessageBox('无需反审核，请直接修改！','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
   if Application.MessageBox('确定反审核吗?反审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表财务部反审核';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').Value;
        Parameters.ParamByName('@cwbhj').Value:=null;
        Parameters.ParamByName('@cwbmle').Value:=null;
        Parameters.ParamByName('@cwbmll').Value:=null;
        Parameters.ParamByName('@cwbshyj').Value:=null;
        Parameters.ParamByName('@cwbshr').Value:=null;
        Parameters.ParamByName('@cwbshrq').Value:=null;
        Parameters.ParamByName('@zbgcsshyj').Value:=null;
        Parameters.ParamByName('@zbgcsshr').Value:=null;
        Parameters.ParamByName('@zbgcsshrq').Value:=null;
        Parameters.ParamByName('@wlcgbshyj').Value:=null;
        Parameters.ParamByName('@wlcgbshr').Value:=null;
        Parameters.ParamByName('@wkcgbshrq').Value:=null;
        Parameters.ParamByName('@gsldshyj').Value:=null;
        Parameters.ParamByName('@gsldshr').Value:=null;
        Parameters.ParamByName('@gsldshrq').Value:=null;
        Parameters.ParamByName('@gsldspr').Value:=null;
        Parameters.ParamByName('@gsldsprq').Value:=null;
        ExecProc;
        Application.MessageBox('反审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryBUnApprovedOrder do
        begin
          Close;
          Open;
        end;
      end;
    except
      Application.MessageBox('反审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
   end;
  end;
end;

procedure TFrmBDDSH.RzToolButton3Click(Sender: TObject);      //财务部查询
begin
  if cxGridDBTableView2.ViewData.RowCount>0 then
  begin
    frmddps:=Tfrmddps.Create(Self);
    frmddps.ShowModal;
    FreeAndNil(frmddps);
  end
  else
  begin
    Application.MessageBox('没有可以显示的订单信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;



procedure TFrmBDDSH.RzToolButton5Click(Sender: TObject);    //财务部反审核
begin
 if DM.ADOQuerycw.FieldByName('财务部审核人').Value=null then
  begin
    Application.MessageBox('无需反审核，请直接审核或审核失败！','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
   if Application.MessageBox('确定反审核吗?反审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表财务部反审核';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=DM.ADOQuerycw.FieldByName('订单号').Value;
        Parameters.ParamByName('@cwbhj').Value:=null;
        Parameters.ParamByName('@cwbmle').Value:=null;
        Parameters.ParamByName('@cwbmll').Value:=null;
        Parameters.ParamByName('@cwbshyj').Value:=null;
        Parameters.ParamByName('@cwbshr').Value:=null;
        Parameters.ParamByName('@cwbshrq').Value:=null;
        Parameters.ParamByName('@zbgcsshyj').Value:=null;
        Parameters.ParamByName('@zbgcsshr').Value:=null;
        Parameters.ParamByName('@zbgcsshrq').Value:=null;
        Parameters.ParamByName('@wlcgbshyj').Value:=null;
        Parameters.ParamByName('@wlcgbshr').Value:=null;
        Parameters.ParamByName('@wkcgbshrq').Value:=null;
        Parameters.ParamByName('@gsldshyj').Value:=null;
        Parameters.ParamByName('@gsldshr').Value:=null;
        Parameters.ParamByName('@gsldshrq').Value:=null;
        Parameters.ParamByName('@gsldspr').Value:=null;
        Parameters.ParamByName('@gsldsprq').Value:=null;
        ExecProc;
        Application.MessageBox('反审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.ADOQuerycw do
        begin
          Close;
          Open;
        end;
      end;
     except
      Application.MessageBox('反审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
   end;
  end;
end;

procedure TFrmBDDSH.frxrprt1GetValue(const VarName: String;
  var Value: Variant);
begin
     if VarName='打印人' then   //在打印页面显示打印人信息
  begin
    Value:=user;
  end;
  if VarName='部门' then   //在打印页面显示打印人所在部门信息
  begin
    Value:=Dep;
  end;
end;

procedure TFrmBDDSH.btnPrintClick(Sender: TObject);
begin
    with dm.qrydy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_棉布订单审核 where 订单号=:ddh');
    Parameters.ParamByName('ddh').Value:=DM.ADOQuerycw.FieldByName('订单号').AsString;
    Open;
  end;
  //DM.ADOQuerycw.Filtered:=True;
  //DM.ADOQuerycw.Filter:=cxGridDBTableView2.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
 try
  if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw.fr3') then
  begin
    Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw.fr3');
  frxrprt1.PrepareReport();
  frxrprt1.ShowReport(True);
 except
  Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION); end;
end;

procedure TFrmBDDSH.RzToolButton2Click(Sender: TObject);
begin
  with dm.qrydy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_棉布订单审核 where 订单号=:ddh');
    Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
    Open;
  end;
 try
  if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\yx.fr3') then
  begin
    Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\yx.fr3');
  frxrprt1.PrepareReport();
  frxrprt1.ShowReport(True);
 except
  Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION); end;
end;

procedure TFrmBDDSH.RzToolButton7Click(Sender: TObject);
begin
    with DM.ADOQuerycw do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单审核  where 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1)order by 财务部审核日期 ');
      Open;
    end;
end;


procedure TFrmBDDSH.RzToolButton8Click(Sender: TObject);
begin
 if DM.qryBUnApprovedOrder.FieldByName('销售部申报状态').Value=False then
  begin
    Application.MessageBox('该订单未申报，请直接申报！','提示',MB_OK+MB_ICONINFORMATION);
  end
 else
 begin
  if DM.qryBUnApprovedOrder.FieldByName('财务部审核状态').Value=True then
  begin
    Application.MessageBox('无权修改，请直接反审核！','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
  if cxgrdbtblvwMarketingDepReport.ViewData.RowCount>0  then
   begin
    FrmYXBSB:=TFrmYXBSB.Create(Self);
    FrmYXBSB.tag:=3;
    FrmYXBSB.ShowModal;
    FreeAndNil(FrmYXBSB);
   end;
  end;
 end;
end;

procedure TFrmBDDSH.RzToolButton9Click(Sender: TObject);
begin
  if DM.qryBUnApprovedOrder.FieldByName('销售部申报状态').Value=true then
  begin
    Application.MessageBox('该订单已申报！','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  if cxgrdbtblvwMarketingDepReport.ViewData.RowCount>0  then
   begin
    FrmYXBSB:=TFrmYXBSB.Create(Self);
    FrmYXBSB.tag:=3;
    FrmYXBSB.ShowModal;
    FreeAndNil(FrmYXBSB);
   end;
end;

procedure TFrmBDDSH.btn1Click(Sender: TObject);
begin
with dm.qrydy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_棉布订单审核 where 订单号=:ddh');
    Parameters.ParamByName('ddh').value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
    Open;
  end;
 if DM.qrydy.FieldByName('公司领导审批状态').value='1' then
 begin
  //DM.ADOQuerycw.Filtered:=True;
  //DM.ADOQuerycw.Filter:=cxGridDBTableView2.DataController.Filter.FilterText; //保证与cxgrid当前数据
  try
  if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw1.fr3') then
   begin
    Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
    Exit;
   end;
   frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw1.fr3');
   frxrprt1.PrepareReport();
   frxrprt1.ShowReport(True);
  except
   Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);  end;
  with dm.qrydyzt do
  begin
    Close;
    SQL.Clear;
    SQL.Add('update 棉布订单信息表 set 营销打印状态=:yxddzt where 订单号=:ddh');
    Parameters.ParamByName('yxddzt').Value:=1;
    Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
    ExecSQL;
  end;
 end
 else
 begin
  try
  if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw1.fr3') then
   begin
    Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
    Exit;
   end;
   frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw1.fr3');
   frxrprt1.PrepareReport();
   frxrprt1.ShowReport(True);
  except
   Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);  end;
 end;
end;

procedure TFrmBDDSH.cxgrdbtblvwMarketingDepReportFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
    with DM.qry2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 棉布订单信息表 where 订单号=:ddh');
      Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
      Open;
    end;
 if DM.qry2.FieldByName('公司领导审核状态').value=1 then
 begin
   RzToolButton8.Enabled:=False;
 end;
end;

procedure TFrmBDDSH.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnGridDBTableView1Column13.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end
  else
  begin
    if  (ARecord.Values[cxgrdbclmnGridDBTableView1Column14.Index]=True) then
    begin
     AStyle:=cxstyl19;
    end;
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnGridDBTableView2Column18.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnGridDBTableView3Column7.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end
  else
  begin
    if  (ARecord.Values[cxgrdbclmnGridDBTableView3Column8.Index]=True) then
    begin
     AStyle:=cxstyl19;
    end;
  end;
end;



procedure TFrmBDDSH.cxGridDBTableView4StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnGridDBTableView4Column7.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView5StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnGridDBTableView5Column7.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end
  else
  begin
    if  (ARecord.Values[cxgrdbclmnGridDBTableView5Column8.Index]=True) then
    begin
     AStyle:=cxstyl19;
    end;
  end;
end;

procedure TFrmBDDSH.cxGridDBTableView6StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnGridDBTableView6Column7.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end
  else
  begin
    if  (ARecord.Values[cxgrdbclmnGridDBTableView6Column8.Index]=True) then
    begin
     AStyle:=cxstyl19;
    end;
  end;
end;
end.
