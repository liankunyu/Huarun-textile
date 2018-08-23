unit famx;

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
  cxDataStorage, cxEdit, DB, cxDBData, RzButton, ExtCtrls, RzPanel,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, StdCtrls, RzLabel,
  Mask, RzEdit, cxLabel;

type
  TFrmFamx = class(TForm)
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
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    rzgrpbx1: TRzGroupBox;
    lbl1: TRzLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    bsave: TRzBitBtn;
    breturn: TRzBitBtn;
    RzLabel1: TRzLabel;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn12: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn13: TcxGridDBColumn;
    ADOQuery4: TADOQuery;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure breturnClick(Sender: TObject);
    procedure bsaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFamx: TFrmFamx;

implementation
uses  udm,ymjp;

{$R *.dfm}

procedure TFrmFamx.FormShow(Sender: TObject);
begin
  RzEdit1.Text:=frmymjp.adoquery1.fieldbyname('方案号').AsString;
  ADOQuery1.Active:=True;
end;

procedure TFrmFamx.breturnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFamx.bsaveClick(Sender: TObject);
var j:string;
begin
  if RzEdit2.Text<>'' then
    begin
      j:=RzEdit2.text;
      with ADOQuery3 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update 原棉库存 set 库存件数 = 库存件数-'+quotedstr(j)+' where (产地 =:a) and (批次 =:b)');
          Parameters.ParamByName('a').Value:=ADOQuery1['产地'];
          Parameters.ParamByName('b').Value:=ADOQuery1['批次'];
          ExecSQL;
        end;
      with ADOQuery4 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *  from 配棉出库 ');
          Open;
          Edit;
          Insert;
          FieldByName('方案号').AsString:=RzEdit1.Text;
          FieldByName('产地').AsString:=ADOQuery1.fieldbyname('产地').AsString;
          FieldByName('批次').AsString:=ADOQuery1.fieldbyname('批次').AsString;
          FieldByName('库存件数').AsString:=j;
          FieldByName('件重').AsString:=ADOQuery1.fieldbyname('件重').AsString;
          Refresh;
        end;
      {with ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select  a.产地,a.批次,a.价格, a.品级,a.主体长度,a.短绒,a.断裂比强度,a.马克隆值,a.回潮率,a.含杂,a.含糖,b.件重,b.库存件数,b.库存重量 ');
        SQL.Add('from   原棉物理指标 as a,原棉库存1 as b   where  (a.产地 = b.产地)   and   (a.批次 =b.批次) ');
        Open;
      end; }
      with FrmYmjp.ADOQuery2 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  * from 配棉物理指标   order by 序号');
          Open;
          Edit;
          Insert;
          FieldByName('方案号').AsString:=RzEdit1.Text;
          FieldByName('产地').AsString:=ADOQuery1.fieldbyname('产地').AsString;
          FieldByName('批次').AsString:=ADOQuery1.fieldbyname('批次').AsString;
          FieldByName('价格').AsString:=ADOQuery1.fieldbyname('价格').AsString;
          FieldByName('品级').AsString:=ADOQuery1.fieldbyname('品级').AsString;
          FieldByName('主体长度').AsString:=ADOQuery1.fieldbyname('主体长度').AsString;
          FieldByName('短绒').AsString:=ADOQuery1.fieldbyname('短绒').AsString;
          FieldByName('断裂比强度').AsString:=ADOQuery1.fieldbyname('断裂比强度').AsString;
          FieldByName('马克隆值').AsString:=ADOQuery1.fieldbyname('马克隆值').AsString;
          FieldByName('回潮率').AsString:=ADOQuery1.fieldbyname('回潮率').AsString;
          FieldByName('含杂').AsString:=ADOQuery1.fieldbyname('含杂').AsString;
          FieldByName('含糖').AsString:=ADOQuery1.fieldbyname('含糖').AsString;
          Refresh;
        end;
        Frmfamx.Close;
    end
  else
    begin
       showmessage('请输入添加原棉的件数!');
       Exit;
    end;
end;



procedure TFrmFamx.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  RzEdit2.Text:=ADOQuery1.fieldbyname('库存件数').AsString;
end;


procedure TFrmFamx.RzBitBtn2Click(Sender: TObject);
  var
     c1,c2,c3,c4,c5,c6,c7,c8:real;
begin
  with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
      Parameters.ParamByName('fah').Value:=frmymjp.adoquery1.fieldbyname('方案号').AsString;
      Open;
      c1:=FieldByName('平均品级').AsFloat;
      c2:=FieldByName('平均主体长度').AsFloat;
      c3:=FieldByName('平均短绒').AsFloat;
      c4:=FieldByName('平均断裂比强度').AsFloat;
      c5:=FieldByName('平均马克隆值').AsFloat;
      c6:=FieldByName('平均回潮率').AsFloat;
      c7:=FieldByName('平均含杂').AsFloat;
      c8:=FieldByName('平均含糖').AsFloat;
    end;
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select *  from 原棉物理指标 where (品级 between :A1  and :B1) and  (主体长度 between :A2 and :B2)  and  (短绒 between :A3 and :B3)  and  (断裂比强度 between :A4 and :B4) ');
      SQL.Add('and (马克隆值 between :A5 and :B5) and (回潮率 between :A6 and :B6) and (含杂 between :A7 and :B7) and (含糖  between :A8 and :B8)');
      Parameters.ParamByName('A1').Value :=  c1-2;
      Parameters.ParamByName('B1').Value :=  c1+2;
      Parameters.ParamByName('A2').Value :=  c2-1;
      Parameters.ParamByName('B2').Value :=  c2+1;
      Parameters.ParamByName('A3').Value :=  c3-1;
      Parameters.ParamByName('B3').Value :=  c3+1;
      Parameters.ParamByName('A4').Value :=  c4-1.5;
      Parameters.ParamByName('B4').Value :=  c4+1.5;
      Parameters.ParamByName('A5').Value :=  c5-1;
      Parameters.ParamByName('B5').Value :=  c5+1;
      Parameters.ParamByName('A6').Value :=  c6-2;
      Parameters.ParamByName('B6').Value :=  c6+2;
      Parameters.ParamByName('A7').Value :=  c7-2;
      Parameters.ParamByName('B7').Value :=  c7+2;
      Parameters.ParamByName('A8').Value :=  c8-3;
      Parameters.ParamByName('B8').Value :=  c8+3;
      Open;
    end
end;

procedure TFrmFamx.RzBitBtn1Click(Sender: TObject);
  begin
    with ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select a.产地,a.批次,a.价格, a.品级,a.主体长度,a.短绒,a.断裂比强度,a.马克隆值, a.回潮率,a.含杂,a.含糖,b.件重,b.库存件数,b.库存重量');
        SQL.Add('from   原棉物理指标 as a,原棉库存 as b where  (a.产地 = b.产地)  and  (a.批次 =b.批次)');
        Open;
      end;
  end;

end.
