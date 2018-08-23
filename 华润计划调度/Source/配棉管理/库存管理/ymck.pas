unit ymck;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, StdCtrls, Mask, RzEdit,
  RzPanel, RzButton, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ADODB, ComCtrls;

type
  TFrmYmck = class(TForm)
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
    v: TcxGrid;
    vDBTableView1: TcxGridDBTableView;
    vLevel1: TcxGridLevel;
    RzPanel1: TRzPanel;
    breturn: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    lbl1: TLabel;
    bquery: TRzBitBtn;
    RzEdit1: TRzEdit;
    RzBitBtn2: TRzBitBtn;
    Label1: TLabel;
    RzEdit2: TRzEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    vDBTableView1DBColumn: TcxGridDBColumn;
    vDBTableView1DBColumn1: TcxGridDBColumn;
    vDBTableView1DBColumn2: TcxGridDBColumn;
    vDBTableView1DBColumn3: TcxGridDBColumn;
    vDBTableView1DBColumn4: TcxGridDBColumn;
    vDBTableView1DBColumn5: TcxGridDBColumn;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DateTimePicker1: TDateTimePicker;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure breturnClick(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYmck: TFrmYmck;
  procedure aymck(AHandle:THandle);stdcall;

implementation


{$R *.dfm}
uses udm;

procedure aymck(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Frmymck:=TFrmymck.Create(Application);
  try
    Frmymck.ShowModal;
  finally
    TFrmymck(Frmymck).Free;
  end;
end;

procedure TFrmYmck.RzBitBtn2Click(Sender: TObject);
var j:string;
begin
  
  if RzEdit2.Text<>'' then
  begin
    j:=RzEdit2.Text;
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update 原棉库存 set 库存件数 = 库存件数-'+quotedstr(j)+' where (产地 =:a) and (批次 =:b)');
      Parameters.ParamByName('a').Value:=ADOQuery1['产地'];
      Parameters.ParamByName('b').Value:=ADOQuery1['批次'];
      ExecSQL;
    end;
  with ADOQuery3 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select  *  from  原棉出库 ');
      Open;
      Edit;
      Insert;
      FieldByName('出库时间').AsString:=formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime);
      FieldByName('厂内编号').AsString:=ADOQuery1.fieldbyname('厂内编号').AsString;
      FieldByName('产地').AsString:=ADOQuery1.fieldbyname('产地').AsString;
      FieldByName('批次').AsString:=ADOQuery1.fieldbyname('批次').AsString;
      FieldByName('出库件数').AsString:=j;
      FieldByName('件重').AsString:=ADOQuery1.fieldbyname('件重').AsString;
      Refresh;
    end;
    application.MessageBox('原棉出库成功!','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
    application.MessageBox('请输入出库原棉件数!','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TFrmYmck.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Date();
  with ADOQuery1  do
    begin
      Close;
      sql.Clear;
      sql.add('select * from 原棉库存');
      Open;
    end;
end;

procedure TFrmYmck.breturnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmYmck.bqueryClick(Sender: TObject);
begin
   if RzEdit1.Text<>'' then
      begin
         with ADOQuery1 do
           begin
             Close;
             SQL.Clear;
             SQL.Add('select * from 原棉库存 where 厂内编号=:fah');
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
