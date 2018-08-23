unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, ComCtrls, StdCtrls, RzEdit, Mask, RzButton, RzLabel,
  ExtCtrls;

type
  TFrmSBXG = class(TForm)
    rzgrpbxInput: TRzGroupBox;
    lblOrderID: TRzLabel;
    lblOrderQuantity: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lbl2: TRzLabel;
    lblSpecification: TRzLabel;
    lbl3: TRzLabel;
    lbl4: TRzLabel;
    lbl5: TRzLabel;
    lbl1: TRzLabel;
    lbl6: TRzLabel;
    lbl7: TRzLabel;
    lbl8: TRzLabel;
    lbl9: TRzLabel;
    lbl10: TRzLabel;
    lbl11: TRzLabel;
    lbl12: TRzLabel;
    lbl13: TRzLabel;
    lbl14: TRzLabel;
    lbl15: TRzLabel;
    lbl16: TRzLabel;
    lbl17: TRzLabel;
    lbl18: TRzLabel;
    lbl19: TRzLabel;
    lbl20: TRzLabel;
    lbl21: TRzLabel;
    lbl22: TRzLabel;
    lbl23: TRzLabel;
    lbl24: TRzLabel;
    lbl25: TRzLabel;
    lbl26: TRzLabel;
    lbl27: TRzLabel;
    lbl28: TRzLabel;
    lbl29: TRzLabel;
    lbl30: TRzLabel;
    lbl31: TRzLabel;
    lbl32: TRzLabel;
    lbl33: TRzLabel;
    btnCalculate: TRzToolButton;
    lbl36: TRzLabel;
    lbl41: TRzLabel;
    lbl42: TRzLabel;
    lbl43: TRzLabel;
    lbl44: TRzLabel;
    lbl45: TRzLabel;
    lbl46: TRzLabel;
    lbl47: TRzLabel;
    lbl48: TRzLabel;
    lbl49: TRzLabel;
    lbl50: TRzLabel;
    lbl51: TRzLabel;
    lbl52: TRzLabel;
    lbl53: TRzLabel;
    lbl54: TRzLabel;
    lbl55: TRzLabel;
    lbl56: TRzLabel;
    lbl34: TRzLabel;
    lbl35: TRzLabel;
    lbl37: TRzLabel;
    lbl38: TRzLabel;
    lbl39: TRzLabel;
    lbl40: TRzLabel;
    edtOrderQuantity: TRzEdit;
    mmoQualityRequirement: TRzMemo;
    edt: TRzEdit;
    mmoSpecification: TRzMemo;
    mmoDeliveyTimeAndAmount: TRzMemo;
    mmoPackagingRequirement: TRzMemo;
    edtOrderID: TRzEdit;
    edt1: TRzEdit;
    edt2: TRzEdit;
    edt3: TRzEdit;
    edt4: TRzEdit;
    edt5: TRzEdit;
    edt6: TRzEdit;
    edt7: TRzEdit;
    edt8: TRzEdit;
    edt9: TRzEdit;
    edt10: TRzEdit;
    edt11: TRzEdit;
    edt12: TRzEdit;
    edt13: TRzEdit;
    edt14: TRzEdit;
    edt15: TRzEdit;
    edt16: TRzEdit;
    edt17: TRzEdit;
    edt18: TRzEdit;
    edt19: TRzEdit;
    edt20: TRzEdit;
    edt21: TRzEdit;
    edt22: TRzEdit;
    edt23: TRzEdit;
    edt24: TRzEdit;
    edt25: TRzEdit;
    edt26: TRzEdit;
    edt27: TRzEdit;
    edt28: TRzEdit;
    dtpDeliveryTime: TDateTimePicker;
    edt31: TRzEdit;
    edt35: TRzEdit;
    edt36: TRzEdit;
    edt37: TRzEdit;
    edt38: TRzEdit;
    edt39: TRzEdit;
    edt40: TRzEdit;
    edt41: TRzEdit;
    RzMemo2: TRzMemo;
    edt42: TRzEdit;
    edt43: TRzEdit;
    edt44: TRzEdit;
    edt45: TRzEdit;
    edt46: TRzEdit;
    edt47: TRzEdit;
    RzMemo1: TRzMemo;
    edt48: TRzEdit;
    edt29: TRzEdit;
    edt30: TRzEdit;
    edt32: TRzEdit;
    edt33: TRzEdit;
    edt34: TRzEdit;
    rzpnlBtns: TRzPanel;
    btnReport: TRzToolButton;
    btnExit: TRzToolButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSBXG: TFrmSBXG;

implementation
uses UDM,bddsh;
{$R *.dfm}

procedure TFrmSBXG.FormShow(Sender: TObject);
begin
  mmoSpecification.Text:=DM.qryBUnApprovedOrder.FieldByName('规格').AsString;
  edtOrderID.Text:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
  edtOrderQuantity.Text:=DM.qryBUnApprovedOrder.FieldByName('订单量').AsString;
  RzMemo2.Text:=DM.qryBUnApprovedOrder.FieldByName('客户采购订单号').AsString;
  if DM.qryBUnApprovedOrder.FieldByName('交货期').Value=null  then
  begin
    mmoDeliveyTimeAndAmount.Text:=DM.qryBUnApprovedOrder.FieldByName('交货事宜').AsString;
    dtpDeliveryTime.Visible:=False;
  end
  else
  begin
    dtpDeliveryTime.DateTime:=DM.qryBUnApprovedOrder.FieldByName('交货期').AsDateTime;
    mmoDeliveyTimeAndAmount.Visible:=False;
  end;
  mmoQualityRequirement.Text:=DM.qryBUnApprovedOrder.FieldByName('质量要求').AsString;
  mmoPackagingRequirement.Text:=DM.qryBUnApprovedOrder.FieldByName('包装要求').AsString;
  edt.Text:=DM.spBApproveStateUpdate.FieldByName('规格').AsString;

end;

end.
