unit zfpzfg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxTextEdit, cxCheckBox, cxBlobEdit, cxCalendar, RzButton,
  ExtCtrls, RzPanel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, ImgList,IniFiles,
  frxClass, frxDBSet, frxGradient, frxExportXLS, frxRich, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  Tfrmzfpzfg = class(TForm)
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxgrdOrderExamine: TcxGrid;
    cxgrdbtblvwMarketingDepReport: TcxGridDBTableView;
    cxgrdbclmnMarketingDepReportDBColumn26: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportColumn2: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn1: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn2: TcxGridDBColumn;
    cxgrdbclmnSpecification1: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn3: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn5: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn4: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn18: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn21: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn10: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn11: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn12: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn13: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn14: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn15: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn7: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn24: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn17: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn18: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn19: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn20: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn21: TcxGridDBColumn;
    cxgrdbtblvwsbxx: TcxGridDBTableView;
    cxgrdbtblvwsbxxColumn1: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn2: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn3: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn4: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn5: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn6: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn7: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn8: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn9: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn10: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn11: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn12: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn13: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn14: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn15: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn16: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn17: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn18: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn19: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn20: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn21: TcxGridDBColumn;
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
    cxgrdbtblvwsbxxColumn52: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn53: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn51: TcxGridDBColumn;
    cxgrdbtblvwsbxxColumn50: TcxGridDBColumn;
    cxgrdlvlMarketingDepReport: TcxGridLevel;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnExit: TRzToolButton;
    RzToolButton1: TRzToolButton;
    btnModify: TRzToolButton;
    btnDelete: TRzToolButton;
    RzToolButton2: TRzToolButton;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    RzPanel1: TRzPanel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton5: TRzToolButton;
    cxgrdbtblvwMarketingDepReportColumn6: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn8: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
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
    cxGridDBTableView2: TcxGridDBTableView;
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
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBColumn112: TcxGridDBColumn;
    cxGridDBColumn113: TcxGridDBColumn;
    cxGridDBColumn114: TcxGridDBColumn;
    cxGridDBColumn115: TcxGridDBColumn;
    cxGridDBColumn116: TcxGridDBColumn;
    cxGridDBColumn117: TcxGridDBColumn;
    cxGridDBColumn118: TcxGridDBColumn;
    cxGridDBColumn119: TcxGridDBColumn;
    cxGridDBColumn120: TcxGridDBColumn;
    cxGridDBColumn121: TcxGridDBColumn;
    cxGridDBColumn122: TcxGridDBColumn;
    cxGridDBColumn123: TcxGridDBColumn;
    cxGridDBColumn124: TcxGridDBColumn;
    cxGridDBColumn125: TcxGridDBColumn;
    cxGridDBColumn126: TcxGridDBColumn;
    cxGridDBColumn127: TcxGridDBColumn;
    cxGridDBColumn128: TcxGridDBColumn;
    cxGridDBColumn129: TcxGridDBColumn;
    cxGridDBColumn130: TcxGridDBColumn;
    cxGridDBColumn131: TcxGridDBColumn;
    cxGridDBColumn132: TcxGridDBColumn;
    cxGridDBColumn133: TcxGridDBColumn;
    cxGridDBColumn134: TcxGridDBColumn;
    cxGridDBColumn135: TcxGridDBColumn;
    cxGridDBColumn136: TcxGridDBColumn;
    cxGridDBColumn137: TcxGridDBColumn;
    cxGridDBColumn138: TcxGridDBColumn;
    cxGridDBColumn139: TcxGridDBColumn;
    cxGridDBColumn140: TcxGridDBColumn;
    cxGridDBColumn141: TcxGridDBColumn;
    cxGridDBColumn142: TcxGridDBColumn;
    cxGridDBColumn143: TcxGridDBColumn;
    cxGridDBColumn144: TcxGridDBColumn;
    cxGridDBColumn145: TcxGridDBColumn;
    cxGridDBColumn146: TcxGridDBColumn;
    cxGridDBColumn147: TcxGridDBColumn;
    cxGridDBColumn148: TcxGridDBColumn;
    cxGridDBColumn149: TcxGridDBColumn;
    cxGridDBColumn150: TcxGridDBColumn;
    cxGridDBColumn151: TcxGridDBColumn;
    cxGridDBColumn152: TcxGridDBColumn;
    cxGridDBColumn153: TcxGridDBColumn;
    cxGridDBColumn154: TcxGridDBColumn;
    cxGridDBColumn155: TcxGridDBColumn;
    cxGridDBColumn156: TcxGridDBColumn;
    cxGridDBColumn157: TcxGridDBColumn;
    cxGridDBColumn158: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    frxrprt1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxgrdbtblvwMarketingDepReportColumn9: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn16: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn22: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn23: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn159: TcxGridDBColumn;
    cxGridDBColumn160: TcxGridDBColumn;
    cxGridDBColumn161: TcxGridDBColumn;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5Column2: TcxGridDBColumn;
    cxGridDBColumn162: TcxGridDBColumn;
    cxGridDBColumn163: TcxGridDBColumn;
    cxGridDBColumn164: TcxGridDBColumn;
    cxGridDBColumn165: TcxGridDBColumn;
    cxGridDBColumn166: TcxGridDBColumn;
    cxGridDBColumn167: TcxGridDBColumn;
    cxGridDBColumn168: TcxGridDBColumn;
    cxGridDBColumn169: TcxGridDBColumn;
    cxGridDBColumn170: TcxGridDBColumn;
    cxGridDBColumn171: TcxGridDBColumn;
    cxGridDBColumn172: TcxGridDBColumn;
    cxGridDBColumn173: TcxGridDBColumn;
    cxGridDBColumn174: TcxGridDBColumn;
    cxGridDBColumn175: TcxGridDBColumn;
    cxGridDBColumn176: TcxGridDBColumn;
    cxGridDBColumn177: TcxGridDBColumn;
    cxGridDBColumn178: TcxGridDBColumn;
    cxGridDBColumn179: TcxGridDBColumn;
    cxGridDBColumn180: TcxGridDBColumn;
    cxGridDBColumn181: TcxGridDBColumn;
    cxGridDBColumn182: TcxGridDBColumn;
    cxGridDBColumn183: TcxGridDBColumn;
    cxGridDBColumn184: TcxGridDBColumn;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn185: TcxGridDBColumn;
    cxGridDBColumn186: TcxGridDBColumn;
    cxGridDBColumn187: TcxGridDBColumn;
    cxGridDBColumn188: TcxGridDBColumn;
    cxGridDBColumn189: TcxGridDBColumn;
    cxGridDBColumn190: TcxGridDBColumn;
    cxGridDBColumn191: TcxGridDBColumn;
    cxGridDBColumn192: TcxGridDBColumn;
    cxGridDBColumn193: TcxGridDBColumn;
    cxGridDBColumn194: TcxGridDBColumn;
    cxGridDBColumn195: TcxGridDBColumn;
    cxGridDBColumn196: TcxGridDBColumn;
    cxGridDBColumn197: TcxGridDBColumn;
    cxGridDBColumn198: TcxGridDBColumn;
    cxGridDBColumn199: TcxGridDBColumn;
    cxGridDBColumn200: TcxGridDBColumn;
    cxGridDBColumn201: TcxGridDBColumn;
    cxGridDBColumn202: TcxGridDBColumn;
    cxGridDBColumn203: TcxGridDBColumn;
    cxGridDBColumn204: TcxGridDBColumn;
    cxGridDBColumn205: TcxGridDBColumn;
    cxGridDBColumn206: TcxGridDBColumn;
    cxGridDBColumn207: TcxGridDBColumn;
    cxGridDBColumn208: TcxGridDBColumn;
    cxGridDBColumn209: TcxGridDBColumn;
    cxGridDBColumn210: TcxGridDBColumn;
    cxGridDBColumn211: TcxGridDBColumn;
    cxGridDBColumn212: TcxGridDBColumn;
    cxGridDBColumn213: TcxGridDBColumn;
    cxGridDBColumn214: TcxGridDBColumn;
    cxGridDBColumn215: TcxGridDBColumn;
    cxGridDBColumn216: TcxGridDBColumn;
    cxGridDBColumn217: TcxGridDBColumn;
    cxGridDBColumn218: TcxGridDBColumn;
    cxGridDBColumn219: TcxGridDBColumn;
    cxGridDBColumn220: TcxGridDBColumn;
    cxGridDBColumn221: TcxGridDBColumn;
    cxGridDBColumn222: TcxGridDBColumn;
    cxGridDBColumn223: TcxGridDBColumn;
    cxGridDBColumn224: TcxGridDBColumn;
    cxGridDBColumn225: TcxGridDBColumn;
    cxGridDBColumn226: TcxGridDBColumn;
    cxGridDBColumn227: TcxGridDBColumn;
    cxGridDBColumn228: TcxGridDBColumn;
    cxGridDBColumn229: TcxGridDBColumn;
    cxGridDBColumn230: TcxGridDBColumn;
    cxGridDBColumn231: TcxGridDBColumn;
    cxGridDBColumn232: TcxGridDBColumn;
    cxGridDBColumn233: TcxGridDBColumn;
    cxGridDBColumn234: TcxGridDBColumn;
    cxGridDBColumn235: TcxGridDBColumn;
    cxGridDBColumn236: TcxGridDBColumn;
    cxGridDBColumn237: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn238: TcxGridDBColumn;
    cxGridDBColumn239: TcxGridDBColumn;
    cxGridDBColumn240: TcxGridDBColumn;
    cxGridDBColumn241: TcxGridDBColumn;
    cxGridDBColumn242: TcxGridDBColumn;
    cxGridDBColumn243: TcxGridDBColumn;
    cxGridDBColumn244: TcxGridDBColumn;
    cxGridDBColumn245: TcxGridDBColumn;
    cxGridDBColumn246: TcxGridDBColumn;
    cxGridDBColumn247: TcxGridDBColumn;
    cxGridDBColumn248: TcxGridDBColumn;
    cxGridDBColumn249: TcxGridDBColumn;
    cxGridDBColumn250: TcxGridDBColumn;
    cxGridDBColumn251: TcxGridDBColumn;
    cxGridDBColumn252: TcxGridDBColumn;
    cxGridDBColumn253: TcxGridDBColumn;
    cxGridDBColumn254: TcxGridDBColumn;
    cxGridDBColumn255: TcxGridDBColumn;
    cxGridDBColumn256: TcxGridDBColumn;
    cxGridDBColumn257: TcxGridDBColumn;
    cxGridDBColumn258: TcxGridDBColumn;
    cxGridDBColumn259: TcxGridDBColumn;
    cxGridDBColumn260: TcxGridDBColumn;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn261: TcxGridDBColumn;
    cxGridDBColumn262: TcxGridDBColumn;
    cxGridDBColumn263: TcxGridDBColumn;
    cxGridDBColumn264: TcxGridDBColumn;
    cxGridDBColumn265: TcxGridDBColumn;
    cxGridDBColumn266: TcxGridDBColumn;
    cxGridDBColumn267: TcxGridDBColumn;
    cxGridDBColumn268: TcxGridDBColumn;
    cxGridDBColumn269: TcxGridDBColumn;
    cxGridDBColumn270: TcxGridDBColumn;
    cxGridDBColumn271: TcxGridDBColumn;
    cxGridDBColumn272: TcxGridDBColumn;
    cxGridDBColumn273: TcxGridDBColumn;
    cxGridDBColumn274: TcxGridDBColumn;
    cxGridDBColumn275: TcxGridDBColumn;
    cxGridDBColumn276: TcxGridDBColumn;
    cxGridDBColumn277: TcxGridDBColumn;
    cxGridDBColumn278: TcxGridDBColumn;
    cxGridDBColumn279: TcxGridDBColumn;
    cxGridDBColumn280: TcxGridDBColumn;
    cxGridDBColumn281: TcxGridDBColumn;
    cxGridDBColumn282: TcxGridDBColumn;
    cxGridDBColumn283: TcxGridDBColumn;
    cxGridDBColumn284: TcxGridDBColumn;
    cxGridDBColumn285: TcxGridDBColumn;
    cxGridDBColumn286: TcxGridDBColumn;
    cxGridDBColumn287: TcxGridDBColumn;
    cxGridDBColumn288: TcxGridDBColumn;
    cxGridDBColumn289: TcxGridDBColumn;
    cxGridDBColumn290: TcxGridDBColumn;
    cxGridDBColumn291: TcxGridDBColumn;
    cxGridDBColumn292: TcxGridDBColumn;
    cxGridDBColumn293: TcxGridDBColumn;
    cxGridDBColumn294: TcxGridDBColumn;
    cxGridDBColumn295: TcxGridDBColumn;
    cxGridDBColumn296: TcxGridDBColumn;
    cxGridDBColumn297: TcxGridDBColumn;
    cxGridDBColumn298: TcxGridDBColumn;
    cxGridDBColumn299: TcxGridDBColumn;
    cxGridDBColumn300: TcxGridDBColumn;
    cxGridDBColumn301: TcxGridDBColumn;
    cxGridDBColumn302: TcxGridDBColumn;
    cxGridDBColumn303: TcxGridDBColumn;
    cxGridDBColumn304: TcxGridDBColumn;
    cxGridDBColumn305: TcxGridDBColumn;
    cxGridDBColumn306: TcxGridDBColumn;
    cxGridDBColumn307: TcxGridDBColumn;
    cxGridDBColumn308: TcxGridDBColumn;
    cxGridDBColumn309: TcxGridDBColumn;
    cxGridDBColumn310: TcxGridDBColumn;
    cxGridDBColumn311: TcxGridDBColumn;
    cxGridDBColumn312: TcxGridDBColumn;
    cxGridDBColumn313: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn314: TcxGridDBColumn;
    cxGridDBColumn315: TcxGridDBColumn;
    cxGridDBColumn316: TcxGridDBColumn;
    cxGridDBColumn317: TcxGridDBColumn;
    cxGridDBColumn318: TcxGridDBColumn;
    cxGridDBColumn319: TcxGridDBColumn;
    cxGridDBColumn320: TcxGridDBColumn;
    cxGridDBColumn321: TcxGridDBColumn;
    cxGridDBColumn322: TcxGridDBColumn;
    cxGridDBColumn323: TcxGridDBColumn;
    cxGridDBColumn324: TcxGridDBColumn;
    cxGridDBColumn325: TcxGridDBColumn;
    cxGridDBColumn326: TcxGridDBColumn;
    cxGridDBColumn327: TcxGridDBColumn;
    cxGridDBColumn328: TcxGridDBColumn;
    cxGridDBColumn329: TcxGridDBColumn;
    cxGridDBColumn330: TcxGridDBColumn;
    cxGridDBColumn331: TcxGridDBColumn;
    cxGridDBColumn332: TcxGridDBColumn;
    cxGridDBColumn333: TcxGridDBColumn;
    cxGridDBColumn334: TcxGridDBColumn;
    cxGridDBColumn335: TcxGridDBColumn;
    cxGridDBColumn336: TcxGridDBColumn;
    cxGridDBColumn337: TcxGridDBColumn;
    cxGridDBColumn338: TcxGridDBColumn;
    cxGridDBColumn339: TcxGridDBColumn;
    cxGridDBColumn340: TcxGridDBColumn;
    cxGridDBColumn341: TcxGridDBColumn;
    cxGridDBTableView10: TcxGridDBTableView;
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
    cxGridDBColumn368: TcxGridDBColumn;
    cxGridDBColumn369: TcxGridDBColumn;
    cxGridDBColumn370: TcxGridDBColumn;
    cxGridDBColumn371: TcxGridDBColumn;
    cxGridDBColumn372: TcxGridDBColumn;
    cxGridDBColumn373: TcxGridDBColumn;
    cxGridDBColumn374: TcxGridDBColumn;
    cxGridDBColumn375: TcxGridDBColumn;
    cxGridDBColumn376: TcxGridDBColumn;
    cxGridDBColumn377: TcxGridDBColumn;
    cxGridDBColumn378: TcxGridDBColumn;
    cxGridDBColumn379: TcxGridDBColumn;
    cxGridDBColumn380: TcxGridDBColumn;
    cxGridDBColumn381: TcxGridDBColumn;
    cxGridDBColumn382: TcxGridDBColumn;
    cxGridDBColumn383: TcxGridDBColumn;
    cxGridDBColumn384: TcxGridDBColumn;
    cxGridDBColumn385: TcxGridDBColumn;
    cxGridDBColumn386: TcxGridDBColumn;
    cxGridDBColumn387: TcxGridDBColumn;
    cxGridDBColumn388: TcxGridDBColumn;
    cxGridDBColumn389: TcxGridDBColumn;
    cxGridDBColumn390: TcxGridDBColumn;
    cxGridDBColumn391: TcxGridDBColumn;
    cxGridDBColumn392: TcxGridDBColumn;
    cxGridDBColumn393: TcxGridDBColumn;
    cxGridDBColumn394: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    cxGridDBTableView9Column2: TcxGridDBColumn;
    cxGridDBTableView9Column3: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn24: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBTableView5Column4: TcxGridDBColumn;
    cxGridDBTableView5Column5: TcxGridDBColumn;
    frxRichObject1: TfrxRichObject;
    frxXLSExport1: TfrxXLSExport;
    frxGradientObject1: TfrxGradientObject;
    btn1: TRzToolButton;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView7DblClick(Sender: TObject);
    procedure cxGridDBTableView9DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    user,Dep,zw:string;   //录入人和所在部门信息 权限
    { Public declarations }
  end;

