unit gslxdlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ComCtrls, Mask, RzEdit, StdCtrls, RzLabel, RzPanel,
  ExtCtrls, ImgList, cxGraphics,IniFiles;

type
  Tfrmgslxdlr = class(TForm)
    RzPanel1: TRzPanel;
    rzgrpbxInput: TRzGroupBox;
    lblProductName: TRzLabel;
    lblSpecification: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lblWarpSource: TRzLabel;
    lblPurchaseID: TRzLabel;
    lblOrderAddress: TRzLabel;
    lblOrderTime1: TRzLabel;
    lblDeliveryDescribe: TRzLabel;
    mmo2: TRzMemo;
    edt2: TRzEdit;
    mmo5: TRzMemo;
    mmo1: TRzMemo;
    mmo4: TRzMemo;
    edtPurchaseID: TRzEdit;
    edt1: TRzEdit;
    dtpOrderTime: TDateTimePicker;
    mmo3: TRzMemo;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgslxdlr: Tfrmgslxdlr;
   lFile:TiniFile;
implementation
 uses UDM,gslxd;
{$R *.dfm}

procedure Tfrmgslxdlr.btnExitClick(Sender: TObject);
begin
close;
end;

procedure Tfrmgslxdlr.FormShow(Sender: TObject);
begin
  if Self.Tag=1 then
  begin
    dtpOrderTime.Date:=Date();
    edtPurchaseID.SetFocus;
    btnSave.Tag:=1;
  end;
    if Self.Tag=2 then
  begin
    edtPurchaseID.Text:=DM.qrygsd.FieldByName('购纱单编号').AsString;
    edtPurchaseID.SetFocus;
    edt1.Text:=DM.qrygsd.FieldByName('客户采购订单号').AsString;
    edt2.Text:=DM.qrygsd.FieldByName('执行部门').AsString;
    dtpOrderTime.Date:=DM.qrygsd.FieldByName('到纱日期').AsDateTime;
    mmo5.Text:=DM.qrygsd.FieldByName('品种编号').AsString;
    mmo1.Text:=DM.qrygsd.FieldByName('外购纱线').AsString;
    mmo2.Text:=DM.qrygsd.FieldByName('外购静电丝').AsString;
    mmo3.Text:=DM.qrygsd.FieldByName('质量要求').AsString;
    mmo4.Text:=DM.qrygsd.FieldByName('备注').AsString;
    btnSave.Tag:=2;
  end;
    if Self.Tag=3 then
  begin
    edtPurchaseID.Text:=DM.qrygsd.FieldByName('购纱单编号').AsString;
    edtPurchaseID.SetFocus;
    edt1.Text:=DM.qrygsd.FieldByName('客户采购订单号').AsString;
    edt2.Text:=DM.qrygsd.FieldByName('执行部门').AsString;
    dtpOrderTime.Date:=DM.qrygsd.FieldByName('到纱日期').AsDateTime;
    mmo5.Text:=DM.qrygsd.FieldByName('品种编号').AsString;
    mmo1.Text:=DM.qrygsd.FieldByName('外购纱线').AsString;
    mmo2.Text:=DM.qrygsd.FieldByName('外购静电丝').AsString;
    mmo3.Text:=DM.qrygsd.FieldByName('质量要求').AsString;
    mmo4.Text:=DM.qrygsd.FieldByName('备注').AsString;
    btnSave.Tag:=3;
  end;
end;

procedure Tfrmgslxdlr.btnSaveClick(Sender: TObject);
begin
    if self.Tag=1 then
  begin
      try
      with DM.qrygsdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 购纱联系单(购纱单编号,客户采购订单号,执行部门,品种编号,外购纱线,外购静电丝,质量要求,到纱日期,备注,录入人,录入日期)');
        SQL.Add('values(:gsdbh,:khcgddh,:zxbm,:pzbh,:wgsx,:wgjds,:zlyq,:dsrq,:bz,:lrr,:lrrq)');
        Parameters.ParamByName('gsdbh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khcgddh').Value:=trim(edt1.Text);
        Parameters.ParamByName('zxbm').Value:=trim(edt2.Text);
        Parameters.ParamByName('pzbh').Value:=trim(mmo5.Text);
        Parameters.ParamByName('wgsx').Value:=trim(mmo1.Text);
        Parameters.ParamByName('wgjds').Value:=trim(mmo2.Text);
        Parameters.ParamByName('zlyq').Value:=trim(mmo3.Text);
        Parameters.ParamByName('dsrq').Value:= formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('bz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmgslxd.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qrygsd do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from V_购纱工作联系单 ');
          Open;
        end;
    end;
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   end;
       if self.Tag=2 then
  begin
      try
      with DM.qrygsdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update 购纱联系单 set 购纱单编号=:gsdbh,客户采购订单号=:khcgddh,执行部门=:zxbm,品种编号=:pzbh,外购纱线=:wgsx,外购静电丝=:wgjds,质量要求=:zlyq,到纱日期=:dsrq,备注=:bz,录入人=:lrr,录入日期=:lrrq  where 编号=:bh');
        Parameters.ParamByName('gsdbh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khcgddh').Value:=trim(edt1.Text);
        Parameters.ParamByName('zxbm').Value:=trim(edt2.Text);
        Parameters.ParamByName('pzbh').Value:=trim(mmo5.Text);
        Parameters.ParamByName('wgsx').Value:=trim(mmo1.Text);
        Parameters.ParamByName('wgjds').Value:=trim(mmo2.Text);
        Parameters.ParamByName('zlyq').Value:=trim(mmo3.Text);
        Parameters.ParamByName('dsrq').Value:= formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('bz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmgslxd.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        Parameters.ParamByName('bh').Value:=DM.qrygsd.FieldByName('编号').AsString;
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
      with DM.qrygsd do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from V_购纱工作联系单 ');
        Open;
      end;
    end;
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   end;
    if self.Tag=3 then
  begin
      try
      with DM.qrygsdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 购纱联系单(购纱单编号,客户采购订单号,执行部门,品种编号,外购纱线,外购静电丝,质量要求,到纱日期,备注,录入人,录入日期)');
        SQL.Add('values(:gsdbh,:khcgddh,:zxbm,:pzbh,:wgsx,:wgjds,:zlyq,:dsrq,:bz,:lrr,:lrrq)');
        Parameters.ParamByName('gsdbh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khcgddh').Value:=trim(edt1.Text);
        Parameters.ParamByName('zxbm').Value:=trim(edt2.Text);
        Parameters.ParamByName('pzbh').Value:=trim(mmo5.Text);
        Parameters.ParamByName('wgsx').Value:=trim(mmo1.Text);
        Parameters.ParamByName('wgjds').Value:=trim(mmo2.Text);
        Parameters.ParamByName('zlyq').Value:=trim(mmo3.Text);
        Parameters.ParamByName('dsrq').Value:= formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('bz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmgslxd.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qrygsd do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from V_购纱工作联系单 ');
          Open;
        end;
    end;
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   end;
   self.close;
   end;
   
end.
