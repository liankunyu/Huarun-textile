unit pmkc;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxContainer, StdCtrls,
  Mask, RzEdit, RzPanel, RzButton, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ADODB, ComCtrls, RzLabel;

type
  TFrmPmkc = class(TForm)
    RzPanel2: TRzPanel;
    RzBitBtn3: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    bquery: TRzBitBtn;
    cxLabel2: TcxLabel;
    RzEdit1: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
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
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AWarnStyle:TcxStyle;
  end;

var
  FrmPmkc: TFrmPmkc;
  procedure apmkc(AHandle:THandle);stdcall;

implementation
uses udm,Ymjp;

{$R *.dfm}

procedure apmkc(AHandle:THandle);stdcall;
  begin
    Application.Handle:=AHandle;
    FrmPmkc:=TFrmPmkc.Create(Application);
    try
      FrmPmkc.ShowModal;
    finally
      TFrmPmkc(FrmPmkc).Free;
    end;
  end;

procedure TFrmPmkc.RzBitBtn1Click(Sender: TObject);
  begin
    frmymjp:=Tfrmymjp.Create(Self);
    frmymjp.ShowModal;
    frmymjp.Free;
  end;

procedure TFrmPmkc.FormCreate(Sender: TObject);
  begin
    AWarnStyle:=TcxStyle.Create(Self);
    AWarnStyle.Color:=clBlue;
    AWarnStyle.TextColor:=clRed;
    with ADOQuery1  do
      begin
        Close;
        sql.Clear;
        sql.add('select * from 配棉出库');
        Open;
      end;
  end;

procedure TFrmPmkc.FormShow(Sender: TObject);
begin
  RzEdit1.Text:='HR';
end;
procedure TFrmPmkc.bqueryClick(Sender: TObject);
  begin
    if RzEdit1.Text<>'HR' then
      begin
         with ADOQuery1 do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from 配棉出库 where 方案号=:fah');
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

procedure TFrmPmkc.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[cxGrid1DBTableView1DBColumn4.Index]<20 then
  AStyle:=AWarnStyle;
end;

procedure TFrmPmkc.RzBitBtn3Click(Sender: TObject);
begin
  Self.Close;
end;

{procedure TFrmPmkc.bqueryClick(Sender: TObject);
begin
  if RzEdit1.text='HR' then
    begin
      Application.MessageBox('请输入方案号！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
    end
  else
  begin
    with ADOQuery3 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 配棉比例 where 方案号=:fah');
      Parameters.ParamByName('fah').Value:=RzEdit1.Text;
      Open;
    end;
    if ADOQuery1.Eof then
      begin
        Application.MessageBox('要查询的方案号不存在，请重新输入！','提示',MB_ICONINFORMATION+MB_OK);
        Exit;
      end
    else
    begin
        with ADOQuery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select   a.方案号,a.产地,a.批次,b.件重,b.库存重量,a.百分比, b.库存件数 from 配棉比例 as a,配棉出库 as b');
          sql.add('where  (a.产地 = b.产地)   and  (a.批次 =b.批次) and   (a. 方案号= b.方案号 ) and (方案号=:fah) ');
          Parameters.ParamByName('fah').Value:=RzEdit1.Text;
          Open;
        end;
    end;
  end;
end; }

end.
