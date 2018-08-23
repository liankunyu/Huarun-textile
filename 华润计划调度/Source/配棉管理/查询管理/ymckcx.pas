unit ymckcx;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, RzButton, StdCtrls, Mask,
  RzEdit, RzLabel, ExtCtrls, RzPanel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, ADODB, ComCtrls;

type
  TFrmYmckcx = class(TForm)
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
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    rzgrpbx1: TRzGroupBox;
    breturn: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    bquery: TRzBitBtn;
    cxLabel2: TcxLabel;
    DateTimePicker1: TDateTimePicker;
    RzBitBtn1: TRzBitBtn;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure breturnClick(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYmckcx: TFrmYmckcx;
  procedure aymckcx(AHandle:THandle);stdcall;


implementation

uses udm;

{$R *.dfm}

procedure aymckcx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmYmckcx:=TFrmYmckcx.Create(Application);
  try
    FrmYmckcx.ShowModal;
  finally
    TFrmYmckcx(FrmYmckcx).Free;
  end;
end;

procedure TFrmYmckcx.FormShow(Sender: TObject);
begin
  begin
    with ADOQuery1  do
      begin
        Close;
        sql.Clear;
        sql.add('select * from  原棉出库');
        Open;
      end;
  end;
end;

procedure TFrmYmckcx.breturnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmYmckcx.bqueryClick(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 原棉出库 where (出库时间 >:fah) or (出库时间 =:fah)');
      Parameters.ParamByName('fah').Value:=DateToStr(DateTimePicker1.Date);;
      Open;
    end
end;

end.
