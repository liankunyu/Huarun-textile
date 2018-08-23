unit bjdcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, TeEngine,
  Series, RzButton, TeeProcs, Chart, DbChart, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, RzLabel, RzPanel, ExtCtrls,TeePrevi, cxLabel, ImgList, RzTabs;

type
  TFrmBJDCX = class(TForm)
    cxmglst1: TcxImageList;
    rzpgcntrlOrderExecQuery: TRzPageControl;
    rztbsht1: TRzTabSheet;
    rztbsht2: TRzTabSheet;
    rzpnl1: TRzPanel;
    rzpnlProductionBtns: TRzPanel;
    btnProductionQurey: TRzToolButton;
    btnProductionExit: TRzToolButton;
    rzgrpbxProductionQueryCondition: TRzGroupBox;
    lblProductionOrderID: TRzLabel;
    cbbProductionOrderID: TcxLookupComboBox;
    dbchtProductionExecChart: TDBChart;
    brsrsOrderAmount: TBarSeries;
    brsrsDeplaneAmount: TBarSeries;
    rzpnl2: TRzPanel;
    rzpnlOutOfWarehouseBtns: TRzPanel;
    btnOutWarehouseQuery: TRzToolButton;
    btnOutOfWarehouseExit: TRzToolButton;
    rzgrpbxOutOfWarehouseQueryCondition: TRzGroupBox;
    lblOutOfWarehouseOrderID: TRzLabel;
    cbbOutOfWarehouseOrderID: TcxLookupComboBox;
    dbchtOutOfWarehouseChart: TDBChart;
    brsrs1: TBarSeries;
    brsrs2: TBarSeries;
    procedure dbchtProductionExecChartClickBackground(Sender: TCustomChart;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnProductionExitClick(Sender: TObject);
    procedure btnProductionQureyClick(Sender: TObject);
    procedure btnOutWarehouseQueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBJDCX: TFrmBJDCX;
  procedure pbjdcx(AHandle:THandle);stdcall;

implementation
uses UDM;
{$R *.dfm}

procedure pbjdcx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBJDCX:=TFrmBJDCX.Create(Application);
  try
    FrmBJDCX.ShowModal;
  finally
    TFrmBJDCX(FrmBJDCX).Free;
  end;
end;

procedure TFrmBJDCX.dbchtProductionExecChartClickBackground(Sender: TCustomChart;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    dbchtProductionExecChart.NextPage;
    Exit;
  end;
  if Button = mbRight then
  begin
    dbchtProductionExecChart.PreviousPage;
    Exit;
  end;
end;

procedure TFrmBJDCX.btnProductionExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBJDCX.btnProductionQureyClick(Sender: TObject);
begin
  if cbbProductionOrderID.Text<>'' then
  begin
    with DM.qryBProductionExec do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 品名,max(订单量) as 订单量,max(已下机数量) as 已下机数量 from v_织布生产动态信息 where 订单号=:ddh group by 品名');
      Parameters.ParamByName('ddh').Value:=cbbProductionOrderID.Text;
      Open;
    end;
    if DM.qryBProductionExec.Eof then
    begin
      Application.MessageBox('订单各品种均没有生产数据！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
    with DM.qryBVarietiesNumQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 坯布订单明细表 where 订单号=:ddh');
      Parameters.ParamByName('ddh').Value:=cbbProductionOrderID.Text;
      Open;
    end;
    if DM.qryBProductionExec.RecordCount=DM.qryBVarietiesNumQuery.RecordCount then
    begin
      Application.MessageBox('订单各品种均有生产数据，相应数据已显示！','提示',MB_OK+MB_ICONINFORMATION);
      dbchtProductionExecChart.BottomAxis.Title.Caption:='提醒：点鼠标左键可以查看下一页的信息，点右键可以查看上一页的信息！';
      dbchtProductionExecChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtProductionExecChart.Series[0].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[0].XLabelsSource:='品名';
      dbchtProductionExecChart.Series[0].YValues.ValueSource:='订单量';
      dbchtProductionExecChart.Series[0].Active:=True;
      dbchtProductionExecChart.Series[1].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[1].XLabelsSource:='品名';
      dbchtProductionExecChart.Series[1].YValues.ValueSource:='已下机数量';
      dbchtProductionExecChart.Series[1].Active:=True;
    end
    else
    begin
      Application.MessageBox('订单部分品种有生产数据，相应数据已显示！','提示',MB_OK+MB_ICONINFORMATION);
      dbchtProductionExecChart.BottomAxis.Title.Caption:='提醒：点鼠标左键可以查看下一页的信息，点右键可以查看上一页的信息！';
      dbchtProductionExecChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtProductionExecChart.Series[0].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[0].XLabelsSource:='品名';
      dbchtProductionExecChart.Series[0].YValues.ValueSource:='已订单量';
      dbchtProductionExecChart.Series[0].Active:=True;
      dbchtProductionExecChart.Series[1].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[1].XLabelsSource:='品名';
      dbchtProductionExecChart.Series[1].YValues.ValueSource:='已下机数量';
      dbchtProductionExecChart.Series[1].Active:=True;
    end;
  end
  else
  begin
    Application.MessageBox('请输入要查询的订单号！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBJDCX.btnOutWarehouseQueryClick(Sender: TObject);
begin
  if cbbOutOfWarehouseOrderID.Text<>'' then
  begin
    with DM.qryBOutOfWarehouseExec do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 品名,max(订单量) as 订单量,max(总出库数量) as 总出库数量 from v_坯布出库信息 where 订单号=:ddh group by 品名');
      Parameters.ParamByName('ddh').Value:=cbbOutOfWarehouseOrderID.Text;
      Open;
    end;
    if DM.qryBOutOfWarehouseExec.Eof then
    begin
      Application.MessageBox('订单各品种均没有出库数据！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
    with DM.qryBVarietiesNumQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 坯布订单明细表 where 订单号=:ddh');
      Parameters.ParamByName('ddh').Value:=cbbOutOfWarehouseOrderID.Text;
      Open;
    end;
    if DM.qryBOutOfWarehouseExec.RecordCount=DM.qryBVarietiesNumQuery.RecordCount then
    begin
      Application.MessageBox('订单各品种均有出库数据，相应数据已显示！','提示',MB_OK+MB_ICONINFORMATION);
      dbchtOutOfWarehouseChart.BottomAxis.Title.Caption:='提醒：点鼠标左键可以查看下一页的信息，点右键可以查看上一页的信息！';
      dbchtOutOfWarehouseChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtOutOfWarehouseChart.Series[0].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[0].XLabelsSource:='品名';
      dbchtOutOfWarehouseChart.Series[0].YValues.ValueSource:='订单量';
      dbchtOutOfWarehouseChart.Series[0].Active:=True;
      dbchtOutOfWarehouseChart.Series[1].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[1].XLabelsSource:='品名';
      dbchtOutOfWarehouseChart.Series[1].YValues.ValueSource:='总出库数量';
      dbchtOutOfWarehouseChart.Series[1].Active:=True;
    end
    else
    begin
      Application.MessageBox('订单部分品种有出库数据，相应数据已显示！','提示',MB_OK+MB_ICONINFORMATION);
      dbchtOutOfWarehouseChart.BottomAxis.Title.Caption:='提醒：点鼠标左键可以查看下一页的信息，点右键可以查看上一页的信息！';
      dbchtOutOfWarehouseChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtOutOfWarehouseChart.Series[0].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[0].XLabelsSource:='品名';
      dbchtOutOfWarehouseChart.Series[0].YValues.ValueSource:='订单量';
      dbchtOutOfWarehouseChart.Series[0].Active:=True;
      dbchtOutOfWarehouseChart.Series[1].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[1].XLabelsSource:='品名';
      dbchtOutOfWarehouseChart.Series[1].YValues.ValueSource:='总出库数量';
      dbchtOutOfWarehouseChart.Series[1].Active:=True;
    end;
  end
  else
  begin
    Application.MessageBox('请输入要查询的订单号！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBJDCX.FormShow(Sender: TObject);
begin
  DM.qryBProductionOrderID.Open;
  DM.qryBOutOfWarehouseOrderID.Open;
end;

end.
