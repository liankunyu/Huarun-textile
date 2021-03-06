unit bddzzxxcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, cxGraphics, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp,
  RzButton, RzLabel, ExtCtrls, RzCmboBx;

type
  TFrmBDDZZXXCZ = class(TForm)
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
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSearchItemsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBDDZZXXCZ: TFrmBDDZZXXCZ;

implementation
uses bddxxzz,cxFilter,cxGridDBTableView;

{$R *.dfm}

procedure TFrmBDDZZXXCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBDDZZXXCZ.btnSearchClick(Sender: TObject);
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
     AColumn:=FrmBDDXXZZ.cxgrdbclmnApprovedOrderDBColumn9;     //客户名称
    end;
       if cbbSearchItems.ItemIndex=2 then
   begin
     AColumn:=FrmBDDXXZZ.cxgrdbclmnApprovedOrderDBColumn7;
    end;         //规格
         if cbbSearchItems.ItemIndex=3 then
   begin
    AColumn:=FrmBDDXXZZ.cxgrdbtblvwApprovedOrderColumn1;
    end;     //合同号
    case rzrdgrpSearchWay.ItemIndex of
     0:begin
          with FrmBDDXXZZ.cxgrdbtblvwApprovedOrder.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
     1:begin
          with FrmBDDXXZZ.cxgrdbtblvwApprovedOrder.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
    end;
  Self.Close;
end;

procedure TFrmBDDZZXXCZ.FormShow(Sender: TObject);
begin
  edtSearchKey.SetFocus;
end;

procedure TFrmBDDZZXXCZ.edtSearchKeyKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

procedure TFrmBDDZZXXCZ.cbbSearchItemsChange(Sender: TObject);
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
end;

end.
