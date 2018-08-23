unit jtbjbg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, RzButton, ComCtrls, StdCtrls, RzLabel, RzPanel, ExtCtrls, ImgList,
  cxTextEdit, cxGridChartView, cxGridDBChartView, cxGridDBTableView,
  cxContainer, cxCurrencyEdit, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmJTBJBG = class(TForm)
    RzPanel1: TRzPanel;
    rzpnlBtns: TRzPanel;
    rzgrpbxQueryCondition: TRzGroupBox;
    lblReportDate: TRzLabel;
    lblBegin: TRzLabel;
    lblEnd: TRzLabel;
    dtpBegin: TDateTimePicker;
    dtpEnd: TDateTimePicker;
    btnQuery: TRzToolButton;
    btnJTImport: TRzToolButton;
    btnExit: TRzToolButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle1: TcxStyle;
    btnFTImport: TRzToolButton;
    btnDelete: TRzToolButton;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    cxgrdLoomReportInfo: TcxGrid;
    cxgrdbtblvwFTLoomReportInfo: TcxGridDBTableView;
    cxgrdbtblvwFTLoomReportInfoColumn1: TcxGridDBColumn;
    cxgrdbclmnFTLoomReportInfoReportDate: TcxGridDBColumn;
    cxgrdbclmnFTLoomReportInfoShift: TcxGridDBColumn;
    cxgrdbclmnFTLoomReportInfoEmployeeName: TcxGridDBColumn;
    cxgrdbclmnFTLoomReportInfoTeam: TcxGridDBColumn;
    cxgrdbclmnFTLoomReportInfoBerthNo: TcxGridDBColumn;
    cxgrdbclmnFTLoomReportInfoProductName: TcxGridDBColumn;
    cxgrdbclmnFTLoomReportInfoWeavingLength: TcxGridDBColumn;
    cxgrdbtblvwJTLoomReportInfo: TcxGridDBTableView;
    cxgrdbtblvwJTLoomReportInfoColumn1: TcxGridDBColumn;
    cxgrdbclmnJTLoomReportInfoReportDate: TcxGridDBColumn;
    cxgrdbclmnJTLoomReportInfoShift: TcxGridDBColumn;
    cxgrdbclmnJTLoomReportInfoBerthNo: TcxGridDBColumn;
    cxgrdbclmnJTLoomReportInfoProductName: TcxGridDBColumn;
    cxgrdbclmnJTLoomReportEmployeeName: TcxGridDBColumn;
    cxgrdbclmnJTLoomReportInfoTeam: TcxGridDBColumn;
    cxgrdbchrtvwTeamReportInfo: TcxGridDBChartView;
    cxgrdbchrtdtgrpTeam: TcxGridDBChartDataGroup;
    cxgrdbchrtsrsTeamReportInfoWeavingLength: TcxGridDBChartSeries;
    cxgrdlvlJTLoomReportInfo: TcxGridLevel;
    cxgrdlvlFTLoomReportInfo: TcxGridLevel;
    cxgrdlvlLoomReportInfoLevel1: TcxGridLevel;
    cxgrdbtblvwLoomReportInfoDBTableView1: TcxGridDBTableView;
    cxgrdbtblvwLoomReportInfoDBTableView1Column1: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column2: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column3: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column4: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column5: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column6: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column7: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column8: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column9: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column10: TcxGridDBColumn;
    cxgrdbtblvwLoomReportInfoDBTableView1Column11: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnJTImportClick(Sender: TObject);
    procedure btnFTImportClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
   { procedure cxgrdLoomReportInfoFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView); }
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrmJTBJBG: TFrmJTBJBG;
  procedure pbjbg(AHandle:THandle);stdcall;

implementation
uses UDM,jtbjbgdr,ftbjbgdr, scljyb;

{$R *.dfm}

