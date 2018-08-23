unit sumt_3;

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
  cxDataStorage, cxEdit, DB, cxDBData, RzButton, ExtCtrls, RzPanel, ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, Grids, RzGrids, StdCtrls,
  RzLabel, cxContainer, cxLabel, cxDropDownEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ComCtrls, Mask, RzEdit;

type
  TForm4 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    RzPanel1: TRzPanel;
    DataSource2: TDataSource;
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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
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
    RzPanel2: TRzPanel;
    RzBitBtn3: TRzBitBtn;
    RzStringGrid1: TRzStringGrid;
    cxLabel1: TcxLabel;
    ADOQuery2: TADOQuery;
    cxGridDBTableView1DBColumn: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    cxGridDBTableView1DBColumn3: TcxGridDBColumn;
    cxGridDBTableView1DBColumn4: TcxGridDBColumn;
    cxGridDBTableView1DBColumn5: TcxGridDBColumn;
    cxGridDBTableView1DBColumn6: TcxGridDBColumn;
    cxGridDBTableView1DBColumn7: TcxGridDBColumn;
    cxGridDBTableView1DBColumn8: TcxGridDBColumn;
    cxGridDBTableView1DBColumn9: TcxGridDBColumn;
    ADOQuery3: TADOQuery;
    RzGroupBox1: TRzGroupBox;
    bquery: TRzBitBtn;
    cxLabel2: TcxLabel;
    RzEdit1: TRzEdit;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    ADOQuery4: TADOQuery;
    RzBitBtn1: TRzBitBtn;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
   

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  procedure asumt_3(AHandle:THandle);stdcall;

implementation

uses  udm,sumt_1,sumt_2,sumt_fgh,Ymjp;

{$R *.dfm}

procedure asumt_3(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Form4:=TForm4.Create(Application);
  try
    Form4.ShowModal;
  finally
    TForm4(Form4).Free;
  end;
end;


procedure TForm4.RzBitBtn2Click(Sender: TObject);
 var i,j,jj : integer;
begin
  if RzEdit1.text='HR' then
    begin
      Application.MessageBox('请输入方案号！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
    end    
  else
  begin
    Form1:=TForm1.Create(Application);
    with form1.sumt  do
    begin
      for jj:= 1 to n do  x[jj]:=x00[jj];
      r := r00;
      IRC:=0; ITE:=0; KTE :=0; ILI:=0; NPE:=0; NFX:=0;
      pen:=0.0;
      fx:=0.0;
      for i:=1 to kg do gx[i]:=0.0;
      for i:=1 to kh do hx[i]:=0.0;
      ffxx0:=0.0;
      rm:=2657863.0;
      dxtdg:=0.0;
      for i:=1 to n do
      begin
        s[i]:=0.0;
        dpdx[i]:=0.0;
        dfdx[i]:=0.0;
        dx[i]:=0.0;
        dg[i]:=0.0;
        Hdg[i]:=0.0;
        xcs[i]:=0.0;

      end;
      for i:=1 to 25 do
        for j:=1 to 25 do
        begin
          H[i,j]:=0.0;  direct[i,j]:=0.0;  dgdx[i,j]:=0.0;  dhdx[i,j]:=0.0;
        end;
    end;
   with form1.sumt do
   begin
    n  :=Form4.cxGrid1DBTableView1.DataController.GetRowCount;
    kg :=Form4.cxGrid1DBTableView1.DataController.GetRowCount+8;
    kh :=1;
    Kcheck := 0 ;
    R:=1.0;
    Cr:=0.2;
    T0:=0.01;
    eps:=0.001;
    for i:=1 to n do
      begin
       x[i]:=0.0;
       bl[i]:=0.0;
       bu[i]:=0.25;
      end;
   end;
    Form2:=TForm2.Create(Application);
    form2.Show;
    form2.jgxs.lines.Clear;
    ffx;
    ggx;
    hhx;
    sjxs_1;
    sump;
    sjxs_2;
    Form1.Free;
  end;
end;

procedure TForm4.RzBitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TForm4.bqueryClick(Sender: TObject);
  var
  i,n : Integer;
begin
  with ADOQuery3 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
      Parameters.ParamByName('fah').Value:=RzEdit1.Text;
      Open;
    end;
  if ADOQuery3.Eof then
    Application.MessageBox('该方案号数据库中不存在，请输入要进行计算的方案号！','提示',MB_ICONINFORMATION+MB_OK)
  else
  begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 配棉物理指标 where 方案号=:fah');
      Parameters.ParamByName('fah').Value:=RzEdit1.Text;
      Open;
    end;
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
      Parameters.ParamByName('fah').Value:=RzEdit1.Text;
      Open;
    end;
    n := cxGrid1DBTableView1.DataController.GetRowCount;
    RzStringGrid1.rowcount:=2;
    RzStringGrid1.colcount:=n+1;
    if (n>5) then
      begin
        RzStringGrid1.width:=64*5+25;
      end
    else
    begin
      RzStringGrid1.width:=64*n+25;
    end;
    rzStringGrid1.Cells[0,0]:='方案号' ;
    rzStringGrid1.Cells[0,1]:= cxGrid1DBTableView1.DataController.Values[1,11];
    for i :=1 to cxGrid1DBTableView1.DataController.GetRowCount do
    rzStringGrid1.Cells[i,0]:= cxGrid1DBTableView1.DataController.Values[i-1,0]+floattostr(cxGrid1DBTableView1.DataController.Values[i-1,1]);
  end;
end;


procedure TForm4.RzBitBtn5Click(Sender: TObject);
var
  i:Integer;
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
    if ADOQuery3.Eof then
      begin
        for i :=1 to cxGrid1DBTableView1.DataController.GetRowCount do
        with ADOQuery4 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from 配棉比例 ');
          Open;
          Edit;
          Insert;
          FieldByName('方案号').AsString:=RzEdit1.Text;
          FieldByName('产地').AsString:=cxGrid1DBTableView1.DataController.Values[i-1,0];
          FieldByName('批次').AsString:=cxGrid1DBTableView1.DataController.Values[i-1,1];
          FieldByName('百分比').AsString:=rzStringGrid1.Cells[i,1];
          Refresh;
        end ;
        ShowMessage('保存成功！')
      end
    else
    begin
      Application.MessageBox('要保存的方案号已存在，请新建方案号！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
    end;
  end;
      
end;



procedure TForm4.FormShow(Sender: TObject);
begin
  RzEdit1.Text:='HR';
end;

procedure TForm4.RzBitBtn1Click(Sender: TObject);
begin
  frmymjp:=TFrmYmjp.Create(Self);
  FrmYmjp.ShowModal;
  FrmYmjp.Free;
end;

end.
