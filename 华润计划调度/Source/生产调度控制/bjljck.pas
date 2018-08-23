unit bjljck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzTabs, StdCtrls, Mask, RzEdit, RzLabel, RzPanel, RzButton,
  ExtCtrls, ImgList, cxGraphics;

type
  TFrmBJLJCK = class(TForm)
    cxmglst1: TcxImageList;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnExit: TRzToolButton;
    rzgrpbxQueryCondition: TRzGroupBox;
    lblReportDate: TRzLabel;
    lbl1: TRzLabel;
    edtDays: TRzEdit;
    rzpgcntrlLoomLocation: TRzPageControl;
    rztbshtJTLoomLocation: TRzTabSheet;
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
    btn2405: TRzToolButton;
    procedure btnQueryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBJLJCK: TFrmBJLJCK;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmBJLJCK.btnQueryClick(Sender: TObject);
var
  i,j:Integer;
begin
  if edtDays.Text='' then
  begin
    Application.MessageBox('请输入要查询的预了机天数！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from V_预了轴天数 where 预了轴天数<=:yljts');
    Parameters.ParamByName('yljts').Value:=StrToFloat(Trim(edtDays.Text))+1;  //信息不及时性造成的，"今天"只能看"昨天"的数据
    Open;
  end;
  if DM.qryBShutDownDaysQuery.Eof  then
  begin
     Application.MessageBox('在查询的天数内没有相应的机台了机！','提示',MB_OK+MB_ICONINFORMATION);
     edtDays.SetFocus;
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
        end;
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
  end;
end;

procedure TFrmBJLJCK.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBJLJCK.FormShow(Sender: TObject);
var
  i,j:Integer;
begin
   with DM.qryBShutDownDaysQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from V_预了轴天数 ');
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
          TLabel(Self.Components[j]).Caption:=DM.qryBShutDownDaysQuery.FieldByName('品名').AsString;
        end;
      end;
    end;
    DM.qryBShutDownDaysQuery.Next;
  end;
end;

end.
