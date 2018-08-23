unit bddxxcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp, RzButton, RzLabel,
  ExtCtrls, ImgList, cxGraphics, RzCmboBx;

type
  TFrmBDDXXCZ = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    edtSearchKey: TRzEdit;
    lblSearchItems: TRzLabel;
    cbbSearchItems: TRzComboBox;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSearchItemsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBDDXXCZ: TFrmBDDXXCZ;

implementation
uses bddlr,cxFilter,cxGridDBTableView,bddsh,UDM;

{$R *.dfm}

procedure TFrmBDDXXCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBDDXXCZ.FormShow(Sender: TObject);
begin
  edtSearchKey.SetFocus;
  if FrmBDDXXCZ.Tag=2 then
  begin
    cbbSearchItems.Items.Clear;
    cbbSearchItems.Items.Add('请选择项目');
    cbbSearchItems.Items.Add('客户名称');
    cbbSearchItems.Items.Add('规格');
    cbbSearchItems.Items.Add('合同号');
  end;
end;
procedure TFrmBDDXXCZ.btnSearchClick(Sender: TObject);
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
     if FrmBDDXXCZ.Tag=1 then
  begin
        if cbbSearchItems.ItemIndex=1 then
   begin
     AColumn:=FrmBDDLR.cxgrdbclmnUnCustomerName;     //客户名称
    end;
       if cbbSearchItems.ItemIndex=2 then
   begin
     AColumn:=FrmBDDLR.cxgrdbclmnUnSpecification;
    end;         //规格
         if cbbSearchItems.ItemIndex=3 then
   begin
    AColumn:=FrmBDDLR.cxgrdbclmnUnPurchaseID;
    end;     //合同号
      if cbbSearchItems.ItemIndex=4 then
   begin
    AColumn:=FrmBDDLR.cxgrdbclmnProductName;
    end;      //产品名称
     case rzrdgrpSearchWay.ItemIndex of
     0:begin
          with FrmBDDLR.cxgrdbtblvwUnApprovedOrder.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
     1:begin
          with FrmBDDLR.cxgrdbtblvwUnApprovedOrder.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
     end;
  end;

  if FrmBDDXXCZ.Tag=2 then
  begin

    if cbbSearchItems.ItemIndex=1 then
   begin
    AColumn:=FrmBDDSH.cxgrdbtblvwMarketingDepReportColumn2;     //客户名称
    end;
       if cbbSearchItems.ItemIndex=2 then
   begin
    AColumn:=FrmBDDSH.cxgrdbclmnSpecification1;
    end;         //规格
         if cbbSearchItems.ItemIndex=3 then
   begin
    AColumn:=FrmBDDSH.cxgrdbtblvwMarketingDepReportColumn1;
    end;     //合同号

     case rzrdgrpSearchWay.ItemIndex of
     0:begin
          with FrmBDDSH.cxgrdbtblvwMarketingDepReport.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
     1:begin
          with FrmBDDSH.cxgrdbtblvwMarketingDepReport.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
    end;
    FrmBDDSH.cxgrdbtblvwMarketingDepReport.ViewData.Expand(True);
   end;
     Self.Close;
end;

procedure TFrmBDDXXCZ.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

procedure TFrmBDDXXCZ.cbbSearchItemsChange(Sender: TObject);
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
   lblSearchKey.Caption:='产品名称';
  end;
end;

end.
