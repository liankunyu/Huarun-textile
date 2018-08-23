unit byxbsb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, ImgList,
  StdCtrls, RzLstBox, ComCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, RzEdit, Mask, RzLabel,
  RzPanel, RzButton, ExtCtrls,ShellAPI, DBCtrls, RzDBEdit;

type
  TFrmYXBSB = class(TForm)
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnReport: TRzToolButton;
    btnExit: TRzToolButton;
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
    edtOrderQuantity: TRzEdit;
    mmoQualityRequirement: TRzMemo;
    edt: TRzEdit;
    mmoSpecification: TRzMemo;
    mmoDeliveyTimeAndAmount: TRzMemo;
    mmoPackagingRequirement: TRzMemo;
    edtOrderID: TRzEdit;
    edt1: TRzEdit;
    edt2: TRzEdit;
    lbl1: TRzLabel;
    edt3: TRzEdit;
    lbl6: TRzLabel;
    edt4: TRzEdit;
    lbl7: TRzLabel;
    edt5: TRzEdit;
    lbl8: TRzLabel;
    edt6: TRzEdit;
    lbl9: TRzLabel;
    edt7: TRzEdit;
    lbl10: TRzLabel;
    edt8: TRzEdit;
    lbl11: TRzLabel;
    edt9: TRzEdit;
    edt10: TRzEdit;
    lbl12: TRzLabel;
    lbl13: TRzLabel;
    edt11: TRzEdit;
    lbl14: TRzLabel;
    edt12: TRzEdit;
    edt13: TRzEdit;
    lbl15: TRzLabel;
    lbl16: TRzLabel;
    edt14: TRzEdit;
    lbl17: TRzLabel;
    edt15: TRzEdit;
    lbl18: TRzLabel;
    lbl19: TRzLabel;
    lbl20: TRzLabel;
    lbl21: TRzLabel;
    lbl22: TRzLabel;
    lbl23: TRzLabel;
    lbl24: TRzLabel;
    lbl25: TRzLabel;
    edt16: TRzEdit;
    edt17: TRzEdit;
    edt18: TRzEdit;
    edt19: TRzEdit;
    edt20: TRzEdit;
    edt21: TRzEdit;
    edt22: TRzEdit;
    lbl26: TRzLabel;
    lbl27: TRzLabel;
    edt23: TRzEdit;
    lbl28: TRzLabel;
    edt24: TRzEdit;
    lbl29: TRzLabel;
    edt25: TRzEdit;
    lbl30: TRzLabel;
    edt26: TRzEdit;
    lbl31: TRzLabel;
    edt27: TRzEdit;
    lbl32: TRzLabel;
    edt28: TRzEdit;
    lbl33: TRzLabel;
    btnCalculate: TRzToolButton;
    dtpDeliveryTime: TDateTimePicker;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzEdit4: TRzEdit;
    RzEdit5: TRzEdit;
    RzEdit6: TRzEdit;
    RzMemo1: TRzMemo;
    RzLabel8: TRzLabel;
    RzEdit7: TRzEdit;
    RzEdit8: TRzEdit;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzMemo2: TRzMemo;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    RzEdit9: TRzEdit;
    RzEdit10: TRzEdit;
    RzEdit11: TRzEdit;
    RzEdit12: TRzEdit;
    RzEdit13: TRzEdit;
    RzEdit14: TRzEdit;
    RzLabel7: TRzLabel;
    RzEdit15: TRzEdit;
    lbl34: TRzLabel;
    edt29: TRzEdit;
    lbl35: TRzLabel;
    edt30: TRzEdit;
    lbl36: TRzLabel;
    edt31: TRzEdit;
    lbl37: TRzLabel;
    lbl38: TRzLabel;
    lbl39: TRzLabel;
    lbl40: TRzLabel;
    edt32: TRzEdit;
    edt33: TRzEdit;
    edt34: TRzEdit;
    btn1: TRzToolButton;
    lbl41: TRzLabel;
    RzMemo3: TRzMemo;
    edt35: TRzEdit;
    lbl42: TRzLabel;
    lbl43: TRzLabel;
    RzMemo4: TRzMemo;
    lbl44: TRzLabel;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure edtKeyPress(Sender: TObject; var Key: Char);
    procedure edt26Change(Sender: TObject);
    procedure edt23Change(Sender: TObject);
    procedure edt15Change(Sender: TObject);
    procedure edt29Change(Sender: TObject);
    procedure edt30Change(Sender: TObject);
    procedure edt31Change(Sender: TObject);
    procedure edt32Change(Sender: TObject);
    procedure edt33Change(Sender: TObject);
    procedure edt34Change(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
    procedure RzEdit3Change(Sender: TObject);
    procedure RzEdit4Change(Sender: TObject);
    procedure RzEdit5Change(Sender: TObject);
    procedure RzEdit6Change(Sender: TObject);
    procedure edt7Change(Sender: TObject);
    procedure edt8Change(Sender: TObject);
    procedure edt16Change(Sender: TObject);
    procedure RzEdit14Change(Sender: TObject);
    procedure RzEdit13Change(Sender: TObject);
    procedure RzEdit12Change(Sender: TObject);
    procedure RzEdit11Change(Sender: TObject);
    procedure RzEdit10Change(Sender: TObject);
    procedure RzEdit9Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYXBSB: TFrmYXBSB;

implementation
uses UDM,bddsh, Formimage, Unit1, image1;

{$R *.dfm}

procedure TFrmYXBSB.FormShow(Sender: TObject);
begin
if FrmYXBSB.tag=3  then
 begin
  mmoSpecification.Text:=DM.qryBUnApprovedOrder.FieldByName('规格').AsString;
  edtOrderID.Text:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
  edtOrderQuantity.Text:=DM.qryBUnApprovedOrder.FieldByName('订单量').AsString;
  RzMemo2.Text:=DM.qryBUnApprovedOrder.FieldByName('客户采购订单号').AsString;
  RzMemo3.Text:=DM.qryBUnApprovedOrder.FieldByName('客户名称').AsString;
  if DM.qryBUnApprovedOrder.FieldByName('台日加工费').AsString=null then
  begin
  edt35.Text:=null;
  end
  else
  begin
  edt35.Text:=DM.qryBUnApprovedOrder.FieldByName('台日加工费').AsString;
  end;
  if DM.qryBUnApprovedOrder.FieldByName('结算方式').AsString=null then
  begin
  RzMemo4.Text:=null;
  end
  else
  begin
  RzMemo4.Text:=DM.qryBUnApprovedOrder.FieldByName('结算方式').AsString;
  end;
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


   edt.Text:=DM.qrysbxx.FieldByName('经支1').AsString;
   edt.SetFocus;
   edt1.Text:=DM.qrysbxx.FieldByName('经支2').AsString;
   edt2.Text:=DM.qrysbxx.FieldByName('纬支1').AsString;
   edt3.Text:=DM.qrysbxx.FieldByName('纬支2').AsString;
   edt4.Text:=DM.qrysbxx.FieldByName('纬支3').AsString;
   edt5.Text:=DM.qrysbxx.FieldByName('纬支4').AsString;
   edt6.Text:=DM.qrysbxx.FieldByName('经密').AsString;
   edt7.Text:=DM.qrysbxx.FieldByName('纬密').AsString;
   edt8.Text:=DM.qrysbxx.FieldByName('幅宽').AsString;
   RzEdit1.Text:=DM.qrysbxx.FieldByName('经支1系数').AsString;
   RzEdit2.Text:=DM.qrysbxx.FieldByName('经支2系数').AsString;
   RzEdit3.Text:=DM.qrysbxx.FieldByName('纬支1系数').AsString;
   RzEdit4.Text:=DM.qrysbxx.FieldByName('纬支2系数').AsString;
   RzEdit5.Text:=DM.qrysbxx.FieldByName('纬支3系数').AsString;
   RzEdit6.Text:=DM.qrysbxx.FieldByName('纬支4系数').AsString;
   edt29.Text:=DM.qrysbxx.FieldByName('经向比例系数X').AsString;
   edt31.Text:=DM.qrysbxx.FieldByName('经向比例系数X2').AsString;
   edt30.Text:=DM.qrysbxx.FieldByName('纬向比例系数Y').AsString;
   edt32.Text:=DM.qrysbxx.FieldByName('纬向比例系数Y2').AsString;
   edt33.Text:=DM.qrysbxx.FieldByName('纬向比例系数Y3').AsString;
   edt34.Text:=DM.qrysbxx.FieldByName('纬向比例系数Y4').AsString;
   RzEdit14.Text:=DM.qrysbxx.FieldByName('经密1').AsString;
   RzEdit13.Text:=DM.qrysbxx.FieldByName('经密2').AsString;
   RzEdit12.Text:=DM.qrysbxx.FieldByName('纬密1').AsString;
   RzEdit11.Text:=DM.qrysbxx.FieldByName('纬密2').AsString;
   RzEdit10.Text:=DM.qrysbxx.FieldByName('纬密3').AsString;
   RzEdit9.Text:=DM.qrysbxx.FieldByName('纬密4').AsString;
   edt9.Text:=DM.qrysbxx.FieldByName('经向1用纱量').AsString;
   edt10.Text:=DM.qrysbxx.FieldByName('经向2用纱量').AsString;
   edt11.Text:=DM.qrysbxx.FieldByName('纬向1用纱量').AsString;
   edt12.Text:=DM.qrysbxx.FieldByName('纬向2用纱量').AsString;
   edt13.Text:=DM.qrysbxx.FieldByName('纬向3用纱量').AsString;
   edt14.Text:=DM.qrysbxx.FieldByName('纬向4用纱量').AsString;
   edt15.Text:=DM.qrysbxx.FieldByName('静电丝用量').AsString;
   edt16.Text:=DM.qrysbxx.FieldByName('经纱1价格').AsString;
   edt17.Text:=DM.qrysbxx.FieldByName('经纱2价格').AsString;
   edt18.Text:=DM.qrysbxx.FieldByName('纬纱1价格').AsString;
   edt19.Text:=DM.qrysbxx.FieldByName('纬纱2价格').AsString;
   edt20.Text:=DM.qrysbxx.FieldByName('纬纱3价格').AsString;
   edt21.Text:=DM.qrysbxx.FieldByName('纬纱4价格').AsString;
   edt22.Text:=DM.qrysbxx.FieldByName('静电丝价格').AsString;
   edt23.Text:=DM.qrysbxx.FieldByName('用纱成本').AsString;
   edt24.Text:=DM.qrysbxx.FieldByName('静电丝费用').AsString;
   edt25.Text:=DM.qrysbxx.FieldByName('加工费').AsString;
   edt26.Text:=DM.qrysbxx.FieldByName('每纬加工费').AsString;
   edt27.Text:=DM.qrysbxx.FieldByName('运费包装费').AsString;
   RzEdit7.Text:=DM.qrysbxx.FieldByName('等级费').AsString;
   edt28.Text:=DM.qrysbxx.FieldByName('核价').AsString;
   RzEdit8.Text:=DM.qrysbxx.FieldByName('报价').AsString;
   RzEdit15.Text:=DM.qrysbxx.FieldByName('业务员').AsString;
   RzMemo1.Text:=DM.qrysbxx.FieldByName('特殊纱描述').AsString;

 end
 else
 begin
if FrmYXBSB.tag=4  then
 begin
  mmoSpecification.Text:=DM.qryBApprovedOrder.FieldByName('规格').AsString;
  edtOrderID.Text:=DM.qryBApprovedOrder.FieldByName('订单号').AsString;
  edtOrderQuantity.Text:=DM.qryBApprovedOrder.FieldByName('订单量').AsString;
  RzMemo2.Text:=DM.qryBApprovedOrder.FieldByName('客户采购订单号').AsString;
  RzMemo3.Text:=DM.qryBApprovedOrder.FieldByName('客户名称').AsString;
  if DM.qryBApprovedOrder.FieldByName('台日加工费').AsString=null then
  begin
  edt35.Text:=null;
  end
  else
  begin
  edt35.Text:=DM.qryBApprovedOrder.FieldByName('台日加工费').AsString;
  end;
  if DM.qryBApprovedOrder.FieldByName('结算方式').AsString=null then
  begin
  RzMemo4.Text:=null;
  end
  else
  begin
  RzMemo4.Text:=DM.qryBApprovedOrder.FieldByName('结算方式').AsString;
  end;
  if DM.qryBApprovedOrder.FieldByName('交货期').Value=null  then
  begin
    mmoDeliveyTimeAndAmount.Text:=DM.qryBApprovedOrder.FieldByName('交货事宜').AsString;
    dtpDeliveryTime.Visible:=False;
  end
  else
  begin
    dtpDeliveryTime.DateTime:=DM.qryBApprovedOrder.FieldByName('交货期').AsDateTime;
    mmoDeliveyTimeAndAmount.Visible:=False;
  end;
  mmoQualityRequirement.Text:=DM.qryBApprovedOrder.FieldByName('质量要求').AsString;
  mmoPackagingRequirement.Text:=DM.qryBApprovedOrder.FieldByName('包装要求').AsString;
   edt.Text:=DM.qryBApprovedOrder.FieldByName('经支1').AsString;
   edt.SetFocus;
   edt1.Text:=DM.qryBApprovedOrder.FieldByName('经支2').AsString;
   edt2.Text:=DM.qryBApprovedOrder.FieldByName('纬支1').AsString;
   edt3.Text:=DM.qryBApprovedOrder.FieldByName('纬支2').AsString;
   edt4.Text:=DM.qryBApprovedOrder.FieldByName('纬支3').AsString;
   edt5.Text:=DM.qryBApprovedOrder.FieldByName('纬支4').AsString;
   edt6.Text:=DM.qryBApprovedOrder.FieldByName('经密').AsString;
   edt7.Text:=DM.qryBApprovedOrder.FieldByName('纬密').AsString;
   edt8.Text:=DM.qryBApprovedOrder.FieldByName('幅宽').AsString;
   RzEdit1.Text:=DM.qryBApprovedOrder.FieldByName('经支1系数').AsString;
   RzEdit2.Text:=DM.qryBApprovedOrder.FieldByName('经支2系数').AsString;
   RzEdit3.Text:=DM.qryBApprovedOrder.FieldByName('纬支1系数').AsString;
   RzEdit4.Text:=DM.qryBApprovedOrder.FieldByName('纬支2系数').AsString;
   RzEdit5.Text:=DM.qryBApprovedOrder.FieldByName('纬支3系数').AsString;
   RzEdit6.Text:=DM.qryBApprovedOrder.FieldByName('纬支4系数').AsString;
   edt29.Text:=DM.qryBApprovedOrder.FieldByName('经向比例系数X').AsString;
   edt31.Text:=DM.qryBApprovedOrder.FieldByName('经向比例系数X2').AsString;
   edt30.Text:=DM.qryBApprovedOrder.FieldByName('纬向比例系数Y').AsString;
   edt32.Text:=DM.qryBApprovedOrder.FieldByName('纬向比例系数Y2').AsString;
   edt33.Text:=DM.qryBApprovedOrder.FieldByName('纬向比例系数Y3').AsString;
   edt34.Text:=DM.qryBApprovedOrder.FieldByName('纬向比例系数Y4').AsString;
   RzEdit14.Text:=DM.qryBApprovedOrder.FieldByName('经密1').AsString;
   RzEdit13.Text:=DM.qryBApprovedOrder.FieldByName('经密2').AsString;
   RzEdit12.Text:=DM.qryBApprovedOrder.FieldByName('纬密1').AsString;
   RzEdit11.Text:=DM.qryBApprovedOrder.FieldByName('纬密2').AsString;
   RzEdit10.Text:=DM.qryBApprovedOrder.FieldByName('纬密3').AsString;
   RzEdit9.Text:=DM.qryBApprovedOrder.FieldByName('纬密4').AsString;
   edt9.Text:=DM.qryBApprovedOrder.FieldByName('经向1用纱量').AsString;
   edt10.Text:=DM.qryBApprovedOrder.FieldByName('经向2用纱量').AsString;
   edt11.Text:=DM.qryBApprovedOrder.FieldByName('纬向1用纱量').AsString;
   edt12.Text:=DM.qryBApprovedOrder.FieldByName('纬向2用纱量').AsString;
   edt13.Text:=DM.qryBApprovedOrder.FieldByName('纬向3用纱量').AsString;
   edt14.Text:=DM.qryBApprovedOrder.FieldByName('纬向4用纱量').AsString;
   edt15.Text:=DM.qryBApprovedOrder.FieldByName('静电丝用量').AsString;
   edt16.Text:=DM.qryBApprovedOrder.FieldByName('经纱1价格').AsString;
   edt17.Text:=DM.qryBApprovedOrder.FieldByName('经纱2价格').AsString;
   edt18.Text:=DM.qryBApprovedOrder.FieldByName('纬纱1价格').AsString;
   edt19.Text:=DM.qryBApprovedOrder.FieldByName('纬纱2价格').AsString;
   edt20.Text:=DM.qryBApprovedOrder.FieldByName('纬纱3价格').AsString;
   edt21.Text:=DM.qryBApprovedOrder.FieldByName('纬纱4价格').AsString;
   edt22.Text:=DM.qryBApprovedOrder.FieldByName('静电丝价格').AsString;
   edt23.Text:=DM.qryBApprovedOrder.FieldByName('用纱成本').AsString;
   edt24.Text:=DM.qryBApprovedOrder.FieldByName('静电丝费用').AsString;
   edt25.Text:=DM.qryBApprovedOrder.FieldByName('加工费').AsString;
   edt26.Text:=DM.qryBApprovedOrder.FieldByName('每纬加工费').AsString;
   edt27.Text:=DM.qryBApprovedOrder.FieldByName('运费包装费').AsString;
   RzEdit7.Text:=DM.qryBApprovedOrder.FieldByName('等级费').AsString;
   edt28.Text:=DM.qryBApprovedOrder.FieldByName('核价').AsString;
   RzEdit8.Text:=DM.qryBApprovedOrder.FieldByName('报价').AsString;
   RzEdit15.Text:=DM.qryBApprovedOrder.FieldByName('业务员').AsString;
   RzMemo1.Text:=DM.qryBApprovedOrder.FieldByName('特殊纱描述').AsString;
   btnReport.Enabled:=False;
 end
 else
 begin
  mmoSpecification.Text:=DM.qryBUnApprovedOrder.FieldByName('规格').AsString;
  edtOrderID.Text:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
  edtOrderQuantity.Text:=DM.qryBUnApprovedOrder.FieldByName('订单量').AsString;
  RzMemo2.Text:=DM.qryBUnApprovedOrder.FieldByName('客户采购订单号').AsString;
  RzMemo3.Text:=DM.qryBUnApprovedOrder.FieldByName('客户名称').AsString;
  if DM.qryBUnApprovedOrder.FieldByName('台日加工费').AsString=null then
  begin
  edt35.Text:=null;
  end
  else
  begin
  edt35.Text:=DM.qryBUnApprovedOrder.FieldByName('台日加工费').AsString;
  end;
  if DM.qryBUnApprovedOrder.FieldByName('结算方式').AsString=null then
  begin
  RzMemo4.Text:=null;
  end
  else
  begin
  RzMemo4.Text:=DM.qryBUnApprovedOrder.FieldByName('结算方式').AsString;
  end;
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
  edt.SetFocus;
 end;
end;
end;

procedure TFrmYXBSB.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmYXBSB.btnCalculateClick(Sender: TObject);
begin
  ShellExecute(Handle,nil,'Calc.EXE',nil,nil,SW_SHOW);
end;

procedure TFrmYXBSB.edtKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,'.']) then
   begin
    key:=#0;
    application.MessageBox('请输入数字!','提示',MB_OK+MB_ICONINFORMATION);
   end;
