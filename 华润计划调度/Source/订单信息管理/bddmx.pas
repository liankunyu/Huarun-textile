unit bddmx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, RzButton, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Mask, RzEdit,
  RzLabel, ImgList, RzLstBox, ComCtrls, RzDBEdit, DBCtrls,JPEG,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBDDMX = class(TForm)
    RzPanel1: TRzPanel;
    rzgrpbxInput: TRzGroupBox;
    rzpnlBtns: TRzPanel;
    lblProductName: TRzLabel;
    lblCategory: TRzLabel;
    lblOrderQuantity: TRzLabel;
    edtPrice: TRzEdit;
    lblPrice: TRzLabel;
    edtOrderQuantity: TRzEdit;
    lblDeliveryTimeAndAmount: TRzLabel;
    mmoQualityRequirement: TRzMemo;
    edtProductName: TRzEdit;
    cbbCategory: TcxLookupComboBox;
    lblSpecification: TRzLabel;
    mmoSpecification: TRzMemo;
    lblQualityRequirement: TRzLabel;
    mmoDeliveyTimeAndAmount: TRzMemo;
    lblPackagingRequirement: TRzLabel;
    mmoPackagingRequirement: TRzMemo;
    lblWarpSource: TRzLabel;
    mmoWarpSource: TRzMemo;
    lblWeftSource: TRzLabel;
    mmoWeftSource: TRzMemo;
    lbl1: TRzLabel;
    lbl2: TRzLabel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    lblPurchaseID: TRzLabel;
    edtPurchaseID: TRzEdit;
    lblOrderAddress: TRzLabel;
    edtOrderAddress: TRzEdit;
    lblOrderTime1: TRzLabel;
    dtpOrderTime: TDateTimePicker;
    lblCustomerInfo: TRzLabel;
    lstCustomerInfo: TRzListBox;
    btnSearch: TRzToolButton;
    lblDeliveryDescribe: TRzLabel;
    mmoDeliveryDescribe: TRzMemo;
    lblMemo: TRzLabel;
    mmoMemo: TRzMemo;
    lblShortRate: TRzLabel;
    edtShortRate: TRzEdit;
    lbl3: TRzLabel;
    cbbDeliveyWay: TComboBox;
    dtpDeliveryTime: TDateTimePicker;
    lbl4: TRzLabel;
    lbl5: TRzLabel;
    edt1: TRzEdit;
    lbl6: TRzLabel;
    RzMemo1: TRzMemo;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure edtPriceKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cbbDeliveyWayChange(Sender: TObject);
  private
    { Private declarations }
    function addddh():string; //�����Զ���ź�������
  public
    { Public declarations }
  end;

var
  FrmBDDMX: TFrmBDDMX;

implementation
uses UDM,bkhxz,bddlr,cxFilter,cxGridDBTableView, Formimage;
{$R *.dfm}

function TFrmBDDMX.addddh():string; //�����Զ���ź�������
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
  with DM.qryBAutoOrderID do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from �޲�������Ϣ�� where ������=:ddh');
    Parameters.ParamByName('ddh').Value:='CRHF'+IntToStr(year)+m+s;
    Open;
  end;
  if DM.qryBAutoOrderID.RecordCount=0 then
  begin
    autoddh:='CRHF'+IntToStr(year)+m+s;
    result:=autoddh;
    Exit;
  end
  else
  begin
    with DM.qryBAutoOrderID do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from �޲�������Ϣ�� where ������=:ddh');
      Parameters.ParamByName('ddh').Value:='CRHF'+IntToStr(year)+m+s+'-1';
      Open;
    end;
    if  not DM.qryBAutoOrderID.Eof then
    begin
      with DM.qryBAutoOrderID do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from �޲�������Ϣ�� where (������ like '''+('CRHF'+IntToStr(year)+m+s)+'%'') and (len(������)=(select max(len(������)) from �޲�������Ϣ�� where (������ like '''+('CRHF'+IntToStr(year)+m+s)+'%'')))');
        Open;
        Last;
      end;
      autoddh:=Copy(DM.qryBAutoOrderID.FieldByName('������').AsString,1,13)+IntToStr(StrToInt(Copy(DM.qryBAutoOrderID.FieldByName('������').AsString,14,2))+1);
      result:=autoddh;
    end
    else
    begin
      autoddh:='CRHF'+IntToStr(year)+m+s+'-1';
      result:=autoddh;
    end;
  end;
