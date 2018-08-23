unit sddlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxLabel, cxDBLookupComboBox, cxCalendar, cxBlobEdit,
  cxTextEdit, cxCalc, frxRich, frxGradient, frxClass, frxDBSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, RzEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, Mask, RzButton, ComCtrls,
  RzLabel, RzPanel, ExtCtrls,IniFiles,cxGridExportLink, frxExportXLS,
  frxExportRTF, frxServerClient, frxServer, cxCheckComboBox, cxCheckBox,
  Menus, RzLstBox, ImgList,ADODB;

type
  TFrmSDDLR = class(TForm)
    RzPanel1: TRzPanel;
    rzgrpbxInput: TRzGroupBox;
    rzpnlInput: TRzPanel;
    lblCustomerInfo: TRzLabel;
    lblOrderTime1: TRzLabel;
    lblMemo: TRzLabel;
    lblOrderAddress: TRzLabel;
    lblPurchaseID: TRzLabel;
    lblDeliveryDescribe: TRzLabel;
    dtpOrderTime: TDateTimePicker;
    rzmMemo: TRzMemo;
    rzdtOrderAddress: TRzEdit;
    lstCustomerInfo: TRzListBox;
    rzdtPurchaseID: TRzEdit;
    cxgrdOrder: TcxGrid;
    cxgrdbtblvwApprovedOrder: TcxGridDBTableView;
    cxgrdbclmnOrderID: TcxGridDBColumn;
    cxgrdbclmnPurchaseID: TcxGridDBColumn;
    cxgrdbclmnCustomerID: TcxGridDBColumn;
    cxgrdbclmnCustomerName: TcxGridDBColumn;
    cxgrdbclmnOrderAddress: TcxGridDBColumn;
    cxgrdbclmnOrderTime: TcxGridDBColumn;
    cxgrdbclmnDeliveryDescribe: TcxGridDBColumn;
    cxgrdbclmnMemo: TcxGridDBColumn;
    cxgrdbtblvwApprovedOrderDetail: TcxGridDBTableView;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnOrderQuantity: TcxGridDBColumn;
    cxgrdbclmnPrice: TcxGridDBColumn;
    cxgrdbclmnTotalAmount: TcxGridDBColumn;
    cxgrdbclmnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnQualityRequireMent: TcxGridDBColumn;
    cxgrdbclmnPackagingRequireMent: TcxGridDBColumn;
    cxgrdbtblvwUnApprovedOrder: TcxGridDBTableView;
    cxgrdbclmnUnOrderID: TcxGridDBColumn;
    cxgrdbclmnUnPurchaseID: TcxGridDBColumn;
    cxgrdbclmnUnCustomerID: TcxGridDBColumn;
    cxgrdbclmnUnCustomerName: TcxGridDBColumn;
    cxgrdbclmnUnOrderAddress: TcxGridDBColumn;
    cxgrdbclmnUnOrderTime: TcxGridDBColumn;
    cxgrdbclmnUnDeliveryDescribe: TcxGridDBColumn;
    cxgrdbclmnUnMemo: TcxGridDBColumn;
    cxgrdbtblvwUnApprovedOrderDetail: TcxGridDBTableView;
    cxgrdbclmnApproveState: TcxGridDBColumn;
    cxgrdbclmnUnProductName: TcxGridDBColumn;
    cxgrdbclmnUnSpecification: TcxGridDBColumn;
    cxgrdbclmnUnOrderQuantity: TcxGridDBColumn;
    cxgrdbclmnUnPrice: TcxGridDBColumn;
    cxgrdbclmnUnTotalAmount: TcxGridDBColumn;
    cxgrdbclmnUnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnUnQualityRequirement: TcxGridDBColumn;
    cxgrdbclmnUnPackagingRequirement: TcxGridDBColumn;
    cxgrdlvlApprovedOrder: TcxGridLevel;
    cxgrdlvlApprovedOrderDetail: TcxGridLevel;
    cxgrdlvlUnApprovedOrder: TcxGridLevel;
    cxgrdlvlUnApprovedOrderDetail: TcxGridLevel;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    frxdbdtstApprovedOrder: TfrxDBDataset;
    frxdbdtstApprovedOrderDetail: TfrxDBDataset;
    frxdbdtstUnApprovedOrder: TfrxDBDataset;
    frxdbdtstUnApprovedOrderDetail: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    pm1: TPopupMenu;
    mniAddDetail: TMenuItem;
    mniCancelAddingDetail: TMenuItem;
    pm2: TPopupMenu;
    NModifyDetail: TMenuItem;
    NDeleteDetail: TMenuItem;
    NApproveBegin: TMenuItem;
    NApproveSuccess: TMenuItem;
    NCancelApprove: TMenuItem;
    frxrprt1: TfrxReport;
    N1: TMenuItem;
    rzmDeliveryDescribe: TRzMemo;
    rzpnlBtns: TRzPanel;
    btnQuery: TRzToolButton;
    btnAdd: TRzToolButton;
    btnSave: TRzToolButton;
    btnCancel: TRzToolButton;
    btnModify: TRzToolButton;
    btnPrint: TRzToolButton;
    btnExit: TRzToolButton;
    rzgrpbxQueryCondition: TRzGroupBox;
    lblOrderTime: TRzLabel;
    lblBegin: TRzLabel;
    lblEnd: TRzLabel;
    lblDelivery: TRzLabel;
    dtpBegin: TDateTimePicker;
    dtpEnd: TDateTimePicker;
    cbbDelivery: TComboBox;
    cxmglst1: TcxImageList;
    btnSearch: TRzToolButton;
    N2: TMenuItem;
    NUnApproveBegin: TMenuItem;
    N3: TMenuItem;
    NApproveFail: TMenuItem;
    N4: TMenuItem;
    btnDelete: TRzToolButton;
    procedure FormShow(Sender: TObject);
    procedure mniAddDetailClick(Sender: TObject);
    procedure NModifyDetailClick(Sender: TObject);
    procedure NDeleteDetailClick(Sender: TObject);
    procedure NApproveBeginClick(Sender: TObject);
    procedure NApproveSuccessClick(Sender: TObject);
    procedure cxgrdOrderFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure cbbDeliveryChange(Sender: TObject);
    procedure cxgrdbtblvwUnApprovedOrderDetailCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure frxrprt1GetValue(const VarName: String; var Value: Variant);
    procedure btnQueryClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure NUnApproveBeginClick(Sender: TObject);
    procedure NApproveFailClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    function addddh():string;
  public
    { Public declarations }
  end;