end;

procedure TFrmYXBSB.edt26Change(Sender: TObject);
begin
  if (edt7.Text<>'') and (edt26.Text<>'') then
  begin
    edt25.Text:=FloatToStr(StrToFloat(edt7.Text)*StrToFloat(edt26.Text));
    edt25.Text:=FormatFloat('0.0000',StrToFloat(edt25.Text));
  end;
end;

procedure TFrmYXBSB.edt23Change(Sender: TObject);
var
  scb:string;
  jds:string;
  jgf:string;
  yf:string;
  djf:string;
begin
  if edt23.Text=''then
  begin
    scb:='0';
  end
  else
  begin
   scb:=edt23.Text;
  end;
    if edt24.Text=''then
  begin
   jds:='0';
  end
  else
  begin
   jds:=edt24.Text;
  end;
    if edt25.Text=''then
  begin
    jgf:='0';
  end
  else
  begin
   jgf:=edt25.Text;
  end;
    if edt27.Text=''then
  begin
   yf:='0';
  end
  else
  begin
   yf:=edt27.Text;
  end;
      if RzEdit7.Text=''then
  begin
   djf:='0';
  end
  else
  begin
   djf:=RzEdit7.Text;
  end;
  edt28.Text:=FloatToStr(strtofloat(scb)+strtofloat(jds)+strtofloat(jgf)+strtofloat(yf)+strtofloat(djf));
  edt28.Text:=FormatFloat('0.0000',StrToFloat(edt28.Text));
   end;