var
  frmzfpzfg: Tfrmzfpzfg;
  lFile: TiniFile;
  procedure pzfpzfgdsh(AHandle:THandle);stdcall;
implementation
   uses UDM,zfpzfglr,zfpzfgxssh,zfpzfgldsh,zfpzfgfbyxsh,zfpzfgcx,zfpzfgscglbsh,zfpzfggssp;
{$R *.dfm}
 procedure pzfpzfgdsh(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  frmzfpzfg:=Tfrmzfpzfg.Create(Application);
  try
    frmzfpzfg.ShowModal;
  finally
    Tfrmzfpzfg(frmzfpzfg).Free;
  end;
end;
procedure Tfrmzfpzfg.btnExitClick(Sender: TObject);
begin
Close;
end;

procedure Tfrmzfpzfg.RzToolButton6Click(Sender: TObject);
begin
close;
end;

procedure Tfrmzfpzfg.RzToolButton1Click(Sender: TObject);
begin
    frmzfpzfglr:=Tfrmzfpzfglr.Create(Self);
    frmzfpzfglr.tag:=1;
    frmzfpzfglr.ShowModal;
    FreeAndNil(frmzfpzfglr);
end;

procedure Tfrmzfpzfg.btnModifyClick(Sender: TObject);
begin
    frmzfpzfglr:=Tfrmzfpzfglr.Create(Self);
    frmzfpzfglr.tag:=2;
    frmzfpzfglr.ShowModal;
    FreeAndNil(frmzfpzfglr);
end;

procedure Tfrmzfpzfg.cxGridDBTableView1DblClick(Sender: TObject);
begin
      if cxGridDBTableView1.ViewData.RowCount>0 then
  begin
    frmzfpzfgxssh:=Tfrmzfpzfgxssh.Create(Self);
    frmzfpzfgxssh.ShowModal;
    FreeAndNil(frmzfpzfgxssh);
  end;
end;

procedure Tfrmzfpzfg.cxGridDBTableView3DblClick(Sender: TObject);
begin
    if cxGridDBTableView3.ViewData.RowCount>0 then
  begin
    frmzfpzfgldsh:=Tfrmzfpzfgldsh.Create(Self);
    frmzfpzfgldsh.ShowModal;
    FreeAndNil(frmzfpzfgldsh);
  end;
end;

procedure Tfrmzfpzfg.cxGridDBTableView5DblClick(Sender: TObject);
begin
   if cxGridDBTableView5.ViewData.RowCount>0 then
  begin
    frmzfpzfgfbyxsh:=Tfrmzfpzfgfbyxsh.Create(Self);
    frmzfpzfgfbyxsh.ShowModal;
    FreeAndNil(frmzfpzfgfbyxsh);
  end;
end;

procedure Tfrmzfpzfg.cxGridDBTableView7DblClick(Sender: TObject);
begin
   if cxGridDBTableView7.ViewData.RowCount>0 then
  begin
    Frmzfpzfgscglbsh:=TFrmzfpzfgscglbsh.Create(Self);
    Frmzfpzfgscglbsh.ShowModal;
    FreeAndNil(Frmzfpzfgscglbsh);
  end;
end;

procedure Tfrmzfpzfg.cxGridDBTableView9DblClick(Sender: TObject);
begin
   if cxGridDBTableView9.ViewData.RowCount>0 then
  begin
    Frmzfpzfggssp:=TFrmzfpzfggssp.Create(Self);
    Frmzfpzfggssp.ShowModal;
    FreeAndNil(Frmzfpzfggssp);
  end;
end;

procedure Tfrmzfpzfg.FormShow(Sender: TObject);
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
    with DM.qryzfd do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 自纺品种翻改通知单 ');
      Open;
    end;
  end;
    if (Dep='营销部') and (zw='织部营销经理') then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=True;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    with DM.qryzfdxssh do
    begin
      Close;                                //营销自审通过后订单到达下一个部门，此部门不再显示
      SQL.Clear;
      SQL.Add('select * from 自纺品种翻改通知单 where 销售部审核状态=0');
      Open;
    end;
  end;
    if (Dep='公司领导') and (zw='织部副总') then //王扬
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=True;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    with DM.qryzfdldsh do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 自纺品种翻改通知单 where 销售部审核状态=1 and 领导审核状态=0');
      Open;
    end;
  end;
    if (Dep='纺纱营销部') and (zw='纺部营销业务员')then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=True;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    with DM.qryzfdfsyxbsh do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from  自纺品种翻改通知单 where  领导审核状态=1 ');
      Open;
    end;
  end;
    if (Dep='生产管理部') and  (zw='生产管理经理') then            //王福元
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=True;
    cxTabSheet6.TabVisible:=False;
    with DM.qryzfdscglbsh do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from  自纺品种翻改通知单 where  协理签收状态=1 and 生产管理部审核状态=0');
      Open;
    end;
  end;
    if (Dep='公司领导') and (zw='纺部副总') then    //   杨振涛
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=True;
    with DM.qryzfdgssp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from  自纺品种翻改通知单 where  生产管理部审核状态=1 and 公司审批状态=0');
      Open;
    end;
  end;
    if (Dep='公司领导') and (zw='总经理') then      //     李盛钊
  begin
    cxTabSheet1.TabVisible:=True;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    RzToolButton1.Enabled:=False;
    btnModify.Enabled:=False;
    btnDelete.Enabled:=False;
    with DM.qryzfd do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 自纺品种翻改通知单 ');
      Open;
    end;
  end;
    if(Dep='生产管理部') and   (zw='生产管理业务员') then      //王永亮
  begin
    cxTabSheet1.TabVisible:=True;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    cxTabSheet5.TabVisible:=False;
    cxTabSheet6.TabVisible:=False;
    RzToolButton1.Enabled:=False;
    btnModify.Enabled:=False;
    btnDelete.Enabled:=False;
    with DM.qryzfd do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 自纺品种翻改通知单 ');
      Open;
    end;
  end;
end;

procedure Tfrmzfpzfg.btnDeleteClick(Sender: TObject);
begin
   if cxgrdbtblvwMarketingDepReport.ViewData.RowCount>0 then
  begin
      if Application.MessageBox('确定删除该信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        try
          with DM.qryzfdgl do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete 自纺品种翻改通知单 where 编号=:bh');
            Parameters.ParamByName('bh').Value:=DM.qryzfd.FieldByName('编号').Value;
            ExecSQL;
            Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
          end;
          with DM.qryzfd do
          begin
            Close;
            Open;
          end;
        except
          Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
        end;
      end;
  end
  else
  begin
    Application.MessageBox('没有可以删除的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure Tfrmzfpzfg.btnQueryClick(Sender: TObject);
begin
   if cxgrdbtblvwMarketingDepReport.ViewData.RowCount>0 then
  begin
    frmzfdcx:=Tfrmzfdcx.Create(Self);
    frmzfdcx.Tag:=1;
    frmzfdcx.ShowModal;
    FreeAndNil(frmzfdcx);
  end;
end;

procedure Tfrmzfpzfg.RzToolButton3Click(Sender: TObject);
begin
    if cxGridDBTableView5.ViewData.RowCount>0 then
  begin
    frmzfdcx:=Tfrmzfdcx.Create(Self);
    frmzfdcx.Tag:=2;
    frmzfdcx.ShowModal;
    FreeAndNil(frmzfdcx);
  end;
end;

procedure Tfrmzfpzfg.RzToolButton5Click(Sender: TObject);
begin
            with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from 自纺品种翻改通知单 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qryzfdfsyxbsh.FieldByName('编号').AsString;
        Open;
       end;
    //DM.qryzfdfsyxbsh.Filtered:=True;
   // DM.qryzfdfsyxbsh.Filter:=cxGridDBTableView5.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\zfpzfgfsysb.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\zfpzfgfsysb.fr3');
    frxrprt1.PrepareReport();
    frxrprt1.ShowReport(True);
  except
    Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);  end;
end;

procedure Tfrmzfpzfg.RzToolButton2Click(Sender: TObject);
begin
          with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from 自纺品种翻改通知单 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qryzfd.FieldByName('编号').AsString;
        Open;
       end;
   // DM.qryzfd.Filtered:=True;
   // DM.qryzfd.Filter:=cxgrdbtblvwMarketingDepReport.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\zfpzfg.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\zfpzfg.fr3');
    frxrprt1.PrepareReport();
    frxrprt1.ShowReport(True);
  except
    Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);  end;
end;

procedure Tfrmzfpzfg.btn1Click(Sender: TObject);
begin
    frmzfpzfglr:=Tfrmzfpzfglr.Create(Self);
    frmzfpzfglr.tag:=3;
    frmzfpzfglr.ShowModal;
    FreeAndNil(frmzfpzfglr);
end;

end.
