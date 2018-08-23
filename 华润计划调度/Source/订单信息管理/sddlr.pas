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
  user,Dep:string;  //录入人和部门信息
  modifingUnApprovedOrderDetailID:Integer;//正在被修改的未审核的订单明细信息的编号
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

function TFrmSDDLR.addddh():string; //订单自动编号函数定义
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
    SQL.Add('select * from 棉纱订单信息表 where 订单号=:ddh');
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
      SQL.Add('select * from 棉纱订单信息表 where 订单号=:ddh');
      Parameters.ParamByName('ddh').Value:='CRC'+IntToStr(year)+m+s+'-1';
      Open;
    end;
    if  not DM.qrySAutoOrderID.Eof then
    begin
      with DM.qrySAutoOrderID do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from 棉纱订单信息表 where (订单号 like '''+('CRC'+IntToStr(year)+m+s)+'%'') and (len(订单号)=(select max(len(订单号)) from 棉纱订单信息表 where (订单号 like '''+('CRC'+IntToStr(year)+m+s)+'%'')))');
        Open;
        Last;
      end;
      autoddh:=Copy(DM.qrySAutoOrderID.FieldByName('订单号').AsString,1,12)+IntToStr(StrToInt(Copy(DM.qrySAutoOrderID.FieldByName('订单号').AsString,13,2))+1);
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
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
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
    Application.MessageBox('没有可以增加明细的订单信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TFrmSDDLR.NModifyDetailClick(Sender: TObject);
begin
  if DM.qrySUnApprovedOrderDetail.FieldByName('审核状态').Value<>'未审核' then
    begin
      Application.MessageBox('信息正在审核或已审核！','提示',MB_OK+MB_ICONINFORMATION);
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
  if DM.qrySUnApprovedOrderDetail.FieldByName('审核状态').Value<>'未审核' then
    begin
      Application.MessageBox('信息正在审核或已审核！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      if Application.MessageBox('确定删除该明细信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
       try
        DM.qrySUnApprovedOrderDetail.Delete;
        Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
       except
        Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
       end;
      end;
    end;
end;

procedure TFrmSDDLR.NApproveBeginClick(Sender: TObject);
begin
  if DM.qrySUnApprovedOrderDetail.FieldByName('审核状态').Value<>'未审核' then
    begin
      Application.MessageBox('信息正在审核或已审核！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      modifingUnApprovedOrderDetailID:=DM.qrySUnApprovedOrderDetail.FieldByName('编号').AsInteger;
      try
          with DM.qrySUnApprovedOrderDetailModify do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update 棉纱订单明细表 set 审核状态=:shzt where 编号=:bh');
            Parameters.ParamByName('shzt').Value:='正审核';
            Parameters.ParamByName('bh').Value:=modifingUnApprovedOrderDetailID;
            ExecSQL;
            DM.qrySUnApprovedOrderDetail.Refresh;
            Application.MessageBox('审核状态更新成功！','提示',MB_OK+MB_ICONINFORMATION);
          end;
      except
            Application.MessageBox('审核状态更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
    end;
end;

procedure TFrmSDDLR.NApproveSuccessClick(Sender: TObject);
begin
    if DM.qrySUnApprovedOrderDetail.FieldByName('审核状态').Value<>'正审核' then
    begin
      Application.MessageBox('信息未审核或已审核！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      if Application.MessageBox('确定该订单明细信息审核成功?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        modifingUnApprovedOrderDetailID:=DM.qrySUnApprovedOrderDetail.FieldByName('编号').AsInteger;
       try
          DM.ADOConnection1.BeginTrans;
          with DM.spSApproveStateUpdate do
          begin
            Close;
            procedureName:='proc_棉纱订单明细_棉纱订单信息审核更新';
            Parameters.Refresh;
            with Parameters do
            begin
              ParamByName('@ID').Value:=modifingUnApprovedOrderDetailID;
              ParamByName('@OrderID').Value:=DM.qrySUnApprovedOrderDetail.FieldByName('订单号').AsString;
            end;
            ExecProc;
          end;
          Application.MessageBox('审核状态更新成功！','提示',MB_OK+MB_ICONINFORMATION);
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
          Application.MessageBox('审核状态更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
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
  if (Pos('正审核',AViewInfo.GridRecord.DisplayTexts[cxgrdbclmnApproveState.Index])> 0) then
  begin //标识审核状态,审核状态变为'正审核'的时候，记录变为红色
    ACanvas.Canvas.Font.Color:= clRed;//clActiveCaption
  end;
  if (Pos('已审核',AViewInfo.GridRecord.DisplayTexts[cxgrdbclmnApproveState.Index])> 0)  then
  begin //标识审核状态,审核状态变为'已审核'的时候，记录变为绿色
    ACanvas.Canvas.Font.Color:= clGreen;//clActiveCaption
  end;
end;

procedure TFrmSDDLR.frxrprt1GetValue(const VarName: String;
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
  if VarName='开始日期' then   //在打印页面显示订单签订时间的开始日期
  begin
    Value:=formatdatetime('yyyy-mm-dd',dtpBegin.Date);
  end;
  if VarName='结束日期' then   //在打印页面显示订单签订时间的结束日期
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
            SQL.Add('select * from v_棉纱订单信息  where (签订时间 between :xdq1 and :xdq2 ) and (交货状态=0) and (审核状态=1) ');
            Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
            Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
            Open;
          end;
          with DM.qrySUnApprovedOrder do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_棉纱订单信息  where (签订时间 between :xdq1 and :xdq2 ) and (审核状态=0) ');
            Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
            Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
            Open;
          end;
          with DM.qrySApprovedOrderDetail do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 棉纱订单明细表 order by 订单号');
            Open;
          end;
          with DM.qrySUnApprovedOrderDetail do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 棉纱订单明细表 order by 订单号');
            Open;
          end;
          if (DM.qrySApprovedOrder.Eof and DM.qrySUnApprovedOrder.Eof) then
          begin
            Application.MessageBox('在此时期内没有数据可以查询，请重新选择时期！','提示',MB_OK+MB_ICONINFORMATION);
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
              SQL.Add('select * from v_棉纱订单信息  where (签订时间 between :xdq1 and :xdq2 )and (交货状态=0) and (审核状态=1)');
              Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
              Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
              Open;
            end;
            with DM.qryfrxSUnApprovedOrder do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from v_棉纱订单信息  where (签订时间 between :xdq1 and :xdq2) and (审核状态=0)');
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
            SQL.Add('select * from v_棉纱订单信息  where (签订时间 between :xdq1 and :xdq2 )and (交货状态=1)');
            Parameters.ParamByName('xdq1').Value:=DateToStr(dtpBegin.Date);
            Parameters.ParamByName('xdq2').Value:=DateToStr(dtpEnd.Date);
            Open;
          end;
          with DM.qrySApprovedOrderDetail do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 棉纱订单明细表 order by 订单号');
            Open;
          end;
          if DM.qrySApprovedOrder.Eof then
          begin
            Application.MessageBox('在此时期内没有数据可以查询，请重新选择时期！','提示',MB_OK+MB_ICONINFORMATION);
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
              SQL.Add('select * from v_棉纱订单信息  where (签订时间 between :xdq1 and :xdq2 )and (交货状态=1) ');
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
  rzdtOrderAddress.Text:='合肥';
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
  InsertedOrderID:string;//记录刚增加进去的订单的订单号
  ModifingOrderID:string ;//正在被修改的订单的订单号
begin
  case rzgrpbxInput.Tag of
  1:begin
      try
        InsertedOrderID:=addddh();
        with DM.qrySUnApprovedOrder do
        begin
          Close;
          SQL.Clear;
          SQL.Add('insert into 棉纱订单信息表(订单号,客户采购订单号,客户号,签约地点,签订时间,发货描述,备注)');
          SQL.Add('values(:ddh,:khcgddh,:khh,:qydd,:qdsj,:fhms,:bz)');
          Parameters.ParamByName('ddh').Value:=InsertedOrderID;
          Parameters.ParamByName('khcgddh').Value:=Trim(rzdtPurchaseID.Text);
          Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
          Parameters.ParamByName('qydd').Value:=Trim(rzdtOrderAddress.Text);
          Parameters.ParamByName('qdsj').Value:=formatdatetime('yyyy-mm-dd',dtpOrderTime.DateTime);
          Parameters.ParamByName('fhms').Value:=Trim(rzmDeliveryDescribe.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmMemo.Text);
          ExecSQL;
          Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
          SQL.Clear;
          SQL.Add('select * from v_棉纱订单信息 where 订单号=:ddh');
          Parameters.ParamByName('ddh').Value:=InsertedOrderID;
          open;
        end;
        btnModify.Enabled:=True;
        btnDelete.Enabled:=True;
      except
          Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
    end;
  2:begin
      ModifingOrderID:=DM.qrySUnApprovedOrder.FieldByName('订单号').AsString;
      try
        with DM.qrySUnApprovedOrderModify do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update v_棉纱订单信息 set 客户采购订单号=:khcgddh,客户号=:khh,签约地点=:qydd,签订时间=:qdsj, ');
          SQL.Add('发货描述=:fhms,备注=:bz where 订单号=:ddh');
          Parameters.ParamByName('khcgddh').Value:=Trim(rzdtPurchaseID.Text);
          Parameters.ParamByName('khh').Value:=lstCustomerInfo.Items[0];
          Parameters.ParamByName('qydd').Value:=Trim(rzdtOrderAddress.Text);
          Parameters.ParamByName('qdsj').Value:=DateToStr(dtpOrderTime.Date);
          Parameters.ParamByName('fhms').Value:=Trim(rzmDeliveryDescribe.Text);
          Parameters.ParamByName('bz').Value:=Trim(rzmMemo.Text);
          Parameters.ParamByName('ddh').Value:=ModifingOrderID;
          ExecSql;
          Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
          with DM.qrySUnApprovedOrder  do
          begin
            Close;
            Open;
          end;
        end;
      except
         Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
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
      rzdtPurchaseID.Text:=DM.qrySUnApprovedOrder.FieldByName('客户采购订单号').AsString;
      rzdtPurchaseID.SetFocus;
      rzdtOrderAddress.Enabled:=True;
      rzdtOrderAddress.Text:=DM.qrySUnApprovedOrder.FieldByName('签约地点').AsString;
      dtpOrderTime.Enabled:=True;
      dtpOrderTime.Date:=DM.qrySUnApprovedOrder.FieldByName('签订时间').AsDateTime;
      lstCustomerInfo.Enabled:=True;
      lstCustomerInfo.Items[0]:=DM.qrySUnApprovedOrder.FieldByName('客户号').AsString;
      lstCustomerInfo.Items[1]:=DM.qrySUnApprovedOrder.FieldByName('客户名称').AsString;
      rzmDeliveryDescribe.Enabled:=True;
      rzmDeliveryDescribe.Text:=DM.qrySUnApprovedOrder.FieldByName('发货描述').AsString;
      rzmMemo.Enabled:=True;
      rzmMemo.Text:=DM.qrySUnApprovedOrder.FieldByName('备注').AsString;
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
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
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
            Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
        except
          Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);        end;      end;
      if cxgrdOrder.FocusedView=cxgrdbtblvwUnApprovedOrder then
      begin
        try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderUnApproved.fr3') then
          begin
            Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderUnApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
        except
          Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);        end;      end;
    end;
  1:begin
      try
        if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderDeliveried.fr3') then
        begin
          Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
          Exit;
        end;
        frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet\SOrderDeliveried.fr3');
        frxrprt1.PrepareReport();
        frxrprt1.ShowReport(True);
      except
        Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);      end;    end;
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
  if DM.qrySUnApprovedOrderDetail.FieldByName('审核状态').Value<>'正审核' then
    begin
      Application.MessageBox('信息未审核或已审核成功！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
  else
  begin
      modifingUnApprovedOrderDetailID:=DM.qrySUnApprovedOrderDetail.FieldByName('编号').AsInteger;
      try
          with DM.qrySUnApprovedOrderDetailModify do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update 棉纱订单明细表 set 审核状态=:shzt where 编号=:bh');
            Parameters.ParamByName('shzt').Value:='未审核';
            Parameters.ParamByName('bh').Value:=modifingUnApprovedOrderDetailID;
            ExecSQL;
            DM.qrySUnApprovedOrderDetail.Refresh;
            Application.MessageBox('审核状态更新成功！','提示',MB_OK+MB_ICONINFORMATION);
          end;
      except
            Application.MessageBox('审核状态更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
  end;
end;

procedure TFrmSDDLR.NApproveFailClick(Sender: TObject);
begin
   if DM.qrySUnApprovedOrderDetail.FieldByName('审核状态').Value<>'正审核' then
    begin
      Application.MessageBox('信息未审核或已审核！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end
   else
   begin
      if Application.MessageBox('确定审核失败,删除该订单信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
       try
        DM.qrySUnApprovedOrder.Delete;
        Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
       except
        Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
       end;
      end;
   end;
end;

procedure TFrmSDDLR.btnDeleteClick(Sender: TObject);
var
  WhetherCanDelete:Boolean;//返回存储过程的输出值(订单信息能否删除)
begin
  if cxgrdbtblvwUnApprovedOrder.ViewData.RowCount>0 then
  begin
    with DM.spSOrderInfoWhetherCanDelete do
    begin
      Close;
      ProcedureName:='proc_棉纱订单信息是否可以删除';
      Parameters.Refresh;
      with Parameters do
      begin
        ParamByName('@OrderID').Value:=DM.qrySUnApprovedOrder.FieldByName('订单号').AsString;
        ParamByName('@state').Direction:=pdOutPut;
      end;
      ExecProc;
      WhetherCanDelete:=Parameters.ParamByName('@state').Value;
    end;
    if WhetherCanDelete then
    begin
      if Application.MessageBox('确定删除该订单信息?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        try
         with DM.qrySUnApprovedOrderDelete do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete 棉纱订单信息表 where 订单号=:ddh');
            Parameters.ParamByName('ddh').Value:=DM.qrySUnApprovedOrder.FieldByName('订单号').Value;
            ExecSQL;
            Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
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
          Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
        end;
      end;
    end
    else
    begin
      Application.MessageBox('订单正处于审核中，不能删除！','提示',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
  end
  else
  begin
    Application.MessageBox('没有可以删除的信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
end;

end.
