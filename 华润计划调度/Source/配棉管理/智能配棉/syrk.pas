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
      Application.MessageBox('请输入剩余原棉数量！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
    end    
  else
  begin
    FrmYmjp.ADOQuery2.Delete;
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update 原棉库存 set 库存件数 = 库存件数+'+quotedstr(j)+' where (产地 =:a) and (批次 =:b)');
      Parameters.ParamByName('a').Value:=a;
      Parameters.ParamByName('b').Value:=b;
      ExecSQL;
    end;
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete from 配棉出库  where (产地 =:a) and (批次 =:b) and (方案号 =:c)');
      Parameters.ParamByName('a').Value:=RzEdit3.Text;
      Parameters.ParamByName('b').Value:=RzEdit4.Text;
      Parameters.ParamByName('c').Value:=RzEdit2.Text;
      ExecSQL;
    end;
  end;
  FrmSyrk.Close;
  Application.MessageBox('余棉入库成功！','提示',MB_ICONINFORMATION+MB_OK)
end;

procedure TFrmSyrk.breturnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSyrk.FormShow(Sender: TObject);
begin
  RzEdit2.Text:=frmymjp.adoquery1.fieldbyname('方案号').AsString;
  RzEdit3.Text:=frmymjp.adoquery2.fieldbyname('产地').AsString;
  RzEdit4.Text:=frmymjp.adoquery2.fieldbyname('批次').AsString;
end;

end.
