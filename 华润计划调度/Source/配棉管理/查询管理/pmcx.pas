unit pmcx;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, Mask, RzEdit, ComCtrls, RzPanel,
  RzButton, ExtCtrls, ADODB, cxContainer, cxLabel;

type
  TFrmPmcx = class(TForm)
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
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn11: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn12: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    rzgrpbx1: TRzGroupBox;
    breturn: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    bquery: TRzBitBtn;
    cxLabel2: TcxLabel;
    RzBitBtn1: TRzBitBtn;
    RzEdit1: TRzEdit;
    ADOQuery3: TADOQuery;
    procedure breturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPmcx: TFrmPmcx;
  procedure apmcx(AHandle:THandle);stdcall;

implementation

uses udm;

{$R *.dfm}

procedure apmcx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmPmcx:=TFrmPmcx.Create(Application);
  try
    FrmPmcx.ShowModal;
  finally
    TFrmPmcx(FrmPmcx).Free;
  end;
end;

procedure TFrmPmcx.breturnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmPmcx.FormShow(Sender: TObject);
begin
  ADOQuery1.Active:=True;
  ADOQuery2.Active:=True;
end;

procedure TFrmPmcx.bqueryClick(Sender: TObject);
begin
  with ADOQuery3 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
      Parameters.ParamByName('fah').Value:=RzEdit1.Text;
      Open;
    end;
   if ADOQuery3.Eof then
     Application.MessageBox('该方案号数据库中不存在，请输入要进行计算的方案号！','提示',MB_ICONINFORMATION+MB_OK)
   else
   begin
     with ADOQuery1 do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
       Parameters.ParamByName('fah').Value:=RzEdit1.Text;
       Open;
     end;
     with ADOQuery2 do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from 配棉物理指标 where 方案号=:fah');
       Parameters.ParamByName('fah').Value:=RzEdit1.Text;
       Open;
     end;
   end;
end;

end.