procedure TFrmYXBSB.edt15Change(Sender: TObject);
begin
  if (edt15.Text<>'') and (edt22.Text<>'') then
  begin
     edt24.Text:=FloatToStr(StrToFloat(edt15.Text)*StrToFloat(edt22.Text)/10);
     edt24.Text:=FormatFloat('0.0000',StrToFloat(edt24.Text));
  end;
end;

procedure TFrmYXBSB.btnReportClick(Sender: TObject);
begin
 if Application.MessageBox('确定申报吗?申报成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表增加订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@jz1').Value:=edt.Text;
        Parameters.ParamByName('@jz2').Value:=edt1.Text;
        Parameters.ParamByName('@wz1').Value:=edt2.Text;
        Parameters.ParamByName('@wz2').Value:=edt3.Text;
        Parameters.ParamByName('@wz3').Value:=edt4.Text;
        Parameters.ParamByName('@wz4').Value:=edt5.Text;
        Parameters.ParamByName('@jz1xs').Value:=RzEdit1.Text;
        Parameters.ParamByName('@jz2xs').Value:=RzEdit2.Text;
        Parameters.ParamByName('@wz1xs').Value:=RzEdit3.Text;
        Parameters.ParamByName('@wz2xs').Value:=RzEdit4.Text;
        Parameters.ParamByName('@wz3xs').Value:=RzEdit5.Text;
        Parameters.ParamByName('@wz4xs').Value:=RzEdit6.Text;
        Parameters.ParamByName('@jm1').Value:=RzEdit14.Text;
        Parameters.ParamByName('@jm2').Value:=RzEdit13.Text;
        Parameters.ParamByName('@wm1').Value:=RzEdit12.Text;
        Parameters.ParamByName('@wm2').Value:=RzEdit11.Text;
        Parameters.ParamByName('@wm3').Value:=RzEdit10.Text;
        Parameters.ParamByName('@wm4').Value:=RzEdit9.Text;
        Parameters.ParamByName('@jm').Value:=edt6.Text;
        Parameters.ParamByName('@wm').Value:=edt7.Text;
        Parameters.ParamByName('@fk').Value:=edt8.Text;
        //Parameters.ParamByName('@jxblxs').Value:=edt29.Text;
        //Parameters.ParamByName('@wxblxs').Value:=edt30.Text;
        //Parameters.ParamByName('@jxblxs2').Value:=edt31.Text;
        //Parameters.ParamByName('@wxblxs2').Value:=edt32.Text;
        //Parameters.ParamByName('@wxblxs3').Value:=edt33.Text;
        //Parameters.ParamByName('@wxblxs4').Value:=edt34.Text;
        if edt29.Text='' then
        begin
         Parameters.ParamByName('@jxblxs').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@jxblxs').Value:=edt29.Text;
        end;
        if edt30.Text='' then
        begin
         Parameters.ParamByName('@wxblxs').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wxblxs').Value:=edt30.Text;
        end;
        if edt31.Text='' then
        begin
         Parameters.ParamByName('@jxblxs2').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@jxblxs2').Value:=edt31.Text;
        end;
        if edt32.Text='' then
        begin
         Parameters.ParamByName('@wxblxs2').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wxblxs2').Value:=edt32.Text;
        end;
        if edt34.Text='' then
        begin
         Parameters.ParamByName('@wxblxs4').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wxblxs4').Value:=edt34.Text;
        end;
        if edt33.Text='' then
        begin
         Parameters.ParamByName('@wxblxs3').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wxblxs3').Value:=edt33.Text;
        end;
        if edt9.Text='' then
        begin
         Parameters.ParamByName('@jx1ysl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@jx1ysl').Value:=edt9.Text;
        end;
        if edt10.Text='' then
        begin
         Parameters.ParamByName('@jx2ysl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@jx2ysl').Value:=edt10.Text;
        end;
        if edt11.Text='' then
        begin
         Parameters.ParamByName('@wx1ysl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wx1ysl').Value:=edt11.Text;
        end;
         if edt12.Text='' then
        begin
         Parameters.ParamByName('@wx2ysl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wx2ysl').Value:=edt12.Text;
        end;
         if edt13.Text='' then
        begin
         Parameters.ParamByName('@wx3ysl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wx3ysl').Value:=edt13.Text;
        end;
         if edt14.Text='' then
        begin
         Parameters.ParamByName('@wx4ysl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@wx4ysl').Value:=edt14.Text;
        end;
        Parameters.ParamByName('@jdsyl').Value:=edt15.Text;
        Parameters.ParamByName('@js1jg').Value:=edt16.Text;
        Parameters.ParamByName('@js2jg').Value:=edt17.Text;
        Parameters.ParamByName('@ws1jg').Value:=edt18.Text;
        Parameters.ParamByName('@ws2jg').Value:=edt19.Text;
        Parameters.ParamByName('@ws3jg').Value:=edt20.Text;
        Parameters.ParamByName('@ws4jg').Value:=edt21.Text;
        Parameters.ParamByName('@jdsjg').Value:=edt22.Text;
        Parameters.ParamByName('@yscb').Value:=edt23.Text;
        if FrmYXBSB.tag=1  then
        begin
         Parameters.ParamByName('@State').Value:=1;
        end;
        if FrmYXBSB.tag=2  then
        begin
        Parameters.ParamByName('@State').Value:=2;
        end;
        if FrmYXBSB.tag=3  then
        begin
        Parameters.ParamByName('@State').Value:=3;
        end;
        if edt24.Text='' then
        begin
         Parameters.ParamByName('@jdsfy').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@jdsfy').Value:=edt24.Text;
        end;
        Parameters.ParamByName('@jgf').Value:=edt25.Text;
        Parameters.ParamByName('@mwjgf').Value:=edt26.Text;
        if edt27.Text='' then
        begin
         Parameters.ParamByName('@yfbzf').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('@yfbzf').Value:=edt27.Text;
        end;
        Parameters.ParamByName('@ywy').Value:=RzEdit15.Text;
        Parameters.ParamByName('@djf').Value:=RzEdit7.Text;  //等级费
        Parameters.ParamByName('@hj').Value:=edt28.Text;     //核价
        Parameters.ParamByName('@bj').Value:=RzEdit8.Text;    //报价
        Parameters.ParamByName('@tssms').Value:=RzMemo1.Text;  //特殊纱描述
        Parameters.ParamByName('@xsbsbr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@xsbsbrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        ExecProc;
        Application.MessageBox('申报成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryBUnApprovedOrder do
        begin
          Close;
          Open;
        end;
      end;
      except
      Application.MessageBox('申报失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
      end;
   end;
    with DM.qryBUnApprovedOrder do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from V_棉布订单审核表状态跟踪 where 营销打印状态=0 order by 销售部申报状态,销售部审核状态,财务部审核状态,织部工程师审核状态,物流采购部审核状态,公司领导审核状态,公司领导审批状态');   //作为申报环节要把握整个审核全局 原来为select * from V_棉布订单审核表状态跟踪 where 公司领导审批状态=0
      Open;
    end;
     with DM.qrysbxx do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 棉布订单评审表 where 订单号 in (select 订单号 from 棉布订单信息表 where 营销打印状态=0)');   //公司领导审批之后不能再修改了
      Open;
    end;
    //FrmBDDSH.cxgrdbtblvwMarketingDepReport.ViewData.Expand(True);
    Self.Close;
  end;


procedure TFrmYXBSB.RzEdit1Change(Sender: TObject);   //径纱1用纱量
begin
 if (edt.Text<>'') and (RzEdit14.Text<>'')and (edt8.Text<>'')and (RzEdit1.Text<>'')and (Edt29.Text<>'') then
  begin
    edt9.Text:=FloatToStr((StrToFloat(RzEdit14.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt29.Text))*StrToFloat(RzEdit1.Text)/StrToFloat(edt.Text));
    edt9.Text:=FormatFloat('0.000',StrToFloat(edt9.Text));
  end;
end;

procedure TFrmYXBSB.RzEdit2Change(Sender: TObject);  //径纱2用纱量
begin
  if (edt1.Text<>'') and (RzEdit13.Text<>'')and (edt8.Text<>'')and (RzEdit2.Text<>'')and (Edt31.Text<>'') then
  begin
    edt10.Text:=FloatToStr((StrToFloat(RzEdit13.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt31.Text))*StrToFloat(RzEdit2.Text)/StrToFloat(edt1.Text));
    edt10.Text:=FormatFloat('0.000',StrToFloat(edt10.Text));
  end;
end;

procedure TFrmYXBSB.RzEdit3Change(Sender: TObject);  //纬纱1用纱量
begin
   if (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text<>'0') then
  begin
    edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text)*StrToFloat(edt30.Text)/(StrToFloat(edt30.Text)+1));
    edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end
  else
  if  (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text='0') then
  begin
     edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text));
     edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end;
