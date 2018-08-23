unit gys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzTabs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, cxLabel, cxTextEdit, cxCalc,
  cxBlobEdit, cxGridCustomTableView, cxGridCardView, cxGridDBCardView,
  StdCtrls, RzEdit, RzButton, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, RzLabel, RzPanel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, frxClass, frxDBSet,
  frxGradient, frxRich, ADODB, frxExportXLS,IniFiles;

type
  TFrmGYS = class(TForm)
    rzpgcntrlSupplier: TRzPageControl;
    rztbshtSSupplier: TRzTabSheet;
    rztbshtMSupplier: TRzTabSheet;
    RzPanel1: TRzPanel;
    cxgrdMSupplier: TcxGrid;
    cxgrdbcrdvwMSupplier: TcxGridDBCardView;
    cxgrdlvlMSupplier: TcxGridLevel;
    cxstylrpstry1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet;
    cxgrdbcrdvwrwMSupplierID: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMSupplierName: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMAddress: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMZipCode: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMContacter: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMContacterTel: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMBank: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMBankAccount: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwMMemo: TcxGridDBCardViewRow;
    frxrprt1: TfrxReport;
    frxrchbjct1: TfrxRichObject;
    frxgrdntbjct1: TfrxGradientObject;
    frxdbdtstMSupplier: TfrxDBDataset;
    RzPanel3: TRzPanel;
    cxgrdSSupplier: TcxGrid;
    cxgrdbcrdvwSSupplier: TcxGridDBCardView;
    cxgrdlvlSSupplier: TcxGridLevel;
    cxgrdbcrdvwrwSSupplierID: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSSupplierName: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSAddress: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSZipCode: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSContacter: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSContacterTel: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSBank: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSBankAccount: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwSMemo: TcxGridDBCardViewRow;
    frxdbdtstSsupplier: TfrxDBDataset;
    cxStyle4: TcxStyle;
    rzgrpbxSInput: TRzGroupBox;
    lblSSupplierName: TRzLabel;
    lblSAddress: TRzLabel;
    lblSZipCode: TRzLabel;
    lblSContacter: TRzLabel;
    lblSContacterTel: TRzLabel;
    lblSBank: TRzLabel;
    lblSBankAccount: TRzLabel;
    lblSMemo: TRzLabel;
    rzdtSSupplierName: TRzEdit;
    rzdtSAddress: TRzEdit;
    rzdtSZipCode: TRzEdit;
    rzdtSContacter: TRzEdit;
    rzdtSContacterTel: TRzEdit;
    rzdtSBank: TRzEdit;
    rzdtSBankAccount: TRzEdit;
    rzpnlSBtns: TRzPanel;
    rzbtbtnSAdd: TRzBitBtn;
    rzbtbtnSSave: TRzBitBtn;
    rzbtbtnSCancel: TRzBitBtn;
    rzbtbtnSPrint: TRzBitBtn;
    rzbtbtnSExit: TRzBitBtn;
    rzmSMemo: TRzMemo;
    rzgrpbxMInput: TRzGroupBox;
    lblMSupplierName: TRzLabel;
    lblMAddress: TRzLabel;
    lblMZipCode: TRzLabel;
    lblMContacter: TRzLabel;
    lblMContacterTel: TRzLabel;
    lblMBank: TRzLabel;
    lblMBankAccount: TRzLabel;
    lblMMemo: TRzLabel;
    rzdtMSupplierName: TRzEdit;
    rzdtMAddress: TRzEdit;
    rzdtMZipCode: TRzEdit;
    rzdtMContacter: TRzEdit;
    rzdtMContacterTel: TRzEdit;
    rzdtMBank: TRzEdit;
    rzdtMBankAccount: TRzEdit;
    rzmMMemo: TRzMemo;
    rzbtbtnSModify: TRzBitBtn;
    rzbtbtnSDelete: TRzBitBtn;
    rzbtbtnSQuery: TRzBitBtn;
    rzpnlMBtns: TRzPanel;
    rzbtbtnMAdd: TRzBitBtn;
    rzbtbtnMSave: TRzBitBtn;
    rzbtbtnMCancel: TRzBitBtn;
    rzbtbtnMPrint: TRzBitBtn;
    rzbtbtnMExit: TRzBitBtn;
    rzbtbtnMModify: TRzBitBtn;
    rzbtbtnMDelete: TRzBitBtn;
    rzbtbtnMQuery: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure frxrprtSSupplierGetValue(const VarName: String;
      var Value: Variant);
    procedure rzbtbtnSAddClick(Sender: TObject);
    procedure rzbtbtnSSaveClick(Sender: TObject);
    procedure rzbtbtnSCancelClick(Sender: TObject);
    procedure rzbtbtnSPrintClick(Sender: TObject);
    procedure rzbtbtnSExitClick(Sender: TObject);
    procedure rzbtbtnMAddClick(Sender: TObject);
    procedure rzbtbtnMSaveClick(Sender: TObject);
    procedure rzbtbtnMCancelClick(Sender: TObject);
    procedure rzbtbtnMPrintClick(Sender: TObject);
    procedure rzbtbtnMExitClick(Sender: TObject);
    procedure rzbtbtnSQueryClick(Sender: TObject);
    procedure rzbtbtnSModifyClick(Sender: TObject);
    procedure rzbtbtnSDeleteClick(Sender: TObject);
    procedure rzbtbtnMQueryClick(Sender: TObject);
    procedure rzbtbtnMModifyClick(Sender: TObject);
    procedure rzbtbtnMDeleteClick(Sender: TObject);
  private
    { Private declarations }
    function auto(ADOQuery1:TADOQuery):string;
  public
    { Public declarations }
  end;

