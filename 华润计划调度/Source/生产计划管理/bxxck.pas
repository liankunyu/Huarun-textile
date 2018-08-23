unit bxxck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxTextEdit, cxBlobEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ImgList, StdCtrls, RzEdit, RzButton, RzPanel, ExtCtrls, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBXXCK = class(TForm)
    rzpnl1: TRzPanel;
    rzgrpbxQuery: TRzGroupBox;
    btnQuery: TRzToolButton;
    btnExit: TRzToolButton;
    mmoSpecification: TRzMemo;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxgrdGreyInfo: TcxGrid;
    cxgrdbtblvwGreyInfo: TcxGridDBTableView;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnCategory: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnWarpSource: TcxGridDBColumn;
    cxgrdbclmnWeftSource: TcxGridDBColumn;
    cxgrdlvlGreyInfo: TcxGridLevel;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBXXCK: TFrmBXXCK;

implementation
uses UDM,bpzfg,bpmsr;

{$R *.dfm}

procedure TFrmBXXCK.FormShow(Sender: TObject);
begin
  if (Self.Tag=1) or (Self.Tag=2) then
  begin
    with DM.qryBXX do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from �޲���Ϣ�� where ��Ʒ����=:cppb order by Ʒ��');
      Parameters.ParamByName('cppb').Value:=DM.qryBVarietiesTurn.FieldByName('��Ʒ����').Value;
      Open;
    end;
  end;
end;

procedure TFrmBXXCK.btnQueryClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //���ݱ���ص���
begin
  if Trim(mmoSpecification.Text)<>'' then
  begin
    AColumn:=cxgrdbclmnSpecification;
    with cxgrdbtblvwGreyInfo.DataController.Filter  do
    begin
      Root.AddItem(AColumn,foLike,'%'+Trim(mmoSpecification.Text)+'%',Trim(mmoSpecification.Text));
      Active:=True;
    end;
    if cxgrdbtblvwGreyInfo.ViewData.RowCount>0  then
    begin
      Application.MessageBox('�˹����ڣ���ص���Ϣ����ʾ������','��ʾ',MB_OK+MB_ICONINFORMATION);
    end
    else
    begin
      Application.MessageBox('�˹�񲻴��ڣ���˲飡','��ʾ',MB_OK+MB_ICONINFORMATION);
    end;
  end
  else
  begin
    Application.MessageBox('������Ҫ��ѯ�Ĺ��','��ʾ',MB_OK+MB_ICONINFORMATION);
    mmoSpecification.SetFocus;
  end;
end;

procedure TFrmBXXCK.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBXXCK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.Tag=1then
  begin
     FrmBPMSR:=TFrmBPMSR.Create(Self);
     FrmBPMSR.Caption:='��Ʒ������';
     FrmBPMSR.Tag:=1;
     FrmBPMSR.ShowModal;
     FreeAndNil(FrmBPMSR);
  end;
  if Self.Tag=2 then
  begin
     FrmBPMSR:=TFrmBPMSR.Create(Self);
     FrmBPMSR.Caption:='��Ʒ���޸�';
     FrmBPMSR.Tag:=2;
     FrmBPMSR.ShowModal;
     FreeAndNil(FrmBPMSR);
  end;
end;

end.
