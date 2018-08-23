unit zbgcssh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzDTP, RzDBDTP, StdCtrls, DBCtrls, RzDBEdit, Mask,
  RzEdit, RzLabel, RzPanel, RzButton, ExtCtrls, ImgList, cxGraphics;

type
  TFrmZBGCSSH = class(TForm)
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
    lbl36: TRzLabel;
    lbl37: TRzLabel;
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
    rzdbdtmpckr1: TRzDBDateTimePicker;
    edt30: TRzDBEdit;
    rzdbdtmpckr2: TRzDBDateTimePicker;
    rzgrpbx2: TRzGroupBox;
    lbl47: TRzLabel;
    mmo6: TRzDBMemo;
    rzgrpbx1: TRzGroupBox;
    lbl38: TRzLabel;
    lbl39: TRzLabel;
    lbl40: TRzLabel;
    lbl41: TRzLabel;
    lbl42: TRzLabel;
    lbl43: TRzLabel;
    lbl44: TRzLabel;
    lbl45: TRzLabel;
    lbl46: TRzLabel;
    edt33: TRzDBEdit;
    edt34: TRzDBEdit;
    edt35: TRzDBEdit;
    mmo5: TRzDBMemo;
    edt36: TRzDBEdit;
    rzdbdtmpckr3: TRzDBDateTimePicker;
    dtpDeliveryTime: TRzDBDateTimePicker;
    RzToolButton2: TRzToolButton;
    RzLabel2: TRzLabel;
    RzDBMemo3: TRzDBMemo;
    RzLabel3: TRzLabel;
    RzDBMemo8: TRzDBMemo;
    RzLabel4: TRzLabel;
    RzDBMemo10: TRzDBMemo;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzDBMemo1: TRzDBMemo;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel9: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzLabel19: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    btn1: TRzToolButton;
    lbl48: TRzLabel;
    RzDBMemo2: TRzDBMemo;
    lbl49: TRzLabel;
    RzDBMemo4: TRzDBMemo;
    RzDBMemo5: TRzDBMemo;
    lbl55: TRzLabel;
    lbl57: TRzLabel;
    RzDBEdit24: TRzDBEdit;
    lbl56: TRzLabel;
    btn2: TRzToolButton;
    RzDBEdit16: TRzDBEdit;
    ImageList1: TImageList;
    procedure btnExamineClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZBGCSSH: TFrmZBGCSSH;

implementation
uses UDM,bddsh, image4, Formimage;

{$R *.dfm}

procedure TFrmZBGCSSH.btnExamineClick(Sender: TObject);
begin
  if Application.MessageBox('确定审核吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表织部工程师审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@zbgcsshyj').Value:=Trim(mmo6.Text);
        Parameters.ParamByName('@zbgcsshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@zbgcsshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=1;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.ADOQueryzbgc do
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

procedure TFrmZBGCSSH.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmZBGCSSH.FormShow(Sender: TObject);
begin
  if DM.ADOQueryzbgc.FieldByName('交货期').Value=null  then
  begin
    dtpDeliveryTime.Visible:=False;
  end
  else
  begin
    mmoDeliveryTimeAndAmount.Visible:=False;
  end;
 if DM.ADOQueryzbgc.FieldByName('市场单状态').Value='1' then
 begin
    btnExamine.visible:=False;
    btn2.visible:=True;
 end
 else
 begin
    btnExamine.visible:=True;
    btn2.visible:=False;
 end;
end;

procedure TFrmZBGCSSH.RzToolButton2Click(Sender: TObject);
begin
  if Application.MessageBox('确定审核不通过吗，审核后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表织部工程师审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@zbgcsshyj').Value:=Trim(mmo6.Text);
        Parameters.ParamByName('@zbgcsshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@zbgcsshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=2;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.ADOQueryzbgc do
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

procedure TFrmZBGCSSH.btn1Click(Sender: TObject);
begin
  Frmimage:=TFrmimage.Create(Self);
  Frmimage.tag:=4;
  Frmimage.ShowModal;
  FreeAndNil(Frmimage);
end;

procedure TFrmZBGCSSH.btn2Click(Sender: TObject);
begin
  if Application.MessageBox('确定审核吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spBApproveStateUpdate do
      begin
        Close;
        procedureName:='proc_棉布订单评审表织部工程师审核订单审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@ddh').Value:=edtOrderID.Text;
        Parameters.ParamByName('@zbgcsshyj').Value:=Trim(mmo6.Text);
        Parameters.ParamByName('@zbgcsshr').Value:=FrmBDDSH.user;
        Parameters.ParamByName('@zbgcsshrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
        Parameters.ParamByName('@State').Value:=1;
        ExecProc;
       with dm.qry9 do
       begin
         Close;
         SQL.Clear;
         SQL.Add('update 棉布订单信息表 set 物流采购部审核状态=1 where 订单号=:ddh');
         Parameters.ParamByName('ddh').Value:=edtOrderID.Text;
         ExecSql;
       end;
       with dm.qry10 do
       begin
         Close;
         SQL.Clear;
         SQL.Add('update 棉布订单评审表 set 物流采购部审核人=:cwshr where 订单号=:ddh');
         Parameters.ParamByName('cwshr').Value:='无';
         Parameters.ParamByName('ddh').Value:=edtOrderID.Text;
         ExecSql;
       end;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.ADOQueryzbgc do
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

end.
