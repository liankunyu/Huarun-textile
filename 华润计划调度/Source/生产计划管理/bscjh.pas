unit bscjh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, RzLabel,
  RzPanel, RzButton, ExtCtrls, ImgList, Menus, cxLabel, cxTextEdit,
  cxBlobEdit, frxGradient, frxRich, frxClass, frxExportXLS, frxDBSet, Mask,
  RzEdit, cxContainer, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, RzRadGrp, DBCtrls, RzTabs,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBSCJH = class(TForm)
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnAdd: TRzToolButton;
    btnExit: TRzToolButton;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    frxrprtProductionPlan: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    frxrchbjct1: TfrxRichObject;
    frxgrdntbjct1: TfrxGradientObject;
    cxstylWarning: TcxStyle;
    btnProductionWarning: TRzToolButton;
    rzrdgrpSelect: TRzRadioGroup;
    btnModify: TRzToolButton;
    btnDeliveryWarning: TRzToolButton;
    btnScheduling: TRzToolButton;
    cxstyl4: TcxStyle;
    cxgrdProductionPlan: TcxGrid;
    cxgrdbtblvwProductionPlan: TcxGridDBTableView;
    cxgrdbclmnProductionState: TcxGridDBColumn;
    cxgrdbclmnOrderID: TcxGridDBColumn;
    cxgrdbtblvwProductionPlanColumn1: TcxGridDBColumn;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnCustomerName: TcxGridDBColumn;
    cxgrdbclmnWeftDensity: TcxGridDBColumn;
    cxgrdbclmnWarpingAmountRequired: TcxGridDBColumn;
    cxgrdbclmnSpeed: TcxGridDBColumn;
    cxgrdbclmnEfficiency: TcxGridDBColumn;
    cxgrdbclmnSpare1: TcxGridDBColumn;
    cxgrdbclmnMachineTime: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxgrdbclmnMachineModel: TcxGridDBColumn;
    cxgrdbclmnBootAmount: TcxGridDBColumn;
    cxgrdbclmnDailyAmount: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime1: TcxGridDBColumn;
    cxgrdbclmnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnWarpSource: TcxGridDBColumn;
    cxgrdbclmnWeftSource: TcxGridDBColumn;
    cxgrdbclmnMemo: TcxGridDBColumn;
    cxgrdbtblvwProductionPlanColumn2: TcxGridDBColumn;
    cxgrdlvlProductionPlan: TcxGridLevel;
    cxgrdbtblvwProductionPlanColumn3: TcxGridDBColumn;
    btn1: TRzToolButton;
    btn2: TRzToolButton;
    cxgrdbclmnProductionPlanColumn4: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure btnAddClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnProductionWarningClick(Sender: TObject);
    procedure rzrdgrpSelectClick(Sender: TObject);
    procedure cxgrdbtblvwProductionPlanStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnModifyClick(Sender: TObject);
    procedure btnSchedulingClick(Sender: TObject);
    procedure btnDeliveryWarningClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBSCJH: TFrmBSCJH;
  procedure pbscjh(AHandle:THandle);stdcall;

implementation
uses UDM,bpzfg,bjhxx,bjhxxcz,bjljck, bjfb;

{$R *.dfm}