var
  user,Dep:string;  //录入人和所在部门
  autombh,autosbh:string;//自动生成的棉和纱供应商编号
  lFile:TiniFile;
  FrmGYS: TFrmGYS;
  procedure pgys(AHandle:THandle);stdcall;


implementation

{$R *.dfm}
uses UDM,gyscz;

procedure pgys(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmGYS:=TFrmGYS.Create(Application);
  try
    FrmGYS.ShowModal;
  finally
    TFrmGYS(FrmGYS).Free;
  end;
end;

function TFrmGYS.auto(ADOQuery1:TADOQuery):string;
var
  s,gysbh:string;
begin
  if  not ADOQuery1.Eof then
  begin
    ADOQuery1.Last;
    s:= Copy(ADOQuery1.FieldByName('供应商编号').AsString,1,4);
    gysbh:=s+Format('%.3d',[(StrToInt(Copy(ADOQuery1.FieldByName('供应商编号').AsString,5,3))+1)]);
  end
  else
  begin
    gysbh:='GYS-001';
  end;
  result:=gysbh;
end;

procedure TFrmGYS.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
  DM.qryMSupplier.Active:=True;
  DM.qrySSupplier.Active:=True;
end;

procedure TFrmGYS.frxrprtSSupplierGetValue(const VarName: String;
  var Value: Variant);
begin
 if VarName='打印人' then   //在打印页面显示打印人信息
  begin
    Value:=user;
  end;
  if VarName='部门' then   //在打印页面显示打印人所在部门信息
  begin
    Value:=Dep;
  end;
end;

procedure TFrmGYS.rzbtbtnSAddClick(Sender: TObject);
begin
  rzgrpbxSInput.Tag:=1;
  rzdtSSupplierName.Enabled:=True;
  rzdtSSupplierName.SetFocus;
  rzdtSZipCode.Enabled:=True;
  rzdtSAddress.Enabled:=True;
  rzdtSContacter.Enabled:=True;
  rzdtSContacterTel.Enabled:=True;
  rzdtSBank.Enabled:=True;
  rzdtSBankAccount.Enabled:=True;
  rzmSMemo.Enabled:=True;
  rzbtbtnSQuery.Enabled:=False;
  rzbtbtnSAdd.Enabled:=False;
  rzbtbtnSSave.Enabled:=True;
  rzbtbtnSCancel.Enabled:=True;
  rzbtbtnSModify.Enabled:=False;
  rzbtbtnSDelete.Enabled:=False;
  rzbtbtnSPrint.Enabled:=False;
end;

procedure TFrmGYS.rzbtbtnSSaveClick(Sender: TObject);
begin
  if((Trim(rzdtSSupplierName.Text)=''))
  then
  begin
    Application.MessageBox('请输入供应商名称!','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
   case rzgrpbxSInput.Tag of
   1:begin
      autosbh:=auto(DM.qrySSupplier);
      try
        with DM.qrySSupplier do
        begin
          Edit;
          Insert;
          FieldByName('供应商编号').AsString:=autosbh;
          FieldByName('供应商名称').AsString:=Trim(rzdtSSupplierName.Text);
          FieldByName('供应商地址').AsString:=Trim(rzdtSAddress.Text);
          FieldByName('供应商邮编').AsString:=Trim(rzdtSZipCode.Text);
          FieldByName('联系人').AsString:=Trim(rzdtSContacter.Text);
          FieldByName('联系人电话').AsString:=Trim(rzdtSContacterTel.Text);
          FieldByName('开户银行').AsString:=Trim(rzdtSBank.Text);
          FieldByName('银行账号').AsString:=Trim(rzdtSBankAccount.Text);
          FieldByName('备注').AsString:=Trim(rzmSMemo.Text);
          Refresh;
          application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
     end;
   2:begin
      try
        with DM.qrySSupplierModify do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update 纱供应商信息表 set 供应商名称=:gysmc,供应商邮编=:gysyb,供应商地址=:gysdz,联系人=:lxr,联系人电话=:lxrdh,开户银行=:khyh,银行账号=:yhzh,备注=:bz where 供应商编号=:gysbh ');
          Parameters.ParamByName('gysmc').Value:=Trim(rzdtSSupplierName.Text);
          Parameters.ParamByName('gysyb').Value:=Trim(rzdtSZipCode.Text);
          Parameters.ParamByName('gysdz').Value:=Trim(rzdtSAddress.Text);
          Parameters.ParamByName('lxr').Value:=Trim(rzdtSContacter.Text);
          Parameters.ParamByName('lxrdh').Value:=Trim(rzdtSContacterTel.Text);
          Parameters.ParamByName('khyh').Value:=Trim(rzdtSBank.Text);
          Parameters.ParamByName('yhzh').Value:=Trim(rzdtSBankAccount.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmSMemo.Text);
          Parameters.ParamByName('gysbh').Value:=DM.qrySSupplier.FieldByName('供应商编号').AsString;
          ExecSQL;
          DM.qrySSupplier.Refresh;
          application.MessageBox('修改成功!','提示',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('修改失败，请核查原因!','提示',MB_OK+MB_ICONERROR);
      end;
     end;
    end;
    rzdtSSupplierName.Text:='';
    rzdtSSupplierName.Enabled:=False;
    rzdtSZipCode.Text:='';
    rzdtSZipCode.Enabled:=False;
    rzdtSAddress.Text:='';
    rzdtSAddress.Enabled:=False;
    rzdtSContacter.text:='';
    rzdtSContacter.Enabled:=False;
    rzdtSContacterTel.Text:='';
    rzdtSContacterTel.Enabled:=False;
    rzdtSBank.Text:='';
    rzdtSBank.Enabled:=False;
    rzdtSBankAccount.Text:='';
    rzdtSBankAccount.Enabled:=False;
    rzmSMemo.Text:='';
    rzmSMemo.Enabled:=False;
    rzbtbtnSQuery.Enabled:=True;
    rzbtbtnSAdd.Enabled:=True;
    rzbtbtnSSave.Enabled:=False;
    rzbtbtnSCancel.Enabled:=False;
    rzbtbtnSModify.Enabled:=True;
    rzbtbtnSDelete.Enabled:=True;
    rzbtbtnSPrint.Enabled:=True;
  end;
end;

procedure TFrmGYS.rzbtbtnSCancelClick(Sender: TObject);
begin
  rzdtSSupplierName.Text:='';
  rzdtSSupplierName.Enabled:=False;
  rzdtSZipCode.Text:='';
  rzdtSZipCode.Enabled:=False;
  rzdtSAddress.Text:='';
  rzdtSAddress.Enabled:=False;
  rzdtSContacter.text:='';
  rzdtSContacter.Enabled:=False;
  rzdtSContacterTel.Text:='';
  rzdtSContacterTel.Enabled:=False;
  rzdtSBank.Text:='';
  rzdtSBank.Enabled:=False;
  rzdtSBankAccount.Text:='';
  rzdtSBankAccount.Enabled:=False;
  rzmSMemo.Text:='';
  rzmSMemo.Enabled:=False;
  rzbtbtnSQuery.Enabled:=True;
  rzbtbtnSAdd.Enabled:=True;
  rzbtbtnSSave.Enabled:=False;
  rzbtbtnSCancel.Enabled:=False;
  rzbtbtnSModify.Enabled:=True;
  rzbtbtnSDelete.Enabled:=True;
  rzbtbtnSPrint.Enabled:=True;
end;

procedure TFrmGYS.rzbtbtnSPrintClick(Sender: TObject);
begin
  DM.qrySSupplier.Filtered:=True;
  DM.qrySSupplier.Filter:=cxgrdbcrdvwSSupplier.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\SSupplier.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\SSupplier.fr3');
    frxrprt1.PrepareReport();
    frxrprt1.ShowReport(True);
  except
    Application.MessageBox('无法打印，请核查原因！','提示',MB_OK+MB_ICONERROR);
    DM.qrySSupplier.Filtered:=False;
  end;
end;

procedure TFrmGYS.rzbtbtnSExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmGYS.rzbtbtnMAddClick(Sender: TObject);
begin
  rzgrpbxMInput.Tag:=1;
  rzdtMSupplierName.Enabled:=True;
  rzdtMSupplierName.SetFocus;
  rzdtMZipCode.Enabled:=True;
  rzdtMAddress.Enabled:=True;
  rzdtMContacter.Enabled:=True;
  rzdtMContacterTel.Enabled:=True;
  rzdtMBank.Enabled:=True;
  rzdtMBankAccount.Enabled:=True;
  rzmMMemo.Enabled:=True;
  rzbtbtnMQuery.Enabled:=False;
  rzbtbtnMAdd.Enabled:=False;
  rzbtbtnMSave.Enabled:=True;
  rzbtbtnMCancel.Enabled:=True;
  rzbtbtnMModify.Enabled:=False;
  rzbtbtnMDelete.Enabled:=False;
  rzbtbtnMPrint.Enabled:=False;
end;

procedure TFrmGYS.rzbtbtnMSaveClick(Sender: TObject);
begin
  if((Trim(rzdtMSupplierName.Text)=''))
  then
  begin
    Application.MessageBox('请输入供应商名称!','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
   case rzgrpbxMInput.Tag of
   1:begin
      autombh:=auto(DM.qryMSupplier);
      try
        with DM.qryMSupplier do
        begin
          Edit;
          Insert;
          FieldByName('供应商编号').AsString:=autombh;
          FieldByName('供应商名称').AsString:=Trim(rzdtMSupplierName.Text);
          FieldByName('供应商地址').AsString:=Trim(rzdtMAddress.Text);
          FieldByName('供应商邮编').AsString:=Trim(rzdtMZipCode.Text);
          FieldByName('联系人').AsString:=Trim(rzdtMContacter.Text);
          FieldByName('联系人电话').AsString:=Trim(rzdtMContacterTel.Text);
          FieldByName('开户银行').AsString:=Trim(rzdtMBank.Text);
          FieldByName('银行账号').AsString:=Trim(rzdtMBankAccount.Text);
          FieldByName('备注').AsString:=Trim(rzmMMemo.Text);
          Refresh;
          application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
     end;
   2:begin
      try
        with DM.qryMSupplierModify do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update 棉供应商信息表 set 供应商名称=:gysmc,供应商邮编=:gysyb,供应商地址=:gysdz,联系人=:lxr,联系人电话=:lxrdh,开户银行=:khyh,银行账号=:yhzh,备注=:bz where 供应商编号=:gysbh ');
          Parameters.ParamByName('gysmc').Value:=Trim(rzdtMSupplierName.Text);
          Parameters.ParamByName('gysyb').Value:=Trim(rzdtMZipCode.Text);
          Parameters.ParamByName('gysdz').Value:=Trim(rzdtMAddress.Text);
          Parameters.ParamByName('lxr').Value:=Trim(rzdtMContacter.Text);
          Parameters.ParamByName('lxrdh').Value:=Trim(rzdtMContacterTel.Text);
          Parameters.ParamByName('khyh').Value:=Trim(rzdtMBank.Text);
          Parameters.ParamByName('yhzh').Value:=Trim(rzdtMBankAccount.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmMMemo.Text);
          Parameters.ParamByName('gysbh').Value:=DM.qryMSupplier.FieldByName('供应商编号').AsString;
          ExecSQL;
          DM.qryMSupplier.Refresh;
          application.MessageBox('修改成功!','提示',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('修改失败，请核查原因!','提示',MB_OK+MB_ICONERROR);
      end;
     end;
    end;
    rzdtMSupplierName.Text:='';
    rzdtMSupplierName.Enabled:=False;
    rzdtMZipCode.Text:='';
    rzdtMZipCode.Enabled:=False;
    rzdtMAddress.Text:='';
    rzdtMAddress.Enabled:=False;
    rzdtMContacter.text:='';
    rzdtMContacter.Enabled:=False;
    rzdtMContacterTel.Text:='';
    rzdtMContacterTel.Enabled:=False;
    rzdtMBank.Text:='';
    rzdtMBank.Enabled:=False;
    rzdtMBankAccount.Text:='';
    rzdtMBankAccount.Enabled:=False;
    rzmMMemo.Text:='';
    rzmMMemo.Enabled:=False;
    rzbtbtnMQuery.Enabled:=True;
    rzbtbtnMAdd.Enabled:=True;
    rzbtbtnMSave.Enabled:=False;
    rzbtbtnMCancel.Enabled:=False;
    rzbtbtnMModify.Enabled:=True;
    rzbtbtnMDelete.Enabled:=True;
    rzbtbtnMPrint.Enabled:=True;
  end;
end;

procedure TFrmGYS.rzbtbtnMCancelClick(Sender: TObject);
begin
  rzdtMSupplierName.Text:='';
  rzdtMSupplierName.Enabled:=False;
  rzdtMZipCode.Text:='';
  rzdtMZipCode.Enabled:=False;
  rzdtMAddress.Text:='';
  rzdtMAddress.Enabled:=False;
  rzdtMContacter.text:='';
  rzdtMContacter.Enabled:=False;
  rzdtMContacterTel.Text:='';
  rzdtMContacterTel.Enabled:=False;
  rzdtMBank.Text:='';
  rzdtMBank.Enabled:=False;
  rzdtMBankAccount.Text:='';
  rzdtMBankAccount.Enabled:=False;
  rzmMMemo.Text:='';
  rzmMMemo.Enabled:=False;
  rzbtbtnMQuery.Enabled:=True;
  rzbtbtnMAdd.Enabled:=True;
  rzbtbtnMSave.Enabled:=False;
  rzbtbtnMCancel.Enabled:=False;
  rzbtbtnMModify.Enabled:=True;
  rzbtbtnMDelete.Enabled:=True;
  rzbtbtnMPrint.Enabled:=True;
end;

procedure TFrmGYS.rzbtbtnMPrintClick(Sender: TObject);
begin
  DM.qryMSupplier.Filtered:=True;
  DM.qryMSupplier.Filter:=cxgrdbcrdvwMSupplier.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\MSupplier.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\MSupplier.fr3');
    frxrprt1.PrepareReport();
    frxrprt1.ShowReport(True);
  except
    Application.MessageBox('无法打印，请核查原因！','提示',MB_OK+MB_ICONERROR);
    DM.qryMSupplier.Filtered:=False;
  end;
end;

procedure TFrmGYS.rzbtbtnMExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmGYS.rzbtbtnSQueryClick(Sender: TObject);
begin
  FrmGYSCZ:=TFrmGYSCZ.Create(Self);
  FrmGYSCZ.Tag:=1;
  FrmGYSCZ.ShowModal;
  FreeAndNil(FrmGYSCZ);
end;

procedure TFrmGYS.rzbtbtnSModifyClick(Sender: TObject);
begin
  if cxgrdbcrdvwSSupplier.ViewData.CardCount>0 then
  begin
    rzgrpbxSInput.Tag:=2;
    rzdtSSupplierName.Enabled:=True;
    rzdtSSupplierName.Text:=DM.qrySSupplier.FieldByName('供应商名称').AsString;
    rzdtSSupplierName.SetFocus;
    rzdtSZipCode.Enabled:=True;
    rzdtSZipCode.Text:=DM.qrySSupplier.FieldByName('供应商邮编').AsString;
    rzdtSAddress.Enabled:=True;
    rzdtSAddress.Text:=DM.qrySSupplier.FieldByName('供应商地址').AsString;
    rzdtSContacter.Enabled:=True;
    rzdtSContacter.Text:=DM.qrySSupplier.FieldByName('联系人').AsString;
    rzdtSContacterTel.Enabled:=True;
    rzdtSContacterTel.Text:=DM.qrySSupplier.FieldByName('联系人电话').AsString;
    rzdtSBank.Enabled:=True;
    rzdtSBank.Text:=DM.qrySSupplier.FieldByName('开户银行').AsString;
    rzdtSBankAccount.Enabled:=True;
    rzdtSBankAccount.Text:=DM.qrySSupplier.FieldByName('银行账号').AsString;
    rzmSMemo.Enabled:=True;
    rzmSMemo.Text:=DM.qrySSupplier.FieldByName('备注').AsString;
    rzbtbtnSQuery.Enabled:=False;
    rzbtbtnSAdd.Enabled:=False;
    rzbtbtnSSave.Enabled:=True;
    rzbtbtnSCancel.Enabled:=True;
    rzbtbtnSModify.Enabled:=False;
    rzbtbtnSDelete.Enabled:=False;
    rzbtbtnSPrint.Enabled:=False;
  end
  else
  begin
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmGYS.rzbtbtnSDeleteClick(Sender: TObject);
begin
  if cxgrdbcrdvwSSupplier.ViewData.CardCount>0 then
  begin
   if Application.MessageBox('确定删除该供应商信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
     DM.qrySSupplier.Delete;
     Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
    except
     Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
   end;
  end
  else
  begin
    Application.MessageBox('没有可以删除的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmGYS.rzbtbtnMQueryClick(Sender: TObject);
begin
  FrmGYSCZ:=TFrmGYSCZ.Create(Self);
  FrmGYSCZ.Tag:=2;
  FrmGYSCZ.ShowModal;
  FreeAndNil(FrmGYSCZ);
end;

procedure TFrmGYS.rzbtbtnMModifyClick(Sender: TObject);
begin
  if cxgrdbcrdvwMSupplier.ViewData.CardCount>0 then
  begin
    rzgrpbxMInput.Tag:=2;
    rzdtMSupplierName.Enabled:=True;
    rzdtMSupplierName.Text:=DM.qryMSupplier.FieldByName('供应商名称').AsString;
    rzdtMSupplierName.SetFocus;
    rzdtMZipCode.Enabled:=True;
    rzdtMZipCode.Text:=DM.qryMSupplier.FieldByName('供应商邮编').AsString;
    rzdtMAddress.Enabled:=True;
    rzdtMAddress.Text:=DM.qryMSupplier.FieldByName('供应商地址').AsString;
    rzdtMContacter.Enabled:=True;
    rzdtMContacter.Text:=DM.qryMSupplier.FieldByName('联系人').AsString;
    rzdtMContacterTel.Enabled:=True;
    rzdtMContacterTel.Text:=DM.qryMSupplier.FieldByName('联系人电话').AsString;
    rzdtMBank.Enabled:=True;
    rzdtMBank.Text:=DM.qryMSupplier.FieldByName('开户银行').AsString;
    rzdtMBankAccount.Enabled:=True;
    rzdtMBankAccount.Text:=DM.qryMSupplier.FieldByName('银行账号').AsString;
    rzmMMemo.Enabled:=True;
    rzmMMemo.Text:=DM.qryMSupplier.FieldByName('备注').AsString;
    rzbtbtnMQuery.Enabled:=False;
    rzbtbtnMAdd.Enabled:=False;
    rzbtbtnMSave.Enabled:=True;
    rzbtbtnMCancel.Enabled:=True;
    rzbtbtnMModify.Enabled:=False;
    rzbtbtnMDelete.Enabled:=False;
    rzbtbtnMPrint.Enabled:=False;
  end;
end;

procedure TFrmGYS.rzbtbtnMDeleteClick(Sender: TObject);
begin
  if cxgrdbcrdvwMSupplier.ViewData.CardCount>0 then
  begin
   if Application.MessageBox('确定删除该供应商信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
     DM.qryMSupplier.Delete;
     Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
    except
     Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
   end;
  end;
end;

end.
