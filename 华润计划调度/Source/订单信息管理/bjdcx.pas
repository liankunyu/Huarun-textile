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
      SQL.Add('select Ʒ��,max(������) as ������,max(���»�����) as ���»����� from v_֯��������̬��Ϣ where ������=:ddh group by Ʒ��');
      Parameters.ParamByName('ddh').Value:=cbbProductionOrderID.Text;
      Open;
    end;
    if DM.qryBProductionExec.Eof then
    begin
      Application.MessageBox('������Ʒ�־�û���������ݣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
    with DM.qryBVarietiesNumQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from ����������ϸ�� where ������=:ddh');
      Parameters.ParamByName('ddh').Value:=cbbProductionOrderID.Text;
      Open;
    end;
    if DM.qryBProductionExec.RecordCount=DM.qryBVarietiesNumQuery.RecordCount then
    begin
      Application.MessageBox('������Ʒ�־����������ݣ���Ӧ��������ʾ��','��ʾ',MB_OK+MB_ICONINFORMATION);
      dbchtProductionExecChart.BottomAxis.Title.Caption:='���ѣ������������Բ鿴��һҳ����Ϣ�����Ҽ����Բ鿴��һҳ����Ϣ��';
      dbchtProductionExecChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtProductionExecChart.Series[0].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[0].XLabelsSource:='Ʒ��';
      dbchtProductionExecChart.Series[0].YValues.ValueSource:='������';
      dbchtProductionExecChart.Series[0].Active:=True;
      dbchtProductionExecChart.Series[1].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[1].XLabelsSource:='Ʒ��';
      dbchtProductionExecChart.Series[1].YValues.ValueSource:='���»�����';
      dbchtProductionExecChart.Series[1].Active:=True;
    end
    else
    begin
      Application.MessageBox('��������Ʒ�����������ݣ���Ӧ��������ʾ��','��ʾ',MB_OK+MB_ICONINFORMATION);
      dbchtProductionExecChart.BottomAxis.Title.Caption:='���ѣ������������Բ鿴��һҳ����Ϣ�����Ҽ����Բ鿴��һҳ����Ϣ��';
      dbchtProductionExecChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtProductionExecChart.Series[0].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[0].XLabelsSource:='Ʒ��';
      dbchtProductionExecChart.Series[0].YValues.ValueSource:='�Ѷ�����';
      dbchtProductionExecChart.Series[0].Active:=True;
      dbchtProductionExecChart.Series[1].DataSource:=DM.qryBProductionExec;
      dbchtProductionExecChart.Series[1].XLabelsSource:='Ʒ��';
      dbchtProductionExecChart.Series[1].YValues.ValueSource:='���»�����';
      dbchtProductionExecChart.Series[1].Active:=True;
    end;
  end
  else
  begin
    Application.MessageBox('������Ҫ��ѯ�Ķ����ţ�','��ʾ',MB_OK+MB_ICONINFORMATION);
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
      SQL.Add('select Ʒ��,max(������) as ������,max(�ܳ�������) as �ܳ������� from v_����������Ϣ where ������=:ddh group by Ʒ��');
      Parameters.ParamByName('ddh').Value:=cbbOutOfWarehouseOrderID.Text;
      Open;
    end;
    if DM.qryBOutOfWarehouseExec.Eof then
    begin
      Application.MessageBox('������Ʒ�־�û�г������ݣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
    with DM.qryBVarietiesNumQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from ����������ϸ�� where ������=:ddh');
      Parameters.ParamByName('ddh').Value:=cbbOutOfWarehouseOrderID.Text;
      Open;
    end;
    if DM.qryBOutOfWarehouseExec.RecordCount=DM.qryBVarietiesNumQuery.RecordCount then
    begin
      Application.MessageBox('������Ʒ�־��г������ݣ���Ӧ��������ʾ��','��ʾ',MB_OK+MB_ICONINFORMATION);
      dbchtOutOfWarehouseChart.BottomAxis.Title.Caption:='���ѣ������������Բ鿴��һҳ����Ϣ�����Ҽ����Բ鿴��һҳ����Ϣ��';
      dbchtOutOfWarehouseChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtOutOfWarehouseChart.Series[0].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[0].XLabelsSource:='Ʒ��';
      dbchtOutOfWarehouseChart.Series[0].YValues.ValueSource:='������';
      dbchtOutOfWarehouseChart.Series[0].Active:=True;
      dbchtOutOfWarehouseChart.Series[1].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[1].XLabelsSource:='Ʒ��';
      dbchtOutOfWarehouseChart.Series[1].YValues.ValueSource:='�ܳ�������';
      dbchtOutOfWarehouseChart.Series[1].Active:=True;
    end
    else
    begin
      Application.MessageBox('��������Ʒ���г������ݣ���Ӧ��������ʾ��','��ʾ',MB_OK+MB_ICONINFORMATION);
      dbchtOutOfWarehouseChart.BottomAxis.Title.Caption:='���ѣ������������Բ鿴��һҳ����Ϣ�����Ҽ����Բ鿴��һҳ����Ϣ��';
      dbchtOutOfWarehouseChart.BottomAxis.Title.Font.Color:=clRed;
      dbchtOutOfWarehouseChart.Series[0].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[0].XLabelsSource:='Ʒ��';
      dbchtOutOfWarehouseChart.Series[0].YValues.ValueSource:='������';
      dbchtOutOfWarehouseChart.Series[0].Active:=True;
      dbchtOutOfWarehouseChart.Series[1].DataSource:=DM.qryBOutOfWarehouseExec;
      dbchtOutOfWarehouseChart.Series[1].XLabelsSource:='Ʒ��';
      dbchtOutOfWarehouseChart.Series[1].YValues.ValueSource:='�ܳ�������';
      dbchtOutOfWarehouseChart.Series[1].Active:=True;
    end;
  end
  else
  begin
    Application.MessageBox('������Ҫ��ѯ�Ķ����ţ�','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBJDCX.FormShow(Sender: TObject);
begin
  DM.qryBProductionOrderID.Open;
  DM.qryBOutOfWarehouseOrderID.Open;
end;

end.
