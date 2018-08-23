unit bgyfg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxTextEdit, cxBlobEdit, Menus, ImgList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzButton, ExtCtrls, RzPanel, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBGYFG = class(TForm)
    rzpnl1: TRzPanel;
    btn1: TRzToolButton;
    cxgrdCraftTurn: TcxGrid;
    cxgrdbtblvwCraftTurn: TcxGridDBTableView;
    cxgrdbclmnpRroductName: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnOrderAmount: TcxGridDBColumn;
    cxgrdbclmnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnQualityRequirement: TcxGridDBColumn;
    cxgrdbclmnWarpSource: TcxGridDBColumn;
    cxgrdbclmnWeftSource: TcxGridDBColumn;
    cxgrdlvlCraftTurn: TcxGridLevel;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    rzpnl2: TRzPanel;
    btnAdd: TRzToolButton;
    btnExit: TRzToolButton;
    cxgrdbclmnCustomerName: TcxGridDBColumn;
    cxgrdbtblvwCraftTurnColumn1: TcxGridDBColumn;
    cxgrdbtblvwCraftTurnColumn2: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure NAddCraftClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBGYFG: TFrmBGYFG;

implementation
uses UDM,bgylr,bgy;

{$R *.dfm}

procedure TFrmBGYFG.FormShow(Sender: TObject);
begin
  with DM.qryBCraftTurn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_棉布订单信息  where (公司领导审批状态=1) and (工艺状态=0) and (作废状态=0) and NOT(品名 IS NULL)  order by 品名');
    Open;
  end;
end;

procedure TFrmBGYFG.NAddCraftClick(Sender: TObject);
begin
  if cxgrdbtblvwCraftTurn.ViewData.RowCount>0 then
  begin
   with DM.qrypmpd do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉布工艺表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=DM.qryBCraftTurn.FieldByName('品名').AsString;
    Open;
   end;
   if not DM.qrypmpd.Eof then
   begin
     Application.MessageBox('该品种工艺已增加，如参数有变动请直接修改参数！','提示',MB_OK+MB_ICONINFORMATION);
   end
   else
   begin
    FrmBGYLR:=TFrmBGYLR.Create(Self);
    FrmBGYLR.Caption:='棉布工艺增加';
    FrmBGYLR.ShowModal;
    FreeAndNil(FrmBGYLR);
   end;
  end
  else
  begin
    Application.MessageBox('没有可以增加的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBGYFG.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
