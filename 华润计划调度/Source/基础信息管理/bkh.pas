unit bkh;

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
  frxGradient, frxRich, ADODB, frxExportXLS,IniFiles, ImgList, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBKH = class(TForm)
    rzpnl1: TRzPanel;
    frxrprtBCustomer: TfrxReport;
    frxdbdtstBCustomer: TfrxDBDataset;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxgrdcrdvwstylsht1: TcxGridCardViewStyleSheet;
    frxrchbjct1: TfrxRichObject;
    frxgrdntbjct1: TfrxGradientObject;
    RzPanel1: TRzPanel;
    cxgrdBCustomer: TcxGrid;
    cxgrdbcrdvwBCustomer: TcxGridDBCardView;
    cxgrdbcrdvwrwBCustomerID: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwBCustomerName: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwBAddress: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwBZipCode: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwBTel: TcxGridDBCardViewRow;
    cxgrdlvlBCustomer: TcxGridLevel;
    rzgrpbxBInput: TRzGroupBox;
    lblBAddress: TRzLabel;
    lblBZipCode: TRzLabel;
    lblBTel: TRzLabel;
    lblBFax: TRzLabel;
    lblBBank: TRzLabel;
    lblBBankAccount: TRzLabel;
    lblBMemo: TRzLabel;
    rzdtBCustomerName: TRzEdit;
    rzdtBAddress: TRzEdit;
    rzdtBZipCode: TRzEdit;
    rzdtBTel: TRzEdit;
    rzdtBFax: TRzEdit;
    rzdtBBank: TRzEdit;
    rzmBMemo: TRzMemo;
    cxgrdbcrdvwrwBFax: TcxGridDBCardViewRow;
    rzmBBankAccount: TRzMemo;
    cxgrdbcrdvwrwBBank: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwBBankAccount: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwBMemo: TcxGridDBCardViewRow;
    rzpnlBBtns: TRzPanel;
    btnBQuery: TRzToolButton;
    btnBAdd: TRzToolButton;
    btnBSave: TRzToolButton;
    btnBCancel: TRzToolButton;
    btnBModify: TRzToolButton;
    btnBDelete: TRzToolButton;
    btnBPrint: TRzToolButton;
    btnBExit: TRzToolButton;
    lblBCustomerName: TRzLabel;
    frxXLSExport1: TfrxXLSExport;
    ImageList1: TImageList;
    procedure rzbtbtnBQueryClick(Sender: TObject);
    procedure rzbtbtnBAddClick(Sender: TObject);
    procedure rzbtbtnBSaveClick(Sender: TObject);
    procedure rzbtbtnBCancelClick(Sender: TObject);
    procedure rzbtbtnBModifyClick(Sender: TObject);
    procedure rzbtbtnBDeleteClick(Sender: TObject);
    procedure rzbtbtnBPrintClick(Sender: TObject);
    procedure rzbtbtnBExitClick(Sender: TObject);
    procedure frxrprtBCustomerGetValue(const VarName: String; var Value: Variant);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function auto(ADOQuery1:TADOQuery):string;
  public
    { Public declarations }
  end;

var
  user,Dep:string;  //录入人和所在部门
  lFile:TiniFile;
  FrmBKH: TFrmBKH;
  procedure pbkh(AHandle:THandle);stdcall;

implementation
uses UDM,khcz;

{$R *.dfm}

