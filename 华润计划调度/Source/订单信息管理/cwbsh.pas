unit cwbsh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzDTP, RzDBDTP, StdCtrls, DBCtrls, RzDBEdit, Mask,
  RzEdit, RzLabel, RzPanel, RzButton, ExtCtrls, ImgList, cxGraphics;

type
  TFrmCWBSH = class(TForm)
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnExamine: TRzToolButton;
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
    lbl34: TRzLabel;
    lbl35: TRzLabel;
    edt29: TRzDBEdit;
    edt1: TRzDBEdit;
    edt2: TRzDBEdit;
    edt3: TRzDBEdit;
    edt4: TRzDBEdit;
    edt5: TRzDBEdit;
    edt6: TRzDBEdit;
    edt7: TRzDBEdit;
    edt8: TRzDBEdit;
    edt9: TRzDBEdit;
    edt10: TRzDBEdit;
    edt11: TRzDBEdit;
    edt12: TRzDBEdit;
    edt13: TRzDBEdit;
    edt14: TRzDBEdit;
    edt15: TRzDBEdit;
    edt16: TRzDBEdit;
    edt17: TRzDBEdit;
    edt18: TRzDBEdit;
    edt19: TRzDBEdit;
    edt20: TRzDBEdit;
    edt21: TRzDBEdit;
    edt22: TRzDBEdit;
    edt23: TRzDBEdit;
    edt24: TRzDBEdit;
    edt25: TRzDBEdit;
    edt26: TRzDBEdit;
    edt27: TRzDBEdit;
    edt28: TRzDBEdit;
    edtOrderID: TRzDBEdit;
    edt31: TRzDBEdit;
    mmo1: TRzDBMemo;
    mmoDeliveryTimeAndAmount: TRzDBMemo;
    mmo3: TRzDBMemo;
    mmo4: TRzDBMemo;
    edt32: TRzDBEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    rzgrpbx1: TRzGroupBox;
    lbl36: TRzLabel;
    edt30: TRzDBEdit;
    lbl37: TRzLabel;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    lbl38: TRzLabel;
    edt33: TRzDBEdit;
    lbl39: TRzLabel;
    edt34: TRzDBEdit;
    lbl40: TRzLabel;
    edt35: TRzDBEdit;
    lbl41: TRzLabel;
    mmo5: TRzDBMemo;
    lbl42: TRzLabel;
    lbl43: TRzLabel;
    lbl44: TRzLabel;
    dtpDeliveryTime: TRzDBDateTimePicker;
    RzToolButton1: TRzToolButton;
    RzDBMemo1: TRzDBMemo;
    RzLabel1: TRzLabel;
    RzDBMemo3: TRzDBMemo;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzDBMemo8: TRzDBMemo;
    RzLabel4: TRzLabel;
    RzDBMemo10: TRzDBMemo;
    RzLabel5: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzLabel19: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    lbl45: TRzLabel;
    RzDBMemo2: TRzDBMemo;
    lbl46: TRzLabel;
    RzDBEdit16: TRzDBEdit;
    lbl47: TRzLabel;
    lbl48: TRzLabel;
    lbl49: TRzLabel;
    lbl50: TRzLabel;
    lbl51: TRzLabel;
    lbl52: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    RzDBEdit22: TRzDBEdit;
    lbl53: TRzLabel;
    RzDBEdit23: TRzDBEdit;
    btn1: TRzToolButton;
    lbl54: TRzLabel;
    RzDBMemo4: TRzDBMemo;
    lbl55: TRzLabel;
    RzDBMemo5: TRzDBMemo;
    RzDBEdit24: TRzDBEdit;
    lbl56: TRzLabel;
    lbl57: TRzLabel;
    ImageList1: TImageList;
    procedure btnExamineClick(Sender: TObject);
    procedure edt33KeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCWBSH: TFrmCWBSH;

implementation
uses UDM,bddsh, Unit1, image3, Formimage;

{$R *.dfm}

