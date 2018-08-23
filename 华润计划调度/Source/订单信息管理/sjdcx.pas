unit sjdcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, TeEngine,
  Series, TeeProcs, Chart, DbChart, RzButton, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, RzLabel, RzPanel, ExtCtrls,TeePrevi, ImgList, RzTabs;

type
  TFrmSJDCX = class(TForm)
    cxmglst1: TcxImageList;
    rzpgcntrlOrderExecQuery: TRzPageControl;
    rztbshtTabSheet1: TRzTabSheet;
    rztbshtTabSheet2: TRzTabSheet;
    rzpnl1: TRzPanel;
    rzpnlProductionBtns: TRzPanel;
    btnProductionQuery: TRzToolButton;
    btnProductionExit: TRzToolButton;
    rzgrpbxProductionQueryCondition: TRzGroupBox;
    lblOrderID: TRzLabel;
    cbbProductionOrderID: TcxLookupComboBox;
    dbchtProductionExecChart: TDBChart;
    brsrsOrderAmount: TBarSeries;
    brsrsDeplaneAmount: TBarSeries;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure btnProductionQueryClick(Sender: TObject);
    procedure btnProductionExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSJDCX: TFrmSJDCX;
  procedure psjdcx(AHandle:THandle);stdcall;

implementation
uses UDM;
{$R *.dfm}

procedure psjdcx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmSJDCX:=TFrmSJDCX.Create(Application);
  try
    FrmSJDCX.ShowModal;
  finally
    TFrmSJDCX(FrmSJDCX).Free;
  end;
end;

procedure TFrmSJDCX.FormShow(Sender: TObject);
begin
  with DM.qrySProductionOrderID do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉纱订单信息表 where 交货状态=:jh  and 审核状态=:sh');
    Parameters.ParamByName('jh').Value:=False;
    Parameters.ParamByName('sh').Value:=True;
    Open;
  end;
end;

procedure TFrmSJDCX.RzBitBtn7Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmSJDCX.btnProductionQueryClick(Sender: TObject);
begin
  if cbbProductionOrderID.Text<>'' then
  begin
    with DM.qrySProductionExec do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 品名,订单量,下机数量 from 纺纱生产动态表 where 订单号=:ddh ');
      Parameters.ParamByName('ddh').Value:=cbbProductionOrderID.Text;
      Open;
    end;
    dbchtProductionExecChart.BottomAxis.Title.Caption:='提醒：点鼠标左键可以查看下一页的信息，点右键可以查看上一页的信息！';
    dbchtProductionExecChart.BottomAxis.Title.Font.Color:=clRed;
    dbchtProductionExecChart.Series[0].DataSource:=DM.qrySProductionExec;
    dbchtProductionExecChart.Series[0].XLabelsSource:='品名';
    dbchtProductionExecChart.Series[0].YValues.ValueSource:='订单量';
    dbchtProductionExecChart.Series[0].Active:=True;
    dbchtProductionExecChart.Series[1].DataSource:=DM.qrySProductionExec;
    dbchtProductionExecChart.Series[1].XLabelsSource:='品名';
    dbchtProductionExecChart.Series[1].YValues.ValueSource:='下机数量';
    dbchtProductionExecChart.Series[1].Active:=True;
  end
  else
  begin
    Application.MessageBox('请输入要查询的订单号！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmSJDCX.btnProductionExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
