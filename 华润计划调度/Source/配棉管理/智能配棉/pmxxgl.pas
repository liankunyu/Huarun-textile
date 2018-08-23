unit pmxxgl;

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
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxDropDownEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ComCtrls, ADODB, StdCtrls, Mask, RzEdit, RzLabel, RzCmboBx;

type
  TFrmPmxxgl = class(TForm)
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
    cxStyleRepository2: TcxStyleRepository;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    RzPanel1: TRzPanel;
    bnew: TRzBitBtn;
    breturn: TRzBitBtn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    RzPanel3: TRzPanel;
    RzLabel11: TRzLabel;
    RzLabel3: TRzLabel;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    DateTimePicker3: TDateTimePicker;
    RzLabel4: TRzLabel;
    DateTimePicker1: TDateTimePicker;
    RzLabel6: TRzLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    cxComboBox1: TcxComboBox;
    RzLabel1: TRzLabel;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    ADOTable2DSDesigner: TStringField;
    ADOTable2DSDesigner2: TIntegerField;
    ADOTable2DSDesigner1: TIntegerField;
    ADOTable2DSDesigner3: TStringField;
    ADOTable2DSDesigner4: TIntegerField;
    ADOTable2DSDesigner5: TDateTimeField;
    ADOTable2DSDesigner6: TDateTimeField;
    ADOTable2DSDesigner7: TStringField;
    ADOTable2DSDesigner8: TStringField;
    ADOTable2DSDesigner9: TStringField;
    bcancel: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    ADOTable3: TADOTable;
    ADOTable3DSDesigner: TStringField;
    ADOTable3DSDesigner2: TIntegerField;
    ADOTable3DSDesigner3: TStringField;
    ADOTable3DSDesigner4: TIntegerField;
    ADOTable1: TADOTable;
    ADOTable1DSDesigner: TStringField;
    ADOTable1DSDesigner2: TStringField;
    ADOTable1DSDesigner3: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1DSDesigner: TStringField;
    DataSource4: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery2DSDesigner: TStringField;
    DataSource5: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource6: TDataSource;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    cxGridDBTableView2DBColumn: TcxGridDBColumn;
    cxGridDBTableView2DBColumn1: TcxGridDBColumn;
    cxGridDBTableView2DBColumn11: TcxGridDBColumn;
    cxGridDBTableView2DBColumn2: TcxGridDBColumn;
    cxGridDBTableView2DBColumn3: TcxGridDBColumn;
    cxGridDBTableView2DBColumn4: TcxGridDBColumn;
    cxGridDBTableView2DBColumn5: TcxGridDBColumn;
    cxGridDBTableView2DBColumn6: TcxGridDBColumn;
    cxGridDBTableView2DBColumn7: TcxGridDBColumn;
    cxGridDBTableView2DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGridDBTableView1DBColumn: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    cxStyle31: TcxStyle;
    procedure bnewClick(Sender: TObject);
    //procedure ADOQuery2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    function FindMin(sqlstr:string):integer;
    { Public declarations }
  end;

var
  FrmPmxxgl: TFrmPmxxgl;
  procedure apmxxgl(AHandle:THandle);stdcall;

implementation

uses  udm;

{$R *.dfm}

