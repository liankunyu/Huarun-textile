unit cjddgl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxCurrencyEdit, ImgList, RzButton, cxGridLevel, cxGridChartView,
  cxGridDBChartView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls, RzPanel,
  ComCtrls, StdCtrls, RzLabel, cxRichEdit, cxTextEdit, cxMaskEdit,
  cxTimeEdit, cxCalendar, cxSpinEdit, Mask, RzEdit, cxContainer,math,cxGridExportLink,
  cxShellComboBox, cxCheckComboBox, cxDropDownEdit, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmLJYBGX = class(TForm)
    RzPanel1: TRzPanel;
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
    cxgrdbchrtvwTeamReportInfo: TcxGridDBChartView;
    cxgrdbchrtdtgrpTeam: TcxGridDBChartDataGroup;
    cxgrdbchrtsrsTeamReportInfoWeavingLength: TcxGridDBChartSeries;
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
    cxgrdlvlLoomReportInfoLevel1: TcxGridLevel;
    rzpnlBtns: TRzPanel;
    btnExit: TRzToolButton;
    cxstylrpstry2: TcxStyleRepository;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    btnQuery: TRzToolButton;
    cxgrdbtblvwLoomReportInfoDBTableView1Column11: TcxGridDBColumn;
    RzToolButton1: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzPanel2: TRzPanel;
    cxgrdbtblvwLoomReportInfoDBTableView1Column12: TcxGridDBColumn;
    btn1: TRzToolButton;
    cxgrdbtblvwLoomReportInfoDBTableView2: TcxGridDBTableView;
    dlgSave1: TSaveDialog;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column4PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column5PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column6PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column8PropertiesEditValueChanged(
      Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column3PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column4CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column8CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column10CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxgrdbtblvwLoomReportInfoDBTableView1Column10PropertiesEditValueChanged(
      Sender: TObject);




 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLJYBGX: TFrmLJYBGX;
  procedure pcjddgl(AHandle:THandle);stdcall;

implementation

uses UDM, bscddcz;

{$R *.dfm}
procedure pcjddgl(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmLJYBGX:=TFrmLJYBGX.Create(Application);
  try
    FrmLJYBGX.ShowModal;
  finally
    TFrmLJYBGX(FrmLJYBGX).Free;
  end;
end;

procedure TFrmLJYBGX.FormShow(Sender: TObject);
begin
  with DM.qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息  order by 编号 ');
    Open;
  end;
   cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Filter.Root.Clear;
end;



procedure TFrmLJYBGX.btnExitClick(Sender: TObject);
begin
Self.Close;
end;

procedure TFrmLJYBGX.btnQueryClick(Sender: TObject);
begin
  FrmLJYBCZ:=TFrmLJYBCZ.Create(Self);
  FrmLJYBCZ.ShowModal;
  FreeAndNil(FrmLJYBCZ);
end;

procedure TFrmLJYBGX.RzToolButton1Click(Sender: TObject);
begin
  with DM.qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息  order by 编号 ');
    Open;
  end;
   cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Filter.Root.Clear;
end;

procedure TFrmLJYBGX.RzToolButton8Click(Sender: TObject);
begin
cxgrdbtblvwLoomReportInfoDBTableView1Column3.properties.readonly:=False;
cxgrdbtblvwLoomReportInfoDBTableView1Column4.properties.readonly:=False;
cxgrdbtblvwLoomReportInfoDBTableView1Column8.properties.readonly:=False;
cxgrdbtblvwLoomReportInfoDBTableView1Column10.properties.readonly:=False;
end;


procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column4PropertiesEditValueChanged(
  Sender: TObject);
  var
  a,d: Real;
begin
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Post();
  with DM.qrygy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉布工艺表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(台日产) as sumvalue from 棉布生产计划信息表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry7 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 棉布生产计划信息表 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
   end;
 a:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column4.Index];
 //b:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column5.Index];
 //c:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column6.Index];
 d:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column8.Index];
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.Edit;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('日产').value:=DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('缩率').value:=DM.qrygy.FieldByName('织缩率').AsFloat/100;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('了机周期').value:=a * (1-strtofloat(DM.qrygy.FieldByName('织缩率').AsString)/100)/(DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat);
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('预了机时间').value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column7.Index]+d;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('报告日期').value:=FormatDateTime('yyyy-mm-dd',Date());
end;

procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column5PropertiesEditValueChanged(
  Sender: TObject);
  var
  a,d: Real;
