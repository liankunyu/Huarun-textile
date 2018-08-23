unit cnbh;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxContainer, ADODB,
  StdCtrls, Mask, RzEdit, RzButton, ExtCtrls, RzPanel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFrmcnbh = class(TForm)
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
    RzEdit1: TRzEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure breturnClick(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmcnbh: TFrmcnbh;
  procedure acnbh(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}

procedure acnbh(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Frmcnbh:=TFrmcnbh.Create(Application);
  try
    Frmcnbh.ShowModal;
  finally
    TFrmcnbh(Frmcnbh).Free;
  end;
end;

procedure TFrmcnbh.FormShow(Sender: TObject);
begin
  ADOQuery1.Active:=True;
end;

procedure TFrmcnbh.breturnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmcnbh.bqueryClick(Sender: TObject);
begin
  if RzEdit1.Text<>'' then
      begin
         with ADOQuery1 do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from 原棉厂内编号 where 厂内编号=:fah');
             Parameters.ParamByName('fah').Value:=RzEdit1.Text;
             Open;
           end
      end
   else
      begin
       showmessage('请输入查询条件!');
       exit;
      end;
end;

end.
