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
  user,Dep:string;  //录入人和所在部门
  modifingUnApprovedOrderDetailID:Integer;//正在被修改的未审核的订单明细信息的编号
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
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
end;

procedure TFrmBDDLR.frxrprtApprovedOrderGetValue(const VarName: String;
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
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
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
      if Application.MessageBox('需要重新下单或已经全部交货的情况下才可删除，随意删除会导致车间数据丢失！','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
      begin
        try
          with DM.qryBUnApprovedOrderDelete do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete 棉布订单信息表 where 订单号=:ddh');
            Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').Value;
            ExecSQL;
          end;
          with DM.qry3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('delete 棉布订单评审表 where 订单号=:ddh');
            Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').Value;
            ExecSQL;
          end;
          with DM.qryBUnApprovedOrder do
          begin
            Close;
            Open;
          end;
            Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
        except
          Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
        end;
      end
      else
      begin
       Application.MessageBox('没有可以删除的信息！','提示',MB_OK+MB_ICONINFORMATION);
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
    Application.MessageBox('没有可以显示的订单信息！','提示',MB_OK+MB_ICONINFORMATION);
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
        SQL.Add('select * from v_棉布订单信息 where 交货状态=1');
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
          SQL.Add('select * from v_棉布订单信息 where 公司领导审批状态=1 and 交货状态=0 ');
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
          SQL.Add('select * from v_棉布订单信息 where 财务部审核状态=1 and 公司领导审批状态=0 ');
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
          SQL.Add('select * from v_棉布订单信息 where 财务部审核状态=0');
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
        SQL.Add('select * from v_棉布订单审核 where 订单号=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
        Open;
       end;
         //DM.qryBUnApprovedOrder.Filtered:=True;
         //DM.qryBUnApprovedOrder.Filter:=cxgrdbtblvwUnApprovedOrder.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
        try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\Byjh.fr3') then
          begin
            Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\Byjh.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
        except
          Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);        end;      end;
     1:begin
       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_棉布订单审核 where 订单号=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
        Open;
       end;

        //DM.qryBunApprovedOrder.Filtered:=True;
        //DM.qryBunApprovedOrder.Filter:=cxgrdbtblvwUnApprovedOrder.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
         try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderApproved.fr3') then
          begin
            Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;

          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
         except
          Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);        end;
       end;
     2:begin

       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_棉布订单审核 where 订单号=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
        Open;
       end;

        //DM.qryBunApprovedOrder.Filtered:=True;
        //DM.qryBunApprovedOrder.Filter:=cxgrdbtblvwUnApprovedOrder.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
         try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderApproved.fr3') then
          begin
            Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;

          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
         except
          Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);        end;
       end;
      3:begin
       with dm.qrydy do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select * from v_棉布订单审核 where 订单号=:ddh');
        Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
        Open;
       end;
        //DM.qryBunApprovedOrder.Filtered:=True;
         //DM.qryBunApprovedOrder.Filter:=cxgrdbtblvwUnApprovedOrder.DataController.Filter.FilterText; //保证与cxgrid当前数据一致
         try
          if not FileExists(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderunApproved.fr3') then
          begin
            Application.MessageBox('打印失败,可能是系统文件丢失,尝试下重新安装程序!','提示',MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\ReportSheet1\BOrderunApproved.fr3');
          frxrprt1.PrepareReport();
          frxrprt1.ShowReport(True);
         except
          Application.MessageBox('打印失败，请核查原因！','提示',MB_OK+MB_ICONINFORMATION);         end;
        end;
  end;
end;




procedure TFrmBDDLR.frxrprt1GetValue(const VarName: String;
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
    Application.MessageBox('没有可以修改的信息！','提示',MB_OK+MB_ICONINFORMATION);
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
if Application.MessageBox('确定作废此单吗?作废后将不能更改','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
 begin
 with dm.qryzfzt do
  begin
   Close;
   SQL.Clear;
   SQL.Add('update 棉布订单信息表 set 作废状态=1 where 订单号=:ddh');
   Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
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
if Application.MessageBox('确定此单是市场单或续单吗?修改过后将不能撤销，请按规定操作','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
 begin
 with dm.qry5 do
  begin
   Close;
   SQL.Clear;
   SQL.Add('update 棉布订单信息表 set 市场单状态=1,销售部申报状态=1 where 订单号=:ddh');
   Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
   ExecSql;
  end;
 with dm.qry6 do
  begin
   Close;
   SQL.Clear;
   SQL.Add('insert into 棉布订单评审表 (订单号)');
   SQL.Add('values(:ddh)');
   Parameters.ParamByName('ddh').Value:=DM.qryBUnApprovedOrder.FieldByName('订单号').AsString;
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