begin
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Post();
  with DM.qrygy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉布工艺表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(台日产) as sumvalue from 棉布生产计划信息表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry7 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 棉布生产计划信息表 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
   end;
 a:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column4.Index];
 //b:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column5.Index];
 //c:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column6.Index];
 d:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column8.Index];
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.Edit;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('日产').value:=DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('缩率').value:=DM.qrygy.FieldByName('织缩率').AsFloat/100;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('了机周期').value:=a * (1-strtofloat(DM.qrygy.FieldByName('织缩率').AsString)/100)/(DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat);
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('预了机时间').value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column7.Index]+d;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('报告日期').value:=FormatDateTime('yyyy-mm-dd',Date());
end;

procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column6PropertiesEditValueChanged(
  Sender: TObject);
  var
  a,d: Real;
begin
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Post();
  with DM.qrygy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉布工艺表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(台日产) as sumvalue from 棉布生产计划信息表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry7 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 棉布生产计划信息表 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
   end;
 a:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column4.Index];
 //b:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column5.Index];
 //c:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column6.Index];
 d:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column8.Index];
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.Edit;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('日产').value:=DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('缩率').value:=DM.qrygy.FieldByName('织缩率').AsFloat/100;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('了机周期').value:=a * (1-strtofloat(DM.qrygy.FieldByName('织缩率').AsString)/100)/(DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat);
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('预了机时间').value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column7.Index]+d;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('报告日期').value:=FormatDateTime('yyyy-mm-dd',Date());
end;

procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column8PropertiesEditValueChanged(
  Sender: TObject);
  var
  a,d: Real;
begin
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Post();
  with DM.qrygy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉布工艺表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(台日产) as sumvalue from 棉布生产计划信息表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry7 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 棉布生产计划信息表 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
   end;
 a:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column4.Index];
 //b:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column5.Index];
 //c:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column6.Index];
 d:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column8.Index];
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.Edit;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('日产').value:=DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('缩率').value:=DM.qrygy.FieldByName('织缩率').AsFloat/100;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('了机周期').value:=a * (1-strtofloat(DM.qrygy.FieldByName('织缩率').AsString)/100)/(DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat);
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('预了机时间').value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column7.Index]+d;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('报告日期').value:=FormatDateTime('yyyy-mm-dd',Date());
end;

procedure TFrmLJYBGX.btn1Click(Sender: TObject);
begin
if dlgSave1.Execute then
 begin
   ExportGridToExcel(dlgSave1.FileName,cxgrdLoomReportInfo,True,True,True,'xls');
 end;
end;


procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column3PropertiesEditValueChanged(
  Sender: TObject);
  var
  a,d: Real;
begin
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Post();
  with DM.qrygy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉布工艺表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(台日产) as sumvalue from 棉布生产计划信息表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry7 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 棉布生产计划信息表 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
   end;
 a:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column4.Index];
 //b:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column5.Index];
 //c:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column6.Index];
 d:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column8.Index];
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.Edit;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('日产').value:=DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('缩率').value:=DM.qrygy.FieldByName('织缩率').AsFloat/100;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('了机周期').value:=a * (1-strtofloat(DM.qrygy.FieldByName('织缩率').AsString)/100)/(DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat);
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('预了机时间').value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column7.Index]+d;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('报告日期').value:=FormatDateTime('yyyy-mm-dd',Date());
end;

procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
ACanvas.Brush.Color:=clMoneyGreen;
end;

procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
ACanvas.Brush.Color:=clMoneyGreen;
end;


procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column8CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
ACanvas.Brush.Color:=clMoneyGreen;
end;

procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column10CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
ACanvas.Brush.Color:=clMoneyGreen;
end;

procedure TFrmLJYBGX.cxgrdbtblvwLoomReportInfoDBTableView1Column10PropertiesEditValueChanged(
  Sender: TObject);
  var
  a,d: Real;
begin
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Post();
  with DM.qrygy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 棉布工艺表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(台日产) as sumvalue from 棉布生产计划信息表  where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
  end;
  with DM.qry7 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 棉布生产计划信息表 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column3.Index];
    Open;
   end;
 a:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column4.Index];
 //b:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column5.Index];
 //c:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column6.Index];
 d:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column8.Index];
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.Edit;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('日产').value:=DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('缩率').value:=DM.qrygy.FieldByName('织缩率').AsFloat/100;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('了机周期').value:=a * (1-strtofloat(DM.qrygy.FieldByName('织缩率').AsString)/100)/(DM.qry6.FieldByName('sumvalue').AsFloat/DM.qry7.FieldByName('record_count').AsFloat);
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('预了机时间').value:=cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Values[cxgrdbtblvwLoomReportInfoDBTableView1.Controller.FocusedRecordIndex, cxgrdbtblvwLoomReportInfoDBTableView1Column7.Index]+d;
 cxgrdbtblvwLoomReportInfoDBTableView1.DataController.DataSource.Dataset.FieldByName('报告日期').value:=FormatDateTime('yyyy-mm-dd',Date());
end;

end.