end;

procedure TFrmYXBSB.RzEdit4Change(Sender: TObject);   //纬纱2用纱量
begin
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text<>'0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text)*StrToFloat(edt32.Text)/(StrToFloat(edt32.Text)+1));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end
  else
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text='0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end;
end;

procedure TFrmYXBSB.RzEdit5Change(Sender: TObject); //纬纱3用纱量
begin
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text<>'0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text)*StrToFloat(edt33.Text)/(StrToFloat(edt33.Text)+1));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end
  else
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text='0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end;
end;

procedure TFrmYXBSB.RzEdit6Change(Sender: TObject);    //纬纱4用纱量
begin
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text<>'0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text)*StrToFloat(edt34.Text)/(StrToFloat(edt34.Text)+1));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end
  else
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text='0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end;
end;

procedure TFrmYXBSB.Edt29Change(Sender: TObject);   //径纱1用纱量
begin
 if (edt.Text<>'') and (RzEdit14.Text<>'')and (edt8.Text<>'')and (RzEdit1.Text<>'')and (Edt29.Text<>'') then
  begin
   edt9.Text:=FloatToStr((StrToFloat(RzEdit14.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt29.Text))*StrToFloat(RzEdit1.Text)/StrToFloat(edt.Text));
   edt9.Text:=FormatFloat('0.000',StrToFloat(edt9.Text));
  end;