end;

procedure TFrmBDDMX.FormShow(Sender: TObject);
begin
  DM.qryBCategory.Open;
  if Self.Tag=1 then
  begin
    dtpOrderTime.Date:=Date();
    dtpDeliveryTime.Date:=Date();
    edtPurchaseID.SetFocus;
    edtOrderAddress.Text:='�Ϸ�'
  end;
  if Self.Tag=2 then
  begin
    edtPurchaseID.Text:=DM.qryBUnApprovedOrder.FieldByName('�ͻ��ɹ�������').AsString;
    edtPurchaseID.SetFocus;
    edtOrderAddress.Text:=DM.qryBUnApprovedOrder.FieldByName('ǩԼ�ص�').AsString;
    dtpOrderTime.DateTime:=DM.qryBUnApprovedOrder.FieldByName('ǩ��ʱ��').AsDateTime;
    edtProductName.Text:=DM.qryBUnApprovedOrder.FieldByName('Ʒ��').AsString;
    cbbCategory.Text:=DM.qryBUnApprovedOrder.FieldByName('��Ʒ����').AsString;
    mmoSpecification.Text:=DM.qryBUnApprovedOrder.FieldByName('���').AsString;
    edtPrice.Text:=DM.qryBUnApprovedOrder.FieldByName('����').AsString;
    edtOrderQuantity.Text:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
    edtShortRate.Text:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
    edt1.Text:=DM.qryBUnApprovedOrder.FieldByName('̨�ռӹ���').AsString;
    RzMemo1.Text:=DM.qryBUnApprovedOrder.FieldByName('���㷽ʽ').AsString;
    //img1.Picture:=DM.qryBUnApprovedOrder.FieldByName('��ͬɨ���').AsString;
    if DM.qryBUnApprovedOrder.FieldByName('������').Value=null then
    begin
      mmoDeliveyTimeAndAmount.Text:=DM.qryBUnApprovedOrder.FieldByName('��������').AsString;
      dtpDeliveryTime.Visible:=False;
      mmoDeliveyTimeAndAmount.Visible:=True;
      cbbDeliveyWay.ItemIndex:=1;
      dtpDeliveryTime.Date:=Date();
    end
    else
    begin
      dtpDeliveryTime.Date:=DM.qryBUnApprovedOrder.FieldByName('������').AsDateTime;
      cbbDeliveyWay.ItemIndex:=0;
    end;
    lstCustomerInfo.Items[0]:=DM.qryBUnApprovedOrder.FieldByName('�ͻ���').AsString;
    lstCustomerInfo.Items[1]:=DM.qryBUnApprovedOrder.FieldByName('�ͻ�����').AsString;
    mmoQualityRequirement.Text:=DM.qryBUnApprovedOrder.FieldByName('����Ҫ��').AsString;
    mmoPackagingRequirement.Text:=DM.qryBUnApprovedOrder.FieldByName('��װҪ��').AsString;
    mmoDeliveryDescribe.Text:=DM.qryBUnApprovedOrder.FieldByName('����Ҫ��').AsString;
    mmoWarpSource.Text:=DM.qryBUnApprovedOrder.FieldByName('��ɴ��Դ').AsString;
    mmoWeftSource.Text:=DM.qryBUnApprovedOrder.FieldByName('γɴ��Դ').AsString;
    mmoMemo.Text:=DM.qryBUnApprovedOrder.FieldByName('��ע').AsString;
  end;
  if Self.Tag=4 then
  begin
    edtPurchaseID.Text:=DM.qryBApprovedOrder.FieldByName('�ͻ��ɹ�������').AsString;
    edtPurchaseID.SetFocus;
    edtOrderAddress.Text:=DM.qryBApprovedOrder.FieldByName('ǩԼ�ص�').AsString;
    dtpOrderTime.DateTime:=DM.qryBApprovedOrder.FieldByName('ǩ��ʱ��').AsDateTime;
    edtProductName.Text:=DM.qryBApprovedOrder.FieldByName('Ʒ��').AsString;
    cbbCategory.Text:=DM.qryBApprovedOrder.FieldByName('��Ʒ����').AsString;
    mmoSpecification.Text:=DM.qryBApprovedOrder.FieldByName('���').AsString;
    edtPrice.Text:=DM.qryBApprovedOrder.FieldByName('����').AsString;
    edtOrderQuantity.Text:=DM.qryBApprovedOrder.FieldByName('������').AsString;
    edtShortRate.Text:=DM.qryBApprovedOrder.FieldByName('������').AsString;
    edt1.Text:=DM.qryBApprovedOrder.FieldByName('̨�ռӹ���').AsString;
    RzMemo1.Text:=DM.qryBApprovedOrder.FieldByName('���㷽ʽ').AsString;
    //img1.Picture:=DM.qryBUnApprovedOrder.FieldByName('��ͬɨ���').AsString;
    if DM.qryBApprovedOrder.FieldByName('������').Value=null then
    begin
      mmoDeliveyTimeAndAmount.Text:=DM.qryBApprovedOrder.FieldByName('��������').AsString;
      dtpDeliveryTime.Visible:=False;
      mmoDeliveyTimeAndAmount.Visible:=True;
      cbbDeliveyWay.ItemIndex:=1;
      dtpDeliveryTime.Date:=Date();
    end
    else
    begin
      dtpDeliveryTime.Date:=DM.qryBApprovedOrder.FieldByName('������').AsDateTime;
      cbbDeliveyWay.ItemIndex:=0;
    end;
    lstCustomerInfo.Items[0]:=DM.qryBApprovedOrder.FieldByName('�ͻ���').AsString;
    lstCustomerInfo.Items[1]:=DM.qryBApprovedOrder.FieldByName('�ͻ�����').AsString;
    mmoQualityRequirement.Text:=DM.qryBApprovedOrder.FieldByName('����Ҫ��').AsString;
    mmoPackagingRequirement.Text:=DM.qryBApprovedOrder.FieldByName('��װҪ��').AsString;
    mmoDeliveryDescribe.Text:=DM.qryBApprovedOrder.FieldByName('����Ҫ��').AsString;
    mmoWarpSource.Text:=DM.qryBApprovedOrder.FieldByName('��ɴ��Դ').AsString;
    mmoWeftSource.Text:=DM.qryBApprovedOrder.FieldByName('γɴ��Դ').AsString;
    mmoMemo.Text:=DM.qryBApprovedOrder.FieldByName('��ע').AsString;
    btnSave.Enabled:=False;
  end;
  if Self.Tag=3 then
  begin
    edtPurchaseID.Text:=DM.qryBUnApprovedOrder.FieldByName('�ͻ��ɹ�������').AsString;
    edtPurchaseID.SetFocus;
    edtOrderAddress.Text:=DM.qryBUnApprovedOrder.FieldByName('ǩԼ�ص�').AsString;
    dtpOrderTime.DateTime:=Date();
    edtProductName.Text:=DM.qryBUnApprovedOrder.FieldByName('Ʒ��').AsString;
    cbbCategory.Text:=DM.qryBUnApprovedOrder.FieldByName('��Ʒ����').AsString;
    mmoSpecification.Text:=DM.qryBUnApprovedOrder.FieldByName('���').AsString;
    edtPrice.Text:=DM.qryBUnApprovedOrder.FieldByName('����').AsString;
    edtOrderQuantity.Text:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
    edtShortRate.Text:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
    edt1.Text:=DM.qryBUnApprovedOrder.FieldByName('̨�ռӹ���').AsString;
    RzMemo1.Text:=DM.qryBUnApprovedOrder.FieldByName('���㷽ʽ').AsString;
    if DM.qryBUnApprovedOrder.FieldByName('������').Value=null then
    begin
      mmoDeliveyTimeAndAmount.Text:=DM.qryBUnApprovedOrder.FieldByName('��������').AsString;
      dtpDeliveryTime.Visible:=False;
      mmoDeliveyTimeAndAmount.Visible:=True;
      cbbDeliveyWay.ItemIndex:=1;
      dtpDeliveryTime.Date:=Date();
    end
    else
    begin
      dtpDeliveryTime.Date:=DM.qryBUnApprovedOrder.FieldByName('������').AsDateTime;
      cbbDeliveyWay.ItemIndex:=0;
    end;
    lstCustomerInfo.Items[0]:=DM.qryBUnApprovedOrder.FieldByName('�ͻ���').AsString;
    lstCustomerInfo.Items[1]:=DM.qryBUnApprovedOrder.FieldByName('�ͻ�����').AsString;
    mmoQualityRequirement.Text:=DM.qryBUnApprovedOrder.FieldByName('����Ҫ��').AsString;
    mmoPackagingRequirement.Text:=DM.qryBUnApprovedOrder.FieldByName('��װҪ��').AsString;
    mmoDeliveryDescribe.Text:=DM.qryBUnApprovedOrder.FieldByName('����Ҫ��').AsString;
    mmoWarpSource.Text:=DM.qryBUnApprovedOrder.FieldByName('��ɴ��Դ').AsString;
    mmoWeftSource.Text:=DM.qryBUnApprovedOrder.FieldByName('γɴ��Դ').AsString;
    mmoMemo.Text:=DM.qryBUnApprovedOrder.FieldByName('��ע').AsString;
  end;
