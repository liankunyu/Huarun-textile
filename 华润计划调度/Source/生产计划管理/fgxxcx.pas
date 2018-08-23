unit fgxxcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzEdit, StdCtrls, DBCtrls, Mask, RzButton, RzLabel, ExtCtrls,
  RzPanel, ImgList, cxGraphics;

type
  TFrmfgxxcx = class(TForm)
    cxImageList1: TcxImageList;
    rzpnl1: TRzPanel;
    lblSpecification: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    lblEfficiency: TRzLabel;
    lblMachineTime: TRzLabel;
    lblDeliveryTime: TRzLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    edtOrderID: TRzEdit;
    rzgrpbxQueryCondition: TRzGroupBox;
    RzLabel1: TRzLabel;
    lblProductName1: TRzLabel;
    edtgg: TRzEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmfgxxcx: TFrmfgxxcx;

implementation
   uses UDM;
{$R *.dfm}

procedure TFrmfgxxcx.FormShow(Sender: TObject);
begin
  edtgg.Text:=DM.qrysjh.FieldByName('���').Value;
  edtOrderID.Text:=DM.qrysjh.FieldByName('������').Value;
   with DM.qryspzfgcx do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from V_ɴ������Ϣ_ɴƷ�ַ�����Ϣ where ������=:ddh and ���=:gg');
      Parameters.ParamByName('ddh').Value:=edtOrderID.Text;
      Parameters.ParamByName('gg').Value:=edtgg.Text;
      Open;
    end;
end;

procedure TFrmfgxxcx.btnExitClick(Sender: TObject);
begin
Close;
end;

end.
