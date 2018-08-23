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
  RzEdit1.Text:=frmymjp.adoquery1.fieldbyname('������').AsString;
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
          SQL.Add('update ԭ�޿�� set ������ = ������-'+quotedstr(j)+' where (���� =:a) and (���� =:b)');
          Parameters.ParamByName('a').Value:=ADOQuery1['����'];
          Parameters.ParamByName('b').Value:=ADOQuery1['����'];
          ExecSQL;
        end;
      with ADOQuery4 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *  from ���޳��� ');
          Open;
          Edit;
          Insert;
          FieldByName('������').AsString:=RzEdit1.Text;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          FieldByName('������').AsString:=j;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          Refresh;
        end;
      {with ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select  a.����,a.����,a.�۸�, a.Ʒ��,a.���峤��,a.����,a.���ѱ�ǿ��,a.���¡ֵ,a.�س���,a.����,a.����,b.����,b.������,b.������� ');
        SQL.Add('from   ԭ������ָ�� as a,ԭ�޿��1 as b   where  (a.���� = b.����)   and   (a.���� =b.����) ');
        Open;
      end; }
      with FrmYmjp.ADOQuery2 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  * from ��������ָ��   order by ���');
          Open;
          Edit;
          Insert;
          FieldByName('������').AsString:=RzEdit1.Text;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          FieldByName('�۸�').AsString:=ADOQuery1.fieldbyname('�۸�').AsString;
          FieldByName('Ʒ��').AsString:=ADOQuery1.fieldbyname('Ʒ��').AsString;
          FieldByName('���峤��').AsString:=ADOQuery1.fieldbyname('���峤��').AsString;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          FieldByName('���ѱ�ǿ��').AsString:=ADOQuery1.fieldbyname('���ѱ�ǿ��').AsString;
          FieldByName('���¡ֵ').AsString:=ADOQuery1.fieldbyname('���¡ֵ').AsString;
          FieldByName('�س���').AsString:=ADOQuery1.fieldbyname('�س���').AsString;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
          Refresh;
        end;
        Frmfamx.Close;
    end
  else
    begin
       showmessage('���������ԭ�޵ļ���!');
       Exit;
    end;
end;



procedure TFrmFamx.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  RzEdit2.Text:=ADOQuery1.fieldbyname('������').AsString;
end;


procedure TFrmFamx.RzBitBtn2Click(Sender: TObject);
  var
     c1,c2,c3,c4,c5,c6,c7,c8:real;
begin
  with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from ����ƽ������ where ������=:fah');
      Parameters.ParamByName('fah').Value:=frmymjp.adoquery1.fieldbyname('������').AsString;
      Open;
      c1:=FieldByName('ƽ��Ʒ��').AsFloat;
      c2:=FieldByName('ƽ�����峤��').AsFloat;
      c3:=FieldByName('ƽ������').AsFloat;
      c4:=FieldByName('ƽ�����ѱ�ǿ��').AsFloat;
      c5:=FieldByName('ƽ�����¡ֵ').AsFloat;
      c6:=FieldByName('ƽ���س���').AsFloat;
      c7:=FieldByName('ƽ������').AsFloat;
      c8:=FieldByName('ƽ������').AsFloat;
    end;
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select *  from ԭ������ָ�� where (Ʒ�� between :A1  and :B1) and  (���峤�� between :A2 and :B2)  and  (���� between :A3 and :B3)  and  (���ѱ�ǿ�� between :A4 and :B4) ');
      SQL.Add('and (���¡ֵ between :A5 and :B5) and (�س��� between :A6 and :B6) and (���� between :A7 and :B7) and (����  between :A8 and :B8)');
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
        SQL.Add('select a.����,a.����,a.�۸�, a.Ʒ��,a.���峤��,a.����,a.���ѱ�ǿ��,a.���¡ֵ, a.�س���,a.����,a.����,b.����,b.������,b.�������');
        SQL.Add('from   ԭ������ָ�� as a,ԭ�޿�� as b where  (a.���� = b.����)  and  (a.���� =b.����)');
        Open;
      end;
  end;

end.