procedure pbkh(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBKH:=TFrmBKH.Create(Application);
  try
    FrmBKH.ShowModal;
  finally
    TFrmBKH(FrmBKH).Free;
  end;
end;

function TFrmBKH.auto(ADOQuery1:TADOQuery):string;
var
  s,khh:string;
begin
  if ADOQuery1.RecordCount>0 then
  begin
    ADOQuery1.Last;
    s:= Copy(ADOQuery1.FieldByName('客户号').AsString,1,3);
    khh:=s+Format('%.3d',[(StrToInt(Copy(ADOQuery1.FieldByName('客户号').AsString,4,3))+1)]);
  end
  else
  begin
    khh:='KH-001';
  end;
  result:=khh;
end;

procedure TFrmBKH.rzbtbtnBQueryClick(Sender: TObject);
begin
  FrmKHCZ:=TFrmKHCZ.Create(Self);
  FrmKHCZ.Tag:=1;
  FrmKHCZ.ShowModal;
  FreeAndNil(FrmKHCZ);
end;

procedure TFrmBKH.rzbtbtnBAddClick(Sender: TObject);
begin
  rzgrpbxBInput.Tag:=1;
  rzdtBCustomerName.Enabled:=True;
  rzdtBCustomerName.SetFocus;
  rzdtBZipCode.Enabled:=True;
  rzdtBAddress.Enabled:=True;
  rzdtBTel.Enabled:=True;
  rzdtBFax.Enabled:=True;
  rzdtBBank.Enabled:=True;
  rzmBBankAccount.Enabled:=True;
  rzmBMemo.Enabled:=True;
  btnBQuery.Enabled:=False;
  btnBAdd.Enabled:=False;
  btnBSave.Enabled:=True;
  btnBCancel.Enabled:=True;
  btnBModify.Enabled:=False;
  btnBDelete.Enabled:=False;
  btnBPrint.Enabled:=False;
end;

procedure TFrmBKH.rzbtbtnBSaveClick(Sender: TObject);
var
  autobbh:string;//自动生成的购布客户编号
begin
  if((Trim(rzdtBCustomerName.Text)='')) then
  begin
    Application.MessageBox('请输入客户名称!','提示',MB_OK+MB_ICONINFORMATION);
  end
  else
  begin
   case rzgrpbxBInput.Tag of
   1:begin
      autobbh:=auto(DM.qryBCustomer);
      try
        with DM.qryBCustomer do
        begin
          Edit;
          Insert;
          FieldByName('客户号').AsString:=autobbh;
          FieldByName('客户名称').AsString:=Trim(rzdtBCustomerName.Text);
          FieldByName('地址').AsString:=Trim(rzdtBAddress.Text);
          FieldByName('邮编').AsString:=Trim(rzdtBZipCode.Text);
          FieldByName('电话').AsString:=Trim(rzdtBTel.Text);
          FieldByName('传真').AsString:=Trim(rzdtBFax.Text);
          FieldByName('开户银行').AsString:=Trim(rzdtBBank.Text);
          FieldByName('银行账号').AsString:=Trim(rzmBBankAccount.Text);
          FieldByName('备注').AsString:=Trim(rzmBMemo.Text);
          Refresh;
          application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
     end;
   2:begin
      try
        with DM.qryBCustomerModify do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update 购布客户信息表 set 客户名称=:khmc,邮编=:khyb,地址=:khdz,电话=:dh,传真=:cz,开户银行=:khyh,银行账号=:yhzh,备注=:bz where 客户号=:khbh ');
          Parameters.ParamByName('khmc').Value:=Trim(rzdtBCustomerName.Text);
          Parameters.ParamByName('khyb').Value:=Trim(rzdtBZipCode.Text);
          Parameters.ParamByName('khdz').Value:=Trim(rzdtBAddress.Text);
          Parameters.ParamByName('dh').Value:=Trim(rzdtBTel.Text);
          Parameters.ParamByName('cz').Value:=Trim(rzdtBFax.Text);
          Parameters.ParamByName('khyh').Value:=Trim(rzdtBBank.Text);
          Parameters.ParamByName('yhzh').Value:=Trim(rzmBBankAccount.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmBMemo.Text);
          Parameters.ParamByName('khbh').Value:=DM.qryBCustomer.FieldByName('客户号').AsString;
          ExecSQL;
          DM.qryBCustomer.Refresh;
          application.MessageBox('修改成功!','提示',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('修改失败，请核查原因!','提示',MB_OK+MB_ICONERROR);
      end;
     end;
    end;
    rzdtBCustomerName.Text:='';
    rzdtBCustomerName.Enabled:=False;
    rzdtBZipCode.Text:='';
    rzdtBZipCode.Enabled:=False;
    rzdtBAddress.Text:='';
    rzdtBAddress.Enabled:=False;
    rzdtBTel.Text:='';
    rzdtBTel.Enabled:=False;
    rzdtBFax.Text:='';
    rzdtBFax.Enabled:=False;
    rzdtBBank.Text:='';
    rzdtBBank.Enabled:=False;
    rzmBBankAccount.Text:='';
    rzmBBankAccount.Enabled:=False;
    rzmBMemo.Text:='';
    rzmBMemo.Enabled:=False;
    btnBQuery.Enabled:=True;
    btnBAdd.Enabled:=True;
    btnBSave.Enabled:=False;
    btnBCancel.Enabled:=False;
    btnBModify.Enabled:=True;
    btnBDelete.Enabled:=True;
    btnBPrint.Enabled:=True;
  end;
end;

procedure TFrmBKH.rzbtbtnBCancelClick(Sender: TObject);
begin
  rzdtBCustomerName.Text:='';
  rzdtBCustomerName.Enabled:=False;
  rzdtBZipCode.Text:='';
  rzdtBZipCode.Enabled:=False;
  rzdtBAddress.Text:='';
  rzdtBAddress.Enabled:=False;
  rzdtBTel.Text:='';
  rzdtBTel.Enabled:=False;
  rzdtBFax.Text:='';
  rzdtBFax.Enabled:=False;
  rzdtBBank.Text:='';
  rzdtBBank.Enabled:=False;
  rzmBBankAccount.Text:='';
  rzmBBankAccount.Enabled:=False;
  rzmBMemo.Text:='';
  rzmBMemo.Enabled:=False;
  btnBQuery.Enabled:=True;
  btnBAdd.Enabled:=True;
  btnBSave.Enabled:=False;
  btnBCancel.Enabled:=False;
  btnBModify.Enabled:=True;
  btnBDelete.Enabled:=True;
  btnBPrint.Enabled:=True;
end;

procedure TFrmBKH.rzbtbtnBModifyClick(Sender: TObject);
begin
  if cxgrdbcrdvwBCustomer.ViewData.CardCount>0 then
  begin
    rzgrpbxBInput.Tag:=2;
    rzdtBCustomerName.Enabled:=True;
    rzdtBCustomerName.Text:=DM.qryBCustomer.FieldByName('客户名称').AsString;
    rzdtBCustomerName.SetFocus;
    rzdtBZipCode.Enabled:=True;
    rzdtBZipCode.Text:=DM.qryBCustomer.FieldByName('邮编').AsString;
    rzdtBAddress.Enabled:=True;
    rzdtBAddress.Text:=DM.qryBCustomer.FieldByName('地址').AsString;
    rzdtBTel.Enabled:=True;
    rzdtBTel.Text:=DM.qryBCustomer.FieldByName('电话').AsString;
    rzdtBFax.Enabled:=True;
    rzdtBFax.Text:=DM.qryBCustomer.FieldByName('传真').AsString;
    rzdtBBank.Enabled:=True;
    rzdtBBank.Text:=DM.qryBCustomer.FieldByName('开户银行').AsString;
    rzmBBankAccount.Enabled:=True;
    rzmBBankAccount.Text:=DM.qryBCustomer.FieldByName('银行账号').AsString;
    rzmBMemo.Enabled:=True;
    rzmBMemo.Text:=DM.qryBCustomer.FieldByName('备注').AsString;
    btnBQuery.Enabled:=False;
    btnBAdd.Enabled:=False;
    btnBSave.Enabled:=True;
    btnBCancel.Enabled:=True;
    btnBModify.Enabled:=False;
    btnBDelete.Enabled:=False;
    btnBPrint.Enabled:=False;
  end
  else
  begin
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
  if cxgrdbcrdvwBCustomer.ViewData.CardCount>0 then
  begin
    rzgrpbxBInput.Tag:=2;
    rzdtBCustomerName.Enabled:=True;
    rzdtBCustomerName.Text:=DM.qryBCustomer.FieldByName('客户名称').AsString;
    rzdtBCustomerName.SetFocus;
    rzdtBZipCode.Enabled:=True;
    rzdtBZipCode.Text:=DM.qryBCustomer.FieldByName('邮编').AsString;
    rzdtBAddress.Enabled:=True;
    rzdtBAddress.Text:=DM.qryBCustomer.FieldByName('地址').AsString;
    rzdtBTel.Enabled:=True;
    rzdtBTel.Text:=DM.qryBCustomer.FieldByName('电话').AsString;
    rzdtBFax.Enabled:=True;
    rzdtBFax.Text:=DM.qryBCustomer.FieldByName('传真').AsString;
    rzdtBBank.Enabled:=True;
    rzdtBBank.Text:=DM.qryBCustomer.FieldByName('开户银行').AsString;
    rzmBBankAccount.Enabled:=True;
    rzmBBankAccount.Text:=DM.qryBCustomer.FieldByName('银行账号').AsString;
    rzmBMemo.Enabled:=True;
    rzmBMemo.Text:=DM.qryBCustomer.FieldByName('备注').AsString;
    btnBQuery.Enabled:=False;
    btnBAdd.Enabled:=False;
    btnBSave.Enabled:=True;
    btnBCancel.Enabled:=True;
    btnBModify.Enabled:=False;
    btnBDelete.Enabled:=False;
    btnBPrint.Enabled:=False;
  end
  else
  begin
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBKH.rzbtbtnBDeleteClick(Sender: TObject);
begin
  if cxgrdbcrdvwBCustomer.ViewData.CardCount>0 then
  begin
   if Application.MessageBox('确定删除该客户信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
     DM.qryBCustomer.Delete;
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

procedure TFrmBKH.rzbtbtnBPrintClick(Sender: TObject);
begin
  DM.qryBCustomer.Filtered:=True;
  DM.qryBCustomer.Filter:=cxgrdbcrdvwBCustomer.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\BCustomer.fr3') then
    begin
      Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprtBCustomer.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\BCustomer.fr3');
    frxrprtBCustomer.PrepareReport();
    frxrprtBCustomer.ShowReport(True);
  except
    Application.MessageBox('无法打印，请核查原因！','提示',MB_OK+MB_ICONERROR);
    DM.qryBCustomer.Filtered:=False;
  end;
end;

procedure TFrmBKH.rzbtbtnBExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBKH.frxrprtBCustomerGetValue(const VarName: String;
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
  if VarName='数量' then   //在打印页面显示打印人所在部门信息
  begin
    Value:=IntToStr(cxgrdbcrdvwBCustomer.ViewData.CardCount);
  end;
end;

procedure TFrmBKH.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
  DM.qryBCustomer.Active:=True;
end;

end.
