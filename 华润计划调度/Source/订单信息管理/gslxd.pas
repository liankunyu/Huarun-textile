unit gslxd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxTextEdit, cxCheckBox,
  cxBlobEdit, cxCalendar, RzButton, ExtCtrls, RzPanel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC,IniFiles, frxClass, frxDBSet, frxGradient,
  frxRich, frxExportXLS, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmgslxd = class(TForm)
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxgrdOrderExamine: TcxGrid;
    cxgrdbtblvwMarketingDepReport: TcxGridDBTableView;
    cxgrdbtblvwMarketingDepReportColumn1: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn2: TcxGridDBColumn;
    cxgrdbclmnSpecification1: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn3: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn5: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn4: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn18: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn21: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn22: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn24: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportDBColumn26: TcxGridDBColumn;
    cxgrdbclmnMarketingDepReportColumn2: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn10: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn11: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn12: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn13: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn14: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn15: TcxGridDBColumn;
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
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    btnModify: TRzToolButton;
    btnDelete: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzPanel1: TRzPanel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton5: TRzToolButton;
    cxgrdbtblvwMarketingDepReportColumn6: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn7: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn8: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn16: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn17: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn18: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn19: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn20: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn9: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn21: TcxGridDBColumn;
    cxgrdbtblvwMarketingDepReportColumn22: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
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
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
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
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
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
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
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
    cxGridDBColumn159: TcxGridDBColumn;
    cxGridDBColumn160: TcxGridDBColumn;
    cxGridDBColumn161: TcxGridDBColumn;
    cxGridDBColumn162: TcxGridDBColumn;
    cxGridDBColumn163: TcxGridDBColumn;
    cxGridDBColumn164: TcxGridDBColumn;
    cxGridDBColumn165: TcxGridDBColumn;
    cxGridDBColumn166: TcxGridDBColumn;
    cxGridDBColumn167: TcxGridDBColumn;
    cxGridDBColumn168: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn169: TcxGridDBColumn;
    cxGridDBColumn170: TcxGridDBColumn;
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
    cxGridDBTableView6: TcxGridDBTableView;
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
    cxGridLevel3: TcxGridLevel;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxrprt1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    btn1: TRzToolButton;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
     user,Dep,zw:string;   //录入人和所在部门信息
    { Public declarations }
  end;

var
  Frmgslxd: TFrmgslxd;
  lFile: TiniFile;
  procedure pgsdsh(AHandle:THandle);stdcall;
