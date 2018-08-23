unit bddxxzz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, cxLabel, cxTextEdit, cxBlobEdit, ImgList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,IniFiles, cxClasses,
  cxGridCustomView, cxGrid, RzButton, ExtCtrls, RzPanel, RzRadGrp,cxGridExportLink,
  cxButtonEdit, frxGradient, frxRich, frxClass, frxExportXLS, frxDBSet,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBDDXXZZ = class(TForm)
    RzPanel1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnExit: TRzToolButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle3: TcxStyle;
    cxstylWarning: TcxStyle;
    rzrdgrpSelect: TRzRadioGroup;
    btndelete: TRzToolButton;
    cxgrdOrder: TcxGrid;
    cxgrdbtblvwApprovedOrder: TcxGridDBTableView;
    cxgrdbtblvwApprovedOrderColumn1: TcxGridDBColumn;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn7: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn9: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn10: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn11: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn12: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn13: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxgrdbclmnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn15: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn16: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn17: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn18: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn19: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn20: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn21: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn22: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn29: TcxGridDBColumn;
    cxgrdbclmnIntoWarehouseState: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderDBColumn36: TcxGridDBColumn;
    cxgrdlvlApprovedOrder: TcxGridLevel;
    cxstylrpstry2: TcxStyleRepository;
    cxstyl16: TcxStyle;
    cxstyl17: TcxStyle;
    cxstyl18: TcxStyle;
    cxstyl19: TcxStyle;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl5: TcxStyle;
    cxstyl6: TcxStyle;
    cxstyl7: TcxStyle;
    cxstyl8: TcxStyle;
    cxstyl9: TcxStyle;
    cxstyl10: TcxStyle;
    cxstyl11: TcxStyle;
    cxstyl12: TcxStyle;
    cxstyl13: TcxStyle;
    cxstyl14: TcxStyle;
    cxstyl15: TcxStyle;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxgrdbclmnApprovedOrderColumn2: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderColumn3: TcxGridDBColumn;
    btn1: TRzToolButton;
    btn2: TRzToolButton;
    btn3: TRzToolButton;
    cxgrdbclmnApprovedOrderColumn4: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderColumn5: TcxGridDBColumn;
    btn4: TRzToolButton;
    btn5: TRzToolButton;
    frxrprt1: TfrxReport;
    frxdbdtstApprovedOrder: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxdbdtstUnApprovedOrder: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    btn6: TRzToolButton;
    cxgrdbclmnApprovedOrderColumn6: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderColumn7: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderColumn8: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderColumn9: TcxGridDBColumn;
    cxgrdbclmnApprovedOrderColumn10: TcxGridDBColumn;
    dlgSave1: TSaveDialog;
    ImageList1: TImageList;
    procedure btnQueryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure rzrdgrpSelectClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure cxgrdbtblvwApprovedOrderStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxgrdbclmnApprovedOrderColumn3PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure frxrprt1GetValue(const VarName: String; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBDDXXZZ: TFrmBDDXXZZ;
  user,Dep:string;  //¼���˺����ڲ���
  modifingUnApprovedOrderDetailID:Integer;//���ڱ��޸ĵ�δ��˵Ķ�����ϸ��Ϣ�ı��
  lFile:TiniFile;
  procedure pbddxxzz(AHandle:THandle);stdcall;

implementation
uses UDM,bddzzxxcz, Formimage, bddmx, byxbsb;

{$R *.dfm}

procedure pbddxxzz(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBDDXXZZ:=TFrmBDDXXZZ.Create(Application);
  try
    FrmBDDXXZZ.ShowModal;
  finally
    TFrmBDDXXZZ(FrmBDDXXZZ).Free;
  end;
end;

procedure TFrmBDDXXZZ.btnQueryClick(Sender: TObject);
begin
  if cxgrdbtblvwApprovedOrder.ViewData.RowCount>0 then
  begin
    FrmBDDZZXXCZ:=TFrmBDDZZXXCZ.Create(Self);
    FrmBDDZZXXCZ.ShowModal;
    FreeAndNil(FrmBDDZZXXCZ);
  end
  else
  begin
    Application.MessageBox('û�п�����ʾ�Ķ���׷����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBDDXXZZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBDDXXZZ.rzrdgrpSelectClick(Sender: TObject);
begin
  case rzrdgrpSelect.ItemIndex of
  0:begin
        with DM.qryBApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ׷�� where ����״̬=0 and ���״̬=1 order by Ʒ��');
          Open;
        end;
        cxgrdbtblvwApprovedOrder.DataController.Filter.Root.Clear;
    end;
  1:begin
        with DM.qryBApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ׷�� where ���״̬=0 and �ϻ�״̬=1 order by Ʒ��');
          Open;
        end;
        cxgrdbtblvwApprovedOrder.DataController.Filter.Root.Clear;
    end;
  2:begin
        with DM.qryBApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ׷�� where �ϻ�״̬=0 and ����״̬=1 order by Ʒ��');
          Open;
        end;
        cxgrdbtblvwApprovedOrder.DataController.Filter.Root.Clear;
    end;
  3:begin
        with DM.qryBApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ׷�� where ����״̬=0 and ����״̬=1 order by Ʒ��');
          Open;
        end;
        cxgrdbtblvwApprovedOrder.DataController.Filter.Root.Clear;
    end;
  4:begin
        with DM.qryBApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ׷�� where ����״̬=0 order by Ʒ��');
          Open;
        end;
        cxgrdbtblvwApprovedOrder.DataController.Filter.Root.Clear;
    end;
  5:begin
        with DM.qryBApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ׷�� where ����״̬=0 order by Ʒ��');
          Open;
        end;
        cxgrdbtblvwApprovedOrder.DataController.Filter.Root.Clear;
    end;
  end;
end;

procedure TFrmBDDXXZZ.btndeleteClick(Sender: TObject);
begin
  if cxgrdbtblvwApprovedOrder.ViewData.RowCount>0 then
  begin
      if Application.MessageBox('ȷ��ɾ������Ϣ��?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        try
          with DM.qryBUnApprovedOrderDelete do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete �޲�������Ϣ�� where ������=:ddh');
            Parameters.ParamByName('ddh').Value:=DM.qryBApprovedOrder.FieldByName('������').Value;
            ExecSQL;
            Application.MessageBox('ɾ���ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
          end;
          with DM.qryBApprovedOrder do
          begin
            Close;
            Open;
          end;
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

procedure TFrmBDDXXZZ.cxgrdbtblvwApprovedOrderStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnApprovedOrderColumn2.Index]=True) then
  AStyle:=cxstyl14;
end;

procedure TFrmBDDXXZZ.cxgrdbclmnApprovedOrderColumn3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  Frmimage:=TFrmimage.Create(Self);
  Frmimage.tag:=8;
  Frmimage.ShowModal;
  FreeAndNil(Frmimage);
end;

procedure TFrmBDDXXZZ.btn1Click(Sender: TObject);
begin
  if cxgrdbtblvwApprovedOrder.ViewData.RowCount>0 then
  begin
     FrmBDDMX:=TFrmBDDMX.Create(Self);
     FrmBDDMX.Tag:=4;
     FrmBDDMX.ShowModal;
     FreeAndNil(FrmBDDMX);
  end
  else
  begin
    Application.MessageBox('û�п��Բ鿴����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBDDXXZZ.btn2Click(Sender: TObject);
begin
  if cxgrdbtblvwApprovedOrder.ViewData.RowCount>0  then
   begin
    FrmYXBSB:=TFrmYXBSB.Create(Self);
    FrmYXBSB.tag:=4;
    FrmYXBSB.ShowModal;
    FreeAndNil(FrmYXBSB);
   end
  else
  begin
    Application.MessageBox('û�п��Բ鿴����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBDDXXZZ.btn3Click(Sender: TObject);
begin
if Application.MessageBox('ȷ���ָ���������Ϣ��?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
begin
  with dm.qrydyzt do
  begin
    Close;
    SQL.Clear;
    SQL.Add('update �޲�������Ϣ�� set Ӫ����ӡ״̬=:yxddzt where ������=:ddh');
    Parameters.ParamByName('yxddzt').Value:=0;
    Parameters.ParamByName('ddh').Value:=DM.qryBApprovedOrder.FieldByName('������').AsString;
    ExecSQL;
    Application.MessageBox('���󵥻ָ��ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;
end;

procedure TFrmBDDXXZZ.btn4Click(Sender: TObject);
begin
       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_�޲�������� where ������=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBApprovedOrder.FieldByName('������').AsString;
        Open;
       end;
        //DM.qryBunApprovedOrder.Filtered:=True;
         //DM.qryBunApprovedOrder.Filter:=cxgrdbtblvwUnApprovedOrder.DataController.Filter.FilterText; //��֤��cxgrid��ǰ����һ��
         try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderApproved.fr3') then
          begin
            Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
         except
          Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);         end;
end;

procedure TFrmBDDXXZZ.frxrprt1GetValue(const VarName: String;
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
end;

procedure TFrmBDDXXZZ.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('��¼��Ϣ','name','');
  Dep:=lFile.ReadString('��¼��Ϣ','bmmc','');
end;

procedure TFrmBDDXXZZ.btn5Click(Sender: TObject);
begin
with dm.qrydy do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from v_�޲�������� where ������=:ddh');
    Parameters.ParamByName('ddh').value:=DM.qryBApprovedOrder.FieldByName('������').AsString;
    Open;
  end;
  try
  if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw1.fr3') then
   begin
    Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
    Exit;
   end;
   frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\cw1.fr3');
   frxrprt1.PrepareReport();
   frxrprt1.ShowReport(True);
  except
   Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);  end;
end;

procedure TFrmBDDXXZZ.btn6Click(Sender: TObject);
begin
if dlgSave1.Execute then
 begin
   ExportGridToExcel(dlgSave1.FileName,cxgrdOrder,True,True,True,'xls');
 end;
end;

end.
