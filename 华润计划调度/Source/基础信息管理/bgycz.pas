unit bgycz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzCmboBx, RzPanel, RzRadGrp, RzButton,
  RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  TFrmBGYCZ = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    lblSearchItems: TRzLabel;
    cbbSearchItems: TRzComboBox;
    edtSearchKey: TRzEdit;
    ImageList1: TImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbSearchItemsChange(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBGYCZ: TFrmBGYCZ;

implementation
uses bgy,cxFilter,CxGridDBBandedTableView;

{$R *.dfm}

procedure TFrmBGYCZ.btnSearchClick(Sender: TObject);
var
 AColumn:TcxGridDBBandedColumn;      //数据表相关的列
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
   if FrmBGYCZ.Tag=1 then
    begin
        if cbbSearchItems.ItemIndex=1 then
       begin
        AColumn:=FrmBGY.cxgrdbndclmnCustomerName;    //客户名称
        end;
           if cbbSearchItems.ItemIndex=2 then
       begin
         AColumn:=FrmBGY.cxgrdbndclmnSpecification;
        end;         //规格
             if cbbSearchItems.ItemIndex=3 then
       begin
        AColumn:=FrmBGY.cxgrdbndtblvwCraftInfoColumn1;
        end;   //合同号
             if cbbSearchItems.ItemIndex=4 then
       begin
        AColumn:=FrmBGY.cxgrdbndclmnProductName;
        end;   //品名
       case rzrdgrpSearchWay.ItemIndex of
       0:begin
            with FrmBGY.cxgrdbndtblvwCraftInfo.DataController.Filter  do
            begin
              Root.Clear;
              Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
              Active:=True;
            end;
         end;
       1:begin
            with FrmBGY.cxgrdbndtblvwCraftInfo.DataController.Filter  do
            begin
              Root.Clear;
              Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
              Active:=True;
            end;
         end;
       end;
    end ;
   if FrmBGYCZ.Tag=2 then
    begin
        if cbbSearchItems.ItemIndex=2 then
       begin
         AColumn:=FrmBGY.cxGridDBBandedColumn2;
        end;         //规格
             if cbbSearchItems.ItemIndex=4 then
       begin
        AColumn:=FrmBGY.cxGridDBBandedColumn1;
        end;   //品名
       case rzrdgrpSearchWay.ItemIndex of
       0:begin
            with FrmBGY.cxGridDBBandedTableView1.DataController.Filter  do
            begin
              Root.Clear;
              Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
              Active:=True;
            end;
         end;
       1:begin
            with FrmBGY.cxGridDBBandedTableView1.DataController.Filter  do
            begin
              Root.Clear;
              Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
              Active:=True;
            end;
         end;
       end;
    end ;
  Self.Close;
end;

procedure TFrmBGYCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBGYCZ.FormShow(Sender: TObject);
begin
  edtSearchKey.SetFocus;
end;



procedure TFrmBGYCZ.cbbSearchItemsChange(Sender: TObject);
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

procedure TFrmBGYCZ.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

end.
