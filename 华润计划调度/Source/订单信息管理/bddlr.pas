unit bddlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxLabel, cxDBLookupComboBox, cxCalendar, cxBlobEdit,
  cxTextEdit, cxCalc, frxClass, frxDBSet, frxGradient, frxRich,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, RzEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, Mask, RzButton, ComCtrls,
  RzLabel, RzPanel, ExtCtrls,cxGridExportLink,IniFiles, frxExportXLS,
  cxCheckComboBox, cxCheckBox, RzBtnEdt, RzLstBox, Menus, ImgList,ADODB,
  RzRadGrp, cxMemo, cxButtonEdit, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;
type
  TFrmBDDLR = class(TForm)
    RzPanel1: TRzPanel;
    rzpnlBtns: TRzPanel;
    cxgrdOrder: TcxGrid;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle4: TcxStyle;
    frxdbdtstApprovedOrder: TfrxDBDataset;
    cxStyle3: TcxStyle;
    cxgrdlvlUnApprovedOrder: TcxGridLevel;
    cxgrdbtblvwUnApprovedOrder: TcxGridDBTableView;
    frxdbdtstUnApprovedOrder: TfrxDBDataset;
    btnQuery: TRzToolButton;
    btnAdd: TRzToolButton;
    btnModify: TRzToolButton;
    btnPrint: TRzToolButton;
    btnExit: TRzToolButton;
    btnDelete: TRzToolButton;
    cxgrdbclmnUnOrderID: TcxGridDBColumn;
    cxgrdbclmnUnPurchaseID: TcxGridDBColumn;
    cxgrdbclmnUnCustomerName: TcxGridDBColumn;
    cxgrdbclmnUnOrderAddress: TcxGridDBColumn;
    cxgrdbclmnUnOrderTime: TcxGridDBColumn;
    cxgrdbclmnUnCategory: TcxGridDBColumn;
    cxgrdbclmnUnSpecification: TcxGridDBColumn;
    cxgrdbclmnUnOrderQuanlity: TcxGridDBColumn;
    cxgrdbclmnUnPrice: TcxGridDBColumn;
    cxgrdbclmnUnTotalMoney: TcxGridDBColumn;
    cxgrdbclmnUnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnUnQualityRequirement: TcxGridDBColumn;
    cxgrdbclmnUnShortRate: TcxGridDBColumn;
    cxgrdbclmnUnPackagingRequirement: TcxGridDBColumn;
    cxgrdbclmnDeliveryRequirement: TcxGridDBColumn;
    cxgrdbclmnUnWarpSource: TcxGridDBColumn;
    cxgrdbclmnUnWeftSource: TcxGridDBColumn;
    cxgrdbclmnUnMemo: TcxGridDBColumn;
    cxgrdbclmnUnMarketingDepExamineState: TcxGridDBColumn;
    cxgrdbclmnUnAccountingDepExamineState: TcxGridDBColumn;
    cxgrdbclmnUnWeavingDepExamineState: TcxGridDBColumn;
    cxgrdbclmnUnPurchasingDepExamineState: TcxGridDBColumn;
    cxgrdbclmnUnCompanyLeaderExamineState: TcxGridDBColumn;
    rzrdgrpSelect: TRzRadioGroup;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    frxrprt1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    cxgrdbtblvwUnApprovedOrderColumn1: TcxGridDBColumn;
    cxgrdbtblvwUnApprovedOrderColumn2: TcxGridDBColumn;
    RzToolButton1: TRzToolButton;
    btn1: TRzToolButton;
    cxgrdbclmnUnApprovedOrderColumn3: TcxGridDBColumn;
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
    cxgrdbclmnUnApprovedOrderColumn4: TcxGridDBColumn;
    cxgrdbclmnUnApprovedOrderColumn5: TcxGridDBColumn;
    cxgrdbclmnUnApprovedOrderColumn6: TcxGridDBColumn;
    btn2: TRzToolButton;
    cxgrdbclmnUnApprovedOrderColumn7: TcxGridDBColumn;
    ImageList1: TImageList;
    procedure rzbtbtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxrprtApprovedOrderGetValue(const VarName: String;
      var Value: Variant);
    procedure btnAddClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure rzrdgrpSelectClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure frxrprt1GetValue(const VarName: String; var Value: Variant);
    procedure cxgrdbtblvwUnApprovedOrderDblClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cxgrdbtblvwUnApprovedOrderStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btn1Click(Sender: TObject);
    procedure cxgrdbclmnUnApprovedOrderColumn4PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btn2Click(Sender: TObject);
 
  private

    { Private declarations }
  public
    { Public declarations }
