unit bpzfg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, RzEdit, Mask, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, RzLabel, ExtCtrls,
  RzPanel, cxLabel, cxBlobEdit, ImgList, Menus, RzButton, cxCheckComboBox,
  cxCheckBox,ADODB,StrUtils, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBPZFG = class(TForm)
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    rzpnl1: TRzPanel;
    cxgrdVarietiesTurn: TcxGrid;
    cxgrdbtblvwVarietiesTurn: TcxGridDBTableView;
    cxgrdbclmnpRroductName: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnOrderAmount: TcxGridDBColumn;
    cxgrdbclmnDeliveryMemo: TcxGridDBColumn;
    cxgrdbclmnQualityRequirement: TcxGridDBColumn;
    cxgrdbclmnWarpSource: TcxGridDBColumn;
    cxgrdbclmnWeftSource: TcxGridDBColumn;
    cxgrdlvlVarietiesTurn: TcxGridLevel;
    rzpnlBtns: TRzPanel;
    btnPlanAddOrVarietyAdd: TRzToolButton;
    btnExit: TRzToolButton;
    cxgrdbclmnOrderID: TcxGridDBColumn;
    cxgrdbclmnCategory: TcxGridDBColumn;
    btnVarietyModify: TRzToolButton;
    cxgrdbclmnPackagingRequirement: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxgrdbtblvwVarietiesTurnColumn1: TcxGridDBColumn;
    cxgrdbtblvwVarietiesTurnColumn2: TcxGridDBColumn;
    RzToolButton1: TRzToolButton;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnPlanAddOrVarietyAddClick(Sender: TObject);
    procedure btnVarietyModifyClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBPZFG: TFrmBPZFG;
  procedure pbpzfg(AHandle:THandle);stdcall;


implementation
uses UDM,bscjh,bxxck,bjhxx;

{$R *.dfm}

procedure pbpzfg(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBPZFG:=TFrmBPZFG.Create(Application);
  try
    FrmBPZFG.ShowModal;
  finally
    TFrmBPZFG(FrmBPZFG).Free;
  end;
end;

procedure TFrmBPZFG.FormShow(Sender: TObject);
begin
  if Self.Tag=0 then
  begin
   with DM.qryBVarietiesTurn do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单信息 where (公司领导审批状态=1) and (工艺状态=0) and (作废状态=0) order by 订单号');
      Open;
    end;

  end;
  if Self.Tag=1 then
  begin
    with DM.qryBVarietiesTurn do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单信息织布利润中心 where (引入状态=0) and (审核状态=1) and (工艺状态=1) and (作废状态=0) order by 订单号');
      Open;
    end;
    Self.Caption:='可计划引入的棉布订单信息';
    Self.cxgrdbtblvwVarietiesTurn.DataController.Summary.FooterSummaryItems[0].Format:='可引入数为:0';
    btnVarietyModify.Visible:=False;
    RzToolButton1.Visible:=False;

    btnPlanAddOrVarietyAdd.Caption:='计划引入';
  end;
end;

procedure TFrmBPZFG.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBPZFG.btnPlanAddOrVarietyAddClick(Sender: TObject);
begin
  if btnPlanAddOrVarietyAdd.Caption='计划引入' then
  begin
    if cxgrdbtblvwVarietiesTurn.ViewData.RowCount>0 then
    begin
      FrmBJHXX:=TFrmBJHXX.Create(Self);
      FrmBJHXX.Tag:=1;
      FrmBJHXX.ShowModal;
      FreeAndNil(FrmBJHXX);
    end
    else
    begin
      Application.MessageBox('没有可以引入的信息！','提示',MB_OK+MB_ICONINFORMATION);
    end;
  end;
  if btnPlanAddOrVarietyAdd.Caption='品名增加' then
  begin

    if cxgrdbtblvwVarietiesTurn.ViewData.RowCount>0 then
    begin
      if DM.qryBVarietiesTurn.FieldByName('品名').Value<>null then
      begin
        Application.MessageBox('已增加品名！','提示',MB_OK+MB_ICONINFORMATION);
      end
      else
      begin
        FrmBXXCK:=TFrmBXXCK.Create(Self);
        FrmBXXCK.Tag:=1;
        FrmBXXCK.ShowModal;
        FreeAndNil(FrmBXXCK);
      end ;
    end
    else
    begin
      Application.MessageBox('没有可以增加的品种信息！','提示',MB_OK+MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFrmBPZFG.btnVarietyModifyClick(Sender: TObject);
begin
  if cxgrdbtblvwVarietiesTurn.ViewData.RowCount>0 then
  begin
    if DM.qryBVarietiesTurn.FieldByName('品名').Value<>null then
    begin
      FrmBXXCK:=TFrmBXXCK.Create(Self);
      FrmBXXCK.Tag:=2;
      FrmBXXCK.ShowModal;
      FreeAndNil(FrmBXXCK);
    end
    else
    begin
      Application.MessageBox('品名为空,增加后才可以进行修改！','提示',MB_OK+MB_ICONINFORMATION);
    end;
  end
  else
  begin
    Application.MessageBox('没有可以修改的品种信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBPZFG.RzToolButton1Click(Sender: TObject);
begin
   if cxgrdbtblvwVarietiesTurn.ViewData.RowCount>0 then
 begin
     if DM.qryBVarietiesTurn.FieldByName('品名').Value<>null then
   begin
      with DM.qry1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_棉布订单信息织布利润中心  where 品名=:pm');
        Parameters.ParamByName('pm').Value:=DM.qryBVarietiesTurn.FieldByName('品名').AsString;
        Open;
      end;
      if not DM.qry1.Eof then
      begin
        Application.MessageBox('可直接引入计划！','提示',MB_OK+MB_ICONINFORMATION);
         with DM.sp1 do
          begin
            Close;
            procedureName:='proc_棉布工艺表审核状态织布利润中心更新';
            Parameters.Refresh;
            with Parameters do
            begin
              ParamByName('@ddh').Value:=DM.qryBVarietiesTurn.FieldByName('订单号').Value;
            end;
            ExecProc;
          end;
   with DM.qryBVarietiesTurn do
    begin
      Close;
      Open;
    end;
      end
      else
      begin
         Application.MessageBox('未做过此品种！','提示',MB_OK+MB_ICONINFORMATION);
      end;

   end;
 end;
end;

procedure TFrmBPZFG.RzToolButton2Click(Sender: TObject);
begin
   with DM.qryBVarietiesTurn do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布订单信息 where (公司领导审批状态=1) and (工艺状态=0) and (作废状态=0) order by 订单号');
      Open;
    end;
end;

end.