procedure TFrmCWBSH.btnExamineClick(Sender: TObject);
begin


  if Application.MessageBox('确定审核吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表财务部审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@cwbhj').Value:=StrToFloat(edt33.Text);
        //Parameters.ParamByName('@cwbmle').Value:=StrToFloat(edt34.Text); //修改隐藏毛利额
        //Parameters.ParamByName('@cwbmll').Value:=StrToFloat(edt35.Text); //修改隐藏毛利率
        Parameters.ParamByName('@cwbmle').Value:=0; //修改隐藏毛利额
        Parameters.ParamByName('@cwbmll').Value:=0; //修改隐藏毛利率

        Parameters.ParamByName('@cwbshyj').Value:=Trim(mmo5.Text);
        Parameters.ParamByName('@cwbshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@cwbshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=1;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.ADOQuerycw do
        begin
          Close;
          Open;
        end;
      end;
    except
      Application.MessageBox('审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
    Self.Close;
  end;
end;

procedure TFrmCWBSH.edt33KeyPress(Sender: TObject; var Key: Char);
begin
  {if not (key in['0'..'9',#8,'.','-']) then
   begin
    key:=#0;
    application.MessageBox('请输入数字!','提示',MB_OK+MB_ICONINFORMATION);
   end; } 
end;

procedure TFrmCWBSH.btnExitClick(Sender: TObject);
begin
    Self.Close;
end;

procedure TFrmCWBSH.FormShow(Sender: TObject);
begin
  if DM.ADOQuerycw.FieldByName('交货期').Value=null  then
  begin
    dtpDeliveryTime.Visible:=False;
  end
  else
  begin
    mmoDeliveryTimeAndAmount.Visible:=False;
  end;  
end;

procedure TFrmCWBSH.RzToolButton1Click(Sender: TObject);
begin
  if Application.MessageBox('确定审核不通过吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表财务部审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@cwbhj').Value:=StrToFloat(edt33.Text);
        Parameters.ParamByName('@cwbmle').Value:=StrToFloat(edt34.Text);
        Parameters.ParamByName('@cwbmll').Value:=StrToFloat(edt35.Text);
        Parameters.ParamByName('@cwbshyj').Value:=Trim(mmo5.Text);
        Parameters.ParamByName('@cwbshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@cwbshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=2;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.ADOQuerycw do
        begin
          Close;
          Open;
        end;
      end;
    except
      Application.MessageBox('审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
    Self.Close;
  end;
end;

procedure TFrmCWBSH.RzToolButton2Click(Sender: TObject);
begin
 if DM.ADOQuerycw.FieldByName('财务部审核人').Value=null then
  begin
    Application.MessageBox('无需反审核，请直接审核或审核失败！','提示',MB_OK+MB_ICONERROR);
  end
  else
  begin
   if Application.MessageBox('确定反审核吗?反审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表财务部反审核';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@cwbhj').Value:=null;
        Parameters.ParamByName('@cwbmle').Value:=null;
        Parameters.ParamByName('@cwbmll').Value:=null;
        Parameters.ParamByName('@cwbshyj').Value:=null;
        Parameters.ParamByName('@cwbshr').Value:=null;
        Parameters.ParamByName('@cwbshrq').Value:=null;
        Parameters.ParamByName('@zbgcsshyj').Value:=null;
        Parameters.ParamByName('@zbgcsshr').Value:=null;
        Parameters.ParamByName('@zbgcsshrq').Value:=null;
        Parameters.ParamByName('@wlcgbshyj').Value:=null;
        Parameters.ParamByName('@wlcgbshr').Value:=null;
        Parameters.ParamByName('@wkcgbshrq').Value:=null;
        Parameters.ParamByName('@gsldshyj').Value:=null;
        Parameters.ParamByName('@gsldshr').Value:=null;
        Parameters.ParamByName('@gsldshrq').Value:=null;
        Parameters.ParamByName('@gsldspr').Value:=null;
        Parameters.ParamByName('@gsldsprq').Value:=null;
        ExecProc;
        Application.MessageBox('反审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.ADOQuerycw do
        begin
          Close;
          Open;
        end;
      end;
     except
      Application.MessageBox('反审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
   end;
  end;

end;

procedure TFrmCWBSH.btn1Click(Sender: TObject);
begin
  Frmimage:=TFrmimage.Create(Self);
  Frmimage.tag:=3;
  Frmimage.ShowModal;
  FreeAndNil(Frmimage);
end;

end.
