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
  user,Dep:string;  //¼���˺����ڲ���
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
    s:= Copy(ADOQuery1.FieldByName('�ͻ���').AsString,1,3);
    khh:=s+Format('%.3d',[(StrToInt(Copy(ADOQuery1.FieldByName('�ͻ���').AsString,4,3))+1)]);
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
  autobbh:string;//�Զ����ɵĹ����ͻ����
begin
  if((Trim(rzdtBCustomerName.Text)='')) then
  begin
    Application.MessageBox('������ͻ�����!','��ʾ',MB_OK+MB_ICONINFORMATION);
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
          FieldByName('�ͻ���').AsString:=autobbh;
          FieldByName('�ͻ�����').AsString:=Trim(rzdtBCustomerName.Text);
          FieldByName('��ַ').AsString:=Trim(rzdtBAddress.Text);
          FieldByName('�ʱ�').AsString:=Trim(rzdtBZipCode.Text);
          FieldByName('�绰').AsString:=Trim(rzdtBTel.Text);
          FieldByName('����').AsString:=Trim(rzdtBFax.Text);
          FieldByName('��������').AsString:=Trim(rzdtBBank.Text);
          FieldByName('�����˺�').AsString:=Trim(rzmBBankAccount.Text);
          FieldByName('��ע').AsString:=Trim(rzmBMemo.Text);
          Refresh;
          application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      end;
     end;
   2:begin
      try
        with DM.qryBCustomerModify do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update �����ͻ���Ϣ�� set �ͻ�����=:khmc,�ʱ�=:khyb,��ַ=:khdz,�绰=:dh,����=:cz,��������=:khyh,�����˺�=:yhzh,��ע=:bz where �ͻ���=:khbh ');
          Parameters.ParamByName('khmc').Value:=Trim(rzdtBCustomerName.Text);
          Parameters.ParamByName('khyb').Value:=Trim(rzdtBZipCode.Text);
          Parameters.ParamByName('khdz').Value:=Trim(rzdtBAddress.Text);
          Parameters.ParamByName('dh').Value:=Trim(rzdtBTel.Text);
          Parameters.ParamByName('cz').Value:=Trim(rzdtBFax.Text);
          Parameters.ParamByName('khyh').Value:=Trim(rzdtBBank.Text);
          Parameters.ParamByName('yhzh').Value:=Trim(rzmBBankAccount.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmBMemo.Text);
          Parameters.ParamByName('khbh').Value:=DM.qryBCustomer.FieldByName('�ͻ���').AsString;
          ExecSQL;
          DM.qryBCustomer.Refresh;
          application.MessageBox('�޸ĳɹ�!','��ʾ',MB_OK+MB_ICONINFORMATION);
        end;
      except
          application.MessageBox('�޸�ʧ�ܣ���˲�ԭ��!','��ʾ',MB_OK+MB_ICONERROR);
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
    rzdtBCustomerName.Text:=DM.qryBCustomer.FieldByName('�ͻ�����').AsString;
    rzdtBCustomerName.SetFocus;
    rzdtBZipCode.Enabled:=True;
    rzdtBZipCode.Text:=DM.qryBCustomer.FieldByName('�ʱ�').AsString;
    rzdtBAddress.Enabled:=True;
    rzdtBAddress.Text:=DM.qryBCustomer.FieldByName('��ַ').AsString;
    rzdtBTel.Enabled:=True;
    rzdtBTel.Text:=DM.qryBCustomer.FieldByName('�绰').AsString;
    rzdtBFax.Enabled:=True;
    rzdtBFax.Text:=DM.qryBCustomer.FieldByName('����').AsString;
    rzdtBBank.Enabled:=True;
    rzdtBBank.Text:=DM.qryBCustomer.FieldByName('��������').AsString;
    rzmBBankAccount.Enabled:=True;
    rzmBBankAccount.Text:=DM.qryBCustomer.FieldByName('�����˺�').AsString;
    rzmBMemo.Enabled:=True;
    rzmBMemo.Text:=DM.qryBCustomer.FieldByName('��ע').AsString;
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
    Application.MessageBox('û�п����޸ĵ���Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
  if cxgrdbcrdvwBCustomer.ViewData.CardCount>0 then
  begin
    rzgrpbxBInput.Tag:=2;
    rzdtBCustomerName.Enabled:=True;
    rzdtBCustomerName.Text:=DM.qryBCustomer.FieldByName('�ͻ�����').AsString;
    rzdtBCustomerName.SetFocus;
    rzdtBZipCode.Enabled:=True;
    rzdtBZipCode.Text:=DM.qryBCustomer.FieldByName('�ʱ�').AsString;
    rzdtBAddress.Enabled:=True;
    rzdtBAddress.Text:=DM.qryBCustomer.FieldByName('��ַ').AsString;
    rzdtBTel.Enabled:=True;
    rzdtBTel.Text:=DM.qryBCustomer.FieldByName('�绰').AsString;
    rzdtBFax.Enabled:=True;
    rzdtBFax.Text:=DM.qryBCustomer.FieldByName('����').AsString;
    rzdtBBank.Enabled:=True;
    rzdtBBank.Text:=DM.qryBCustomer.FieldByName('��������').AsString;
    rzmBBankAccount.Enabled:=True;
    rzmBBankAccount.Text:=DM.qryBCustomer.FieldByName('�����˺�').AsString;
    rzmBMemo.Enabled:=True;
    rzmBMemo.Text:=DM.qryBCustomer.FieldByName('��ע').AsString;
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
    Application.MessageBox('û�п����޸ĵ���Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBKH.rzbtbtnBDeleteClick(Sender: TObject);
begin
  if cxgrdbcrdvwBCustomer.ViewData.CardCount>0 then
  begin
   if Application.MessageBox('ȷ��ɾ���ÿͻ���Ϣ?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
     DM.qryBCustomer.Delete;
     Application.MessageBox('ɾ���ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
    except
     Application.MessageBox('ɾ��ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
    end;
   end;
  end
  else
  begin
    Application.MessageBox('û�п���ɾ������Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBKH.rzbtbtnBPrintClick(Sender: TObject);
begin
  DM.qryBCustomer.Filtered:=True;
  DM.qryBCustomer.Filter:=cxgrdbcrdvwBCustomer.DataController.Filter.FilterText; //��֤��cxgrid��ǰ����һ��
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\BCustomer.fr3') then
    begin
      Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    frxrprtBCustomer.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\BCustomer.fr3');
    frxrprtBCustomer.PrepareReport();
    frxrprtBCustomer.ShowReport(True);
  except
    Application.MessageBox('�޷���ӡ����˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
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
  if VarName='��ӡ��' then   //�ڴ�ӡҳ����ʾ��ӡ����Ϣ
  begin
    Value:=user;
  end;
  if VarName='����' then   //�ڴ�ӡҳ����ʾ��ӡ�����ڲ�����Ϣ
  begin
    Value:=Dep;
  end;
  if VarName='����' then   //�ڴ�ӡҳ����ʾ��ӡ�����ڲ�����Ϣ
  begin
    Value:=IntToStr(cxgrdbcrdvwBCustomer.ViewData.CardCount);
  end;
end;

procedure TFrmBKH.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('��¼��Ϣ','name','');
  Dep:=lFile.ReadString('��¼��Ϣ','bmmc','');
  DM.qryBCustomer.Active:=True;
end;

end.