var
  FrmSDDLR: TFrmSDDLR;
  user,Dep:string;  //¼���˺Ͳ�����Ϣ
  modifingUnApprovedOrderDetailID:Integer;//���ڱ��޸ĵ�δ��˵Ķ�����ϸ��Ϣ�ı��
  lFile:TiniFile;
  procedure psddlr(AHandle:THandle);stdcall;

implementation

uses UDM,sddmx,skhxz;
{$R *.dfm}

procedure psddlr(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmSDDLR:=TFrmSDDLR.Create(Application);
  try
    FrmSDDLR.ShowModal;
  finally
    TFrmSDDLR(FrmSDDLR).Free;
  end;
end;

function TFrmSDDLR.addddh():string; //�����Զ���ź�������
var
  s:string;
  m:string;
  autoddh:string;
  year,month,day:word;
begin
  DecodeDate(dtpOrderTime.Date,year,month,day);
  if day<10 then
  begin
    s:='0'+IntToStr(day);
  end
  else
  begin
    s:=IntToStr(day);
  end;
  if month<10 then
  begin
    m:='0'+IntToStr(month);
  end
  else
  begin
    m:=IntToStr(month);
  end;
  with DM.qrySAutoOrderID do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ��ɴ������Ϣ�� where ������=:ddh');
    Parameters.ParamByName('ddh').Value:='CRC'+IntToStr(year)+m+s;
    Open;
  end;
  if DM.qrySAutoOrderID.RecordCount=0 then
  begin
    autoddh:='CRC'+IntToStr(year)+m+s;
    result:=autoddh;
    Exit;
  end
  else
  begin
    with DM.qrySAutoOrderID do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from ��ɴ������Ϣ�� where ������=:ddh');
      Parameters.ParamByName('ddh').Value:='CRC'+IntToStr(year)+m+s+'-1';
      Open;
    end;
    if  not DM.qrySAutoOrderID.Eof then
    begin
      with DM.qrySAutoOrderID do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from ��ɴ������Ϣ�� where (������ like '''+('CRC'+IntToStr(year)+m+s)+'%'') and (len(������)=(select max(len(������)) from ��ɴ������Ϣ�� where (������ like '''+('CRC'+IntToStr(year)+m+s)+'%'')))');
        Open;
        Last;
      end;
      autoddh:=Copy(DM.qrySAutoOrderID.FieldByName('������').AsString,1,12)+IntToStr(StrToInt(Copy(DM.qrySAutoOrderID.FieldByName('������').AsString,13,2))+1);
      result:=autoddh;
    end
    else
    begin
      autoddh:='CRC'+IntToStr(year)+m+s+'-1';
      result:=autoddh;
    end;
  end;
end;

procedure TFrmSDDLR.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('��¼��Ϣ','name','');
  Dep:=lFile.ReadString('��¼��Ϣ','bmmc','');
  dtpBegin.DateTime:=Date()-30;
  dtpEnd.DateTime:=Date();
  dtpOrderTime.DateTime:=Date();
end;

procedure TFrmSDDLR.mniAddDetailClick(Sender: TObject);
begin
  if  cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
    FrmSDDMX:=TFrmSDDMX.Create(Self);
    FrmSDDMX.Tag:=1;
    FrmSDDMX.ShowModal;
    FreeAndNil(FrmSDDMX);
  end
  else
  begin
    Application.MessageBox('û�п���������ϸ�Ķ�����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TFrmSDDLR.NModifyDetailClick(Sender: TObject);
begin
  if DM.qrySUnApprovedOrderDetail.FieldByName('���״̬').Value<>'δ���' then
    begin
      Application.MessageBox('��Ϣ������˻�����ˣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      FrmSDDMX:=TFrmSDDMX.Create(Self);
      FrmSDDMX.Tag:=2;
      FrmSDDMX.ShowModal;
      FreeAndNil(FrmSDDMX);
    end;
end;

procedure TFrmSDDLR.NDeleteDetailClick(Sender: TObject);
begin
  if DM.qrySUnApprovedOrderDetail.FieldByName('���״̬').Value<>'δ���' then
    begin
      Application.MessageBox('��Ϣ������˻�����ˣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      if Application.MessageBox('ȷ��ɾ������ϸ��Ϣ?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
       try
        DM.qrySUnApprovedOrderDetail.Delete;
        Application.MessageBox('ɾ���ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
       except
        Application.MessageBox('ɾ��ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
       end;
      end;
    end;
end;

procedure TFrmSDDLR.NApproveBeginClick(Sender: TObject);
begin
  if DM.qrySUnApprovedOrderDetail.FieldByName('���״̬').Value<>'δ���' then
    begin
      Application.MessageBox('��Ϣ������˻�����ˣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      modifingUnApprovedOrderDetailID:=DM.qrySUnApprovedOrderDetail.FieldByName('���').AsInteger;
      try
          with DM.qrySUnApprovedOrderDetailModify do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update ��ɴ������ϸ�� set ���״̬=:shzt where ���=:bh');
            Parameters.ParamByName('shzt').Value:='�����';
            Parameters.ParamByName('bh').Value:=modifingUnApprovedOrderDetailID;
            ExecSQL;
            DM.qrySUnApprovedOrderDetail.Refresh;
            Application.MessageBox('���״̬���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
          end;
      except
            Application.MessageBox('���״̬����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      end;
    end;
end;

procedure TFrmSDDLR.NApproveSuccessClick(Sender: TObject);
begin
    if DM.qrySUnApprovedOrderDetail.FieldByName('���״̬').Value<>'�����' then
    begin
      Application.MessageBox('��Ϣδ��˻�����ˣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      if Application.MessageBox('ȷ���ö�����ϸ��Ϣ��˳ɹ�?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        modifingUnApprovedOrderDetailID:=DM.qrySUnApprovedOrderDetail.FieldByName('���').AsInteger;
       try
          DM.ADOConnection1.BeginTrans;
          with DM.spSApproveStateUpdate do
          begin
            Close;
            procedureName:='proc_��ɴ������ϸ_��ɴ������Ϣ��˸���';
            Parameters.Refresh;
            with Parameters do
            begin
              ParamByName('@ID').Value:=modifingUnApprovedOrderDetailID;
              ParamByName('@OrderID').Value:=DM.qrySUnApprovedOrderDetail.FieldByName('������').AsString;
            end;
            ExecProc;
          end;
          Application.MessageBox('���״̬���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
          DM.ADOConnection1.CommitTrans;
           with DM.qrySApprovedOrder do
          begin
            Close;
            Open;
          end;
          with DM.qrySUnApprovedOrder do
          begin
            Close;
            Open;
          end;
       except
          Application.MessageBox('���״̬����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
          DM.ADOConnection1.RollbackTrans;
       end;
      end;

    end;
end;

procedure TFrmSDDLR.cxgrdOrderFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
  if cxgrdOrder.FocusedView=cxgrdbtblvwApprovedOrder then
  begin
    if cbbDelivery.ItemIndex=0 then
    begin
      btnModify.Enabled:=False;
      btnDelete.Enabled:=False;
    end;
  end
  else
  begin
    btnModify.Enabled:=True;
    btnDelete.Enabled:=True;
  end;
end;

procedure TFrmSDDLR.cbbDeliveryChange(Sender: TObject);
begin
  DM.qrySApprovedOrder.Close;
  DM.qrySUnApprovedOrder.Close;
  if cbbDelivery.ItemIndex=0 then
  begin
    cxgrdOrder.RootLevelOptions.DetailTabsPosition:=dtpTop;
    dtpBegin.Date:=Date()-30;
    dtpEnd.Date:=Date();
    btnAdd.Enabled:=True;
    cxgrdbtblvwApprovedOrder.OptionsView.Footer:=False;
    cxgrdbtblvwUnApprovedOrder.OptionsView.Footer:=False;
  end
  else
  begin
    cxgrdOrder.RootLevelOptions.DetailTabsPosition:=dtpNone;
    btnAdd.Enabled:=False;
    btnModify.Enabled:=False;
    btnDelete.Enabled:=False;
    dtpBegin.Date:=Date()-60;
    dtpEnd.Date:=Date()-30;
    cxgrdbtblvwApprovedOrder.OptionsView.Footer:=False;
  end;
  btnPrint.Enabled:=False;
end;

procedure TFrmSDDLR.cxgrdbtblvwUnApprovedOrderDetailCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (Pos('�����',AViewInfo.GridRecord.DisplayTexts[cxgrdbclmnApproveState.Index])> 0) then
  begin //��ʶ���״̬,���״̬��Ϊ'�����'��ʱ�򣬼�¼��Ϊ��ɫ
    ACanvas.Canvas.Font.Color:= clRed;//clActiveCaption
  end;
  if (Pos('�����',AViewInfo.GridRecord.DisplayTexts[cxgrdbclmnApproveState.Index])> 0)  then
  begin //��ʶ���״̬,���״̬��Ϊ'�����'��ʱ�򣬼�¼��Ϊ��ɫ
    ACanvas.Canvas.Font.Color:= clGreen;//clActiveCaption
  end;
end;

procedure TFrmSDDLR.frxrprt1GetValue(const VarName: String;
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
  if VarName='��ʼ����' then   //�ڴ�ӡҳ����ʾ����ǩ��ʱ��Ŀ�ʼ����
  begin
    Value:=formatdatetime('yyyy-mm-dd',dtpBegin.Date);
  end;
  if VarName='��������' then   //�ڴ�ӡҳ����ʾ����ǩ��ʱ��Ľ�������
  begin
    Value:=formatdatetime('yyyy-mm-dd',dtpEnd.Date);
  end;
end;

procedure TFrmSDDLR.btnQueryClick(Sender: TObject);
begin
 case cbbDelivery.ItemIndex of
     0: begin
          cxgrdlvlApprovedOrder.Visible:=True;
          cxgrdOrder.FocusedView:=cxgrdbtblvwApprovedOrder;
          with DM.qrySApprovedOrder do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_��ɴ������Ϣ  where (ǩ��ʱ�� between :xdq1 and :xdq2 ) and (����״̬=0) and (���״̬=1) ');
            Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
            Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
            Open;
          end;
          with DM.qrySUnApprovedOrder do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_��ɴ������Ϣ  where (ǩ��ʱ�� between :xdq1 and :xdq2 ) and (���״̬=0) ');
            Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
            Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
            Open;
          end;
          with DM.qrySApprovedOrderDetail do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from ��ɴ������ϸ�� order by ������');
            Open;
          end;
          with DM.qrySUnApprovedOrderDetail do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from ��ɴ������ϸ�� order by ������');
            Open;
          end;
          if (DM.qrySApprovedOrder.Eof and DM.qrySUnApprovedOrder.Eof) then
          begin
            Application.MessageBox('�ڴ�ʱ����û�����ݿ��Բ�ѯ��������ѡ��ʱ�ڣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
            dtpBegin.SetFocus;
            btnPrint.Enabled:=False;
            Exit;
          end
          else
          begin
            with DM.qryfrxSApprovedOrder do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from v_��ɴ������Ϣ  where (ǩ��ʱ�� between :xdq1 and :xdq2 )and (����״̬=0) and (���״̬=1)');
              Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
              Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
              Open;
            end;
            with DM.qryfrxSUnApprovedOrder do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from v_��ɴ������Ϣ  where (ǩ��ʱ�� between :xdq1 and :xdq2) and (���״̬=0)');
              Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
              Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
              Open;
            end;
            btnPrint.Enabled:=True;
            N4.Visible:=True;NApproveSuccess.Visible:=True;NApproveFail.Visible:=True;
          end;
        end;
     1: begin
          with DM.qrySApprovedOrder do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_��ɴ������Ϣ  where (ǩ��ʱ�� between :xdq1 and :xdq2 )and (����״̬=1)');
            Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
            Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
            Open;
          end;
          with DM.qrySApprovedOrderDetail do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from ��ɴ������ϸ�� order by ������');
            Open;
          end;
          if DM.qrySApprovedOrder.Eof then
          begin
            Application.MessageBox('�ڴ�ʱ����û�����ݿ��Բ�ѯ��������ѡ��ʱ�ڣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
            dtpBegin.SetFocus;
            btnPrint.Enabled:=False;
            Exit;
          end
          else
          begin
            with DM.qryfrxSApprovedOrder do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from v_��ɴ������Ϣ  where (ǩ��ʱ�� between :xdq1 and :xdq2 )and (����״̬=1) ');
              Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
              Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
              Open;
            end;
            btnPrint.Enabled:=True;
            btnDelete.Enabled:=True;
          end;
        end;
 end;
end;

procedure TFrmSDDLR.btnAddClick(Sender: TObject);
begin
  rzgrpbxInput.Tag:=1;
  cxgrdlvlApprovedOrder.Visible:=False;
  rzdtPurchaseID.Enabled:=True;
  rzdtPurchaseID.SetFocus;
  rzdtOrderAddress.Enabled:=True;
  rzdtOrderAddress.Text:='�Ϸ�';
  dtpOrderTime.Enabled:=True;
  lstCustomerInfo.Enabled:=True;
  rzmDeliveryDescribe.Enabled:=True;
  rzmMemo.Enabled:=True;
  btnSearch.Enabled:=True;
  btnQuery.Enabled:=False;
  btnAdd.Enabled:=False;
  btnSave.Enabled:=True;
  btnCancel.Enabled:=True;
  btnModify.Enabled:=False;
  btnPrint.Enabled:=False;
  btnDelete.Enabled:=False;
  rzgrpbxQueryCondition.Enabled:=False;
  DM.qrySUnApprovedOrder.Close;
  DM.qrySUnApprovedOrderDetail.Close;
  DM.qrySApprovedOrder.Close;
  N4.Visible:=False;NApproveSuccess.Visible:=False;NApproveFail.Visible:=False;
end;

procedure TFrmSDDLR.btnSaveClick(Sender: TObject);
var
  InsertedOrderID:string;//��¼�����ӽ�ȥ�Ķ����Ķ�����
  ModifingOrderID:string ;//���ڱ��޸ĵĶ����Ķ�����
begin
  case rzgrpbxInput.Tag of
  1:begin
      try
        InsertedOrderID:=addddh();
        with DM.qrySUnApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('insert into ��ɴ������Ϣ��(������,�ͻ��ɹ�������,�ͻ���,ǩԼ�ص�,ǩ��ʱ��,��������,��ע)');
          SQL.Add('values(:ddh,:khcgddh,:khh,:qydd,:qdsj,:fhms,:bz)');
          Parameters.ParamByName('ddh').Value:=InsertedOrderID;
          Parameters.ParamByName('khcgddh').Value:=Trim(rzdtPurchaseID.Text);
          Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
          Parameters.ParamByName('qydd').Value:=Trim(rzdtOrderAddress.Text);
          Parameters.ParamByName('qdsj').Value:=formatdatetime('yyyy-mm-dd',dtpOrderTime.DateTime);
          Parameters.ParamByName('fhms').Value:=Trim(rzmDeliveryDescribe.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmMemo.Text);
          ExecSQL;
          Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
          SQL.Clear;
          SQL.Add('select * from v_��ɴ������Ϣ where ������=:ddh');
          Parameters.ParamByName('ddh').Value:=InsertedOrderID;
          open;
        end;
        btnModify.Enabled:=True;
        btnDelete.Enabled:=True;
      except
          Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      end;
    end;
  2:begin
      ModifingOrderID:=DM.qrySUnApprovedOrder.FieldByName('������').AsString;
      try
        with DM.qrySUnApprovedOrderModify do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update v_��ɴ������Ϣ set �ͻ��ɹ�������=:khcgddh,�ͻ���=:khh,ǩԼ�ص�=:qydd,ǩ��ʱ��=:qdsj, ');
          SQL.Add('��������=:fhms,��ע=:bz where ������=:ddh');
          Parameters.ParamByName('khcgddh').Value:=Trim(rzdtPurchaseID.Text);
          Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
          Parameters.ParamByName('qydd').Value:=Trim(rzdtOrderAddress.Text);
          Parameters.ParamByName('qdsj').Value:=DateToStr(dtpOrderTime.Date);
          Parameters.ParamByName('fhms').Value:=Trim(rzmDeliveryDescribe.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmMemo.Text);
          Parameters.ParamByName('ddh').Value:=ModifingOrderID;
          ExecSql;
          Application.MessageBox('���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
          with DM.qrySUnApprovedOrder  do
          begin
            Close;
            Open;
          end;
        end;
      except
         Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      end;
      btnModify.Enabled:=True;
      btnDelete.Enabled:=True;
      if DM.qrySApprovedOrder.Active then
      begin
        btnPrint.Enabled:=True;
      end;
    end;
  end;
  btnSearch.Enabled:=False;
  btnQuery.Enabled:=True;
  btnAdd.Enabled:=True;
  btnSave.Enabled:=False;
  btnCancel.Enabled:=False;
  rzdtPurchaseID.Text:='';
  rzdtPurchaseID.Enabled:=False;
  rzdtOrderAddress.Text:='';
  rzdtOrderAddress.Enabled:=False;
  dtpOrderTime.Date:=Date();
  dtpOrderTime.Enabled:=False;
  lstCustomerInfo.Items.Clear;
  lstCustomerInfo.Enabled:=False;
  rzmDeliveryDescribe.Text:='';
  rzmDeliveryDescribe.Enabled:=False;
  rzmMemo.Text:='';
  rzmMemo.Enabled:=False;
  rzgrpbxQueryCondition.Enabled:=True;
end;

procedure TFrmSDDLR.btnCancelClick(Sender: TObject);
begin
 btnQuery.Enabled:=True;
 btnAdd.Enabled:=True;
 btnModify.Enabled:=True;
 btnDelete.Enabled:=True;
 btnSave.Enabled:=False;
 btnCancel.Enabled:=False;
 rzdtPurchaseID.Text:='';
 rzdtPurchaseID.Enabled:=False;
 rzdtOrderAddress.Text:='';
 rzdtOrderAddress.Enabled:=False;
 dtpOrderTime.Date:=Date();
 dtpOrderTime.Enabled:=False;
 lstCustomerInfo.Items.Clear;
 lstCustomerInfo.Enabled:=False;
 rzmDeliveryDescribe.Text:='';
 rzmDeliveryDescribe.Enabled:=False;
 rzmMemo.Text:='';
 rzmMemo.Enabled:=False;
 rzgrpbxQueryCondition.Enabled:=True;
end;

procedure TFrmSDDLR.btnModifyClick(Sender: TObject);
begin
  if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
      rzgrpbxInput.Tag:=2;
      rzdtPurchaseID.Enabled:=True;
      rzdtPurchaseID.Text:=DM.qrySUnApprovedOrder.FieldByName('�ͻ��ɹ�������').AsString;
      rzdtPurchaseID.SetFocus;
      rzdtOrderAddress.Enabled:=True;
      rzdtOrderAddress.Text:=DM.qrySUnApprovedOrder.FieldByName('ǩԼ�ص�').AsString;
      dtpOrderTime.Enabled:=True;
      dtpOrderTime.Date:=DM.qrySUnApprovedOrder.FieldByName('ǩ��ʱ��').AsDateTime;
      lstCustomerInfo.Enabled:=True;
      lstCustomerInfo.Items[0]:=DM.qrySUnApprovedOrder.FieldByName('�ͻ���').AsString;
      lstCustomerInfo.Items[1]:=DM.qrySUnApprovedOrder.FieldByName('�ͻ�����').AsString;
      rzmDeliveryDescribe.Enabled:=True;
      rzmDeliveryDescribe.Text:=DM.qrySUnApprovedOrder.FieldByName('��������').AsString;
      rzmMemo.Enabled:=True;
      rzmMemo.Text:=DM.qrySUnApprovedOrder.FieldByName('��ע').AsString;
      btnSearch.Enabled:=True;
      btnQuery.Enabled:=False;
      btnAdd.Enabled:=False;
      btnSave.Enabled:=True;
      btnCancel.Enabled:=True;
      btnModify.Enabled:=False;
      btnPrint.Enabled:=False;
      btnDelete.Enabled:=False;
      rzgrpbxQueryCondition.Enabled:=False;
  end
  else
  begin
    Application.MessageBox('û�п����޸ĵ���Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TFrmSDDLR.btnPrintClick(Sender: TObject);
begin
  case cbbDelivery.ItemIndex of
  0:begin
      if cxgrdOrder.FocusedView=cxgrdbtblvwApprovedOrder then
      begin
        try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderApproved.fr3') then
          begin
            Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
        except
          Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);        end;      end;
      if cxgrdOrder.FocusedView=cxgrdbtblvwUnApprovedOrder then
      begin
        try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderUnApproved.fr3') then
          begin
            Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderUnApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
        except
          Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);        end;      end;
    end;
  1:begin
      try
        if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderDeliveried.fr3') then
        begin
          Application.MessageBox('��ӡʧ��,������ϵͳ�ļ���ʧ,���������°�װ����!','��ʾ',MB_OK + MB_ICONINFORMATION);
          Exit;
        end;
        frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderDeliveried.fr3');
        frxrprt1.PrepareReport();
        frxrprt1.ShowReport(True);
      except
        Application.MessageBox('��ӡʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);      end;    end;
  end;
end;

procedure TFrmSDDLR.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmSDDLR.btnSearchClick(Sender: TObject);
begin
  FrmSKHXZ:=TFrmSKHXZ.Create(Self);
  FrmSKHXZ.ShowModal;
  FreeAndNil(FrmSKHXZ);
end;

procedure TFrmSDDLR.NUnApproveBeginClick(Sender: TObject);
begin
  if DM.qrySUnApprovedOrderDetail.FieldByName('���״̬').Value<>'�����' then
    begin
      Application.MessageBox('��Ϣδ��˻�����˳ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
  else
  begin
      modifingUnApprovedOrderDetailID:=DM.qrySUnApprovedOrderDetail.FieldByName('���').AsInteger;
      try
          with DM.qrySUnApprovedOrderDetailModify do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update ��ɴ������ϸ�� set ���״̬=:shzt where ���=:bh');
            Parameters.ParamByName('shzt').Value:='δ���';
            Parameters.ParamByName('bh').Value:=modifingUnApprovedOrderDetailID;
            ExecSQL;
            DM.qrySUnApprovedOrderDetail.Refresh;
            Application.MessageBox('���״̬���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
          end;
      except
            Application.MessageBox('���״̬����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      end;
  end;
end;

procedure TFrmSDDLR.NApproveFailClick(Sender: TObject);
begin
   if DM.qrySUnApprovedOrderDetail.FieldByName('���״̬').Value<>'�����' then
    begin
      Application.MessageBox('��Ϣδ��˻�����ˣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
   else
   begin
      if Application.MessageBox('ȷ�����ʧ��,ɾ���ö�����Ϣ?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
       try
        DM.qrySUnApprovedOrder.Delete;
        Application.MessageBox('ɾ���ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
       except
        Application.MessageBox('ɾ��ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
       end;
      end;
   end;
end;

procedure TFrmSDDLR.btnDeleteClick(Sender: TObject);
var
  WhetherCanDelete:Boolean;//���ش洢���̵����ֵ(������Ϣ�ܷ�ɾ��)
begin
  if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
    with DM.spSOrderInfoWhetherCanDelete do
    begin
      Close;
      ProcedureName:='proc_��ɴ������Ϣ�Ƿ����ɾ��';
      Parameters.Refresh;
      with Parameters do
      begin
        ParamByName('@OrderID').Value:=DM.qrySUnApprovedOrder.FieldByName('������').AsString;
        ParamByName('@state').Direction:=pdOutPut;
      end;
      ExecProc;
      WhetherCanDelete:=Parameters.ParamByName('@state').Value;
    end;
    if WhetherCanDelete then
    begin
      if Application.MessageBox('ȷ��ɾ���ö�����Ϣ?','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        try
         with DM.qrySUnApprovedOrderDelete do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete ��ɴ������Ϣ�� where ������=:ddh');
            Parameters.ParamByName('ddh').Value:=DM.qrySUnApprovedOrder.FieldByName('������').Value;
            ExecSQL;
            Application.MessageBox('ɾ���ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
          end;
          with DM.qrySUnApprovedOrder do
          begin
            Close;
            Open;
          end;
          with DM.qrySUnApprovedOrderDetail do
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
      Application.MessageBox('��������������У�����ɾ����','��ʾ',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
  end
  else
  begin
    Application.MessageBox('û�п���ɾ������Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
end;

end.
