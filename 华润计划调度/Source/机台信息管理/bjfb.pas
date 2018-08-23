unit bjfb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, RzLabel, RzPanel, RzButton, ExtCtrls, RzTabs,
  ImgList, cxGraphics, Mask, RzEdit, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel,Math;

type
  TFrmBJFB = class(TForm)
    rzpnlBtns: TRzPanel;
    btnExit: TRzToolButton;
    rzgrpbxQueryCondition: TRzGroupBox;
    lblReportDate: TRzLabel;
    rzpgcntrlLoomLocation: TRzPageControl;
    rztbshtJTLoomLocation: TRzTabSheet;
    rztbshtFTLoomLocation: TRzTabSheet;
    btn1701: TRzToolButton;
    btn1702: TRzToolButton;
    btn1703: TRzToolButton;
    btn1704: TRzToolButton;
    btn1705: TRzToolButton;
    btn1706: TRzToolButton;
    btn31707: TRzToolButton;
    btn31708: TRzToolButton;
    btn1801: TRzToolButton;
    btn1802: TRzToolButton;
    btn1803: TRzToolButton;
    btn1804: TRzToolButton;
    btn1805: TRzToolButton;
    btn1806: TRzToolButton;
    btn31807: TRzToolButton;
    btn31808: TRzToolButton;
    btn1901: TRzToolButton;
    btn1902: TRzToolButton;
    btn1903: TRzToolButton;
    btn1904: TRzToolButton;
    btn1905: TRzToolButton;
    btn1906: TRzToolButton;
    btn31907: TRzToolButton;
    btn31908: TRzToolButton;
    btn2001: TRzToolButton;
    btn2002: TRzToolButton;
    btn2005: TRzToolButton;
    btn2006: TRzToolButton;
    btn32007: TRzToolButton;
    btn32008: TRzToolButton;
    btn2101: TRzToolButton;
    btn2102: TRzToolButton;
    btn2103: TRzToolButton;
    btn2104: TRzToolButton;
    btn2105: TRzToolButton;
    btn2106: TRzToolButton;
    btn32107: TRzToolButton;
    btn32108: TRzToolButton;
    btn2201: TRzToolButton;
    btn2202: TRzToolButton;
    btn2203: TRzToolButton;
    btn2204: TRzToolButton;
    btn2205: TRzToolButton;
    btn2206: TRzToolButton;
    btn32207: TRzToolButton;
    btn32208: TRzToolButton;
    btn2301: TRzToolButton;
    btn2302: TRzToolButton;
    btn2303: TRzToolButton;
    btn2304: TRzToolButton;
    btn2305: TRzToolButton;
    btn2306: TRzToolButton;
    btn32307: TRzToolButton;
    btn32308: TRzToolButton;
    btn2401: TRzToolButton;
    btn2402: TRzToolButton;
    btn2403: TRzToolButton;
    btn2404: TRzToolButton;
    btn2406: TRzToolButton;
    btn32407: TRzToolButton;
    btn32408: TRzToolButton;
    btn2501: TRzToolButton;
    btn2502: TRzToolButton;
    btn2503: TRzToolButton;
    btn2504: TRzToolButton;
    btn2505: TRzToolButton;
    btn2506: TRzToolButton;
    btn32507: TRzToolButton;
    btn32508: TRzToolButton;
    btn2601: TRzToolButton;
    btn2602: TRzToolButton;
    btn2603: TRzToolButton;
    btn2604: TRzToolButton;
    btn2605: TRzToolButton;
    btn2606: TRzToolButton;
    btn32607: TRzToolButton;
    btn32608: TRzToolButton;
    btn2701: TRzToolButton;
    btn2702: TRzToolButton;
    btn2703: TRzToolButton;
    btn2704: TRzToolButton;
    btn2705: TRzToolButton;
    btn2706: TRzToolButton;
    btn32707: TRzToolButton;
    btn32708: TRzToolButton;
    btn2801: TRzToolButton;
    btn2802: TRzToolButton;
    btn2803: TRzToolButton;
    btn2804: TRzToolButton;
    btn2805: TRzToolButton;
    btn2806: TRzToolButton;
    btn32807: TRzToolButton;
    btn32808: TRzToolButton;
    btn42901: TRzToolButton;
    btn42902: TRzToolButton;
    btn42903: TRzToolButton;
    btn42904: TRzToolButton;
    btn42905: TRzToolButton;
    btn32907: TRzToolButton;
    btn32908: TRzToolButton;
    btn33007: TRzToolButton;
    btn33008: TRzToolButton;
    btn33107: TRzToolButton;
    btn33108: TRzToolButton;
    btn33207: TRzToolButton;
    btn33208: TRzToolButton;
    btn43201: TRzToolButton;
    btn43202: TRzToolButton;
    btn43203: TRzToolButton;
    btn43204: TRzToolButton;
    btn43205: TRzToolButton;
    btn2003: TRzToolButton;
    btn2004: TRzToolButton;
    btnL101: TRzToolButton;
    btnL102: TRzToolButton;
    btnL201: TRzToolButton;
    btnL301: TRzToolButton;
    btnL401: TRzToolButton;
    btnL501: TRzToolButton;
    btnL601: TRzToolButton;
    btnL701: TRzToolButton;
    btnL801: TRzToolButton;
    btnL901: TRzToolButton;
    btn1001: TRzToolButton;
    btn1101: TRzToolButton;
    btn1201: TRzToolButton;
    btn1301: TRzToolButton;
    btn1601: TRzToolButton;
    btn1302: TRzToolButton;
    btn1202: TRzToolButton;
    btn1102: TRzToolButton;
    btn1002: TRzToolButton;
    btnL902: TRzToolButton;
    btnL802: TRzToolButton;
    btnL702: TRzToolButton;
    btnL602: TRzToolButton;
    btnL502: TRzToolButton;
    btnL402: TRzToolButton;
    btnL302: TRzToolButton;
    btnL202: TRzToolButton;
    btnL103: TRzToolButton;
    btnL203: TRzToolButton;
    btnL104: TRzToolButton;
    btnL204: TRzToolButton;
    btnL105: TRzToolButton;
    btnL205: TRzToolButton;
    btnL106: TRzToolButton;
    btnL206: TRzToolButton;
    btnL107: TRzToolButton;
    btnL207: TRzToolButton;
    btnL108: TRzToolButton;
    btnL208: TRzToolButton;
    btnL303: TRzToolButton;
    btnL403: TRzToolButton;
    btnL503: TRzToolButton;
    btnL603: TRzToolButton;
    btnL703: TRzToolButton;
    btnL803: TRzToolButton;
    btnL903: TRzToolButton;
    btn1003: TRzToolButton;
    btn1103: TRzToolButton;
    btn1203: TRzToolButton;
    btn1303: TRzToolButton;
    btn1304: TRzToolButton;
    btn1204: TRzToolButton;
    btn1104: TRzToolButton;
    btn1004: TRzToolButton;
    btnL904: TRzToolButton;
    btnL804: TRzToolButton;
    btnL704: TRzToolButton;
    btnL604: TRzToolButton;
    btnL504: TRzToolButton;
    btnL404: TRzToolButton;
    btnL304: TRzToolButton;
    btnL305: TRzToolButton;
    btnL405: TRzToolButton;
    btnL505: TRzToolButton;
    btnL605: TRzToolButton;
    btnL705: TRzToolButton;
    btnL805: TRzToolButton;
    btnL905: TRzToolButton;
    btn1005: TRzToolButton;
    btn1105: TRzToolButton;
    btn1205: TRzToolButton;
    btn1305: TRzToolButton;
    btn1206: TRzToolButton;
    btn1106: TRzToolButton;
    btn1006: TRzToolButton;
    btnL306: TRzToolButton;
    btnL406: TRzToolButton;
    btnL506: TRzToolButton;
    btnL606: TRzToolButton;
    btnL706: TRzToolButton;
    btnL806: TRzToolButton;
    btnL906: TRzToolButton;
    btn1207: TRzToolButton;
    btn1107: TRzToolButton;
    btn1007: TRzToolButton;
    btnL907: TRzToolButton;
    btnL807: TRzToolButton;
    btnL707: TRzToolButton;
    btnL607: TRzToolButton;
    btnL507: TRzToolButton;
    btnL407: TRzToolButton;
    btnL307: TRzToolButton;
    btnL308: TRzToolButton;
    btnL408: TRzToolButton;
    btnL508: TRzToolButton;
    btnL608: TRzToolButton;
    btnL708: TRzToolButton;
    btnL808: TRzToolButton;
    btnL908: TRzToolButton;
    btn1008: TRzToolButton;
    btn1108: TRzToolButton;
    btn1208: TRzToolButton;
    btn1308: TRzToolButton;
    btn1307: TRzToolButton;
    btn1407: TRzToolButton;
    btn1408: TRzToolButton;
    btn1507: TRzToolButton;
    btn1508: TRzToolButton;
    btn1607: TRzToolButton;
    btn1608: TRzToolButton;
    btn1605: TRzToolButton;
    btn1604: TRzToolButton;
    btn1603: TRzToolButton;
    btn1602: TRzToolButton;
    btn1401: TRzToolButton;
    btn1501: TRzToolButton;
    btn1402: TRzToolButton;
    btn1502: TRzToolButton;
    btn1403: TRzToolButton;
    btn1503: TRzToolButton;
    btn1404: TRzToolButton;
    btn1504: TRzToolButton;
    btn1405: TRzToolButton;
    btn1505: TRzToolButton;
    btn1306: TRzToolButton;
    btn1406: TRzToolButton;
    btn1506: TRzToolButton;
    btn1606: TRzToolButton;
    btn2405: TRzToolButton;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    Label225: TLabel;
    Label226: TLabel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    Label237: TLabel;
    Label238: TLabel;
    Label239: TLabel;
    Label240: TLabel;
    Label241: TLabel;
    Label242: TLabel;
    Label243: TLabel;
    Label244: TLabel;
    Label245: TLabel;
    Label247: TLabel;
    Label248: TLabel;
    Label249: TLabel;
    Label250: TLabel;
    Label251: TLabel;
    Label246: TLabel;
    Label252: TLabel;
    Label253: TLabel;
    Label254: TLabel;
    Label255: TLabel;
    Label256: TLabel;
    Label262: TLabel;
    Label263: TLabel;
    Label264: TLabel;
    Label265: TLabel;
    Label266: TLabel;
    btnQuery: TRzToolButton;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    RzToolButton3: TRzToolButton;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl1: TRzLabel;
    lbl2: TRzLabel;
    edt1: TRzEdit;
    lbl3: TRzLabel;
    edt2: TRzEdit;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBJFB: TFrmBJFB;
  procedure pbjfb(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}