procedure apmxxgl(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmPmxxgl:=TFrmPmxxgl.Create(Application);
  try
    FrmPmxxgl.ShowModal;
  finally
    TFrmPmxxgl(FrmPmxxgl).Free;
  end;
end;

function TFrmPmxxgl.FindMin(sqlstr:string):integer;
var
  i,j,number:integer;
  query:tadoquery;
  No:array of integer;
  find:boolean;
begin
  query:=tadoquery.Create(self);
  query.Connection:=dm.ADOConnection1;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add(sqlstr);
  query.Open;
  if query.RecordCount=0 then result:=1
  else
  begin
    number:=0;
    setlength(No,query.RecordCount);
    for i:=0 to query.RecordCount-1 do
    begin
      no[i]:=query.Fields[0].AsInteger;
      query.Next;
    end;
    for j:=1 to query.RecordCount+1 do
    begin
      find:=false;
      for i:=0 to query.RecordCount-1 do
      if No[i]=j then
      begin
        find:=true;
        break;
      end;
      if not find then
      begin
        number:=j;
        break;
      end;
    end;
    result:=number;
  end;
  query.Free;
end;

procedure TFrmPmxxgl.bnewClick(Sender: TObject);
var
  temp:string;
begin
  if (RzEdit2.Text<>adotable3.FieldByName('方案号').AsString)or(RzEdit3.Text<>adotable1.FieldByName('支数').AsString) then
  begin
    showmessage('所输入的方案号或支数与要求的不同,请核对!');
    RzEdit2.Text:='';
    RzEdit3.Text:='';
    abort;
  end;
  adoquery4.Close;
  adoquery4.SQL.Clear;
  adoquery4.SQL.Add('select 支数 from FG12配棉支数 where 支数='''+RzEdit3.Text+'''');
  adoquery4.Open;
  if adoquery4.RecordCount<>0 then
  begin
    adoquery5.Close;
    adoquery5.SQL.Clear;
    adoquery5.SQL.Add('select 方案号 from FG12配棉方案 where 支数='''+RzEdit3.Text+''' and 方案号='+RzEdit2.Text);
    adoquery5.Open;
    if adoquery5.RecordCount<>0 then
    begin
      adotable2.Append;
      adotable2['序号1']:=FrmPmxxgl.findmin('select 序号1 from FG12配棉品种');
      adotable2['支数']:=RzEdit3.Text;
      adotable2['方案号']:=RzEdit2.Text;
      adotable2['起始日期']:=datetimepicker1.Date;
      //adotable2['终止日期']:=datetimepicker2.Date;
      adotable2['生产分厂']:=cxLookupComboBox2.Text;
      adotable2['前纺品种']:=cxLookupComboBox3.Text;
      adotable2['细纱品种']:=cxLookupComboBox4.Text;
      adotable2.Post;
      adotable2.Refresh;
    end
    else
    begin
      adotable3.Append;
      adotable3['序号']:=FrmPmxxgl.findmin('select 序号 from FG12配棉方案');
      adotable3['方案号']:=RzEdit2.Text;
      adotable3['支数']:=RzEdit3.Text;
      adotable3.Post;
      adotable3.Refresh;
      adotable2.Append;
      adotable2['序号1']:=FrmPmxxgl.findmin('select 序号1 from FG12配棉品种');
      adotable2['支数']:=RzEdit3.Text;
      adotable2['方案号']:=RzEdit2.Text;
      adotable2['起始日期']:=DateTimePicker3.Date;
      adotable2['终止日期']:=DateTimePicker1.Date;
      adotable2['生产分厂']:=cxLookupComboBox2.Text;
      adotable2['前纺品种']:=cxLookupComboBox3.Text;
      adotable2['细纱品种']:=cxLookupComboBox4.Text;
      adotable2.Post;
      adotable2.Refresh;
    end
  end
  else
  begin
    adotable1.Append;
    temp:=inttostr(FrmPmxxgl.findmin('select 编号 from FG12配棉支数'));
    while length(temp)<4 do temp:='0'+temp;
    adotable1['编号']:=temp;
    adotable1['支数']:=RzEdit3.Text;
    adotable1['类别']:=cxComboBox1.Text;
    adotable1.Post;
    adotable1.Refresh;
    adotable3.Append;
    adotable3['序号']:=FrmPmxxgl.findmin('select 序号 from FG12配棉方案');
    adotable3['方案号']:=RzEdit2.Text;
    adotable3['支数']:=RzEdit3.Text;
    adotable3.Post;
    adotable3.Refresh;
    adotable2.Append;
    adotable2['序号1']:=FrmPmxxgl.findmin('select 序号1 from FG12配棉品种');
    adotable2['支数']:=RzEdit3.Text;
    adotable2['方案号']:=RzEdit2.Text;
    adotable2['起始日期']:=datetimepicker3.Date;
    adotable2['终止日期']:=datetimepicker1.Date;
    adotable2['生产分厂']:=cxLookupComboBox2.Text;
    adotable2['前纺品种']:=cxLookupComboBox3.Text;
    adotable2['细纱品种']:=cxLookupComboBox4.Text;
    adotable2.Post;
    adotable2.Refresh;
  end;

end;

end.
