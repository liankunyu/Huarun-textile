unit bmxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, StdCtrls, Mask, RzEdit, RzLabel, RzPanel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, RzButton, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBMXX = class(TForm)
    RzPanel1: TRzPanel;
    cxgrdDep: TcxGrid;
    cxgrdbtblvwDep: TcxGridDBTableView;
    cxgrdbclmnDepName: TcxGridDBColumn;
    cxgrdlvlDep: TcxGridLevel;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBMXX: TFrmBMXX;
  procedure pbm(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}
procedure pbm(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBMXX:=TFrmBMXX.Create(Application);
  try
    FrmBMXX.ShowModal;
  finally
    TFrmBMXX(FrmBMXX).Free;
  end;
end;

procedure TFrmBMXX.FormShow(Sender: TObject);
begin
  DM.qryDep.Active:=True;
  DM.qryzw.Active:=True;
end;

end.