end;

procedure TFrmBDDMX.edtPriceKeyPress(Sender: TObject; var Key: Char);
begin
 {  if not (key in['0'..'9',#8,'.','-']) then
   begin
    key:=#0;
    application.MessageBox('����������!','��ʾ',MB_OK+MB_ICONINFORMATION);
   end;}
end;

procedure TFrmBDDMX.btnSaveClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //�޲�������Ϣ���еĶ�������
 InsertedOrderID:string;//�����ӵĶ�����Ϣ�Ķ�����
 ModifingID:string ;//���ڱ��޸ĵĶ�����Ϣ�ı��
begin
  if dtpOrderTime.Date>Date()+1 then
  begin
    Application.MessageBox('�����ǩ��ʱ���д�����˲飡','��ʾ',MB_OK+MB_ICONINFORMATION);
    dtpOrderTime.SetFocus;
    Exit;
  end;
 case Self.Tag of
  1:begin
     try
      InsertedOrderID:=addddh();
      with DM.qryBUnApprovedOrderInsert do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into �޲�������Ϣ��(������,�ͻ��ɹ�������,�ͻ���,ǩԼ�ص�,ǩ��ʱ��,Ʒ��,��Ʒ����,���,������,����,������,��������,����Ҫ��,������,��װҪ��,����Ҫ��,��ɴ��Դ,γɴ��Դ,��ע,̨�ռӹ���,���㷽ʽ)');
        SQL.Add('values(:ddh,:khcgddh,:khh,:qydd,:qdsj,:pm,:cppb,:gg,:ddl,:dj,:jhq,:jhsy,:zlyq,:dyl,:bzyq,:fhyq,:jsly,:wsly,:bz,:trjgf,:jsfs)');
        Parameters.ParamByName('ddh').Value:=InsertedOrderID;
        Parameters.ParamByName('khcgddh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
        Parameters.ParamByName('qydd').Value:=Trim(edtOrderAddress.Text);
        Parameters.ParamByName('qdsj').Value:=formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
        Parameters.ParamByName('cppb').Value:=Trim(cbbCategory.Text);
        Parameters.ParamByName('gg').Value:=Trim(mmoSpecification.Text);
        Parameters.ParamByName('ddl').Value:=Trim(edtOrderQuantity.Text);
        if edt1.Text='' then
        begin
         Parameters.ParamByName('trjgf').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('trjgf').Value:=Trim(edt1.Text);
        end;
        if RzMemo1.Text='' then
        begin
         Parameters.ParamByName('jsfs').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('jsfs').Value:=Trim(RzMemo1.Text);
        end;

        //Parameters.ParamByName('htsmj').Assign(dbimg1.Picture);
        //Parameters.ParamByName('dj').Value:=Trim(edtPrice.Text);
        if edtPrice.Text='' then
        begin
         Parameters.ParamByName('dj').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dj').Value:=Trim(edtPrice.Text);
        end;
        if edtProductName.Text='' then
        begin
         Parameters.ParamByName('pm').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
        end;
        if dtpDeliveryTime.Visible then
        begin
          Parameters.ParamByName('jhq').Value:=formatdatetime('yyyy-mm-dd',dtpDeliveryTime.Date);
          Parameters.ParamByName('jhsy').Value:=null;
        end;
        if mmoDeliveyTimeAndAmount.Visible then
        begin
          Parameters.ParamByName('jhq').Value:=null;
          Parameters.ParamByName('jhsy').Value:=Trim(mmoDeliveyTimeAndAmount.Text);
        end;
        if edtShortRate.Text='' then
        begin
         Parameters.ParamByName('dyl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
        end;
        Parameters.ParamByName('zlyq').Value:=Trim(mmoQualityRequirement.Text);
        //Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
        Parameters.ParamByName('bzyq').Value:=Trim(mmoPackagingRequirement.Text);
        Parameters.ParamByName('fhyq').Value:=Trim(mmoDeliveryDescribe.Text);
        Parameters.ParamByName('jsly').Value:=Trim(mmoWarpSource.Text);
        Parameters.ParamByName('wsly').Value:=Trim(mmoWeftSource.Text);
        Parameters.ParamByName('bz').Value:=Trim(mmoMemo.Text);
        ExecSQL;
        Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        FrmBDDLR.rzrdgrpSelect.ItemIndex:=2;
        with DM.qryBUnApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ where ���۲��걨״̬=0');
          Open;
        end;

        FrmBDDLR.cxgrdbtblvwUnApprovedOrder.DataController.Filter.Root.Clear;
        FrmBDDLR.cxgrdbtblvwUnApprovedOrder.OptionsView.Navigator:=False;
        FrmBDDLR.btnModify.Enabled:=True;
        FrmBDDLR.btnDelete.Enabled:=True;
        FrmBDDLR.btnPrint.Enabled:=True;
        FrmBDDLR.cxgrdbclmnProductName.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnMarketingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnAccountingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnWeavingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnPurchasingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnCompanyLeaderExamineState.Visible:=False;

        AColumn:=FrmBDDLR.cxgrdbclmnUnOrderID;
        with FrmBDDLR.cxgrdbtblvwUnApprovedOrder.DataController.Filter  do
        begin
          Root.Clear;
          Root.AddItem(AColumn,foEqual,InsertedOrderID,InsertedOrderID);
          Active:=True;
        end;


      end;
     except
      Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
     end;
     
       { with DM.qry1 do
          begin
           Close;
           SQL.Clear;
           SQL.Add('select * from v_�޲�������Ϣ֯����������  where ������=ddh');
           Open;
           if Parameters.ParamByName('pm').Value<>null then
           with DM.sp1 do
           begin
            Close;
            procedureName:='proc_�޲����ձ����״̬֯���������ĸ���';
            Parameters.Refresh;
            with Parameters do
            begin
             ParamByName('@ddh').Value:=DM.qry1.FieldByName('������').Value;
            end;
            ExecProc;
           end;
          end;}
    end;
 2:begin
    ModifingID:=DM.qryBUnApprovedOrder.FieldByName('���').AsString;
      try
        if formatdatetime('yyyy-mm-dd',dtpOrderTime.DateTime)=DM.qryBUnApprovedOrder.FieldByName('ǩ��ʱ��').AsString then
        begin
          with DM.qryBUnApprovedOrderModify do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update �޲�������Ϣ�� set ������=:ddh,�ͻ��ɹ�������=:khcgddh,�ͻ���=:khh,ǩԼ�ص�=:qydd,ǩ��ʱ��=:qdsj,Ʒ��=:pm,��Ʒ����=:cppb,���=:gg,������=:ddl,����=:dj,������=:jhq,��������=:jhsy,');
            SQL.Add('����Ҫ��=:zlyq,������=:dyl,��װҪ��=:bzyq,����Ҫ��=:fhyq,��ɴ��Դ=:jsly,γɴ��Դ=:wsly,��ע=:bz,̨�ռӹ���=:trjgf,���㷽ʽ=:jsfs where ���=:bh');
            Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
            Parameters.ParamByName('khcgddh').Value:=Trim(edtPurchaseID.Text);
            Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
            Parameters.ParamByName('qydd').Value:=Trim(edtOrderAddress.Text);
            Parameters.ParamByName('qdsj').Value:=formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
            Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
            Parameters.ParamByName('cppb').Value:=Trim(cbbCategory.Text);
            Parameters.ParamByName('gg').Value:=Trim(mmoSpecification.Text);
            Parameters.ParamByName('ddl').Value:=Trim(edtOrderQuantity.Text);
        if edt1.Text='' then
        begin
         Parameters.ParamByName('trjgf').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('trjgf').Value:=Trim(edt1.Text);
        end;
        if RzMemo1.Text='' then
        begin
         Parameters.ParamByName('jsfs').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('jsfs').Value:=Trim(RzMemo1.Text);
        end;
            //Parameters.ParamByName('htsmj').Assign(dbimg1.Picture);
           // Parameters.ParamByName('dj').Value:=Trim(edtPrice.Text);
            if edtPrice.Text='' then
            begin
             Parameters.ParamByName('dj').Value:=null;
            end
            else
            begin
             Parameters.ParamByName('dj').Value:=Trim(edtPrice.Text);
            end;
            if edtProductName.Text='' then
            begin
             Parameters.ParamByName('pm').Value:=null;
            end
            else
            begin
             Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
            end;
            if dtpDeliveryTime.Visible then
            begin
              Parameters.ParamByName('jhq').Value:=formatdatetime('yyyy-mm-dd',dtpDeliveryTime.Date);
              Parameters.ParamByName('jhsy').Value:=null;
            end;
            if mmoDeliveyTimeAndAmount.Visible then
            begin
              Parameters.ParamByName('jhq').Value:=null;
              Parameters.ParamByName('jhsy').Value:=Trim(mmoDeliveyTimeAndAmount.Text);
            end;
            if edtShortRate.Text='' then
            begin
             Parameters.ParamByName('dyl').Value:=null;
            end
            else
            begin
             Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
            end;
            Parameters.ParamByName('zlyq').Value:=Trim(mmoQualityRequirement.Text);
            //Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
            Parameters.ParamByName('bzyq').Value:=Trim(mmoPackagingRequirement.Text);
            Parameters.ParamByName('fhyq').Value:=Trim(mmoDeliveryDescribe.Text);
            Parameters.ParamByName('jsly').Value:=Trim(mmoWarpSource.Text);
            Parameters.ParamByName('wsly').Value:=Trim(mmoWeftSource.Text);
            Parameters.ParamByName('bz').Value:=Trim(mmoMemo.Text);
            Parameters.ParamByName('bh').Value:=ModifingID;
            ExecSql;
            Application.MessageBox('���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
            with DM.qryBUnApprovedOrder do
            begin
              Close;
              Open;
            end;
          end;
        end
        else
        begin
          with DM.qryBUnApprovedOrderModify do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update �޲�������Ϣ�� set ������=:ddh,�ͻ��ɹ�������=:khcgddh,�ͻ���=:khh,ǩԼ�ص�=:qydd,ǩ��ʱ��=:qdsj,Ʒ��=:pm,��Ʒ����=:cppb,���=:gg,������=:ddl,����=:dj,������=:jhq,��������=:jhsy,');
            SQL.Add('����Ҫ��=:zlyq,������=:dyl,��װҪ��=:bzyq,����Ҫ��=:fhyq,��ɴ��Դ=:jsly,γɴ��Դ=:wsly,��ע=:bz,̨�ռӹ���=:trjgf,���㷽ʽ=:jsfs where ���=:bh');
            Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('������').AsString;
            Parameters.ParamByName('khcgddh').Value:=Trim(edtPurchaseID.Text);
            Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
            Parameters.ParamByName('qydd').Value:=Trim(edtOrderAddress.Text);
            Parameters.ParamByName('qdsj').Value:=formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
            Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
            Parameters.ParamByName('cppb').Value:=Trim(cbbCategory.Text);
            Parameters.ParamByName('gg').Value:=Trim(mmoSpecification.Text);
            Parameters.ParamByName('ddl').Value:=Trim(edtOrderQuantity.Text);
        if edt1.Text='' then
        begin
         Parameters.ParamByName('trjgf').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('trjgf').Value:=Trim(edt1.Text);
        end;
        if RzMemo1.Text='' then
        begin
         Parameters.ParamByName('jsfs').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('jsfs').Value:=Trim(RzMemo1.Text);
        end;
            //DM.qryBUnApprovedOrder.Post;
            //Parameters.ParamByName('htsmj').Assign(dbimg1.Picture);
              if edtPrice.Text='' then
              begin
               Parameters.ParamByName('dj').Value:=null;
              end
              else
              begin
               Parameters.ParamByName('dj').Value:=Trim(edtPrice.Text);
              end;
              if edtProductName.Text='' then
              begin
               Parameters.ParamByName('pm').Value:=null;
              end
              else
              begin
               Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
              end;
            if dtpDeliveryTime.Visible then
            begin
              Parameters.ParamByName('jhq').Value:=formatdatetime('yyyy-mm-dd',dtpDeliveryTime.Date);
              Parameters.ParamByName('jhsy').Value:=null;
            end;
            if mmoDeliveyTimeAndAmount.Visible then
            begin
              Parameters.ParamByName('jhq').Value:=null;
              Parameters.ParamByName('jhsy').Value:=Trim(mmoDeliveyTimeAndAmount.Text);
            end;
            if edtShortRate.Text='' then
            begin
             Parameters.ParamByName('dyl').Value:=null;
            end
            else
            begin
             Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
            end;
            Parameters.ParamByName('zlyq').Value:=Trim(mmoQualityRequirement.Text);
            //Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
            Parameters.ParamByName('bzyq').Value:=Trim(mmoPackagingRequirement.Text);
            Parameters.ParamByName('fhyq').Value:=Trim(mmoDeliveryDescribe.Text);
            Parameters.ParamByName('jsly').Value:=Trim(mmoWarpSource.Text);
            Parameters.ParamByName('wsly').Value:=Trim(mmoWeftSource.Text);
            Parameters.ParamByName('bz').Value:=Trim(mmoMemo.Text);
            Parameters.ParamByName('bh').Value:=ModifingID;
            ExecSql;
            Application.MessageBox('���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
            with DM.qryBUnApprovedOrder do
            begin
              Close;
              Open;
            end;
          end;
        end;
      except
         Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      end;
  end;
3:begin
    try
      InsertedOrderID:=addddh();
      with DM.qryBUnApprovedOrderInsert do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into �޲�������Ϣ��(������,�ͻ��ɹ�������,�ͻ���,ǩԼ�ص�,ǩ��ʱ��,Ʒ��,��Ʒ����,���,������,����,������,��������,����Ҫ��,������,��װҪ��,����Ҫ��,��ɴ��Դ,γɴ��Դ,��ע,̨�ռӹ���,���㷽ʽ)');
        SQL.Add('values(:ddh,:khcgddh,:khh,:qydd,:qdsj,:pm,:cppb,:gg,:ddl,:dj,:jhq,:jhsy,:zlyq,:dyl,:bzyq,:fhyq,:jsly,:wsly,:bz,:trjgf,:jsfs)');
        Parameters.ParamByName('ddh').Value:=InsertedOrderID;
        Parameters.ParamByName('khcgddh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
        Parameters.ParamByName('qydd').Value:=Trim(edtOrderAddress.Text);
        Parameters.ParamByName('qdsj').Value:=formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
        Parameters.ParamByName('cppb').Value:=Trim(cbbCategory.Text);
        Parameters.ParamByName('gg').Value:=Trim(mmoSpecification.Text);
        Parameters.ParamByName('ddl').Value:=Trim(edtOrderQuantity.Text);
        if edt1.Text='' then
        begin
         Parameters.ParamByName('trjgf').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('trjgf').Value:=Trim(edt1.Text);
        end;
        if RzMemo1.Text='' then
        begin
         Parameters.ParamByName('jsfs').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('jsfs').Value:=Trim(RzMemo1.Text);
        end;
        //Parameters.ParamByName('htsmj').Assign(dbimg1.Picture);
        //Parameters.ParamByName('dj').Value:=Trim(edtPrice.Text);
        if edtPrice.Text='' then
        begin
         Parameters.ParamByName('dj').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dj').Value:=Trim(edtPrice.Text);
        end;
        if edtProductName.Text='' then
        begin
        Parameters.ParamByName('pm').Value:=null;
        end
        else
        begin
        Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
        end;
        if dtpDeliveryTime.Visible then
        begin
          Parameters.ParamByName('jhq').Value:=formatdatetime('yyyy-mm-dd',dtpDeliveryTime.Date);
          Parameters.ParamByName('jhsy').Value:=null;
        end;
        if mmoDeliveyTimeAndAmount.Visible then
        begin
          Parameters.ParamByName('jhq').Value:=null;
          Parameters.ParamByName('jhsy').Value:=Trim(mmoDeliveyTimeAndAmount.Text);
        end;
        if edtShortRate.Text='' then
        begin
         Parameters.ParamByName('dyl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
        end;
        Parameters.ParamByName('zlyq').Value:=Trim(mmoQualityRequirement.Text);
        //Parameters.ParamByName('dyl').Value:=Trim(edtShortRate.Text);
        Parameters.ParamByName('bzyq').Value:=Trim(mmoPackagingRequirement.Text);
        Parameters.ParamByName('fhyq').Value:=Trim(mmoDeliveryDescribe.Text);
        Parameters.ParamByName('jsly').Value:=Trim(mmoWarpSource.Text);
        Parameters.ParamByName('wsly').Value:=Trim(mmoWeftSource.Text);
        Parameters.ParamByName('bz').Value:=Trim(mmoMemo.Text);
        ExecSQL;
        Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        FrmBDDLR.rzrdgrpSelect.ItemIndex:=2;
        with DM.qryBUnApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from v_�޲�������Ϣ where ���۲��걨״̬=0');
          Open;
        end;
        FrmBDDLR.cxgrdbtblvwUnApprovedOrder.DataController.Filter.Root.Clear;
        FrmBDDLR.cxgrdbtblvwUnApprovedOrder.OptionsView.Navigator:=False;
        FrmBDDLR.btnModify.Enabled:=True;
        FrmBDDLR.btnDelete.Enabled:=True;
        FrmBDDLR.btnPrint.Enabled:=True;
        FrmBDDLR.cxgrdbclmnProductName.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnMarketingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnAccountingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnWeavingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnPurchasingDepExamineState.Visible:=False;
        FrmBDDLR.cxgrdbclmnUnCompanyLeaderExamineState.Visible:=False;
        
        AColumn:=FrmBDDLR.cxgrdbclmnUnOrderID;
        with FrmBDDLR.cxgrdbtblvwUnApprovedOrder.DataController.Filter  do
        begin
          Root.Clear;
          Root.AddItem(AColumn,foEqual,InsertedOrderID,InsertedOrderID);
          Active:=True;
        end;
      end;
    except
      Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
    end;
   end;
 end;
 Self.Close;
end;

procedure TFrmBDDMX.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBDDMX.btnSearchClick(Sender: TObject);
begin
  FrmBKHXZ:=TFrmBKHXZ.Create(Self);
  FrmBKHXZ.ShowModal;
  FreeAndNil(FrmBKHXZ);
end;

procedure TFrmBDDMX.cbbDeliveyWayChange(Sender: TObject);
begin
  if cbbDeliveyWay.ItemIndex=0 then
  begin
    mmoDeliveyTimeAndAmount.Visible:=False;
    dtpDeliveryTime.Visible:=True;
  end;
  if cbbDeliveyWay.ItemIndex=1 then
  begin
    mmoDeliveyTimeAndAmount.Visible:=True;
    dtpDeliveryTime.Visible:=False;
  end;
end;

end.