implementation
 uses gslxdlr,UDM,gsdyxsh,gszbsh,gsdwlsh,gsdcx;
{$R *.dfm}
procedure pgsdsh(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Frmgslxd:=TFrmgslxd.Create(Application);
  try
    Frmgslxd.ShowModal;
  finally
    TFrmgslxd(Frmgslxd).Free;
  end;
end;
procedure TFrmgslxd.FormShow(Sender: TObject);
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
    with DM.qrygsd do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from V_购纱工作联系单 ');
      Open;
    end;
  end;
    if (Dep='营销部') and (zw='织部营销经理') then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=True;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=False;
    with DM.qrygsdyxsh do
    begin
      Close;                                //营销自审通过后订单到达下一个部门，此部门不再显示
      SQL.Clear;
      SQL.Add('select * from V_购纱工作联系单 where 销售审核状态=0');
      Open;
    end;
  end;
    if (Dep='织部工程师')  and (zw='织部工程师')then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=True;
    cxTabSheet4.TabVisible:=False;
    with DM.qrygsdzbsh do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from V_购纱工作联系单 where 销售审核状态=1 and 生产部审核状态=0');
      Open;
    end;
  end;
    if Dep='物流采购部' then
  begin
    cxTabSheet1.TabVisible:=False;
    cxTabSheet2.TabVisible:=False;
    cxTabSheet3.TabVisible:=False;
    cxTabSheet4.TabVisible:=True;
    with DM.qrygsdwlsh do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from  V_购纱工作联系单 where  生产部审核状态=1');
      Open;
    end;
  end;
end;

procedure TFrmgslxd.RzToolButton1Click(Sender: TObject);
begin
    frmgslxdlr:=Tfrmgslxdlr.Create(Self);
    frmgslxdlr.tag:=1;
    frmgslxdlr.ShowModal;
    FreeAndNil(frmgslxdlr);
end;

procedure TFrmgslxd.btnModifyClick(Sender: TObject);
begin
    frmgslxdlr:=Tfrmgslxdlr.Create(Self);
    frmgslxdlr.tag:=2;
    frmgslxdlr.ShowModal;
    FreeAndNil(frmgslxdlr);
end;

procedure TFrmgslxd.btnExitClick(Sender: TObject);
begin
Close;
end;

procedure TFrmgslxd.btnDeleteClick(Sender: TObject);
begin
   if cxgrdbtblvwMarketingDepReport.ViewData.RowCount>0 then
  begin
      if Application.MessageBox('确定删除该信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        try
          with DM.qrygsdgl do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete 购纱联系单 where 编号=:bh');
            Parameters.ParamByName('bh').Value:=DM.qrygsd.FieldByName('编号').Value;
            ExecSQL;
            Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
          end;
          with DM.qrygsd do
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

procedure TFrmgslxd.cxGridDBTableView1DblClick(Sender: TObject);
begin
     if cxGridDBTableView1.ViewData.RowCount>0 then
  begin
    frmgsyxsh:=Tfrmgsyxsh.Create(Self);
    frmgsyxsh.ShowModal;
    FreeAndNil(frmgsyxsh);
  end;
end;

procedure TFrmgslxd.cxGridDBTableView3DblClick(Sender: TObject);
begin
     if cxGridDBTableView3.ViewData.RowCount>0 then
  begin
    frmgszbsh:=Tfrmgszbsh.Create(Self);
    frmgszbsh.ShowModal;
    FreeAndNil(frmgszbsh);
  end;
end;

procedure TFrmgslxd.RzToolButton6Click(Sender: TObject);
begin
close;
end;

procedure TFrmgslxd.cxGridDBTableView5DblClick(Sender: TObject);
begin
      if cxGridDBTableView5.ViewData.RowCount>0 then
  begin
    frmgswlsh:=Tfrmgswlsh.Create(Self);
    frmgswlsh.ShowModal;
    FreeAndNil(frmgswlsh);
  end;
end;

procedure TFrmgslxd.btnQueryClick(Sender: TObject);
begin
   if cxgrdbtblvwMarketingDepReport.ViewData.RowCount>0 then
  begin
    frmgsdcx:=Tfrmgsdcx.Create(Self);
    frmgsdcx.Tag:=1;
    frmgsdcx.ShowModal;
    FreeAndNil(frmgsdcx);
  end;
end;

procedure TFrmgslxd.RzToolButton3Click(Sender: TObject);
begin
    if cxGridDBTableView5.ViewData.RowCount>0 then
  begin
    frmgsdcx:=Tfrmgsdcx.Create(Self);
    frmgsdcx.Tag:=2;
    frmgsdcx.ShowModal;
    FreeAndNil(frmgsdcx);
  end;
end;

procedure TFrmgslxd.RzToolButton2Click(Sender: TObject);
begin
        with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from V_购纱工作联系单 where 订单号=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qrygsd.FieldByName('订单号').AsString;
        Open;
       end;
   // DM.qrygsd.Filtered:=True;
   // DM.qrygsd.Filter:=cxgrdbtblvwMarketingDepReport.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\gzlxd.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\gzlxd.fr3');
    frxrprt1.PrepareReport();
    frxrprt1.ShowReport(True);
  except
    Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);  end;
end;

procedure TFrmgslxd.RzToolButton5Click(Sender: TObject);
begin
          with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from V_购纱工作联系单 where 订单号=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qrygsdwlsh.FieldByName('订单号').AsString;
        Open;
       end;
   // DM.qrygsdwlsh.Filtered:=True;
   // DM.qrygsdwlsh.Filter:=cxGridDBTableView5.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\gsdwlsh.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\gsdwlsh.fr3');
    frxrprt1.PrepareReport();
    frxrprt1.ShowReport(True);
  except
    Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);  end;
end;

procedure TFrmgslxd.btn1Click(Sender: TObject);
begin
    frmgslxdlr:=Tfrmgslxdlr.Create(Self);
    frmgslxdlr.tag:=3;
    frmgslxdlr.ShowModal;
    FreeAndNil(frmgslxdlr);
end;

end.
