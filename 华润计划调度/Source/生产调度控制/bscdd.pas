unit bscdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, cxLabel, cxTextEdit, cxBlobEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzButton, ExtCtrls, RzPanel, ImgList, frxClass,
  frxDBSet, frxGradient, frxRich,IniFiles, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBDDXX = class(TForm)
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstylWarning: TcxStyle;
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnExit: TRzToolButton;
    btnModify: TRzToolButton;
    btnDelete: TRzToolButton;
    cxgrdScheduling: TcxGrid;
    cxgrdbtblvwScheduling: TcxGridDBTableView;
    cxgrdlvlScheduling: TcxGridLevel;
    btnPrint: TRzToolButton;
    cxgrdbclmnSchedulingDate: TcxGridDBColumn;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnCustomerName: TcxGridDBColumn;
    cxgrdbclmnSchedulingBootAmount: TcxGridDBColumn;
    cxgrdbclmnSchedulingMachineType: TcxGridDBColumn;
    cxgrdbclmnMachineDetail: TcxGridDBColumn;
    cxgrdbclmnPlanBootAmount: TcxGridDBColumn;
    cxgrdbclmnPlanMachineType: TcxGridDBColumn;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxrprt1: TfrxReport;
    frxdbdtstApprovedOrder: TfrxDBDataset;
    cxgrdbtblvwSchedulingColumn1: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure btnQueryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure frxrprt1GetValue(const VarName: String; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBDDXX: TFrmBDDXX;
  user,Dep:string;  //录入人和所在部门
  lFile:TiniFile;
  procedure pbjhdd(AHandle:THandle);stdcall;

implementation
uses UDM,bscddcz,bddxxxg;

{$R *.dfm}

procedure pbjhdd(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBDDXX:=TFrmBDDXX.Create(Application);
  try
    FrmBDDXX.ShowModal;
  finally
    TFrmBDDXX(FrmBDDXX).Free;
  end;
end;

procedure TFrmBDDXX.btnQueryClick(Sender: TObject);
begin
  FrmDDXXCZ:=TFrmDDXXCZ.Create(Self);
  FrmDDXXCZ.ShowModal;
  FreeAndNil(FrmDDXXCZ);
end;

procedure TFrmBDDXX.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBDDXX.btnModifyClick(Sender: TObject);
begin
  if cxgrdbtblvwScheduling.ViewData.RowCount=0 then
  begin
    Application.MessageBox('没有可以修改的调度信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  FrmDDXXXG:=TFrmDDXXXG.Create(Self);
  FrmDDXXXG.ShowModal;
  FreeAndNil(FrmDDXXXG);
end;

procedure TFrmBDDXX.btnDeleteClick(Sender: TObject);
begin
  if cxgrdbtblvwScheduling.ViewData.RowCount=0 then
  begin
    Application.MessageBox('没有可以删除的调度信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  try
    with DM.qryqrySchedulingDelete do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete 棉布计划调度信息表 where 编号=:bh');
      Parameters.ParamByName('bh').Value:=DM.qryBScheduling.FieldByName('编号').Value;
      ExecSQL;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
    end;
    with DM.qryBScheduling do
    begin
      Close;
      Open;
    end;
  except
  Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
  end;
end;

procedure TFrmBDDXX.frxrprt1GetValue(const VarName: String;
  var Value: Variant);
begin
   if VarName='打印人' then   //在打印页面显示打印人信息
  begin
    Value:=user;
  end;
  if VarName='部门' then   //在打印页面显示打印人所在部门信息
  begin
    Value:=Dep;
  end;
end;

procedure TFrmBDDXX.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
   with DM.qryBScheduling do
 begin
   Close;
   SQL.Clear;
   SQL.Add('select * from v_棉布生产调度信息');
   Open;
 end;
end;

procedure TFrmBDDXX.btnPrintClick(Sender: TObject);
begin
     with dm.qrydy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_棉布生产调度信息 where 客户采购订单号=:khcgddh');
    Parameters.ParamByName('khcgddh').Value:=DM.qryBScheduling.FieldByName('客户采购订单号').AsString;
    Open;
  end;
    //DM.qryBScheduling.Filtered:=True;
    //DM.qryBScheduling.Filter:=cxgrdbtblvwScheduling.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\ddxx.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\ddxx.fr3');
    frxrprt1.PrepareReport();
    frxrprt1.ShowReport(True);
  except
    Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);  end;
end;

end.