end;

procedure TFrmYXBSB.Edt31Change(Sender: TObject);  //径纱2用纱量
begin
  if (edt1.Text<>'') and (RzEdit13.Text<>'')and (edt8.Text<>'')and (RzEdit2.Text<>'')and (Edt31.Text<>'') then
  begin
    edt10.Text:=FloatToStr((StrToFloat(RzEdit13.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt31.Text))*StrToFloat(RzEdit2.Text)/StrToFloat(edt1.Text));
    edt10.Text:=FormatFloat('0.000',StrToFloat(edt10.Text));
  end;
end;

procedure TFrmYXBSB.Edt30Change(Sender: TObject);  //纬纱1用纱量
begin
  if (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text<>'0') then
  begin
    edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text)*StrToFloat(edt30.Text)/(StrToFloat(edt30.Text)+1));
    edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end
  else
  if  (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text='0') then
  begin
     edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text));
     edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end;
end;

procedure TFrmYXBSB.Edt32Change(Sender: TObject);   //纬纱2用纱量
begin
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text<>'0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text)*StrToFloat(edt32.Text)/(StrToFloat(edt32.Text)+1));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end
  else
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text='0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end;
end;

procedure TFrmYXBSB.Edt33Change(Sender: TObject); //纬纱3用纱量
begin
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text<>'0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text)*StrToFloat(edt33.Text)/(StrToFloat(edt33.Text)+1));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end
  else
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text='0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end;
end;

