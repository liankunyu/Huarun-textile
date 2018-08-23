unit bckcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp, RzButton, RzLabel,
  ExtCtrls, ImgList, cxGraphics, RzCmboBx;

type
  TFrmBCKCZ = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    edtSearchKey: TRzEdit;
    lblSearchItems: TRzLabel;
    cbbSearchItems: TRzComboBox;
    ImageList1: TImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSearchItemsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBCKCZ: TFrmBCKCZ;

implementation
uses bckxx,cxFilter,CxGridDBTableView;

{$R *.dfm}

procedure TFrmBCKCZ.btnSearchClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //数据表相关的列
begin
       if cbbSearchItems.ItemIndex<1 then
   begin
     Application.MessageBox('请选择查询项目！','提示',MB_OK+MB_ICONINFORMATION);
     cbbSearchItems.SetFocus;
     Exit;
   end;
   if Trim(edtSearchKey.Text)='' then
   begin
     Application.MessageBox('请输入要查询的关键信息！','提示',MB_OK+MB_ICONINFORMATION);
     edtSearchKey.SetFocus;
     Exit;
   end;
    if cbbSearchItems.ItemIndex=1 then
   begin
    AColumn:=FrmBCKXX.cxgrdbclmnCustomerName;    //客户名称
    end;
       if cbbSearchItems.ItemIndex=2 then
   begin
    AColumn:=FrmBCKXX.cxgrdbclmnSpecification;
    end;         //规格
         if cbbSearchItems.ItemIndex=3 then
   begin
    AColumn:=FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfoColumn1;
    end;   //合同号
         if cbbSearchItems.ItemIndex=4 then
   begin
    AColumn:=FrmBCKXX.cxgrdbclmnProductName;
    end;   //品名
   case rzrdgrpSearchWay.ItemIndex of
   0:begin
        with FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfo.DataController.Filter  do
        begin
          Root.Clear;
          Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
          Active:=True;
        end;
     end;
   1:begin
        with FrmBCKXX.cxgrdbtblvwTotalOutOfWarehouseInfo.DataController.Filter  do
        begin
          Root.Clear;
          Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
          Active:=True;
        end;
     end;
   end;
  Self.Close;
end;

procedure TFrmBCKCZ.FormShow(Sender: TObject);
begin
  edtSearchKey.SetFocus;
end;

procedure TFrmBCKCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBCKCZ.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

procedure TFrmBCKCZ.cbbSearchItemsChange(Sender: TObject);
begin
  if cbbSearchItems.ItemIndex=0 then
  begin
   lblSearchKey.Caption:='关键字';
  end;
  if cbbSearchItems.ItemIndex=1 then
  begin
   lblSearchKey.Caption:='客户名称';
  end;
  if cbbSearchItems.ItemIndex=2 then
  begin
   lblSearchKey.Caption:='规格';
  end;
    if cbbSearchItems.ItemIndex=3 then
  begin
   lblSearchKey.Caption:='合同号';
  end;
      if cbbSearchItems.ItemIndex=4 then
  begin
   lblSearchKey.Caption:='品名';
  end;
end;

end.
