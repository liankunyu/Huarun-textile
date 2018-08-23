unit sddmx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, RzButton,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, Mask, RzEdit, RzLabel, RzPanel, ExtCtrls,
  ImgList;

type
  TFrmSDDMX = class(TForm)
    rzpnl1: TRzPanel;
    rzgrpbxInput: TRzGroupBox;
    lblOrderID: TRzLabel;
    lblProductName: TRzLabel;
    lblOrderQuantity: TRzLabel;
    lblPrice: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    lblSpecification: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    rzdtOrderID: TRzEdit;
    rzdtPrice: TRzEdit;
    rzmQualityRequirement: TRzMemo;
    rzdtProductName: TRzEdit;
    rzmDeliveyTimeAndAmount: TRzMemo;
    rzmPackagingRequirement: TRzMemo;
    rzpnlBtns: TRzPanel;
    lbl1: TRzLabel;
    lbl2: TRzLabel;
    rzdtOrderQuantity: TRzEdit;
    lbl3: TRzLabel;
    rzdtTotalAmount: TRzEdit;
    lbl4: TRzLabel;
    rzmSpecification: TRzMemo;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    cxmglst1: TcxImageList;
    procedure FormShow(Sender: TObject);
    procedure rzdtOrderQuantityKeyPress(Sender: TObject; var Key: Char);
    procedure rzdtOrderQuantityChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSDDMX: TFrmSDDMX;

implementation
uses UDM;

{$R *.dfm}

procedure TFrmSDDMX.FormShow(Sender: TObject);
begin
  rzdtOrderID.Text:=DM.qrySUnApprovedOrder.FieldByName('订单号').Value;
  rzdtProductName.SetFocus;
  if Self.Tag=2 then
  begin

  end;
end;

procedure TFrmSDDMX.rzdtOrderQuantityKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in['0'..'9',#8,'.']) then
   begin
    key:=#0;
    application.MessageBox('请输入数字!','提示',MB_OK+MB_ICONINFORMATION);
   end;
end;

procedure TFrmSDDMX.rzdtOrderQuantityChange(Sender: TObject);
begin
  if (Trim(rzdtOrderQuantity.Text)<>'') and (Trim(rzdtPrice.Text)<>'')  then
    rzdtTotalAmount.Text:=CurrToStr((StrToFloat(rzdtOrderQuantity.Text))*StrToFloat(rzdtPrice.Text));
end;

procedure TFrmSDDMX.btnSaveClick(Sender: TObject);
var
  ModifingID:string;//正在被修改的明细信息记录的编号
begin
  case Self.Tag of
 1:begin
     try
      with DM.qrySUnApprovedOrderDetail do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from 棉纱订单明细表');
        Open;
        Edit;
        Insert;
        FieldByName('订单号').AsString:=rzdtOrderID.Text;
        FieldByName('产品名称').AsString:=Trim(rzdtProductName.Text);
        FieldByName('规格').AsString:=Trim(rzmSpecification.Text);
        FieldByName('订单量').AsString:=Trim(rzdtOrderQuantity.Text);
        FieldByName('单价').AsString:=Trim(rzdtPrice.Text);
        FieldByName('合计金额').AsString:=Trim(rzdtTotalAmount.Text);
        FieldByName('交货事宜').AsString:=Trim(rzmDeliveyTimeAndAmount.Text);
        FieldByName('质量要求').AsString:=Trim(rzmQualityRequirement.Text);
        FieldByName('包装要求').AsString:=Trim(rzmPackagingRequirement.Text);
        Refresh;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
      end;
      with DM.spYarnInfoUpdate do
      begin
        Close;
        procedureName:='proc_棉纱订单明细_棉纱信息插入';
        Parameters.Refresh;
        with Parameters do
        begin
          ParamByName('@ProductName').Value:=Trim(rzdtProductName.Text);
          ParamByName('@Specification').Value:=Trim(rzmSpecification.Text);
        end;
        ExecProc;
      end;
     except
        Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     end;
   end;
 2:begin
    ModifingID:=DM.qrySUnApprovedOrderDetail.FieldByName('编号').AsString;
    try
      with DM.qrySUnApprovedOrderDetailModify do
      begin
        Close;
        SQL.clear;
        SQL.Add('update 棉纱订单明细表 set 产品名称=:cpmc,规格=:gg,订单量=:ddl,单价=:dj,');
        SQL.Add('合计金额=:hjje,交货事宜=:jhsy,质量要求=:zlyq,包装要求=:bzyq where 编号=:bh');
        Parameters.ParamByName('cpmc').Value:=Trim(rzdtProductName.Text);
        Parameters.ParamByName('gg').Value:=Trim(rzmSpecification.Text);
        Parameters.ParamByName('ddl').Value:=Trim(rzdtOrderQuantity.Text);
        Parameters.ParamByName('dj').Value:=Trim(rzdtPrice.Text);
        Parameters.ParamByName('hjje').Value:=Trim(rzdtTotalAmount.Text);
        Parameters.ParamByName('jhsy').Value:=Trim(rzmDeliveyTimeAndAmount.Text);
        Parameters.ParamByName('zlyq').Value:=Trim(rzmQualityRequirement.Text);
        Parameters.ParamByName('bzyq').Value:=Trim(rzmPackagingRequirement.Text);
        Parameters.ParamByName('bh').Value:=ModifingID;
        Prepared;
        ExecSQL;
        DM.qrySUnApprovedOrderDetail.Refresh;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
      end;
    except
        Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
   end;
 end;
 Self.Close;
end;

procedure TFrmSDDMX.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.


