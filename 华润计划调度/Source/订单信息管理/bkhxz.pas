unit bkhxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxTextEdit,
  cxGridCardView, cxGridDBCardView, RzButton, StdCtrls, Mask, RzEdit,
  RzLabel, ExtCtrls, RzPanel, Menus, cxContainer, ImgList, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBKHXZ = class(TForm)
    cxgrdlvlCustomer: TcxGridLevel;
    cxgrdCustomer: TcxGrid;
    cxgrdbcrdvwCustomer: TcxGridDBCardView;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    rzgrpbxQuery: TRzGroupBox;
    rzedtInput: TRzEdit;
    rztbtnQuery: TRzToolButton;
    rztbtnExit: TRzToolButton;
    cxgrdbcrdvwrwCustomerName: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwAddress: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwTel: TcxGridDBCardViewRow;
    cxlblCustomerName: TcxLabel;
    cxgrdbcrdvwrwFax: TcxGridDBCardViewRow;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure rztbtnQueryClick(Sender: TObject);
    procedure rztbtnExitClick(Sender: TObject);
    procedure NSelectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBKHXZ: TFrmBKHXZ;

implementation
uses UDM,bddmx;

{$R *.dfm}

procedure TFrmBKHXZ.FormShow(Sender: TObject);
begin
  DM.qryBCustomer.Active:=True;
  rzedtInput.SetFocus;
end;

procedure TFrmBKHXZ.rztbtnQueryClick(Sender: TObject);
begin
  if Trim(rzedtInput.Text)='' then
  begin
    Application.MessageBox('请输入要查询的客户名称！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    with DM.qryBCustomer do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 购布客户信息表 where 客户名称 like ''%'+(Trim(rzedtInput.Text))+'%''');
      Open;
      ExecSQL;
      if Eof then
      begin
        Application.MessageBox('查询客户信息为空！','提示',MB_OK+MB_ICONINFORMATION);
        rzedtInput.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmBKHXZ.rztbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBKHXZ.NSelectClick(Sender: TObject);
begin
  if cxgrdbcrdvwCustomer.ViewData.CardCount>0 then
  begin
    FrmBDDMX.lstCustomerInfo.Items[0]:=DM.qryBCustomer.FieldByName('客户号').AsString;
    FrmBDDMX.lstCustomerInfo.Items[1]:=DM.qryBCustomer.FieldByName('客户名称').AsString;
    self.Close;
  end;
end;

procedure TFrmBKHXZ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DM.qryBCustomer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 购布客户信息表');
  end;
end;

end.
