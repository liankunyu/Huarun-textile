unit bxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Mask, RzEdit,
  RzLabel, ExtCtrls, RzPanel, RzButton, cxTextEdit, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxBlobEdit,ImgList, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBXX = class(TForm)
    rzpnlCategory: TRzPanel;
    cxgrdbtblvwCategory: TcxGridDBTableView;
    cxgrdlvlCategory: TcxGridLevel;
    cxgrdCategory: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    rzpnlGreyInfo: TRzPanel;
    cxgrdGreyInfo: TcxGrid;
    cxgrdbtblvwGreyInfo: TcxGridDBTableView;
    cxgrdlvlGreyInfo: TcxGridLevel;
    cxgrdbclmnCategoryName: TcxGridDBColumn;
    cxStyle3: TcxStyle;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnCategory: TcxGridDBColumn;
    cxgrdbclmnWarpSource: TcxGridDBColumn;
    cxgrdbclmnWeftSource: TcxGridDBColumn;
    cxlbl1: TcxLabel;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnDelete: TRzToolButton;
    btnExit: TRzToolButton;
    cxgrdbtblvwGreyInfoColumn1: TcxGridDBColumn;
    cxgrdbtblvwGreyInfoColumn2: TcxGridDBColumn;
    cxgrdbtblvwGreyInfoColumn3: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBXX: TFrmBXX;
  procedure pbxx(AHandle:THandle);stdcall;

implementation
uses UDM,bxxcz;

{$R *.dfm}

procedure pbxx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBXX:=TFrmBXX.Create(Application);
  try
    FrmBXX.ShowModal;
  finally
    TFrmBXX(FrmBXX).Free;
  end;
end;

procedure TFrmBXX.FormShow(Sender: TObject);
begin
  DM.qryBCategory.Active:=True;
  DM.qryGreyInfo.Active:=True;
end;

procedure TFrmBXX.btnQueryClick(Sender: TObject);
begin
  FrmBXXCZ:=TFrmBXXCZ.Create(Self);
  FrmBXXCZ.ShowModal;
  FreeAndNil(FrmBXXCZ);
end;

procedure TFrmBXX.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBXX.btnDeleteClick(Sender: TObject);
begin
  if cxgrdbtblvwGreyInfo.ViewData.RowCount>0 then
  begin
     with DM.qryProductNameWhetherInOrderInfo do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from �޲�������Ϣ�� where Ʒ��=:pm');
       Parameters.ParamByName('pm').Value:=DM.qryGreyInfo.FieldByName('Ʒ��').Value;
       Open;
     end;
     with DM.qryProductNameWhetherInCraftInfo do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from �޲����ձ� where Ʒ��=:pm');
       Parameters.ParamByName('pm').Value:=DM.qryGreyInfo.FieldByName('Ʒ��').Value;
       Open;
     end;
     if (not DM.qryProductNameWhetherInOrderInfo.Eof) or (not DM.qryProductNameWhetherInCraftInfo.Eof) then
     begin
       Application.MessageBox('�޷�ɾ����������Ϣ���и�Ʒ����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
       Exit;
     end;
     if Application.MessageBox('ȷ��ɾ���ò���Ϣ��?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
     begin
      try
        DM.qryGreyInfo.Delete;
        Application.MessageBox('ɾ���ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
      except
        Application.MessageBox('ɾ��ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      end;
     end
  end
  else
  begin
    Application.MessageBox('û�п���ɾ���Ĳ���Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

end.