procedure pbjfb(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBJFB:=TFrmBJFB.Create(Application);
  try
    FrmBJFB.ShowModal;
  finally
    TFrmBJFB(FrmBJFB).Free;
  end;
end;

procedure TFrmBJFB.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBJFB.btnQueryClick(Sender: TObject);
var
  i,j:Integer;
begin
  with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息 where 预了机时间 between :ylzrq1 and :ylzrq2 and 品名<>:pm');
    Parameters.ParamByName('ylzrq1').Value:=DateToStr(dtp1.Date);  //信息不及时性造成的，"今天"只能看"昨天"的数据
    Parameters.ParamByName('ylzrq2').Value:=DateToStr(dtp2.Date);
    Parameters.ParamByName('pm').Value:=' ';
    Open;
  end;
  if DM.qryBShutDownDaysQuery.Eof  then
  begin
     Application.MessageBox('在查询的日期内没有相应的机台了机！','提示',MB_OK+MB_ICONINFORMATION);
     dtp1.SetFocus;
     Exit;
  end;
  DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
  begin
    for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
        if  (TRzToolButton(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value)   then
        begin
          if DM.qryBShutDownDaysQuery.FieldByName('了机后状态').Value='上轴' then
          begin
            TRzToolButton(Self.Components[j]).Color:=clRed;
          end
          else
          begin
            TRzToolButton(Self.Components[j]).Color:=clGreen;
          end;
        end
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
 with DM.qry3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 机台了机信息 where 了机后状态=:ljhzt and 预了机时间 between :ylzrq1 and :ylzrq2 and 品名<>:pm');
    Parameters.ParamByName('ljhzt').Value:='上轴';
    Parameters.ParamByName('ylzrq1').Value:=DateToStr(dtp1.Date);  //信息不及时性造成的，"今天"只能看"昨天"的数据
    Parameters.ParamByName('ylzrq2').Value:=DateToStr(dtp2.Date);
    Parameters.ParamByName('pm').Value:=' ';
    Open;
  end;
 edt1.Text:=DM.qry3.FieldByName('record_count').AsString;
 with DM.qry4 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count1 from 机台了机信息 where 了机后状态=:ljhzt and 预了机时间 between :ylzrq1 and :ylzrq2 and 品名<>:pm');
    Parameters.ParamByName('ljhzt').Value:='结经';
    Parameters.ParamByName('ylzrq1').Value:=DateToStr(dtp1.Date);  //信息不及时性造成的，"今天"只能看"昨天"的数据
    Parameters.ParamByName('ylzrq2').Value:=DateToStr(dtp2.Date);
    Parameters.ParamByName('pm').Value:=' ';
    Open;
  end;
 edt2.Text:=DM.qry4.FieldByName('record_count1').AsString;
  end;
end;

procedure TFrmBJFB.RzToolButton1Click(Sender: TObject);
var
  i,j:Integer;
begin
   with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=' ';
    Open;
  end;
  if DM.qryBShutDownDaysQuery.Eof  then
  begin
     Application.MessageBox('无空闲机台！','提示',MB_OK+MB_ICONINFORMATION);
     dtp1.SetFocus;
     Exit;
  end;
  DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
  begin
    for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
        if  (TRzToolButton(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
            TRzToolButton(Self.Components[j]).Color:=clRed;
        end
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
  end;
end;

procedure TFrmBJFB.RzToolButton2Click(Sender: TObject);
var
  j:Integer;
begin
 with DM.qry3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 机台了机信息 where 了机后状态=:ljhzt and 品名<>:pz');
    Parameters.ParamByName('ljhzt').Value:='上轴';
    Parameters.ParamByName('pz').Value:=' ';
    Open;
  end;
 edt1.Text:=DM.qry3.FieldByName('record_count').AsString;
 with DM.qry4 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count1 from 机台了机信息 where 了机后状态=:ljhzt and 品名<>:pz');
    Parameters.ParamByName('ljhzt').Value:='结经';
    Parameters.ParamByName('pz').Value:=' ';
    Open;
  end;
 edt2.Text:=DM.qry4.FieldByName('record_count1').AsString;
   for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
       TRzToolButton(Self.Components[j]).Color:=clSkyBlue;
      end;
   end;
   end;

procedure TFrmBJFB.FormShow(Sender: TObject);
var
  i,j:Integer;
  pz,yljsj:string;
begin
 with DM.qry3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 机台了机信息 where 了机后状态=:ljhzt and 品名<>:pz');
    Parameters.ParamByName('ljhzt').Value:='上轴';
    Parameters.ParamByName('pz').Value:=' ';
    Open;
  end;
 edt1.Text:=DM.qry3.FieldByName('record_count').AsString;
 with DM.qry4 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count1 from 机台了机信息 where 了机后状态=:ljhzt and 品名<>:pz');
    Parameters.ParamByName('ljhzt').Value:='结经';
    Parameters.ParamByName('pz').Value:=' ';
    Open;
  end;
 edt2.Text:=DM.qry4.FieldByName('record_count1').AsString;
 with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=' ';
    Open;
  end;
  DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
 begin
     for j:=0 to Self.ComponentCount-1 do
     begin
      if (Self.Components[j].ClassType=TLabel) then
      begin
        if  (TLabel(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
          TLabel(Self.Components[j]).Caption:=' ';
        end;
      end;
     end;
   DM.qryBShutDownDaysQuery.Next;
 end;
 with DM.qry5 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息 where 品名<>:pm');
    Parameters.ParamByName('pm').Value:=' ';
    Open;
  end;
  DM.qry5.First;
  for i:=0 to DM.qry5.RecordCount-1 do
 begin
      pz:=DM.qry5.FieldByName('品名').Value;
      yljsj:=DM.qry5.FieldByName('预了机时间').Value;
       for j:=0 to Self.ComponentCount-1 do
     begin
      if (Self.Components[j].ClassType=TLabel) then
      begin
        if  (TLabel(Self.Components[j]).Caption=DM.qry5.FieldByName('车位号').Value) then
        begin
            TLabel(Self.Components[j]).Caption:=PChar(pz+'/'+yljsj);
        end;
      end;
     end;
   DM.qry5.Next;
 end;
 dtp1.Date:=date();
 dtp2.Date:=date();
end;

procedure TFrmBJFB.RzToolButton3Click(Sender: TObject);
var
  i,j:Integer;
begin
  if RzEdit1.Text='' then
  begin
    Application.MessageBox('请输入要查询的在机品种！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息 where 品名 like ''%'+(Trim(RzEdit1.Text))+'%''');  //信息不及时性造成的，"今天"只能看"昨天"的数据
    Open;
  end;
  if DM.qryBShutDownDaysQuery.Eof  then
  begin
     Application.MessageBox('没有此品种在机！','提示',MB_OK+MB_ICONINFORMATION);
     dtp1.SetFocus;
     Exit;
  end;
  DM.qryBShutDownDaysQuery.First;
  for i:=0 to DM.qryBShutDownDaysQuery.RecordCount-1 do
  begin
    for j:=0 to Self.ComponentCount-1 do
    begin
      if (Self.Components[j].ClassType=TRzToolButton) then
      begin
        if  (TRzToolButton(Self.Components[j]).Caption=DM.qryBShutDownDaysQuery.FieldByName('车位号').Value) then
        begin
          if DM.qryBShutDownDaysQuery.FieldByName('了机后状态').Value='上轴' then
          begin
            TRzToolButton(Self.Components[j]).Color:=clRed;
          end
          else
          begin
            TRzToolButton(Self.Components[j]).Color:=clGreen;
          end;
        end;
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
 with DM.qry3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 机台了机信息 where 了机后状态=:ljhzt and 品名 like ''%'+(Trim(RzEdit1.Text))+'%''');
    Parameters.ParamByName('ljhzt').Value:='上轴';
    Open;
  end;
 edt1.Text:=DM.qry3.FieldByName('record_count').AsString;
 with DM.qry4 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count1 from 机台了机信息 where 了机后状态=:ljhzt and 品名 like ''%'+(Trim(RzEdit1.Text))+'%''');
    Parameters.ParamByName('ljhzt').Value:='结经';
    Open;
  end;
 edt2.Text:=DM.qry4.FieldByName('record_count1').AsString;
  end;
end;

end.