procedure TFrmYXBSB.Edt34Change(Sender: TObject);    //纬纱4用纱量
begin
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text<>'0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text)*StrToFloat(edt34.Text)/(StrToFloat(edt34.Text)+1));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end
  else
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text='0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end;
end;

procedure TFrmYXBSB.edt7Change(Sender: TObject);    //纬密变化
begin
   if (edt7.Text<>'') and (edt26.Text<>'') then    //加工费
  begin
    edt25.Text:=FloatToStr(StrToFloat(edt7.Text)*StrToFloat(edt26.Text));
    edt25.Text:=FormatFloat('0.0000',StrToFloat(edt25.Text));
  end;
end;

procedure TFrmYXBSB.edt8Change(Sender: TObject);
begin
   if (edt.Text<>'') and (RzEdit14.Text<>'')and (edt8.Text<>'')and (RzEdit1.Text<>'')and (Edt29.Text<>'') then
  begin
    edt9.Text:=FloatToStr((StrToFloat(RzEdit14.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt29.Text))*StrToFloat(RzEdit1.Text)/StrToFloat(edt.Text));
    edt9.Text:=FormatFloat('0.000',StrToFloat(edt9.Text));
  end;
   if (edt1.Text<>'') and (RzEdit13.Text<>'')and (edt8.Text<>'')and (RzEdit2.Text<>'')and (Edt31.Text<>'') then
  begin
    edt10.Text:=FloatToStr((StrToFloat(RzEdit13.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt31.Text))*StrToFloat(RzEdit2.Text)/StrToFloat(edt1.Text));
    edt10.Text:=FormatFloat('0.000',StrToFloat(edt10.Text));
  end;
  if (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text<>'0') then
  begin
    edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text)*StrToFloat(edt30.Text)/(StrToFloat(edt30.Text)+1));
    edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end
  else
  if  (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text='0') then
  begin
     edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text));
     edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end;
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text<>'0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text)*StrToFloat(edt32.Text)/(StrToFloat(edt32.Text)+1));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end
  else
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text='0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end;
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text<>'0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text)*StrToFloat(edt33.Text)/(StrToFloat(edt33.Text)+1));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end
  else
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text='0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end;
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text<>'0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text)*StrToFloat(edt34.Text)/(StrToFloat(edt34.Text)+1));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end
  else
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text='0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end;
end;

