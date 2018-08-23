unit YGXX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ADODB, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, RzButton, RzPanel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Mask, RzEdit, RzLabel,
  ExtCtrls, Grids, ValEdit;

type
  TFrmYGXX = class(TForm)
    RzPanel3: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    function auto():string;
  public
    { Public declarations }
  end;

var
  FrmYGXX: TFrmYGXX;
  procedure pyg(AHandle:THandle);stdcall;

implementation

{$R *.dfm}
uses UDM;

function TFrmYGXX.auto;
var
  s,ygh:string;
begin
  if DM.ADOQuery1.RecordCount>0 then
  begin
    DM.ADOQuery1.Last;
    s:= Copy(DM.ADOQuery1.FieldByName('����').AsString,1,3);
    ygh:=s+Format('%.3d',[(StrToInt(Copy(DM.ADOQuery1.FieldByName('����').AsString,4,3))+1)]);
  end
  else
  begin
    ygh:='YG-001';
  end;
  result:=ygh;
end;



procedure TFrmYGXX.FormShow(Sender: TObject);
begin
  DM.qryBM.Active:=True;
  DM.qryBZ.Active:=True;
  with DM.ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Ա����Ϣ�� order by ����');
    Open;
  end;
end;

procedure TFrmYGXX.RzBitBtn7Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFrmYGXX.RzBitBtn1Click(Sender: TObject);
begin
  RzEdit1.Enabled:=True;
  RzEdit1.SetFocus;
  RzBitBtn1.Enabled:=False;
  RzBitBtn2.Enabled:=True;
  RzBitBtn3.Enabled:=True;
end;

procedure TFrmYGXX.RzBitBtn2Click(Sender: TObject);
begin
  if (Trim(RzEdit1.Text)<>'') then
  begin
   try
    with DM.qryBM do
    begin
      Insert;
      FieldByName('��������').AsString:=Trim(RzEdit1.Text);
      Append;
      Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
    end;
   except
      Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
   end;
   RzEdit1.Text:='';
   RzEdit1.Enabled:=False;
   RzBitBtn2.Enabled:=False;
   RzBitBtn3.Enabled:=False;
   RzBitBtn1.Enabled:=True;
  end
  else
  begin
    Application.MessageBox('������Ҫ��ӵĲ�����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
    RzEdit1.SetFocus;
  end;
end;

procedure TFrmYGXX.RzBitBtn4Click(Sender: TObject);
begin
  RzEdit2.Text:=auto();
  RzEdit3.Enabled:=True;
  RzEdit3.SetFocus;
  cxLookupComboBox1.Enabled:=True;
  RzBitBtn4.Enabled:=False;
  RzBitBtn5.Enabled:=True;
  RzBitBtn6.Enabled:=True;
end;

procedure TFrmYGXX.RzBitBtn5Click(Sender: TObject);
begin
  if (Trim(RzEdit3.Text)<>'') and (cxLookupComboBox1.Text<>'') then
  begin
   try
    with DM.ADOQuery1  do
    begin
      Insert;
      FieldByName('����').AsString:=RzEdit2.Text;
      FieldByName('����').AsString:=Trim(RzEdit3.Text);
      FieldByName('��������').AsString:=cxLookupComboBox1.Text;
      Append;
      Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
    end;
   except
      Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
   end;
   RzEdit2.Text:='';
   RzEdit3.Text:='';
   RzEdit3.Enabled:=False;
   cxLookupComboBox1.Text:='';
   cxLookupComboBox1.Enabled:=False;
   RzBitBtn5.Enabled:=False;
   RzBitBtn6.Enabled:=False;
   RzBitBtn4.Enabled:=True;
  end
  else
  begin
   Application.MessageBox('������Ҫ��ӵ�Ա����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
   RzEdit3.SetFocus;
  end;
end;

procedure TFrmYGXX.RzBitBtn6Click(Sender: TObject);
begin
  RzEdit2.Text:='';
  RzEdit3.Text:='';
  RzEdit3.Enabled:=False;
  cxLookupComboBox1.Text:='';
  cxLookupComboBox1.Enabled:=False;
  RzBitBtn5.Enabled:=False;
  RzBitBtn6.Enabled:=False;
  RzBitBtn4.Enabled:=True;
end;

procedure TFrmYGXX.RzBitBtn3Click(Sender: TObject);
begin
  RzEdit1.Text:='';
  RzEdit1.Enabled:=False;
  RzBitBtn2.Enabled:=False;
  RzBitBtn3.Enabled:=False;
  RzBitBtn1.Enabled:=True;
end;

end.