procedure pbjbg(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmJTBJBG:=TFrmJTBJBG.Create(Application);
  try
    FrmJTBJBG.ShowModal;
  finally
    TFrmJTBJBG(FrmJTBJBG).Free;
  end;
end;

procedure TFrmJTBJBG.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmJTBJBG.btnQueryClick(Sender: TObject);
begin
  with DM.qryJTLoomReportInfo do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 津田布机日报告表  where 报告日期 between :bgrq1 and :bgrq2 order by 报告日期 desc ');
    Parameters.ParamByName('bgrq1').Value:=DateToStr(dtpBegin.Date);
    Parameters.ParamByName('bgrq2').Value:=DateToStr(dtpEnd.Date);
    Open;
  end;
  cxgrdbtblvwJTLoomReportInfo.DataController.Filter.Root.Clear;
  with DM.qryFTLoomReportInfo do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 丰田布机日报告表  where 报告日期 between :bgrq1 and :bgrq2 order by 报告日期 desc ');
    Parameters.ParamByName('bgrq1').Value:=DateToStr(dtpBegin.Date);
    Parameters.ParamByName('bgrq2').Value:=DateToStr(dtpEnd.Date);
    Open;
  end;
   cxgrdbtblvwFTLoomReportInfo.DataController.Filter.Root.Clear;
  with DM.qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息  where 报告日期 between :bgrq1 and :bgrq2 order by 报告日期 desc ');
    Parameters.ParamByName('bgrq1').Value:=DateToStr(dtpBegin.Date);
    Parameters.ParamByName('bgrq2').Value:=DateToStr(dtpEnd.Date);
    Open;
  end;
   cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Filter.Root.Clear;
   if (DM.qryJTLoomReportInfo.Eof) and (DM.qryFTLoomReportInfo.Eof) and (DM.qry1.Eof)then
  begin
     Application.MessageBox('在此时期内没有数据可以查询，请重新选择时期！','提示',MB_OK+MB_ICONINFORMATION);
     Exit;
  end;
end;

procedure TFrmJTBJBG.FormShow(Sender: TObject);
begin
  dtpBegin.Date:=Date()-30;
  dtpEnd.Date:=Date()-1;
end;

procedure TFrmJTBJBG.btnJTImportClick(Sender: TObject);
begin
  FrmJTBJBGDR:=TFrmJTBJBGDR.Create(Self);
  FrmJTBJBGDR.ShowModal;
  FreeAndNil(FrmJTBJBGDR);
end;

procedure TFrmJTBJBG.btnFTImportClick(Sender: TObject);
begin
  FrmFTBJRBGDR:=TFrmFTBJRBGDR.Create(Self);
  FrmFTBJRBGDR.ShowModal;
  FreeAndNil(FrmFTBJRBGDR);
end;

{procedure TFrmJTBJBG.cxgrdLoomReportInfoFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
  if (cxgrdLoomReportInfo.FocusedView=cxgrdbtblvwFTLoomReportInfo) or (cxgrdLoomReportInfo.FocusedView=cxgrdbtblvwJTLoomReportInfo)or (cxgrdLoomReportInfo.FocusedView=cxgrdbchrtvwTeamReportInfo) then
  begin
    cxlblTotalWeavingLength.Visible:=False;
  end;
  if cxgrdLoomReportInfo.FocusedView=cxgrdbchrtvwTotalLoomReportInfo then
  begin
    cxlblTotalWeavingLength.Visible:=True;
  end;
end;    }

procedure TFrmJTBJBG.btnDeleteClick(Sender: TObject);
var
  row:Integer;
begin
  if cxgrdbtblvwJTLoomReportInfo.ViewData.RowCount>0 then
  begin
    if Application.MessageBox('你确认要删除以下津田日报记录吗？','提示',mrOK)=mrOK then
     begin
      DM.ADOConnection1.BeginTrans;
      DM.qryJTLoomReportInfo.Filtered:=True;
      DM.qryJTLoomReportInfo.Filter:=cxgrdbtblvwJTLoomReportInfo.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
      try
       DM.qryJTLoomReportInfo.First;
       while not DM.qryJTLoomReportInfo.Eof do
       begin
        row:=row+1;
        DM.qryJTLoomReportInfo.Delete;
       end;
       ShowMessage('删除成功,共删除'+IntToStr(row)+'条数据！');
       DM.ADOConnection1.CommitTrans;
      except
        begin
          DM.ADOConnection1.RollbackTrans;
          showmessage('删除第'+IntToStr(row)+'行数据时出现错误，请核查原因！');
        end;
       DM.qryJTLoomReportInfo.Filtered:=False;
      end;
     end;
  end;
end;

procedure TFrmJTBJBG.RzToolButton1Click(Sender: TObject);
var
  row:Integer;
begin
  if cxgrdbtblvwFTLoomReportInfo.ViewData.RowCount>0 then
  begin
    if Application.MessageBox('你确认要删除以下丰田日报记录吗？','提示',mrOK)=mrOK then
     begin
      DM.ADOConnection1.BeginTrans;
      DM.qryFTLoomReportInfo.Filtered:=True;
      DM.qryFTLoomReportInfo.Filter:=cxgrdbtblvwFTLoomReportInfo.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
      try
       DM.qryFTLoomReportInfo.First;
       while not DM.qryFTLoomReportInfo.Eof do
       begin
        row:=row+1;
        DM.qryFTLoomReportInfo.Delete;
       end;
       ShowMessage('删除成功,共删除'+IntToStr(row)+'条数据！');
       DM.ADOConnection1.CommitTrans;
      except
        begin
          DM.ADOConnection1.RollbackTrans;
          showmessage('删除第'+IntToStr(row)+'行数据时出现错误，请核查原因！');
        end;
       DM.qryFTLoomReportInfo.Filtered:=False;
      end;
     end;
  end;
end;
procedure TFrmJTBJBG.RzToolButton2Click(Sender: TObject);
begin
  FrmSCLJYB:=TFrmSCLJYB.Create(Self);
  FrmSCLJYB.ShowModal;
  FreeAndNil(FrmSCLJYB);
end;

procedure TFrmJTBJBG.RzToolButton3Click(Sender: TObject);
var
  row:Integer;
begin
    if cxgrdbtblvwLoomReportInfoDBTableView1.ViewData.RowCount>0 then
    begin
    if Application.MessageBox('你确认要删除以下了机预报记录吗？','提示',mrOK)=mrOK then
     begin
      DM.ADOConnection1.BeginTrans;
      DM.qry1.Filtered:=True;
      DM.qry1.Filter:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
      try
       DM.qry1.First;
       while not DM.qry1.Eof do
       begin
        row:=row+1;
        DM.qry1.Delete;
       end;
       ShowMessage('删除成功,共删除'+IntToStr(row)+'条数据！');
       DM.ADOConnection1.CommitTrans;
      except
        begin
          DM.ADOConnection1.RollbackTrans;
          showmessage('删除第'+IntToStr(row)+'行数据时出现错误，请核查原因！');
        end;
       DM.qry1.Filtered:=False;
      end;
     end;
    end;
end;

end.
