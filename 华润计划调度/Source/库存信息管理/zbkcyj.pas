unit zbkcyj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, RzLabel, RzPanel, RzButton, RzTabs,
  ExtCtrls, ImgList, cxLabel, Mask, RzEdit, cxBlobEdit, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmZBKCYJ = class(TForm)
    rzpnl1: TRzPanel;
    rzpgcntrlWeavingStorageWarning: TRzPageControl;
    rztbshtWeaverStorageWarning: TRzTabSheet;
    rztbshtWeftStorageWarning: TRzTabSheet;
    rzpnlWeaverBtns: TRzPanel;
    btnWeaverQuery: TRzToolButton;
    cxgrdbtblvwWeaverStorage: TcxGridDBTableView;
    cxgrdlvlWeaverStorage: TcxGridLevel;
    cxgrdWeaverStorage: TcxGrid;
    cxgrdWeftStorage: TcxGrid;
    cxgrdbtblvwWeftStorage: TcxGridDBTableView;
    cxgrdlvlWeftStorage: TcxGridLevel;
    btnWeaverEnterWarehouse: TRzToolButton;
    btnWeaverSet: TRzToolButton;
    btnWeaverExit: TRzToolButton;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    rzpnl2: TRzPanel;
    btnWeftQuery: TRzToolButton;
    btnWeftEnterWarehouse: TRzToolButton;
    btnWeftSet: TRzToolButton;
    btnWeftExit: TRzToolButton;
    cxgrdbclmnWeaverProductName: TcxGridDBColumn;
    cxgrdbclmnWeaverStorageAmount: TcxGridDBColumn;
    cxgrdbclmnWeaverWarningAmount: TcxGridDBColumn;
    cxgrdbclmnWeftSpecification: TcxGridDBColumn;
    cxgrdbclmnWeftStorageAmount: TcxGridDBColumn;
    cxgrdbclmnWeftWarningAmount: TcxGridDBColumn;
    cxgrdbclmnSource: TcxGridDBColumn;
    cxgrdbtblvwWeaverStorageColumn1: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure btnWeaverExitClick(Sender: TObject);
    procedure btnWeaverQueryClick(Sender: TObject);
    procedure btnWeftQueryClick(Sender: TObject);
    procedure btnWeaverEnterWarehouseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnWeftEnterWarehouseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZBKCYJ: TFrmZBKCYJ;
  procedure pzbkcyj(AHandle:THandle);stdcall;

implementation
uses UDM,kccx,zzkc,wskc;

{$R *.dfm}

procedure pzbkcyj(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmZBKCYJ:=TFrmZBKCYJ.Create(Application);
  try
    FrmZBKCYJ.ShowModal;
  finally
    TFrmZBKCYJ(FrmZBKCYJ).Free;
  end;
end;

procedure TFrmZBKCYJ.btnWeaverExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmZBKCYJ.btnWeaverQueryClick(Sender: TObject);
begin
  FrmKCCX:=TFrmKCCX.Create(Self);
  FrmKCCX.Caption:='÷Ø÷·ø‚¥Ê≤È—Ø';
  FrmKCCX.Tag:=1;
  FrmKCCX.ShowModal;
  FreeAndNil(FrmKCCX);
end;

procedure TFrmZBKCYJ.btnWeftQueryClick(Sender: TObject);
begin
  FrmKCCX:=TFrmKCCX.Create(Self);
  FrmKCCX.Caption:='Œ≥…¥ø‚¥Ê≤È—Ø';
  FrmKCCX.Tag:=2;
  FrmKCCX.ShowModal;
  FreeAndNil(FrmKCCX);
end;

procedure TFrmZBKCYJ.btnWeaverEnterWarehouseClick(Sender: TObject);
begin
  frmzzkc:=Tfrmzzkc.Create(Self);
  frmzzkc.ShowModal;
  FreeAndNil(frmzzkc);
end;

procedure TFrmZBKCYJ.FormShow(Sender: TObject);
begin
 DM.qryWeaverStorage.Active:=True;
 DM.qryWeftStorage.Active:=True;
end;

procedure TFrmZBKCYJ.btnWeftEnterWarehouseClick(Sender: TObject);
begin
  frmwskc:=Tfrmwskc.Create(Self);
  frmwskc.ShowModal;
  FreeAndNil(frmwskc);
end;

end.
