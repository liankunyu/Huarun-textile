unit ymrkcx;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxContainer, ComCtrls,
  RzButton, ExtCtrls, RzPanel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ADODB;

type
  TFrmYmrkcx = class(TForm)
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
    DataSource1: TDataSource;
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
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    procedure breturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYmrkcx: TFrmYmrkcx;
  procedure aymrkcx(AHandle:THandle);stdcall;

implementation

uses  udm;

{$R *.dfm}



procedure aymrkcx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmYmrkcx:=TFrmYmrkcx.Create(Application);
  try
    FrmYmrkcx.ShowModal;
  finally
    TFrmYmrkcx(FrmYmrkcx).Free;
  end;
end;

procedure TFrmYmrkcx.breturnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmYmrkcx.FormShow(Sender: TObject);
  begin
      with ADOQuery1  do
      begin
        Close;
        sql.Clear;
        sql.add('select * from  原棉入库');
        Open;
      end;
  end;

procedure TFrmYmrkcx.bqueryClick(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 原棉入库 where (入库时间 >:fah) or (入库时间 =:fah)');
      Parameters.ParamByName('fah').Value:=DateToStr(DateTimePicker1.Date);;
      Open;
    end
end;

end.
