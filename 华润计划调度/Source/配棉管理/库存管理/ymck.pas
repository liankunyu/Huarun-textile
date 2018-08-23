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
      SQL.Add('update ԭ�޿�� set ������ = ������-'+quotedstr(j)+' where (���� =:a) and (���� =:b)');
      Parameters.ParamByName('a').Value:=ADOQuery1['����'];
      Parameters.ParamByName('b').Value:=ADOQuery1['����'];
      ExecSQL;
    end;
  with ADOQuery3 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select  *  from  ԭ�޳��� ');
      Open;
      Edit;
      Insert;
      FieldByName('����ʱ��').AsString:=formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime);
      FieldByName('���ڱ��').AsString:=ADOQuery1.fieldbyname('���ڱ��').AsString;
      FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
      FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
      FieldByName('�������').AsString:=j;
      FieldByName('����').AsString:=ADOQuery1.fieldbyname('����').AsString;
      Refresh;
    end;
    application.MessageBox('ԭ�޳���ɹ�!','��ʾ',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
    application.MessageBox('���������ԭ�޼���!','��ʾ',MB_OK+MB_ICONINFORMATION);
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
      sql.add('select * from ԭ�޿��');
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
             SQL.Add('select * from ԭ�޿�� where ���ڱ��=:fah');
             Parameters.ParamByName('fah').Value:=RzEdit1.Text;
             Open;
           end
      end
   else
      begin
       showmessage('�������ѯ����!');
       exit;
      end;
end;

end.
