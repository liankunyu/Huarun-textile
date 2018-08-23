unit bjkt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, RzLabel, RzPanel, RzButton, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ImgList, cxLabel, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBJKT = class(TForm)
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnDelete: TRzToolButton;
    btnExit: TRzToolButton;
    btnImport: TRzToolButton;
    rzgrpbxQueryCondition: TRzGroupBox;
    lblReportDate: TRzLabel;
    lblBegin: TRzLabel;
    lblEnd: TRzLabel;
    dtpBegin: TDateTimePicker;
    dtpEnd: TDateTimePicker;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxgrdLoomDriveInfo: TcxGrid;
    cxgrdbtblvwLoomDriveInfo: TcxGridDBTableView;
    cxgrdbclmnLoomDriveInfoProductDate: TcxGridDBColumn;
    cxgrdbclmnLoomDriveInfoShift: TcxGridDBColumn;
    cxgrdbclmnLoomDriveInfoTeam: TcxGridDBColumn;
    cxgrdbclmnLoomDriveInfoEmployeeName: TcxGridDBColumn;
    cxgrdbclmnLoomDriveInfoBerthNo: TcxGridDBColumn;
    cxgrdbclmnLoomDriveInfoProductName: TcxGridDBColumn;
    cxgrdlvlLoomDriveInfo: TcxGridLevel;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBJKT: TFrmBJKT;
  procedure pbjkt(AHandle:THandle);stdcall;
implementation
uses UDM,bjktdr;

{$R *.dfm}

procedure pbjkt(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBJKT:=TFrmBJKT.Create(Application);
  try
    FrmBJKT.ShowModal;
  finally
    TFrmBJKT(FrmBJKT).Free;
  end;
end;

procedure TFrmBJKT.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBJKT.btnImportClick(Sender: TObject);
begin
  FrmBJKTDR:=TFrmBJKTDR.Create(Self);
  FrmBJKTDR.ShowModal;
  FreeAndNil(FrmBJKTDR);
end;

procedure TFrmBJKT.btnQueryClick(Sender: TObject);
begin
  with DM.qryLoomDriveInfo do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 布机开台 where 生产日期 between :scrq1 and :scrq2 order by 生产日期 desc ');
    Parameters.ParamByName('scrq1').Value:=DateToStr(dtpBegin.Date);
    Parameters.ParamByName('scrq2').Value:=DateToStr(dtpEnd.Date);
    Open;
    if Eof then
    begin
      Application.MessageBox('在此时期内没有数据可以查询，请重新选择时期！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
    btnDelete.Enabled:=True;
  end;

end;

procedure TFrmBJKT.btnDeleteClick(Sender: TObject);
var
  row:Integer;
begin
  if cxgrdbtblvwLoomDriveInfo.ViewData.RowCount>0 then
  begin
    if Application.MessageBox('你确认要删除所刷选的所有记录吗？','提示',mrOK)=mrOK then
     begin
      DM.ADOConnection1.BeginTrans;
      DM.qryLoomDriveInfo.Filtered:=True;
      DM.qryLoomDriveInfo.Filter:=cxgrdbtblvwLoomDriveInfo.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
      try
       DM.qryLoomDriveInfo.First;
       while not DM.qryLoomDriveInfo.Eof do
       begin
        row:=row+1;
        DM.qryLoomDriveInfo.Delete;
       end;
       ShowMessage('删除成功,共删除'+IntToStr(row)+'条数据！');
       DM.ADOConnection1.CommitTrans;
      except
        begin
          DM.ADOConnection1.RollbackTrans;
          showmessage('删除第'+IntToStr(row)+'行数据时出现错误，请核查原因！');
        end;
       DM.qryLoomDriveInfo.Filtered:=False;
      end;
     end;
  end;
end;

procedure TFrmBJKT.FormShow(Sender: TObject);
begin
  dtpEnd.DateTime:=Date()-1;
  dtpBegin.DateTime:=Date()-1;
end;

end.
