unit gyscz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, RzEdit, RzCmboBx, RzLabel, RzPanel,
  RzRadGrp, ExtCtrls, ImgList, cxGraphics;

type
  TFrmGYSCZ = class(TForm)
    rzpnl1: TRzPanel;
    rzrdgrpSearchWay: TRzRadioGroup;
    lblSearchItems: TRzLabel;
    cbbSearchItems: TRzComboBox;
    lblSearchKey: TRzLabel;
    rzdtSearchKey: TRzEdit;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    cxmglst1: TcxImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGYSCZ: TFrmGYSCZ;

implementation
uses gys,cxFilter,cxGridDBCardView;

{$R *.dfm}

procedure TFrmGYSCZ.btnSearchClick(Sender: TObject);
var
 ARow:TcxGridDBCardViewRow;      //数据表相关的行
begin
   if cbbSearchItems.ItemIndex<1 then
   begin
     Application.MessageBox('请选择查询项目！','提示',MB_OK+MB_ICONINFORMATION);
     cbbSearchItems.SetFocus;
     Exit;
   end;
   if Trim(rzdtSearchKey.Text)='' then
   begin
     Application.MessageBox('请输入要查询项目的关键字！','提示',MB_OK+MB_ICONINFORMATION);
     rzdtSearchKey.SetFocus;
     Exit;
   end;
   case rzrdgrpSearchWay.ItemIndex of
   0:begin
      case Self.Tag of
      1:begin
          if cbbSearchItems.ItemIndex=1 then ARow:=FrmGYS.cxgrdbcrdvwrwSSupplierID;
          if cbbSearchItems.ItemIndex=2 then ARow:=FrmGYS.cxgrdbcrdvwrwSSupplierName;
          if cbbSearchItems.ItemIndex=3 then ARow:=FrmGYS.cxgrdbcrdvwrwSAddress;
          if cbbSearchItems.ItemIndex=4 then ARow:=FrmGYS.cxgrdbcrdvwrwSContacter;
          with FrmGYS.cxgrdbcrdvwSSupplier.DataController.Filter  do
          begin
            Root.AddItem(ARow,foLike,'%'+Trim(rzdtSearchKey.Text)+'%',Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      2:begin
          if cbbSearchItems.ItemIndex=1 then ARow:=FrmGYS.cxgrdbcrdvwrwMSupplierID;
          if cbbSearchItems.ItemIndex=2 then ARow:=FrmGYS.cxgrdbcrdvwrwMSupplierName;
          if cbbSearchItems.ItemIndex=3 then ARow:=FrmGYS.cxgrdbcrdvwrwMAddress;
          if cbbSearchItems.ItemIndex=4 then ARow:=FrmGYS.cxgrdbcrdvwrwMContacter;
          with FrmGYS.cxgrdbcrdvwMSupplier.DataController.Filter  do
          begin
            Root.AddItem(ARow,foLike,'%'+Trim(rzdtSearchKey.Text)+'%',Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      end;
     end;
   1:begin
      case Self.Tag of
      1:begin
          if cbbSearchItems.ItemIndex=1 then ARow:=FrmGYS.cxgrdbcrdvwrwSSupplierID;
          if cbbSearchItems.ItemIndex=2 then ARow:=FrmGYS.cxgrdbcrdvwrwSSupplierName;
          if cbbSearchItems.ItemIndex=3 then ARow:=FrmGYS.cxgrdbcrdvwrwSAddress;
          if cbbSearchItems.ItemIndex=4 then ARow:=FrmGYS.cxgrdbcrdvwrwSContacter;
          with FrmGYS.cxgrdbcrdvwSSupplier.DataController.Filter  do
          begin
            Root.AddItem(ARow,foEqual,Trim(rzdtSearchKey.Text),Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      2:begin
          if cbbSearchItems.ItemIndex=1 then ARow:=FrmGYS.cxgrdbcrdvwrwMSupplierID;
          if cbbSearchItems.ItemIndex=2 then ARow:=FrmGYS.cxgrdbcrdvwrwMSupplierName;
          if cbbSearchItems.ItemIndex=3 then ARow:=FrmGYS.cxgrdbcrdvwrwMAddress;
          if cbbSearchItems.ItemIndex=4 then ARow:=FrmGYS.cxgrdbcrdvwrwMContacter;
          with FrmGYS.cxgrdbcrdvwMSupplier.DataController.Filter  do
          begin
            Root.AddItem(ARow,foEqual,Trim(rzdtSearchKey.Text),Trim(rzdtSearchKey.Text));
            Active:=True;
          end;
        end;
      end;
     end;
   end;
   Self.Close;
end;

procedure TFrmGYSCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