procedure pbscjh(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBSCJH:=TFrmBSCJH.Create(Application);
  try
    FrmBSCJH.ShowModal;
  finally
    TFrmBSCJH(FrmBSCJH).Free;
  end;
end;

procedure TFrmBSCJH.btnAddClick(Sender: TObject);
begin
  FrmBPZFG:=TFrmBPZFG.Create(Self);
  FrmBPZFG.Tag:=1;
  FrmBPZFG.ShowModal;
  FreeAndNil(FrmBPZFG);
end;

procedure TFrmBSCJH.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBSCJH.btnQueryClick(Sender: TObject);
begin
  if cxgrdbtblvwProductionPlan.ViewData.RowCount>0 then
  begin
    FrmBJHXXCZ:=TFrmBJHXXCZ.Create(Self);
    FrmBJHXXCZ.ShowModal;
    FreeAndNil(FrmBJHXXCZ);
  end
  else
  begin
    Application.MessageBox('没有可以显示的计划信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBSCJH.btnProductionWarningClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //数据表计划上机时间列
begin
   AColumn:=cxgrdbclmnMachineTime;
   with cxgrdbtblvwProductionPlan.DataController.Filter  do
   begin
    Root.Clear;
    Root.AddItem(AColumn,foLessEqual,FormatDateTime('yyyy-mm-dd',Date()+3),FormatDateTime('yyyy-mm-dd',Date()+3));
    Active:=True;
   end;
end;

procedure TFrmBSCJH.rzrdgrpSelectClick(Sender: TObject);
begin
  case rzrdgrpSelect.ItemIndex of
  0:begin
        with DM.qryBProductionPlan do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_棉布生产计划信息  where  订单号 in (select 订单号 from 棉布订单信息表 where 完成状态=0 and 上机状态=0 and 作废状态=0) order by 品名');
          Open;
        end;
        cxgrdbtblvwProductionPlan.DataController.Filter.Root.Clear;
        btnProductionWarning.Enabled:=True;
        btnScheduling.Enabled:=True;
        btnDeliveryWarning.Enabled:=False;
        btnModify.Enabled:=True;
        btn2.Enabled:=True;
    end;
  1:begin
        with DM.qryBProductionPlan do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_棉布生产计划信息  where  订单号 in (select 订单号 from 棉布订单信息表 where 完成状态=0 and 上机状态=1 and 作废状态=0) order by 品名');
          Open;
        end;
        cxgrdbtblvwProductionPlan.DataController.Filter.Root.Clear;
        btnProductionWarning.Enabled:=False;
        btnScheduling.Enabled:=True;
        btnDeliveryWarning.Enabled:=True;
        btnModify.Enabled:=False;
        btn2.Enabled:=False;
    end;
  end;
end;

procedure TFrmBSCJH.cxgrdbtblvwProductionPlanStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  {if (ARecord.Values[cxgrdbclmnProductionState.Index]=False) and (ARecord.Values[cxgrdbclmnMachineTime.Index]<=Date()+3) and (ARecord.Values[cxgrdbclmnMachineTime.Index]<>null) then
  AStyle:=cxstylWarning; }
  if {(ARecord.Values[cxgrdbclmnProductionState.Index]=True) and }(ARecord.Values[cxgrdbclmnDeliveryTime.Index]<=Date()+7) and (ARecord.Values[cxgrdbclmnDeliveryTime.Index]<>null) then
  AStyle:=cxstylWarning;
end;

procedure TFrmBSCJH.btnModifyClick(Sender: TObject);
begin
  if cxgrdbtblvwProductionPlan.ViewData.RowCount=0 then
  begin
    Application.MessageBox('没有可以修改的计划信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  FrmBJHXX:=TFrmBJHXX.Create(Self);
  FrmBJHXX.Tag:=2;
  FrmBJHXX.ShowModal;
  FreeAndNil(FrmBJHXX);
end;

procedure TFrmBSCJH.btnSchedulingClick(Sender: TObject);
begin
 FrmBJFB:=TFrmBJFB.Create(Self);
 FrmBJFB.ShowModal;
 FreeAndNil(FrmBJFB);
end;

procedure TFrmBSCJH.btnDeliveryWarningClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //数据表交货期列
begin
   AColumn:=cxgrdbclmnDeliveryTime;
   with cxgrdbtblvwProductionPlan.DataController.Filter  do
   begin
    Root.Clear;
    Root.AddItem(AColumn,foLessEqual,FormatDateTime('yyyy-mm-dd',Date()+7),FormatDateTime('yyyy-mm-dd',Date()+7));
    Active:=True;
   end;
end;

procedure TFrmBSCJH.FormShow(Sender: TObject);
begin
 rzrdgrpSelect.ItemIndex:=0;
 with DM.qryBProductionPlan do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布生产计划信息  where  订单号 in (select 订单号 from 棉布订单信息表 where 完成状态=0 and 上机状态=0 and 作废状态=0) order by 品名');
      Open;
    end;
    cxgrdbtblvwProductionPlan.DataController.Filter.Root.Clear;
    btnProductionWarning.Enabled:=False;
    btnScheduling.Enabled:=True;
    btnDeliveryWarning.Enabled:=True;
    btnModify.Enabled:=True;
    btn2.Enabled:=True;
end;

procedure TFrmBSCJH.btn1Click(Sender: TObject);
begin
 rzrdgrpSelect.ItemIndex:=0;
 with DM.qryBProductionPlan do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_棉布生产计划信息  where  订单号 in (select 订单号 from 棉布订单信息表 where 完成状态=0 and 上机状态=0 and 作废状态=0) order by 品名');
      Open;
    end;
    cxgrdbtblvwProductionPlan.DataController.Filter.Root.Clear;
    btnProductionWarning.Enabled:=False;
    btnScheduling.Enabled:=True;
    btnDeliveryWarning.Enabled:=True;
    btnModify.Enabled:=True;
    btn2.Enabled:=True;
end;

procedure TFrmBSCJH.btn2Click(Sender: TObject);
begin
  with DM.qry8 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from v_棉布订单信息织布利润中心 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=DM.qryBProductionPlan.FieldByName('品名').Value;
    Open;
   end;
if  DM.qry8.FieldByName('record_count').Value=1 then
 begin
 if Application.MessageBox('确定要修改品名吗？','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
  if cxgrdbtblvwProductionPlan.ViewData.RowCount=0 then
  begin
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
   with DM.qry2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete 棉布生产计划信息表 where 订单号=:ddh');
      Parameters.ParamByName('ddh').Value:=DM.qryBProductionPlan.FieldByName('订单号').Value;
      ExecSQL;
    end;
 with DM.qry5 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update 棉布订单信息表 set 引入状态=:yrzt,工艺状态=:gyzt where 订单号=:ddh');
      Parameters.ParamByName('yrzt').Value:=0;
      Parameters.ParamByName('gyzt').Value:=0;
      Parameters.ParamByName('ddh').Value:=DM.qryBProductionPlan.FieldByName('订单号').Value;
      ExecSQL;
    end;
 with DM.qry6 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete 棉布工艺表 where 订单号=:ddh');
      Parameters.ParamByName('ddh').Value:=DM.qryBProductionPlan.FieldByName('订单号').Value;
      ExecSQL;
    end;
 with DM.qryBProductionPlan do
    begin
      Close;
      Open;
    end;
  Application.MessageBox('请在棉布品种翻改信息界面中修改品名！','提示',MB_OK+MB_ICONINFORMATION);
  end;
  end;
 end
else
 begin
  Application.MessageBox('无法修改品名，请通知营销将此单作废后重新录入！','提示',MB_OK+MB_ICONINFORMATION);
 end;
end;
end.
