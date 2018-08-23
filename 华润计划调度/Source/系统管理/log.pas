unit log;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxDataStorage, cxEdit, DB, cxDBData,
  RzButton, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ADODB, ExtCtrls, RzPanel, cxClasses, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxCustomData, cxFilter, cxData, cxGridLevel,
  cxLabel, cxMemo, ImgList, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmLog = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxgrdLog: TcxGrid;
    cxgrdbtblvwLog: TcxGridDBTableView;
    cxgrdlvlLog: TcxGridLevel;
    cxgrdbclmnUserName: TcxGridDBColumn;
    cxgrdbclmnDepName: TcxGridDBColumn;
    cxgrdbclmnLoginTime: TcxGridDBColumn;
    cxStyle3: TcxStyle;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnDelete: TRzToolButton;
    btnExit: TRzToolButton;
    btnClearAll: TRzToolButton;
    ImageList1: TImageList;
    procedure rzbtbtnDeleteClick(Sender: TObject);
    procedure rzbtbtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLog: TFrmLog;
  procedure plog(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}
procedure plog(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmLog:=TFrmLog.Create(Application);
  try
    FrmLog.ShowModal;
  finally
    TFrmLog(FrmLog).Free;
  end;
end;

procedure TFrmLog.rzbtbtnDeleteClick(Sender: TObject);
begin
  if cxgrdbtblvwLog.ViewData.RowCount>0 then
  begin
    if Application.MessageBox('是否要删除该日志信息？','提示',MB_YESNO)=ID_YES then
   begin
    try
     DM.qryLog.Delete;
     Application.MessageBox('删除成功！','提示',MB_ICONINFORMATION+MB_OK);
    except
     Application.MessageBox('删除失败，请核查原因！','提示',MB_ICONERROR+MB_OK);
    end;
   end;
  end
  else
  begin
    Application.MessageBox('没有可以删除的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmLog.rzbtbtnExitClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrmLog.FormShow(Sender: TObject);
begin
  with DM.qryLog do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 登录日志表');
    open;
  end;
end;

procedure TFrmLog.btnClearAllClick(Sender: TObject);
begin
  try
    while ( not DM.qryLog.Eof) do
    begin
      DM.qryLog.Delete;
    end;
    Application.MessageBox('清除成功！','提示',MB_OK+MB_ICONINFORMATION);
  except
    Application.MessageBox('清除过程中出现错误，请核查！','提示',MB_OK+MB_ICONERROR);
  end;
end;

end.
