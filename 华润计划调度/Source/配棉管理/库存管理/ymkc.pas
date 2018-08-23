unit ymkc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, ComCtrls, StdCtrls, RzPanel, RzButton,
  ExtCtrls, cxLabel, Mask, RzEdit, frxClass, frxExportXLS, frxDBSet;

type
  TFrmYmkc = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    RzPanel1: TRzPanel;
    breturn: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    lbl1: TLabel;
    bquery: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    RzEdit1: TRzEdit;
    frxReport1: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    RzBitBtn3: TRzBitBtn;
    frxDBDataset1: TfrxDBDataset;
    procedure breturnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
    AWarnStyle:TcxStyle;
  end;

var
  FrmYmkc: TFrmYmkc;
  procedure aymkc(AHandle:THandle);stdcall;

implementation
uses udm;

{$R *.dfm}

procedure aymkc(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Frmymkc:=TFrmymkc.Create(Application);
  try
    Frmymkc.ShowModal;
  finally
    TFrmymkc(Frmymkc).Free;
  end;
end;



procedure TFrmYmkc.breturnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmYmkc.FormCreate(Sender: TObject);
begin
  AWarnStyle:=TcxStyle.Create(Self);
  AWarnStyle.Color:=clBlue;
  AWarnStyle.TextColor:=clRed;
  with ADOQuery1  do
    begin
      Close;
      sql.Clear;
      sql.add('select * from 原棉库存');
      Open;
    end;
end;

procedure TFrmYmkc.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[cxGrid1DBTableView1DBColumn4.Index]<50 then
  AStyle:=AWarnStyle;
end;



procedure TFrmYmkc.RzBitBtn1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'原棉库存信息.fr3');
  frxReport1.PrepareReport();
  frxReport1.ShowReport(True);
end;

procedure TFrmYmkc.RzBitBtn3Click(Sender: TObject);
begin
  Application.MessageBox('点击打印按钮可进行EXCEL导出！','提示',MB_OK+MB_ICONINFORMATION);
end;

end.