procedure TFrmYXBSB.edt16Change(Sender: TObject);
var
  jsj1:string;
  jsj2:string;
  wsj1:string;
  wsj2:string;
  wsj3:string;
  wsj4:string;
begin
   if (edt16.text<>'')and (edt9.text<>'') then
   begin
     jsj1:=FloatToStr(StrToFloat(edt16.Text)*StrToFloat(edt9.Text)/10);
   end
   else
   begin
    jsj1:='0';
   end;
  if (edt10.text<>'')and (edt17.text<>'') then
   begin
     jsj2:=FloatToStr(StrToFloat(edt10.Text)*StrToFloat(edt17.Text)/10);
   end
   else
   begin
    jsj2:='0';
   end;
    if (edt11.text<>'')and (edt18.text<>'') then
   begin
     wsj1:=FloatToStr(StrToFloat(edt11.Text)*StrToFloat(edt18.Text)/10);
   end
   else
   begin
    wsj1:='0';
   end;
    if (edt12.text<>'')and (edt19.text<>'') then
   begin
     wsj2:=FloatToStr(StrToFloat(edt12.Text)*StrToFloat(edt19.Text)/10);
   end
   else
   begin
    wsj2:='0';
   end;
   if (edt13.text<>'')and (edt20.text<>'') then
   begin
     wsj3:=FloatToStr(StrToFloat(edt13.Text)*StrToFloat(edt20.Text)/10);
   end
   else
   begin
    wsj3:='0';
   end;
    if (edt14.text<>'')and (edt21.text<>'') then
   begin
     wsj4:=FloatToStr(StrToFloat(edt14.Text)*StrToFloat(edt21.Text)/10);
   end
   else
   begin
    wsj4:='0';
   end;
    edt23.Text:=FloatToStr(strtofloat(jsj1)+strtofloat(jsj2)+strtofloat(wsj1)+strtofloat(wsj2)+strtofloat(wsj3)+strtofloat(wsj4));
    edt23.Text:=FormatFloat('0.0000',StrToFloat(edt23.Text));
    end;

procedure TFrmYXBSB.RzEdit14Change(Sender: TObject);
var
  jm1:string;
  jm2:string;
begin
     if (edt.Text<>'') and (RzEdit14.Text<>'')and (edt8.Text<>'')and (RzEdit1.Text<>'')and (Edt29.Text<>'') then     //经向用纱1
  begin
    edt9.Text:=FloatToStr((StrToFloat(RzEdit14.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt29.Text))*StrToFloat(RzEdit1.Text)/StrToFloat(edt.Text));
    edt9.Text:=FormatFloat('0.000',StrToFloat(edt9.Text));
  end;
      if RzEdit14.text<>''  then                                         //总经密
   begin
     jm1:=RzEdit14.text;
   end
   else
   begin
    jm1:='0';
   end;
     if RzEdit13.text<>''  then
   begin
     jm2:=RzEdit13.text;
   end
   else
   begin
    jm2:='0';
   end;
   edt6.Text:=FloatToStr(strtofloat(jm1)+strtofloat(jm2));
   edt6.Text:=FormatFloat('0.000',StrToFloat(edt6.Text));
end;

procedure TFrmYXBSB.RzEdit13Change(Sender: TObject);
var
  jm1:string;
  jm2:string;
begin
   if (edt1.Text<>'') and (RzEdit13.Text<>'')and (edt8.Text<>'')and (RzEdit2.Text<>'')and (Edt31.Text<>'') then
  begin
    edt10.Text:=FloatToStr((StrToFloat(RzEdit13.Text)*StrToFloat(edt8.Text)-StrToFloat(Edt31.Text))*StrToFloat(RzEdit2.Text)/StrToFloat(edt1.Text));
    edt10.Text:=FormatFloat('0.000',StrToFloat(edt10.Text));
  end;
      if RzEdit14.text<>''  then
   begin
     jm1:=RzEdit14.text;
   end
   else
   begin
    jm1:='0';
   end;
     if RzEdit13.text<>''  then
   begin
     jm2:=RzEdit13.text;
   end
   else
   begin
    jm2:='0';
   end;
   edt6.Text:=FloatToStr(strtofloat(jm1)+strtofloat(jm2));
   edt6.Text:=FormatFloat('0.000',StrToFloat(edt6.Text));
end;

procedure TFrmYXBSB.RzEdit12Change(Sender: TObject);
var
  wm1:string;
  wm2:string;
  wm3:string;
  wm4:string;
