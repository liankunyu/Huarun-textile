unit syrk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzPanel, StdCtrls, Mask, RzEdit, ComCtrls, RzLabel,
  ExtCtrls, DB, ADODB;

type
  TFrmSyrk = class(TForm)
    rzgrpbx1: TRzGroupBox;
    RzPanel2: TRzPanel;
    bsave: TRzBitBtn;
    RzEdit1: TRzEdit;
    RzLabel1: TRzLabel;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    RzLabel2: TRzLabel;
    RzEdit2: TRzEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzEdit3: TRzEdit;
    RzEdit4: TRzEdit;
    breturn: TRzBitBtn;
    procedure bsaveClick(Sender: TObject);
    procedure breturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSyrk: TFrmSyrk;
  procedure asyrk(AHandle:THandle);stdcall;

implementation

{$R *.dfm}
uses udm,Ymjp;


procedure asyrk(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Frmsyrk:=TFrmSyrk.Create(Application);
  try
    FrmSyrk.ShowModal;
  finally
    TFrmSyrk(FrmSyrk).Free;
  end;
end;

procedure TFrmSyrk.bsaveClick(Sender: TObject);
var a,b,j:string;
begin
  j:=RzEdit1.text;
  a:=RzEdit3.Text;
  b:=RzEdit4.Text;
  if RzEdit1.text='' then
    begin
      Application.MessageBox('������ʣ��ԭ��������','��ʾ',MB_ICONINFORMATION+MB_OK);
      Exit;
    end    
  else
  begin
    FrmYmjp.ADOQuery2.Delete;
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update ԭ�޿�� set ������ = ������+'+quotedstr(j)+' where (���� =:a) and (���� =:b)');
      Parameters.ParamByName('a').Value:=a;
      Parameters.ParamByName('b').Value:=b;
      ExecSQL;
    end;
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete from ���޳���  where (���� =:a) and (���� =:b) and (������ =:c)');
      Parameters.ParamByName('a').Value:=RzEdit3.Text;
      Parameters.ParamByName('b').Value:=RzEdit4.Text;
      Parameters.ParamByName('c').Value:=RzEdit2.Text;
      ExecSQL;
    end;
  end;
  FrmSyrk.Close;
  Application.MessageBox('�������ɹ���','��ʾ',MB_ICONINFORMATION+MB_OK)
end;

procedure TFrmSyrk.breturnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSyrk.FormShow(Sender: TObject);
begin
  RzEdit2.Text:=frmymjp.adoquery1.fieldbyname('������').AsString;
  RzEdit3.Text:=frmymjp.adoquery2.fieldbyname('����').AsString;
  RzEdit4.Text:=frmymjp.adoquery2.fieldbyname('����').AsString;
end;

end.