end;

var
  FrmBDDLR: TFrmBDDLR;
  user,Dep:string;  //¼���˺����ڲ���
  modifingUnApprovedOrderDetailID:Integer;//���ڱ��޸ĵ�δ��˵Ķ�����ϸ��Ϣ�ı��
  lFile:TiniFile;
 procedure pbddlr(AHandle:THandle);stdcall;

implementation

uses UDM, bddmx,bddxxcz, Formimage;
{$R *.dfm}

procedure pbddlr(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBDDLR:=TFrmBDDLR.Create(Application);
  try
    FrmBDDLR.ShowModal;
  finally
    TFrmBDDLR(FrmBDDLR).Free;
  end;
end;

procedure TFrmBDDLR.rzbtbtnExitClick(Sender: TObject);
begin
  self.close;
end;

procedure TFrmBDDLR.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('��¼��Ϣ','name','');
  Dep:=lFile.ReadString('��¼��Ϣ','bmmc','');
end;

procedure TFrmBDDLR.frxrprtApprovedOrderGetValue(const VarName: String;
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

procedure TFrmBDDLR.btnAddClick(Sender: TObject);
begin
  FrmBDDMX:=TFrmBDDMX.Create(Self);
  FrmBDDMX.Tag:=1;
  FrmBDDMX.ShowModal;
  FreeAndNil(FrmBDDMX);
end;

procedure TFrmBDDLR.btnModifyClick(Sender: TObject);
begin
  if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
     FrmBDDMX:=TFrmBDDMX.Create(Self);
     FrmBDDMX.Tag:=2;
     FrmBDDMX.ShowModal;
     FreeAndNil(FrmBDDMX);
  end
  else
  begin
    Application.MessageBox('û�п����޸ĵ���Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBDDLR.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBDDLR.btnDeleteClick(Sender: TObject);
begin
 if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
     begin
      if Application.MessageBox('��Ҫ�����µ����Ѿ�ȫ������������²ſ�ɾ��������ɾ���ᵼ�³������ݶ�ʧ��','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        try
          with DM.qryBUnApprovedOrderDelete do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete �޲�������Ϣ�� where ������=:ddh');
            Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').Value;
            ExecSQL;
          end;
          with DM.qry3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete �޲���������� where ������=:ddh');
            Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').Value;
            ExecSQL;
          end;
          with DM.qryBUnApprovedOrder do
          begin
            Close;
            Open;
          end;
            Application.MessageBox('ɾ���ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        except
          Application.MessageBox('ɾ��ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
        end;
      end
      else
      begin
       Application.MessageBox('û�п���ɾ������Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
      end;
     end;


end;



procedure TFrmBDDLR.btnQueryClick(Sender: TObject);
begin
  if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
    FrmBDDXXCZ:=TFrmBDDXXCZ.Create(Self);
    FrmBDDXXCZ.tag:=1;
    FrmBDDXXCZ.ShowModal;
    FreeAndNil(FrmBDDXXCZ);
  end
  else
  begin
    Application.MessageBox('û�п�����ʾ�Ķ�����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBDDLR.rzrdgrpSelectClick(Sender: TObject);
begin
  case rzrdgrpSelect.ItemIndex of
  0:begin
      with DM.qryBUnApprovedOrder do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_�޲�������Ϣ where ����״̬=1');
        Open;
      end;
      cxgrdbtblvwUnApprovedOrder.DataController.Filter.Root.Clear;
      cxgrdbtblvwUnApprovedOrder.OptionsView.Navigator:=True;
      btnModify.Enabled:=False;
      btnDelete.Enabled:=True;
      btnPrint.Enabled:=True;
      cxgrdbclmnProductName.Visible:=True;
      cxgrdbclmnUnMarketingDepExamineState.Visible:=False;
      cxgrdbclmnUnAccountingDepExamineState.Visible:=False;
      cxgrdbclmnUnWeavingDepExamineState.Visible:=False;
      cxgrdbclmnUnPurchasingDepExamineState.Visible:=False;
      cxgrdbclmnUnCompanyLeaderExamineState.Visible:=False;
      cxgrdbtblvwUnApprovedOrderColumn1.Visible:=False;
      cxgrdbtblvwUnApprovedOrderColumn2.Visible:=True;

    end;
  1:begin
        with DM.qryBUnApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ where ��˾�쵼����״̬=1 and ����״̬=0 ');
          Open;
        end;
        cxgrdbtblvwUnApprovedOrder.DataController.Filter.Root.Clear;
        cxgrdbtblvwUnApprovedOrder.OptionsView.Navigator:=False;
        btnModify.Enabled:=False;
        btnDelete.Enabled:=False;
        btnPrint.Enabled:=True;
        cxgrdbclmnProductName.Visible:=True;
        cxgrdbclmnUnMarketingDepExamineState.Visible:=True;
        cxgrdbclmnUnAccountingDepExamineState.Visible:=True;
        cxgrdbclmnUnWeavingDepExamineState.Visible:=True;
        cxgrdbclmnUnPurchasingDepExamineState.Visible:=True;
        cxgrdbclmnUnCompanyLeaderExamineState.Visible:=True;
        cxgrdbtblvwUnApprovedOrderColumn1.Visible:=true;
        cxgrdbtblvwUnApprovedOrderColumn2.Visible:=False;

    end;
  2:begin
        with DM.qryBUnApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ where �������״̬=1 and ��˾�쵼����״̬=0 ');
          Open;
        end;
        cxgrdbtblvwUnApprovedOrder.DataController.Filter.Root.Clear;
        cxgrdbtblvwUnApprovedOrder.OptionsView.Navigator:=False;
        btnModify.Enabled:=False;
        btnDelete.Enabled:=False;
        btnPrint.Enabled:=True;
        cxgrdbclmnProductName.Visible:=True;
        cxgrdbclmnUnMarketingDepExamineState.Visible:=True;
        cxgrdbclmnUnAccountingDepExamineState.Visible:=True;
        cxgrdbclmnUnWeavingDepExamineState.Visible:=True;
        cxgrdbclmnUnPurchasingDepExamineState.Visible:=True;
        cxgrdbclmnUnCompanyLeaderExamineState.Visible:=True;
        cxgrdbtblvwUnApprovedOrderColumn1.Visible:=true;
        cxgrdbtblvwUnApprovedOrderColumn2.Visible:=False;

    end;
  3:begin
       with DM.qryBUnApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ where �������״̬=0');
          Open;
        end;
        cxgrdbtblvwUnApprovedOrder.DataController.Filter.Root.Clear;
        cxgrdbtblvwUnApprovedOrder.OptionsView.Navigator:=False;
        btnModify.Enabled:=True;
        btnDelete.Enabled:=True;
        btnPrint.Enabled:=True;
        cxgrdbclmnProductName.Visible:=True;
        cxgrdbclmnUnMarketingDepExamineState.Visible:=False;
        cxgrdbclmnUnAccountingDepExamineState.Visible:=False;
        cxgrdbclmnUnWeavingDepExamineState.Visible:=False;
        cxgrdbclmnUnPurchasingDepExamineState.Visible:=False;
        cxgrdbclmnUnCompanyLeaderExamineState.Visible:=False;
        cxgrdbtblvwUnApprovedOrderColumn1.Visible:=False;
        cxgrdbtblvwUnApprovedOrderColumn2.Visible:=False;
        
    end;

  end;
end;

procedure TFrmBDDLR.btnPrintClick(Sender: TObject);
begin
  case rzrdgrpSelect.ItemIndex of
    0:begin
       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_�޲�������� where ������=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
        Open;
       end;
         //DM.qryBUnApprovedOrder.Filtered:=True;
         //DM.qryBUnApprovedOrder.Filter:=cxgrdbtblvwUnApprovedOrder.DataController.Filter.FilterText; //��֤��cxgrid��ǰ����һ��
        try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\Byjh.fr3') then
          begin
            Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\Byjh.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
        except
          Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);        end;      end;
     1:begin
       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_�޲�������� where ������=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
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
          Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);        end;
       end;
     2:begin

       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_�޲�������� where ������=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
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
          Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);        end;
       end;
      3:begin
       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_�޲�������� where ������=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
        Open;
       end;
        //DM.qryBunApprovedOrder.Filtered:=True;
         //DM.qryBunApprovedOrder.Filter:=cxgrdbtblvwUnApprovedOrder.DataController.Filter.FilterText; //��֤��cxgrid��ǰ����һ��
         try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderunApproved.fr3') then
          begin
            Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderunApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
         except
          Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);         end;
        end;
  end;
end;




procedure TFrmBDDLR.frxrprt1GetValue(const VarName: String;
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

procedure TFrmBDDLR.cxgrdbtblvwUnApprovedOrderDblClick(Sender: TObject);
begin
  if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
     FrmBDDMX:=TFrmBDDMX.Create(Self);
     FrmBDDMX.Tag:=2;
     FrmBDDMX.ShowModal;
     FreeAndNil(FrmBDDMX);
  end
  else
  begin
    Application.MessageBox('û�п����޸ĵ���Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmBDDLR.RzToolButton1Click(Sender: TObject);
begin
  if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
     FrmBDDMX:=TFrmBDDMX.Create(Self);
     FrmBDDMX.Tag:=3;
     FrmBDDMX.ShowModal;
     FreeAndNil(FrmBDDMX);
  end
end;



procedure TFrmBDDLR.cxgrdbtblvwUnApprovedOrderStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnUnApprovedOrderColumn3.Index]=True) then
  begin
   AStyle:=cxstyl14;
  end
  else
  begin
  if  (ARecord.Values[cxgrdbclmnUnApprovedOrderColumn7.Index]=True) then
   begin
    AStyle:=cxstyl4;
   end
  else
   begin
    AStyle:=cxstyle1;
   end;  
  end;
end;

procedure TFrmBDDLR.btn1Click(Sender: TObject);
begin
if Application.MessageBox('ȷ�����ϴ˵���?���Ϻ󽫲��ܸ���','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
 begin
 with dm.qryzfzt do
  begin
   Close;
   SQL.Clear;
   SQL.Add('update �޲�������Ϣ�� set ����״̬=1 where ������=:ddh');
   Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
   ExecSql;
  end;
 with dm.qryBUnApprovedOrder do
  begin
   Close;
   open;
  end;
 end;
end;

procedure TFrmBDDLR.cxgrdbclmnUnApprovedOrderColumn4PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  Frmimage:=TFrmimage.Create(Self);
  Frmimage.ShowModal;
  FreeAndNil(Frmimage);
end;

procedure TFrmBDDLR.btn2Click(Sender: TObject);
begin
if Application.MessageBox('ȷ���˵����г�����������?�޸Ĺ��󽫲��ܳ������밴�涨����','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
 begin
 with dm.qry5 do
  begin
   Close;
   SQL.Clear;
   SQL.Add('update �޲�������Ϣ�� set �г���״̬=1,���۲��걨״̬=1 where ������=:ddh');
   Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
   ExecSql;
  end;
 with dm.qry6 do
  begin
   Close;
   SQL.Clear;
   SQL.Add('insert into �޲���������� (������)');
   SQL.Add('values(:ddh)');
   Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
   ExecSql;
  end;
 end;
 with dm.qryBUnApprovedOrder do
  begin
   Close;
   open;
  end;
end;

end.