begin
  if (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text<>'0') then
  begin
    edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text)*StrToFloat(edt30.Text)/(StrToFloat(edt30.Text)+1));
    edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end
  else
  if  (edt2.Text<>'') and (RzEdit12.Text<>'')and (edt8.Text<>'')and (RzEdit3.Text<>'')and (Edt30.Text<>'')and (Edt30.Text='0') then
  begin
     edt11.Text:=FloatToStr(StrToFloat(RzEdit12.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit3.Text)/StrToFloat(edt2.Text));
     edt11.Text:=FormatFloat('0.000',StrToFloat(edt11.Text));
  end;
      if RzEdit12.text<>''  then
   begin
     wm1:=RzEdit12.text;
   end
   else
   begin
    wm1:='0';
   end;
       if RzEdit11.text<>''  then
   begin
     wm2:=RzEdit11.text;
   end
   else
   begin
    wm2:='0';
   end;
       if RzEdit10.text<>''  then
   begin
     wm3:=RzEdit10.text;
   end
   else
   begin
    wm3:='0';
   end;
     if RzEdit9.text<>''  then
   begin
     wm4:=RzEdit9.text;
   end
   else
   begin
    wm4:='0';
   end;
 edt7.Text:=FloatToStr(strtofloat(wm1)+strtofloat(wm2)+strtofloat(wm3)+strtofloat(wm4));
 edt7.Text:=FormatFloat('0.000',StrToFloat(edt7.Text));
 end;

procedure TFrmYXBSB.RzEdit11Change(Sender: TObject);
var
  wm1:string;
  wm2:string;
  wm3:string;
  wm4:string;
begin
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text<>'0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text)*StrToFloat(edt32.Text)/(StrToFloat(edt32.Text)+1));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end
  else
  if (edt3.Text<>'') and (RzEdit11.Text<>'')and (edt8.Text<>'')and (RzEdit4.Text<>'')and (Edt32.Text<>'')and (Edt32.Text='0') then
  begin
    edt12.Text:=FloatToStr(StrToFloat(RzEdit11.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit4.Text)/StrToFloat(edt3.Text));
    edt12.Text:=FormatFloat('0.000',StrToFloat(edt12.Text));
  end;
        if RzEdit12.text<>''  then
   begin
     wm1:=RzEdit12.text;
   end
   else
   begin
    wm1:='0';
   end;
       if RzEdit11.text<>''  then
   begin
     wm2:=RzEdit11.text;
   end
   else
   begin
    wm2:='0';
   end;
       if RzEdit10.text<>''  then
   begin
     wm3:=RzEdit10.text;
   end
   else
   begin
    wm3:='0';
   end;
     if RzEdit9.text<>''  then
   begin
     wm4:=RzEdit9.text;
   end
   else
   begin
    wm4:='0';
   end;
 edt7.Text:=FloatToStr(strtofloat(wm1)+strtofloat(wm2)+strtofloat(wm3)+strtofloat(wm4));
 edt7.Text:=FormatFloat('0.000',StrToFloat(edt7.Text));
 end;

procedure TFrmYXBSB.RzEdit10Change(Sender: TObject);
var
  wm1:string;
  wm2:string;
  wm3:string;
  wm4:string;
begin
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text<>'0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text)*StrToFloat(edt33.Text)/(StrToFloat(edt33.Text)+1));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end
  else
  if (edt4.Text<>'') and (RzEdit10.Text<>'')and (edt8.Text<>'')and (RzEdit5.Text<>'')and (Edt33.Text<>'')and (Edt33.Text='0') then
  begin
    edt13.Text:=FloatToStr(StrToFloat(RzEdit10.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit5.Text)/StrToFloat(edt4.Text));
    edt13.Text:=FormatFloat('0.000',StrToFloat(edt13.Text));
  end;
     if RzEdit12.text<>''  then
   begin
     wm1:=RzEdit12.text;
   end
   else
   begin
    wm1:='0';
   end;
       if RzEdit11.text<>''  then
   begin
     wm2:=RzEdit11.text;
   end
   else
   begin
    wm2:='0';
   end;
       if RzEdit10.text<>''  then
   begin
     wm3:=RzEdit10.text;
   end
   else
   begin
    wm3:='0';
   end;
     if RzEdit9.text<>''  then
   begin
     wm4:=RzEdit9.text;
   end
   else
   begin
    wm4:='0';
   end;
 edt7.Text:=FloatToStr(strtofloat(wm1)+strtofloat(wm2)+strtofloat(wm3)+strtofloat(wm4));
 edt7.Text:=FormatFloat('0.000',StrToFloat(edt7.Text));
 end;

procedure TFrmYXBSB.RzEdit9Change(Sender: TObject);
var
  wm1:string;
  wm2:string;
  wm3:string;
  wm4:string;
begin
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text<>'0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text)*StrToFloat(edt34.Text)/(StrToFloat(edt34.Text)+1));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end
  else
  if (edt5.Text<>'') and (RzEdit9.Text<>'')and (edt8.Text<>'')and (RzEdit6.Text<>'')and (Edt34.Text<>'')and (Edt34.Text='0') then
  begin
    edt14.Text:=FloatToStr(StrToFloat(RzEdit9.Text)*StrToFloat(edt8.Text)*StrToFloat(RzEdit6.Text)/StrToFloat(edt5.Text));
    edt14.Text:=FormatFloat('0.000',StrToFloat(edt14.Text));
  end;
     if RzEdit12.text<>''  then
   begin
     wm1:=RzEdit12.text;
   end
   else
   begin
    wm1:='0';
   end;
       if RzEdit11.text<>''  then
   begin
     wm2:=RzEdit11.text;
   end
   else
   begin
    wm2:='0';
   end;
       if RzEdit10.text<>''  then
   begin
     wm3:=RzEdit10.text;
   end
   else
   begin
    wm3:='0';
   end;
     if RzEdit9.text<>''  then
   begin
     wm4:=RzEdit9.text;
   end
   else
   begin
    wm4:='0';
   end;
 edt7.Text:=FloatToStr(strtofloat(wm1)+strtofloat(wm2)+strtofloat(wm3)+strtofloat(wm4));
 edt7.Text:=FormatFloat('0.000',StrToFloat(edt7.Text));
 end;

procedure TFrmYXBSB.btn1Click(Sender: TObject);
begin
  Frmimage:=TFrmimage.Create(Self);
  Frmimage.tag:=1;
  Frmimage.ShowModal;
  FreeAndNil(Frmimage);
end;

end.
