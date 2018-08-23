unit ymrk;

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
  cxDataStorage, cxEdit, DB, cxDBData, ComCtrls, StdCtrls, RzPanel,
  RzButton, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ADODB, Mask,
  RzEdit, RzLabel, cxLabel;

type
  TFrmYmrk = class(TForm)
    RzPanel1: TRzPanel;
    breturn: TRzBitBtn;
    bsave: TRzBitBtn;
    rzgrpbx1: TRzGroupBox;
    lbl7: TRzLabel;
    lbl9: TRzLabel;
    lbl10: TRzLabel;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    RzLabel1: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzEdit4: TRzEdit;
    RzEdit5: TRzEdit;
    RzEdit6: TRzEdit;
    RzEdit7: TRzEdit;
    RzEdit8: TRzEdit;
    RzEdit9: TRzEdit;
    RzEdit10: TRzEdit;
    RzEdit11: TRzEdit;
    RzEdit12: TRzEdit;
    RzEdit13: TRzEdit;
    RzEdit14: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    ADOQuery3: TADOQuery;
    DateTimePicker1: TDateTimePicker;
    function ymcnbh:string;
    procedure bsaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure breturnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYmrk: TFrmYmrk;
  procedure aymrk(AHandle:THandle);stdcall;

implementation

{$R *.dfm}
uses udm;


procedure aymrk(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Frmymrk:=TFrmymrk.Create(Application);
  try
    Frmymrk.ShowModal;
  finally
    TFrmymrk(Frmymrk).Free;
  end;
end;


function TFrmYmrk.ymcnbh;
var
  S: String;
  begin
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 原棉库存 ');
      Open;
    end;
    if ADOQuery2.RecordCount>0 then
    begin
      ADOQuery2.Last;
      S:=Trim('YM')+Format('%.4d',[(StrToInt(Copy(ADOQuery2.FieldByName('厂内编号').AsString,3,4))+1)]);
    end
    else
    begin
        S :=Trim('YM')+'0001';
    end;
    result := S;
  end;

procedure TFrmYmrk.bsaveClick(Sender: TObject);
var i:Integer;
  begin
      with ADOQuery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    原棉库存');
          Open;
        end;
      for i:=0 to ADOQuery1.RecordCount-1 do
        begin
          if (Trim(RzEdit2.Text)=Trim(ADOQuery1.fieldbyname('产地').AsString)) and (Trim(RzEdit3.Text)=Trim(ADOQuery1.fieldbyname('批次').AsString)) then
            begin
              Application.MessageBox('你已经添加过了该原棉！不能再添加!!!','提示',64);
              Exit;
            end;
          ADOQuery1.Next;
        end;
      with ADOQuery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    原棉库存');
          Open;
          Edit;
          Insert;
          FieldByName('厂内编号').AsString:=RzEdit1.Text;
          FieldByName('产地').AsString:=RzEdit2.Text;
          FieldByName('批次').AsString:=RzEdit3.Text;
          FieldByName('库存件数').AsString:=RzEdit4.Text;
          FieldByName('件重').AsString:=RzEdit5.Text;
          //FieldByName('库存重量').AsString:=FloatToStr(StrToFloat(RzEdit4.Text)*StrToFloat(RzEdit5.Text));
          Refresh;
        end;
      with ADOQuery2 do
         begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    原棉物理指标');
          Open;
          Edit;
          Insert;
          FieldByName('产地').AsString:=RzEdit2.Text;
          FieldByName('批次').AsString:=RzEdit3.Text;
          FieldByName('价格').AsString:=RzEdit6.Text;
          FieldByName('品级').AsString:=RzEdit7.Text;
          FieldByName('主体长度').AsString:=RzEdit8.Text;
          FieldByName('短绒').AsString:=RzEdit9.Text;
          FieldByName('断裂比强度').AsString:=RzEdit10.Text;
          FieldByName('马克隆值').AsString:=RzEdit11.Text;
          FieldByName('回潮率').AsString:=RzEdit12.Text;
          FieldByName('含杂').AsString:=RzEdit13.Text;
          FieldByName('含糖').AsString:=RzEdit14.Text;
          Refresh;
          end;
      with ADOQuery3 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    原棉入库');
          Open;
          Edit;
          Insert;
          FieldByName('入库库时间').AsString:=formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime);
          FieldByName('厂内编号').AsString:=RzEdit1.Text;
          FieldByName('产地').AsString:=RzEdit2.Text;
          FieldByName('批次').AsString:=RzEdit3.Text;
          FieldByName('入库件数').AsString:=RzEdit4.Text;
          FieldByName('件重').AsString:=RzEdit5.Text;
          Refresh;
        end;
        application.MessageBox('新建原棉入库成功!','提示',MB_OK+MB_ICONINFORMATION);
  end;

procedure TFrmYmrk.FormShow(Sender: TObject);
  begin
    DateTimePicker1.DateTime:=Date();
    ymcnbh;
    RzEdit1.Text:=ymcnbh;
    ADOQuery1.Active:=True;
    ADOQuery2.Active:=True;
  end;

procedure TFrmYmrk.breturnClick(Sender: TObject);
  begin
    Self.Close;
  end;

{procedure TFrmYmrk.RzBitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('确定删除该原棉?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      ADOQuery1.Delete;
    except
      Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
  end;
end;   }

procedure TFrmYmrk.RzBitBtn1Click(Sender: TObject);
begin
   ymcnbh;
   RzEdit1.Text:=ymcnbh;
end;

end.
