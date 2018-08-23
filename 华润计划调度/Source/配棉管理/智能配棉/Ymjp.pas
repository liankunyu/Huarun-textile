unit Ymjp;

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
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, ExtCtrls, RzPanel,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RzButton, StdCtrls, RzCmboBx,
  Mask, RzEdit, cxContainer, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ComCtrls, RzLabel,
  Menus, ImgList, cxLabel, cxDBEdit;

type
   arr3 = array[1..55]of real;
type
  TFrmYmjp = class(TForm)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    RzPanel1: TRzPanel;
    bnew: TRzBitBtn;
    breturn: TRzBitBtn;
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
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery3: TADOQuery;
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
    cxImageList1: TcxImageList;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    RzBitBtn1: TRzBitBtn;
    N3: TMenuItem;
    RzBitBtn2: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    bquery: TRzBitBtn;
    cxLabel2: TcxLabel;
    RzEdit1: TRzEdit;
    ADOQuery4: TADOQuery;
    cxGrid1DBTableView2DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn11: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn12: TcxGridDBColumn;
    ADOQuery5: TADOQuery;
    function fah:string;
    procedure bnewClick(Sender: TObject);
    procedure breturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
   

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYmjp: TFrmYmjp;
  procedure aymjp(AHandle:THandle);stdcall;



implementation
uses  udm,pmfa, famx,syrk;

{$R *.dfm}

procedure aymjp(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmYmjp:=TFrmYmjp.Create(Application);
  try
    FrmYmjp.ShowModal;
  finally
    TFrmYmjp(FrmYmjp).Free;
  end;
end;


function TFrmYmjp.fah;
var
  S: String;
begin
  with ADOQuery3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 配棉平均参数 ');
    Open;
  end;
  if ADOQuery3.RecordCount>0 then
  begin
    ADOQuery3.Last;
    S:=Trim('HR')+Format('%.4d',[(StrToInt(Copy(ADOQuery3.FieldByName('方案号').AsString,3,4))+1)]);
  end
  else
  begin
      S :=Trim('HR')+'0001';
  end;
  result := S;
end; 

procedure TFrmYmjp.bnewClick(Sender: TObject);
begin
  frmpmfa:=Tfrmpmfa.Create(Self);
  frmpmfa.ShowModal;
  frmpmfa.Free;
end;

procedure TFrmYmjp.breturnClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TFrmYmjp.FormShow(Sender: TObject);
begin
 ADOQuery1.Active:=True;
 ADOQuery2.Active:=True;
 RzEdit1.Text:='HR';
end;

procedure TFrmYmjp.N1Click(Sender: TObject);
begin
  frmfamx:=Tfrmfamx.Create(Self);
  frmfamx.ShowModal;
  frmfamx.Free;
end;

procedure TFrmYmjp.N3Click(Sender: TObject);
begin
  frmfamx:=Tfrmfamx.Create(Self);
  frmfamx.ShowModal;
  frmfamx.Free;
end;

procedure TFrmYmjp.N2Click(Sender: TObject);
begin
  if Application.MessageBox('确定删除配棉方案选中的原棉?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    frmsyrk:=Tfrmsyrk.Create(Self);
    FrmSyrk.ShowModal;
    FrmSyrk.Free;
  end;
end;


procedure TFrmYmjp.RzBitBtn1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  adoquery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from 配棉平均参数 ');
  adoquery1.Open;
  ADOQuery2.Close;
  adoquery2.SQL.Clear;
  ADOQuery2.SQL.Add('select * from 配棉物理指标 ');
  adoquery2.Open;
end;

procedure TFrmYmjp.RzBitBtn2Click(Sender: TObject);
begin
  if Application.MessageBox('确定删除该配棉方案?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
    begin
      with  ADOQuery5 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select  * from 配棉物理指标 where 方案号=:fah ');
        Parameters.ParamByName('fah').Value:=ADOQuery1.fieldbyname('方案号').Value;
        Open;
      end;
      if ADOQuery5.Eof then
      begin
        ADOQuery1.Delete;
      end
      else
      begin
        Application.MessageBox('该方案号内有相关数据，请先删除参与配棉的原棉数据！','提示',MB_OK+MB_ICONERROR);
      end;
    end;
end;

procedure TFrmYmjp.bqueryClick(Sender: TObject);
  begin
   with ADOQuery4 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
      Parameters.ParamByName('fah').Value:=RzEdit1.Text;
      Open;
    end;
   if ADOQuery4.Eof then
     Application.MessageBox('该方案号数据库中不存在，请输入要进行计算的方案号！','提示',MB_ICONINFORMATION+MB_OK)
   else
   begin
     with ADOQuery1 do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
       Parameters.ParamByName('fah').Value:=RzEdit1.Text;
       Open;
     end;
     with ADOQuery2 do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from 配棉物理指标 where 方案号=:fah');
       Parameters.ParamByName('fah').Value:=RzEdit1.Text;
       Open;
     end;
   end;
  end;

end.
