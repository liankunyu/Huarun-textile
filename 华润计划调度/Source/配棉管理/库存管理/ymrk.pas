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
      SQL.Add('select * from ԭ�޿�� ');
      Open;
    end;
    if ADOQuery2.RecordCount>0 then
    begin
      ADOQuery2.Last;
      S:=Trim('YM')+Format('%.4d',[(StrToInt(Copy(ADOQuery2.FieldByName('���ڱ��').AsString,3,4))+1)]);
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
          SQL.Add('select  *   from    ԭ�޿��');
          Open;
        end;
      for i:=0 to ADOQuery1.RecordCount-1 do
        begin
          if (Trim(RzEdit2.Text)=Trim(ADOQuery1.fieldbyname('����').AsString)) and (Trim(RzEdit3.Text)=Trim(ADOQuery1.fieldbyname('����').AsString)) then
            begin
              Application.MessageBox('���Ѿ���ӹ��˸�ԭ�ޣ����������!!!','��ʾ',64);
              Exit;
            end;
          ADOQuery1.Next;
        end;
      with ADOQuery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    ԭ�޿��');
          Open;
          Edit;
          Insert;
          FieldByName('���ڱ��').AsString:=RzEdit1.Text;
          FieldByName('����').AsString:=RzEdit2.Text;
          FieldByName('����').AsString:=RzEdit3.Text;
          FieldByName('������').AsString:=RzEdit4.Text;
          FieldByName('����').AsString:=RzEdit5.Text;
          //FieldByName('�������').AsString:=FloatToStr(StrToFloat(RzEdit4.Text)*StrToFloat(RzEdit5.Text));
          Refresh;
        end;
      with ADOQuery2 do
         begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    ԭ������ָ��');
          Open;
          Edit;
          Insert;
          FieldByName('����').AsString:=RzEdit2.Text;
          FieldByName('����').AsString:=RzEdit3.Text;
          FieldByName('�۸�').AsString:=RzEdit6.Text;
          FieldByName('Ʒ��').AsString:=RzEdit7.Text;
          FieldByName('���峤��').AsString:=RzEdit8.Text;
          FieldByName('����').AsString:=RzEdit9.Text;
          FieldByName('���ѱ�ǿ��').AsString:=RzEdit10.Text;
          FieldByName('���¡ֵ').AsString:=RzEdit11.Text;
          FieldByName('�س���').AsString:=RzEdit12.Text;
          FieldByName('����').AsString:=RzEdit13.Text;
          FieldByName('����').AsString:=RzEdit14.Text;
          Refresh;
          end;
      with ADOQuery3 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    ԭ�����');
          Open;
          Edit;
          Insert;
          FieldByName('����ʱ��').AsString:=formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime);
          FieldByName('���ڱ��').AsString:=RzEdit1.Text;
          FieldByName('����').AsString:=RzEdit2.Text;
          FieldByName('����').AsString:=RzEdit3.Text;
          FieldByName('������').AsString:=RzEdit4.Text;
          FieldByName('����').AsString:=RzEdit5.Text;
          Refresh;
        end;
        application.MessageBox('�½�ԭ�����ɹ�!','��ʾ',MB_OK+MB_ICONINFORMATION);
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
  if Application.MessageBox('ȷ��ɾ����ԭ��?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      ADOQuery1.Delete;
    except
      Application.MessageBox('ɾ��ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
    end;
  end;
end;   }

procedure TFrmYmrk.RzBitBtn1Click(Sender: TObject);
begin
   ymcnbh;
   RzEdit1.Text:=ymcnbh;
end;

end.
