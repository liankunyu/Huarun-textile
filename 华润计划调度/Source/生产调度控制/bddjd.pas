unit bddjd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxBlobEdit, cxTextEdit, cxCalc, cxCheckBox, cxContainer, Mask,
  RzEdit, StdCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, RzButton, ComCtrls, RzLabel, RzPanel,
  cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls, frxRich, frxClass, frxExportXLS, frxGradient, frxDBSet,IniFiles,
  ImgList, RzDBEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCalendar, cxTimeEdit, RzCmboBx, Menus, DBCtrls,cxGridExportLink,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmBDDJD = class(TForm)
    frxrprtWeavingDynamicInfo: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle1: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    frxXLSExport1: TfrxXLSExport;
    RzPanel1: TRzPanel;
    btnQuery: TRzToolButton;
    btnAdd: TRzToolButton;
    btnSave: TRzToolButton;
    btnCancel: TRzToolButton;
    btnModify: TRzToolButton;
    btnPrint: TRzToolButton;
    btnExit: TRzToolButton;
    btnDelete: TRzToolButton;
    cxStyle11: TcxStyle;
    RzToolButton1: TRzToolButton;
    rzgrpbxInput: TRzGroupBox;
    lblDailySizingAmount: TRzLabel;
    lblUnit3: TRzLabel;
    lblSpeed: TRzLabel;
    lblUnit6: TRzLabel;
    lblEfficiency: TRzLabel;
    lblDailyMachineWeight: TRzLabel;
    lblUnit7: TRzLabel;
    lblouttoWarehouseAmount: TRzLabel;
    lbl2: TRzLabel;
    edtDailySizingAmount: TRzEdit;
    edtEfficiency: TRzEdit;
    edtDailyMachineWeight: TRzEdit;
    edtIntoWarehouseAmount: TRzEdit;
    edtSpeed: TRzEdit;
    RzLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    DateTimePicker1: TDateTimePicker;
    RzLabel6: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel8: TRzLabel;
    RzEdit4: TRzEdit;
    cxgrdWeavingDynamicInfo: TcxGrid;
    cxgrdbtblvwWeavingDynamicInfo: TcxGridDBTableView;
    cxgrdbtblvwWeavingDynamicInfoColumn1: TcxGridDBColumn;
    cxgrdbclmnCustomerName: TcxGridDBColumn;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnOrderAmount: TcxGridDBColumn;
    cxgrdbclmnDeliveryTime: TcxGridDBColumn;
    cxgrdbclmnDeliveryTimeAndAmount: TcxGridDBColumn;
    cxgrdbclmnProductionDate: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoColumn2: TcxGridDBColumn;
    cxgrdbclmnPlanMachineType: TcxGridDBColumn;
    cxgrdbclmnWarpSource: TcxGridDBColumn;
    cxgrdbclmnWeftSource: TcxGridDBColumn;
    cxgrdWeavingDynamicInfoDBTableView1: TcxGridDBTableView;
    cxgrdWeavingDynamicInfoDBTableView1Column1: TcxGridDBColumn;
    cxgrdWeavingDynamicInfoDBTableView1Column2: TcxGridDBColumn;
    cxgrdWeavingDynamicInfoDBTableView1Column3: TcxGridDBColumn;
    cxgrdWeavingDynamicInfoDBTableView1Column8: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2: TcxGridDBTableView;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column2: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column3: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column4: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column1: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column5: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column6: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column7: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column8: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column9: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column10: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column11: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView2Column12: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3: TcxGridDBTableView;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column1: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column2: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column3: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column4: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column5: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column6: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column7: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column8: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column9: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column10: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column11: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView3Column12: TcxGridDBColumn;
    cxgrdlvlWeavingDynamicInfo: TcxGridLevel;
    cxgrdWeavingDynamicInfoLevel1: TcxGridLevel;
    cxgrdlvlWeavingDynamicInfoLevel2: TcxGridLevel;
    cxgrdlvlWeavingDynamicInfoLevel3: TcxGridLevel;
    lbl6: TRzLabel;
    dtp1: TDateTimePicker;
    lbl7: TRzLabel;
    lbl8: TRzLabel;
    edt2: TRzEdit;
    lbl9: TRzLabel;
    RzGroupBox2: TRzGroupBox;
    lbl3: TRzLabel;
    lbl11: TRzLabel;
    edt4: TRzEdit;
    lbl12: TRzLabel;
    RzComboBox2: TRzComboBox;
    RzToolButton9: TRzToolButton;
    RzToolButton10: TRzToolButton;
    RzToolButton11: TRzToolButton;
    RzToolButton12: TRzToolButton;
    RzToolButton13: TRzToolButton;
    RzToolButton14: TRzToolButton;
    edt3: TRzEdit;
    RzToolButton15: TRzToolButton;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    lbl10: TRzLabel;
    edt5: TRzEdit;
    lbl13: TRzLabel;
    edt6: TRzEdit;
    dtp2: TDateTimePicker;
    lbl14: TRzLabel;
    lbl15: TRzLabel;
    lbl16: TRzLabel;
    lbl18: TRzLabel;
    edt7: TRzEdit;
    lbl19: TRzLabel;
    edt8: TRzEdit;
    lbl20: TRzLabel;
    lbl21: TRzLabel;
    dtp4: TDateTimePicker;
    lbl22: TRzLabel;
    edt9: TRzEdit;
    dtp5: TDateTimePicker;
    lbl23: TRzLabel;
    lbl24: TRzLabel;
    edt10: TRzEdit;
    lbl25: TRzLabel;
    lbl26: TRzLabel;
    edt11: TRzEdit;
    cxgrdlvlWeavingDynamicInfoLevel4: TcxGridLevel;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4: TcxGridDBTableView;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4Column1: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4Column2: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4Column3: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4Column4: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4Column5: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4Column6: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView4Column7: TcxGridDBColumn;
    cxgrdlvlWeavingDynamicInfoLevel5: TcxGridLevel;
    cxgrdbtblvwWeavingDynamicInfoDBTableView5: TcxGridDBTableView;
    cxgrdbtblvwWeavingDynamicInfoDBTableView5Column1: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView5Column2: TcxGridDBColumn;
    cxgrdlvlWeavingDynamicInfoLevel6: TcxGridLevel;
    cxgrdbtblvwWeavingDynamicInfoDBTableView6: TcxGridDBTableView;
    cxgrdbtblvwWeavingDynamicInfoDBTableView6Column1: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView6Column2: TcxGridDBColumn;
    cxgrdlvlWeavingDynamicInfoLevel7: TcxGridLevel;
    cxgrdbtblvwWeavingDynamicInfoDBTableView7: TcxGridDBTableView;
    cxgrdlvlWeavingDynamicInfoLevel8: TcxGridLevel;
    cxgrdbtblvwWeavingDynamicInfoDBTableView8: TcxGridDBTableView;
    cxgrdbtblvwWeavingDynamicInfoDBTableView7Column1: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView7Column3: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView7Column4: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView7Column5: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView8Column1: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView8Column3: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView8Column4: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView8Column5: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView8Column6: TcxGridDBColumn;
    cxgrdbtblvwWeavingDynamicInfoDBTableView8Column8: TcxGridDBColumn;
    pm2: TPopupMenu;
    N1: TMenuItem;
    pm3: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    btn1: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton16: TRzToolButton;
    RzToolButton17: TRzToolButton;
    RzToolButton18: TRzToolButton;
    RzToolButton19: TRzToolButton;
    lbl27: TRzLabel;
    lbl28: TRzLabel;
    lbl29: TRzLabel;
    lbl30: TRzLabel;
    lbl31: TRzLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxgrdbclmnWeavingDynamicInfoDBTableView5Column3: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView6Column3: TcxGridDBColumn;
    rzgroupbox1: TRzGroupBox;
    cxstyl1: TcxStyle;
    RzDBMemo1: TRzDBMemo;
    cxgrdbclmnWeavingDynamicInfoColumn3: TcxGridDBColumn;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    edt1: TRzEdit;
    lbl1: TRzLabel;
    lbl4: TRzLabel;
    edt12: TRzEdit;
    dlgSave1: TSaveDialog;
    N3: TMenuItem;
    N6: TMenuItem;
    cxgrdlvlWeavingDynamicInfoLevel9: TcxGridLevel;
    cxgrdbtblvwWeavingDynamicInfoDBTableView9: TcxGridDBTableView;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column1: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column2: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column3: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column4: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column5: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column6: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column7: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column8: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column9: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column10: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column11: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column12: TcxGridDBColumn;
    btn2: TRzToolButton;
    cxgrdbclmnWeavingDynamicInfoDBTableView8Column2: TcxGridDBColumn;
    btn4: TRzToolButton;
    pm4: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column13: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column14: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column15: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column16: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column17: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column18: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column19: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column20: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column21: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column22: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView2Column13: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView2Column14: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView2Column15: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView2Column16: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView2Column17: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoColumn4: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoColumn5: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoColumn6: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoColumn7: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoColumn8: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column23: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column24: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column26: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView3Column27: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column13: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column14: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column15: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column16: TcxGridDBColumn;
    cxgrdbclmnWeavingDynamicInfoDBTableView9Column17: TcxGridDBColumn;
    lbl5: TRzLabel;
    lbl17: TRzLabel;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure RzToolButton18Click(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure RzToolButton16Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure RzToolButton17Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton12Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure RzToolButton13Click(Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxgrdbtblvwWeavingDynamicInfoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxgrdWeavingDynamicInfoDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxgrdbtblvwWeavingDynamicInfoColumn2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxgrdbtblvwWeavingDynamicInfoMouseEnter(Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView2MouseEnter(
      Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView3MouseEnter(
      Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView5MouseEnter(
      Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView6MouseEnter(
      Sender: TObject);
    procedure cxGrid1MouseEnter(Sender: TObject);
    procedure RzToolButton19Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView5MouseDown(
      Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure N6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView8StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxgrdbtblvwWeavingDynamicInfoFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure cxgrdbtblvwWeavingDynamicInfoDBTableView6MouseDown(
      Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);

   



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBDDJD: TFrmBDDJD;
  user,Dep:string;  //录入人和所在部门
  lFile:TiniFile;
  procedure pbddjd(AHandle:THandle);stdcall;

implementation
uses UDM,bddjdcz,bddxxcz;

{$R *.dfm}

procedure pbddjd(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBDDJD:=TFrmBDDJD.Create(Application);
  try
    FrmBDDJD.ShowModal;
  finally
    TFrmBDDJD(FrmBDDJD).Free;
  end;
end;

procedure TFrmBDDJD.btnExitClick(Sender: TObject);
begin
Self.Close;
end;

procedure TFrmBDDJD.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
  user:=lFile.ReadString('登录信息','name','');
  Dep:=lFile.ReadString('登录信息','bmmc','');
  DM.qryBOrderID.Open;
  DM.qrydsdd.Open;
  DM.qrytlscdd.Open;
  DM.qryljdd.Open;
  DM.qryjsyxgl.Open;
  DM.qrywsyxgl.Open;
  DM.qryjsgl.Open;
  DM.qrywsgl.Open;
  DM.qryzjxx.Open;
  DM.qryddsczj.Open;
  DM.qryzzdd.Open;
  dtp1.Date:=Date();
  dtp2.Date:=Date();
  //dtp3.Date:=Date();
  dtp4.Date:=Date();
  dtp5.Date:=Date();
  DateTimePicker1.Date:=Date();
  dtp1.Date:=Date();
end;

{procedure TFrmBDDJD.mniSearchClick(Sender: TObject);
begin
if cxGridDBTableView1.ViewData.RowCount>0 then
 begin
 if Application.MessageBox('确定要转至等纱订单吗？','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  try
   DM.ADOConnection1.BeginTrans;
   with DM.spBMachineStateUpdate do
   begin
    Close;
    procedureName:='proc_织布生产动态信息_订单状态制定';
    Parameters.Refresh;
    Parameters.ParamByName('@OrderID').Value:=DM.qryBOrderID.FieldByName('订单号').AsString;
    Parameters.ParamByName('@state').Value:=3;
    ExecProc;
    Application.MessageBox('转单成功！','提示',MB_OK+MB_ICONINFORMATION);
    DM.ADOConnection1.CommitTrans;
    with DM.qrydsdd do
    begin
     Close;
     Open;
    end;
   end;
  except
   Application.MessageBox('转单失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   DM.ADOConnection1.RollbackTrans;
  end;
 end;
end;


procedure TFrmBDDJD.mniCancelClick(Sender: TObject);
begin
Exit;
end;  }

procedure TFrmBDDJD.N1Click(Sender: TObject);
begin
if cxgrdbtblvwWeavingDynamicInfoDBTableView2.ViewData.RowCount>0 then
 begin
 if Application.MessageBox('确定要转至投料生产订单吗？','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  try
   DM.ADOConnection1.BeginTrans;
   with DM.spBMachineStateUpdate do
   begin
    Close;
    procedureName:='proc_织布生产动态信息_订单状态制定';
    Parameters.Refresh;
    Parameters.ParamByName('@OrderID').Value:=DM.qrydsdd.FieldByName('订单号').AsString;
    Parameters.ParamByName('@state').Value:=0;
    ExecProc;
    Application.MessageBox('转单成功！','提示',MB_OK+MB_ICONINFORMATION);
    DM.ADOConnection1.CommitTrans;
    with DM.qrydsdd do
    begin
     Close;
     Open;
    end;
    with DM.qrytlscdd do
    begin
     Close;
     Open;
    end;
   end;
  except
   Application.MessageBox('转单失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   DM.ADOConnection1.RollbackTrans;
  end;
 end;
end;

procedure TFrmBDDJD.N4Click(Sender: TObject);
begin
if cxgrdbtblvwWeavingDynamicInfo.ViewData.RowCount>0 then
 begin
  if Application.MessageBox('确定要转至了机订单吗？转单之后相应品种的整经信息会被自动删除','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  try
   DM.ADOConnection1.BeginTrans;
   with DM.spBMachineStateUpdate do
   begin
    Close;
    procedureName:='proc_织布生产动态信息_订单状态制定';
    Parameters.Refresh;
    Parameters.ParamByName('@OrderID').Value:=DM.qrytlscdd.FieldByName('订单号').AsString;
    Parameters.ParamByName('@state').Value:=1;
    ExecProc;
    with DM.qry7 do
    begin
     Close;
     SQL.Clear;
     SQL.Add('delete from 整经信息 where 品名=:pm');
     Parameters.ParamByName('pm').Value:=DM.qrytlscdd.FieldByName('品名').AsString;
     ExecSQL;
    end;
    with DM.qry14 do
    begin
     Close;
     SQL.Clear;
     SQL.Add('update 棉布订单信息表 set 了机日期=:ljrq where 订单号=:ddh');
     Parameters.ParamByName('ljrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
     Parameters.ParamByName('ddh').Value:=DM.qrytlscdd.FieldByName('订单号').AsString;
     ExecSQL;
    end;
    Application.MessageBox('转单成功！','提示',MB_OK+MB_ICONINFORMATION);
    DM.ADOConnection1.CommitTrans;
    with DM.qryljdd do
    begin
     Close;
     Open;
    end;
    with DM.qrytlscdd do
    begin
     Close;
     Open;
    end;
   end;
  except
   Application.MessageBox('转单失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   DM.ADOConnection1.RollbackTrans;
  end;
 end;
end;

procedure TFrmBDDJD.N5Click(Sender: TObject);
begin
Exit;
end;

procedure TFrmBDDJD.btnAddClick(Sender: TObject);
begin
  if DM.qrywsyxgl.Eof then
  begin
    Application.MessageBox('没有可以增加的信息，请核查！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
RzPanel3.Tag:=1;
cxLookupComboBox2.Enabled:=True;
dtp4.Enabled:=True;
dtp5.Enabled:=True;
edt8.Enabled:=True;
edt10.Enabled:=True;
edt11.Enabled:=True;
btnAdd.Enabled:=False;
btnSave.Enabled:=True;
btnCancel.Enabled:=True;
btnModify.Enabled:=False;
btnDelete.Enabled:=False;
btnPrint.Enabled:=False;
end;

procedure TFrmBDDJD.btn1Click(Sender: TObject);
begin
  if DM.qryjsyxgl.Eof then
  begin
    Application.MessageBox('没有可以增加的信息，请核查！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
RzPanel2.Tag:=1;
cxLookupComboBox1.Enabled:=True;
dtp2.Enabled:=True;
//dtp3.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
RzToolButton18.Enabled:=True;
RzToolButton16.Enabled:=True;
btn1.Enabled:=False;
RzToolButton7.Enabled:=False;
RzToolButton17.Enabled:=False;
RzToolButton19.Enabled:=False;
end;

procedure TFrmBDDJD.RzToolButton18Click(Sender: TObject);
begin
if RzPanel2.Tag=1 then
   begin
      try
        with DM.qry1 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 经纱管理(供应商,用于订单,到纱,到纱日期,车间领用,库存数量)');
        SQL.Add('values(:gys,:yydd,:ds,:dsrq,:cjly,:kcsl)');
        if edt5.Text='' then
        begin
         Parameters.ParamByName('ds').Value:=null;
         dtp2.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('ds').Value:=edt5.Text;
         dtp2.Enabled:=True;
        end;
        if edt6.Text='' then
        begin
         Parameters.ParamByName('cjly').Value:=null;
         //dtp3.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('cjly').Value:=edt6.Text;
         //dtp3.Enabled:=True;
        end;
        if dtp2.Enabled=False then
        begin
         Parameters.ParamByName('dsrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dsrq').Value:=formatdatetime('yyyy-mm-dd',dtp2.Date);
        end;
        {if dtp3.Enabled=False then
        begin
         Parameters.ParamByName('lyrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('lyrq').Value:=formatdatetime('yyyy-mm-dd',dtp3.Date);
        end; }
        if edt7.Text='' then
        begin
         Parameters.ParamByName('kcsl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('kcsl').Value:=edt7.Text;
        end;
        if cxLookupComboBox1.Text='' then
        begin
         Parameters.ParamByName('yydd').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('yydd').Value:=cxLookupComboBox1.Text;
        end;
        Parameters.ParamByName('gys').Value:=DM.qryjsyxgl.FieldByName('供应商').AsString;
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
        with DM.qryjsyxgl do
        begin
          Close;
          Open;
        end;
        with DM.qryjsgl do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView5.ViewData.Expand(True);
      except
       Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
   end;
if  RzPanel2.Tag=2 then
  begin
      try
        with DM.qry1 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('update 经纱管理 set 用于订单=:yydd,到纱=:ds,到纱日期=:dsrq,车间领用=:cjly,库存数量=:kcsl where 编号=:bh');
        if edt5.Text='' then
        begin
         Parameters.ParamByName('ds').Value:=null;
         dtp2.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('ds').Value:=edt5.Text;
         dtp2.Enabled:=True;
        end;
        if edt6.Text='' then
        begin
         Parameters.ParamByName('cjly').Value:=null;
         //dtp3.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('cjly').Value:=edt6.Text;
         //dtp3.Enabled:=True;
        end;
        if dtp2.Enabled=False then
        begin
         Parameters.ParamByName('dsrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dsrq').Value:=formatdatetime('yyyy-mm-dd',dtp2.Date);
        end;
        {if dtp3.Enabled=False then
        begin
         Parameters.ParamByName('lyrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('lyrq').Value:=formatdatetime('yyyy-mm-dd',dtp3.Date);
        end;}
        if edt7.Text='' then
        begin
         Parameters.ParamByName('kcsl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('kcsl').Value:=edt7.Text;
        end;
        if cxLookupComboBox1.Text='' then
        begin
         Parameters.ParamByName('yydd').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('yydd').Value:=cxLookupComboBox1.Text;
        end;
        Parameters.ParamByName('bh').Value:=DM.qryjsgl.FieldByName('编号').AsInteger;
        ExecSQL;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
        with DM.qryjsyxgl do
        begin
          Close;
          Open;
        end;
        with DM.qryjsgl do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView5.ViewData.Expand(True);
      except
       Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
  end;
RzToolButton16.Click;
end;

procedure TFrmBDDJD.btnModifyClick(Sender: TObject);
begin
 RzPanel3.Tag:=2;
 edt8.Enabled:=True;
 edt8.Text:=DM.qrywsgl.FieldByName('到纱').AsString;
 dtp4.Enabled:=True;
 if DM.qrywsgl.FieldByName('到纱日期').Value=null then
 begin
  dtp4.Date:=Date();
 end
 else
 begin
 dtp4.Date:=DM.qrywsgl.FieldByName('到纱日期').AsDateTime;
 end;
 edt10.Enabled:=True;
 edt10.Text:=DM.qrywsgl.FieldByName('车间领用').AsString;
 edt11.Enabled:=True;
 edt11.Text:=DM.qrywsgl.FieldByName('警戒库存量').AsString;
 dtp5.Enabled:=True;
 if DM.qrywsgl.FieldByName('领用日期').Value=null then
 begin
  dtp5.Date:=Date();
 end
 else
 begin
 dtp5.Date:=DM.qrywsgl.FieldByName('领用日期').AsDateTime;
 end;
 cxLookupComboBox2.Enabled:=True;
 cxLookupComboBox2.Text:=DM.qrywsgl.FieldByName('用于订单').AsString;
btnAdd.Enabled:=False;
btnSave.Enabled:=True;
btnCancel.Enabled:=True;
btnModify.Enabled:=False;
btnDelete.Enabled:=False;
btnPrint.Enabled:=False;
end;

procedure TFrmBDDJD.RzToolButton7Click(Sender: TObject);
begin
 RzPanel2.Tag:=2;
 edt5.Enabled:=True;
 edt5.Text:=DM.qryjsgl.FieldByName('到纱').AsString;
 dtp2.Enabled:=True;
 if DM.qryjsgl.FieldByName('到纱日期').Value=null then
 begin
  dtp2.Date:=Date();
 end
 else
 begin
 dtp2.Date:=DM.qryjsgl.FieldByName('到纱日期').AsDateTime;
 end;
 edt6.Enabled:=True;
 edt6.Text:=DM.qryjsgl.FieldByName('车间领用').AsString;
 {dtp3.Enabled:=True;
 if DM.qryjsgl.FieldByName('领用日期').Value=null then
 begin
  dtp3.Date:=Date();
 end
 else
 begin
  dtp3.Date:=DM.qryjsgl.FieldByName('领用日期').AsDateTime;
 end;}
 cxLookupComboBox1.Enabled:=True;
 cxLookupComboBox1.Text:=DM.qryjsgl.FieldByName('用于订单').AsString;
 RzToolButton18.Enabled:=True;
 RzToolButton16.Enabled:=True;
 btn1.Enabled:=False;
 RzToolButton7.Enabled:=False;
 RzToolButton17.Enabled:=False;
 RzToolButton19.Enabled:=False;
end;

procedure TFrmBDDJD.btnSaveClick(Sender: TObject);
begin
if RzPanel3.Tag=1 then
   begin
      try
        with DM.qry2 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 纬纱管理(供应商,用于订单,到纱,到纱日期,车间领用,领用日期,库存,警戒库存量)');
        SQL.Add('values(:gys,:yydd,:ds,:dsrq,:cjly,:lyrq,:kcsl,:jjkcl)');
        if edt8.Text='' then
        begin
         Parameters.ParamByName('ds').Value:=null;
         dtp4.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('ds').Value:=edt8.Text;
         dtp4.Enabled:=True;
        end;
        if edt10.Text='' then
        begin
         Parameters.ParamByName('cjly').Value:=null;
         dtp5.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('cjly').Value:=edt10.Text;
         dtp5.Enabled:=True;
        end;
        if dtp4.Enabled=False then
        begin
         Parameters.ParamByName('dsrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dsrq').Value:=formatdatetime('yyyy-mm-dd',dtp4.Date);
        end;
        if dtp5.Enabled=False then
        begin
         Parameters.ParamByName('lyrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('lyrq').Value:=formatdatetime('yyyy-mm-dd',dtp5.Date);
        end;
        if edt9.Text='' then
        begin
         Parameters.ParamByName('kcsl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('kcsl').Value:=edt9.Text;
        end;
        if cxLookupComboBox2.Text='' then
        begin
         Parameters.ParamByName('yydd').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('yydd').Value:=cxLookupComboBox2.Text;
        end;
        if edt11.Text='' then
        begin
         Parameters.ParamByName('jjkcl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('jjkcl').Value:=edt11.Text;
        end;
        Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;

        with DM.qrywsyxgl do
        begin
          Close;
          Open;
        end;
        with DM.qrywsgl do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView6.ViewData.Expand(True);
      except
       Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
   end;
if  RzPanel3.Tag=2 then
  begin
      try
        with DM.qry2 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('update 纬纱管理 set 用于订单=:yydd,到纱=:ds,到纱日期=:dsrq,车间领用=:cjly,领用日期=:lyrq,库存=:kcsl,警戒库存量=:jjkcl where 编号=:bh');
        if edt8.Text='' then
        begin
         Parameters.ParamByName('ds').Value:=null;
         dtp4.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('ds').Value:=edt8.Text;
         dtp4.Enabled:=True;
        end;
        if edt10.Text='' then
        begin
         Parameters.ParamByName('cjly').Value:=null;
         dtp5.Enabled:=False;
        end
        else
        begin
         Parameters.ParamByName('cjly').Value:=edt10.Text;
         dtp5.Enabled:=True;
        end;
        if dtp4.Enabled=False then
        begin
         Parameters.ParamByName('dsrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('dsrq').Value:=formatdatetime('yyyy-mm-dd',dtp4.Date);
        end;
        if dtp5.Enabled=False then
        begin
         Parameters.ParamByName('lyrq').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('lyrq').Value:=formatdatetime('yyyy-mm-dd',dtp5.Date);
        end;
        if edt9.Text='' then
        begin
         Parameters.ParamByName('kcsl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('kcsl').Value:=edt9.Text;
        end;
        if cxLookupComboBox2.Text='' then
        begin
         Parameters.ParamByName('yydd').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('yydd').Value:=cxLookupComboBox2.Text;
        end;
        if edt11.Text='' then
        begin
         Parameters.ParamByName('jjkcl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('jjkcl').Value:=edt11.Text;
        end;
        Parameters.ParamByName('bh').Value:=DM.qrywsgl.FieldByName('编号').AsInteger;
        ExecSQL;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
 if DM.qrywsyxgl.FieldByName('供应商').Value<>null then
 begin
   with DM.qry10 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(到纱) as sumvalue1 from 纬纱管理 where 供应商=:gys');
    Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
    Open;
   end;
  with DM.qry11 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(车间领用) as sumvalue from 纬纱管理 where 供应商=:gys');
    Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
    Open;
   end;
   if DM.qry10.FieldByName('sumvalue1').AsString<>'' then
   begin
    if DM.qry11.FieldByName('sumvalue').AsString<>'' then
    begin
      edt9.Text:=FloatToStr(strtofloat(DM.qry10.FieldByName('sumvalue1').AsString)-strtofloat(DM.qry11.FieldByName('sumvalue').AsString));
    end
    else
    begin
      edt9.Text:=DM.qry10.FieldByName('sumvalue1').AsString;
    end;
   end
   else
   begin
     edt9.Text:='0';
   end;
   with DM.qry2 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('update 纬纱管理 set 库存=:kcsl where 供应商=:gys');
    Parameters.ParamByName('kcsl').Value:=edt9.Text;
    Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
    ExecSQL;
   end;
 end;
        with DM.qrywsyxgl do
        begin
          Close;
          Open;
        end;
        with DM.qrywsgl do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView6.ViewData.Expand(True);
      except
       Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;;
  end;
btnCancel.Click;
end;

procedure TFrmBDDJD.RzToolButton16Click(Sender: TObject);
begin
  edt5.Text:='';
  edt5.Enabled:=False;
  edt6.Text:='';
  edt6.Enabled:=False;
  edt7.Text:='';
  edt7.Enabled:=False;
  dtp2.Enabled:=False;
  dtp2.Date:=Date();
  //dtp3.Enabled:=False;
  //dtp3.Date:=Date();
  cxLookupComboBox1.Enabled:=False;
  cxLookupComboBox1.Text:='';
  RzToolButton18.Enabled:=False;
  RzToolButton16.Enabled:=False;
  btn1.Enabled:=True;
  RzToolButton7.Enabled:=True;
  RzToolButton17.Enabled:=True;
  RzToolButton19.Enabled:=True;
end;

procedure TFrmBDDJD.btnCancelClick(Sender: TObject);
begin
  edt8.Text:='';
  edt8.Enabled:=False;
  edt10.Text:='';
  edt10.Enabled:=False;
  edt9.Text:='';
  edt9.Enabled:=False;
  edt11.Text:='';
  edt11.Enabled:=False;
  dtp4.Enabled:=False;
  dtp4.Date:=Date();
  dtp5.Enabled:=False;
  dtp5.Date:=Date();
  cxLookupComboBox2.Enabled:=False;
  cxLookupComboBox2.Text:='';
  btnAdd.Enabled:=True;
  btnSave.Enabled:=False;
  btnCancel.Enabled:=False;
  btnModify.Enabled:=True;
  btnDelete.Enabled:=True;
  btnPrint.Enabled:=True;
end;

procedure TFrmBDDJD.RzToolButton17Click(Sender: TObject);
begin
    if Application.MessageBox('确定删除该信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
     try
      with DM.qry1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 经纱管理 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qryjsgl.FieldByName('编号').AsInteger;
        ExecSQL;
      end;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryjsyxgl do
        begin
          Close;
          Open;
        end;
        with DM.qryjsgl do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView5.ViewData.Expand(True);
     except
       Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     end;
  end;
end;

procedure TFrmBDDJD.btnDeleteClick(Sender: TObject);
begin

  begin
    if Application.MessageBox('确定删除该信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
     try
      with DM.qry2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 纬纱管理 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qrywsgl.FieldByName('编号').AsInteger;
        ExecSQL;
      end;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
 if DM.qrywsyxgl.FieldByName('供应商').Value<>null then
 begin
   with DM.qry10 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(到纱) as sumvalue1 from 纬纱管理 where 供应商=:gys');
    Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
    Open;
   end;
  with DM.qry11 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(车间领用) as sumvalue from 纬纱管理 where 供应商=:gys');
    Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
    Open;
   end;
   if DM.qry10.FieldByName('sumvalue1').AsString<>'' then
   begin
    if DM.qry11.FieldByName('sumvalue').AsString<>'' then
    begin
      edt9.Text:=FloatToStr(strtofloat(DM.qry10.FieldByName('sumvalue1').AsString)-strtofloat(DM.qry11.FieldByName('sumvalue').AsString));
    end
    else
    begin
      edt9.Text:=DM.qry10.FieldByName('sumvalue1').AsString;
    end;
   end
   else
   begin
     edt9.Text:='0';
   end;
   with DM.qry2 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('update 纬纱管理 set 库存=:kcsl where 供应商=:gys');
    Parameters.ParamByName('kcsl').Value:=edt9.Text;
    Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
    ExecSQL;
   end;
 end;
        with DM.qrywsyxgl do
        begin
          Close;
          Open;
        end;
        with DM.qrywsgl do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView6.ViewData.Expand(True);
     except
       Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     end;
  end;
  end;
end;

procedure TFrmBDDJD.RzToolButton2Click(Sender: TObject);
begin
  if DM.qrytlscdd.Eof then
  begin
    Application.MessageBox('没有可以增加的信息，请核查！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
Rzgroupbox1.Tag:=1;
DateTimePicker1.Enabled:=True;
RzEdit1.Enabled:=True;
edt3.Enabled:=True;
RzToolButton3.Enabled:=True;
RzToolButton4.Enabled:=True;
RzToolButton2.Enabled:=False;
RzToolButton5.Enabled:=False;
RzToolButton6.Enabled:=False;
RzToolButton15.Enabled:=False;
end;

procedure TFrmBDDJD.RzToolButton5Click(Sender: TObject);
begin
 Rzgroupbox1.Tag:=2;
 RzEdit1.Enabled:=True;
 RzEdit1.Text:=DM.qryzjxx.FieldByName('总订单量').AsString;
 DateTimePicker1.Enabled:=True;
 DateTimePicker1.date:=DM.qryzjxx.FieldByName('整经日期').AsDateTime;
 edt3.Enabled:=True;
 edt3.Text:=DM.qryzjxx.FieldByName('已整经').AsString;
 RzToolButton3.Enabled:=True;
 RzToolButton4.Enabled:=True;
 RzToolButton2.Enabled:=False;
 RzToolButton5.Enabled:=False;
 RzToolButton6.Enabled:=False;
 RzToolButton15.Enabled:=False;
end;

procedure TFrmBDDJD.RzToolButton3Click(Sender: TObject);
begin
  if Rzgroupbox1.Tag=1 then
   begin
      try
       with DM.qry4 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select sum(已整经) as sumvalue from 整经信息 where 品名=:pm');
        Parameters.ParamByName('pm').Value:=DM.qrytlscdd.FieldByName('品名').AsString;
        Open;
       end;
       if DM.qry4.FieldByName('sumvalue').Value=null then
       begin
            with DM.qry5 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('insert into 整经信息(品名,总订单量,已整经,未整经,整经日期)');
              SQL.Add('values(:pm,:zddl,:yzj,:wzj,:zjrq)');
              if RzEdit1.Text='' then
              begin
               Parameters.ParamByName('zddl').Value:=null;
              end
              else
              begin
               Parameters.ParamByName('zddl').Value:=RzEdit1.Text;
              end;
              Parameters.ParamByName('yzj').Value:=edt3.Text;
              if DM.qrytlscdd.FieldByName('总整经量').Value<>null then
              begin
               Parameters.ParamByName('wzj').Value:=FloatToStr(StrToFloat(DM.qrytlscdd.FieldByName('总整经量').AsString)-StrToFloat(edt3.Text));
              end
              else
              begin
               Parameters.ParamByName('wzj').Value:=null;
              end;
              Parameters.ParamByName('zjrq').Value:=formatdatetime('yyyy-mm-dd',DateTimePicker1.Date);
              Parameters.ParamByName('pm').Value:=DM.qrytlscdd.FieldByName('品名').AsString;
              ExecSQL;
              Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
            end;
       end
       else
       begin
            with DM.qry5 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('insert into 整经信息(品名,总订单量,已整经,未整经,整经日期)');
              SQL.Add('values(:pm,:zddl,:yzj,:wzj,:zjrq)');
              if RzEdit1.Text='' then
              begin
               Parameters.ParamByName('zddl').Value:=null;
              end
              else
              begin
               Parameters.ParamByName('zddl').Value:=RzEdit1.Text;
              end;
              Parameters.ParamByName('yzj').Value:=edt3.Text;
              if DM.qrytlscdd.FieldByName('总整经量').Value<>null then
              begin
               Parameters.ParamByName('wzj').Value:=FloatToStr(StrToFloat(DM.qrytlscdd.FieldByName('总整经量').AsString)-StrToFloat(edt3.Text)-StrToFloat(DM.qry4.FieldByName('sumvalue').AsString));
              end
              else
              begin
               Parameters.ParamByName('wzj').Value:=null;
              end;
              Parameters.ParamByName('zjrq').Value:=formatdatetime('yyyy-mm-dd',DateTimePicker1.Date);
              Parameters.ParamByName('pm').Value:=DM.qrytlscdd.FieldByName('品名').AsString;
              ExecSQL;
              Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
            end;
       end;  
        with DM.qrytlscdd do
        begin
          Close;
          Open;
        end;
        with DM.qryzjxx do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfo.ViewData.Expand(True);
      except
       Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
   end;
 if  Rzgroupbox1.Tag=2 then
  begin
      try
        with DM.qry5 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('update 整经信息 set 总订单量=:zddl,已整经=:yzj,未整经=:wzj,整经日期=:zjrq where 编号=:bh');
        if RzEdit1.Text='' then
        begin
         Parameters.ParamByName('zddl').Value:=null;
        end
        else
        begin
         Parameters.ParamByName('zddl').Value:=RzEdit1.Text;
        end;
        Parameters.ParamByName('yzj').Value:=edt3.Text;
        Parameters.ParamByName('wzj').Value:=DM.qrytlscdd.FieldByName('总整经量').AsString;
        Parameters.ParamByName('zjrq').Value:=formatdatetime('yyyy-mm-dd',DateTimePicker1.Date);
        Parameters.ParamByName('bh').Value:=DM.qryzjxx.FieldByName('编号').AsInteger;
        ExecSQL;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
        with DM.qryljdd do
        begin
          Close;
          Open;
        end;
        with DM.qryzjxx do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView3.ViewData.Expand(True);
      except
       Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
  end;
RzToolButton4.Click;
end;

procedure TFrmBDDJD.RzToolButton4Click(Sender: TObject);
begin
  RzEdit1.Text:='';
  RzEdit1.Enabled:=False;
  edt3.Text:='';
  edt3.Enabled:=False;
  DateTimePicker1.Enabled:=False;
  DateTimePicker1.Date:=Date();
  RzToolButton3.Enabled:=False;
  RzToolButton4.Enabled:=False;
  RzToolButton2.Enabled:=True;
  RzToolButton5.Enabled:=True;
  RzToolButton6.Enabled:=True;
  RzToolButton15.Enabled:=True;
end;

procedure TFrmBDDJD.RzToolButton6Click(Sender: TObject);
begin
    if Application.MessageBox('确定删除该信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
     try
      with DM.qry5 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 整经信息 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qryzjxx.FieldByName('编号').AsInteger;
        ExecSQL;
      end;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qrytlscdd do
        begin
          Close;
          Open;
        end;
        with DM.qryzjxx do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfo.ViewData.Expand(True);
     except
       Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     end;
  end;
end;

procedure TFrmBDDJD.RzToolButton9Click(Sender: TObject);
begin
  if DM.qryljdd.Eof then
  begin
    Application.MessageBox('没有可以增加的信息，请核查！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
RzGroupBox2.Tag:=1;
edtDailyMachineWeight.Enabled:=True;
edtIntoWarehouseAmount.Enabled:=True;
edtDailySizingAmount.Enabled:=True;
edtSpeed.Enabled:=True;
edtEfficiency.Enabled:=True;
edt4.Enabled:=True;
RzComboBox2.Enabled:=True;
RzToolButton10.Enabled:=True;
RzToolButton11.Enabled:=True;
RzToolButton9.Enabled:=False;
RzToolButton12.Enabled:=False;
RzToolButton13.Enabled:=False;
RzToolButton14.Enabled:=False;
end;

procedure TFrmBDDJD.RzToolButton12Click(Sender: TObject);
begin
 Rzgroupbox2.Tag:=2;
 edtDailyMachineWeight.Enabled:=True;
 edtDailyMachineWeight.Text:=DM.qryddsczj.FieldByName('实际下机数量').AsString;
 edtIntoWarehouseAmount.Enabled:=True;
 edtIntoWarehouseAmount.Text:=DM.qryddsczj.FieldByName('实际出库数量').AsString;
 edtDailySizingAmount.Enabled:=True;
 edtDailySizingAmount.Text:=DM.qryddsczj.FieldByName('实际浆等数量').AsString;
 edtSpeed.Enabled:=True;
 edtSpeed.Text:=DM.qryddsczj.FieldByName('平均车速').AsString;
 edtEfficiency.Enabled:=True;
 edtEfficiency.Text:=DM.qryddsczj.FieldByName('平均效率').AsString;
 edt4.Enabled:=True;
 edt4.Text:=DM.qryddsczj.FieldByName('主要疵布类型').AsString;
 RzComboBox2.Enabled:=True;
 RzComboBox2.Text:=DM.qryddsczj.FieldByName('生产难度').AsString;
RzToolButton10.Enabled:=True;
RzToolButton11.Enabled:=True;
RzToolButton9.Enabled:=False;
RzToolButton12.Enabled:=False;
RzToolButton13.Enabled:=False;
RzToolButton14.Enabled:=False;
end;

procedure TFrmBDDJD.RzToolButton10Click(Sender: TObject);
begin
if Rzgroupbox2.Tag=1 then
   begin
      try
        with DM.qry6 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 订单生产总结(品名,实际下机数量,实际出库数量,实际浆等数量,平均车速,平均效率,主要疵布类型,生产难度)');
        SQL.Add('values(:pm,:sjxjsl,:sjcksl,:sjjdsl,:pjcs,:pjxl,:zyzblx,:scnd)');
        Parameters.ParamByName('sjxjsl').Value:=edtDailyMachineWeight.Text;
        Parameters.ParamByName('sjcksl').Value:=edtIntoWarehouseAmount.Text;
        Parameters.ParamByName('sjjdsl').Value:=edtDailySizingAmount.Text;
        Parameters.ParamByName('pjcs').Value:=edtSpeed.Text;
        Parameters.ParamByName('pjxl').Value:=edtEfficiency.Text;
        Parameters.ParamByName('zyzblx').Value:=edt4.Text;
        Parameters.ParamByName('scnd').Value:=RzComboBox2.Text;
        Parameters.ParamByName('pm').Value:=DM.qryljdd.FieldByName('品名').AsString;
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
        with DM.qryljdd do
        begin
          Close;
          Open;
        end;
        with DM.qryddsczj do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView3.ViewData.Expand(True);
      except
       Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
   end;
 if Rzgroupbox2.Tag=2 then
  begin
      try
        with DM.qry6 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('update 订单生产总结 set 实际下机数量=:sjxjsl,实际出库数量=:sjcksl,实际浆等数量=:sjjdsl,平均车速=:pjcs,平均效率=:pjxl,主要疵布类型=:zyzblx,生产难度=:scnd where 编号=:bh');
        Parameters.ParamByName('sjxjsl').Value:=edtDailyMachineWeight.Text;
        Parameters.ParamByName('sjcksl').Value:=edtIntoWarehouseAmount.Text;
        Parameters.ParamByName('sjjdsl').Value:=edtDailySizingAmount.Text;
        Parameters.ParamByName('pjcs').Value:=edtSpeed.Text;
        Parameters.ParamByName('pjxl').Value:=edtEfficiency.Text;
        Parameters.ParamByName('zyzblx').Value:=edt4.Text;
        Parameters.ParamByName('scnd').Value:=RzComboBox2.Text;
        Parameters.ParamByName('bh').Value:=DM.qryddsczj.FieldByName('编号').AsInteger;
        ExecSQL;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
        with DM.qryljdd do
        begin
          Close;
          Open;
        end;
        with DM.qryddsczj do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView3.ViewData.Expand(True);
      except
       Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
  end;
RzToolButton11.Click;
end;

procedure TFrmBDDJD.RzToolButton11Click(Sender: TObject);
begin
  edtDailyMachineWeight.Text:='';
  edtDailyMachineWeight.Enabled:=False;
  edtIntoWarehouseAmount.Text:='';
  edtIntoWarehouseAmount.Enabled:=False;
  edtDailySizingAmount.Text:='';
  edtDailySizingAmount.Enabled:=False;
  edtSpeed.Text:='';
  edtSpeed.Enabled:=False;
  edtEfficiency.Text:='';
  edtEfficiency.Enabled:=False;
  edt4.Text:='';
  edt4.Enabled:=False;
  RzComboBox2.Text:='';
  RzComboBox2.Enabled:=False;
  RzToolButton10.Enabled:=False;
  RzToolButton11.Enabled:=False;
  RzToolButton9.Enabled:=True;
  RzToolButton12.Enabled:=True;
  RzToolButton13.Enabled:=True;
  RzToolButton14.Enabled:=True;
end;

procedure TFrmBDDJD.RzToolButton13Click(Sender: TObject);
begin
    if Application.MessageBox('确定删除该信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
     try
      with DM.qry6 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 订单生产总结 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qryddsczj.FieldByName('编号').AsInteger;
        ExecSQL;
      end;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryljdd do
        begin
          Close;
          Open;
        end;
        with DM.qryddsczj do
        begin
          Close;
          Open;
        end;
        cxgrdbtblvwWeavingDynamicInfoDBTableView3.ViewData.Expand(True);
     except
       Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     end;
  end;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbtblvwWeavingDynamicInfoDBTableView2Column8.Index]<=Date()-5) and (ARecord.Values[cxgrdbtblvwWeavingDynamicInfoDBTableView2Column8.Index]<>null) then
  AStyle:=cxstyl1;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 {if  (ARecord.Values[cxgrdWeavingDynamicInfoDBTableView1Column8.Index]<=0) and (ARecord.Values[cxgrdWeavingDynamicInfoDBTableView1Column8.Index]<>null) then
  AStyle:=cxstyl1;}
end;


procedure TFrmBDDJD.cxgrdWeavingDynamicInfoDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if  (ARecord.Values[cxgrdWeavingDynamicInfoDBTableView1Column8.Index]<=0) and (ARecord.Values[cxgrdWeavingDynamicInfoDBTableView1Column8.Index]<>null) then
  AStyle:=cxstyl3;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoColumn2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if  (DM.qrytlscdd.FieldByName('计划上机时间').Value<=Date()-3) and (RzEdit4.Text='0') then
 begin
   AStyle:=cxstyl4;
 end;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoMouseEnter(
  Sender: TObject);
begin
  with DM.qry8 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(已整经) as sumvalue from 整经信息');
    Open;
   end;
  with DM.qry9 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(总整经量) as sumvalue1 from v_棉布生产计划信息 where (订单号 in (select 订单号 from 棉布订单信息表 where 入库状态=0 and 上机状态=1 and 完成状态=0 and 作废状态=0))  and NOT (计划上机进度 IS NULL)');
    Open;
   end;
   if (DM.qry8.FieldByName('sumvalue').value<>null) then
   begin
     if (DM.qry9.FieldByName('sumvalue1').value<>null) then
     begin
      edt1.Text:=DM.qry8.FieldByName('sumvalue').AsString;
      edt12.Text:=FloatToStr(StrToFloat(DM.qry9.FieldByName('sumvalue1').AsString)-StrToFloat(DM.qry8.FieldByName('sumvalue').AsString));
     end
     else
     begin
      edt1.Text:=DM.qry8.FieldByName('sumvalue').AsString;
      edt12.Text:=FloatToStr(0-StrToFloat(DM.qry8.FieldByName('sumvalue').AsString));
     end;
   end
   else
   begin
     if (DM.qry9.FieldByName('sumvalue1').value<>null) then
     begin
      edt1.Text:='0';
      edt12.Text:=DM.qry9.FieldByName('sumvalue1').AsString;
     end
     else
     begin
      edt1.Text:='0';
      edt12.Text:='0';
     end;
   end;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView2MouseEnter(
  Sender: TObject);
begin
edt1.text:=' ';
edt12.text:=' ';
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView3MouseEnter(
  Sender: TObject);
begin
edt1.text:=' ';
edt12.text:=' ';
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView5MouseEnter(
  Sender: TObject);
begin
edt1.text:=' ';
edt12.text:=' ';
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView6MouseEnter(
  Sender: TObject);
begin
edt1.text:=' ';
edt12.text:=' ';
end;

procedure TFrmBDDJD.cxGrid1MouseEnter(Sender: TObject);
begin
edt1.text:=' ';
edt12.text:=' ';
end;

procedure TFrmBDDJD.RzToolButton19Click(Sender: TObject);
begin
if dlgSave1.Execute then
 begin
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column15.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column16.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column17.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column18.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column19.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column20.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column21.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column23.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column24.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column26.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column27.Visible:=False;
   ExportGridToExcel(dlgSave1.FileName,cxgrdWeavingDynamicInfo,True,True,True,'xls');
 end;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column15.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column16.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column17.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column18.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column19.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column20.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column21.Visible:=False;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column23.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column24.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column26.Visible:=True;
   cxgrdbclmnWeavingDynamicInfoDBTableView3Column27.Visible:=True;
end;

procedure TFrmBDDJD.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
if (cxLookupComboBox1.Text<>'') then
 begin
  with DM.qrycjly do
  begin
   Close;
   SQL.Clear;
   SQL.Add('select * from v_棉布生产计划信息 where 订单号=:ddh');
   Parameters.ParamByName('ddh').Value:=cxLookupComboBox1.Text;
   Open;
  end;
  with DM.qry15 do
  begin
   Close;
   SQL.Clear;
   SQL.Add('select sum(已整经) as sumvalue from 整经信息 where 品名=:pm');
   Parameters.ParamByName('pm').Value:=DM.qrycjly.FieldByName('品名').AsString;
   Open;
  end;
  if (DM.qry15.FieldByName('sumvalue').AsString<>'') and (DM.qrycjly.FieldByName('总经根数').AsString<>'') and (DM.qrycjly.FieldByName('经纱号数（支数）').AsString<>'') then
  begin
  edt6.Text:=FloatToStr(0.000583*strtofloat(DM.qry15.FieldByName('sumvalue').AsString)*strtofloat(DM.qrycjly.FieldByName('总经根数').AsString)/strtofloat(DM.qrycjly.FieldByName('经纱号数（支数）').AsString));
  end
  else
  begin
  edt6.Text:='';
  end;
 end;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView5MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 if DM.qryjsyxgl.FieldByName('供应商').Value<>null then
 begin
   with DM.qry10 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(到纱) as sumvalue1 from 经纱管理 where 供应商=:gys');
    Parameters.ParamByName('gys').Value:=DM.qryjsyxgl.FieldByName('供应商').AsString;
    Open;
   end;
  with DM.qry11 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(车间领用) as sumvalue from 经纱管理 where 供应商=:gys');
    Parameters.ParamByName('gys').Value:=DM.qryjsyxgl.FieldByName('供应商').AsString;
    Open;
   end;
   if DM.qry10.FieldByName('sumvalue1').AsString<>'' then
   begin
    if DM.qry11.FieldByName('sumvalue').AsString<>'' then
    begin
      edt7.Text:=FloatToStr(strtofloat(DM.qry10.FieldByName('sumvalue1').AsString)-strtofloat(DM.qry11.FieldByName('sumvalue').AsString));
    end
    else
    begin
      edt7.Text:=DM.qry10.FieldByName('sumvalue1').AsString;
    end;
   end
   else
   begin
     edt7.Text:='0';
   end;
   with DM.qry1 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('update 经纱管理 set 库存数量=:kcsl where 供应商=:gys');
    Parameters.ParamByName('kcsl').Value:=edt7.Text;
    Parameters.ParamByName('gys').Value:=DM.qryjsyxgl.FieldByName('供应商').AsString;
    ExecSQL;
   end;
 end;
end;


procedure TFrmBDDJD.N6Click(Sender: TObject);
begin
Exit;
end;

procedure TFrmBDDJD.N3Click(Sender: TObject);
begin
if cxgrdbtblvwWeavingDynamicInfoDBTableView2.ViewData.RowCount>0 then
 begin
 if Application.MessageBox('确定要转至织造订单吗？','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  try
   DM.ADOConnection1.BeginTrans;
   with DM.spBMachineStateUpdate do
   begin
    Close;
    procedureName:='proc_织布生产动态信息_订单状态制定';
    Parameters.Refresh;
    Parameters.ParamByName('@OrderID').Value:=DM.qrydsdd.FieldByName('订单号').AsString;
    Parameters.ParamByName('@state').Value:=4;
    ExecProc;
    Application.MessageBox('转单成功！','提示',MB_OK+MB_ICONINFORMATION);
    DM.ADOConnection1.CommitTrans;
    with DM.qrydsdd do
    begin
     Close;
     Open;
    end;
    with DM.qryzzdd do
    begin
     Close;
     Open;
    end;
   end;
  except
   Application.MessageBox('转单失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   DM.ADOConnection1.RollbackTrans;
  end;
 end;
end;

procedure TFrmBDDJD.RzToolButton1Click(Sender: TObject);
begin
if cxgrdbtblvwWeavingDynamicInfoDBTableView3.ViewData.RowCount>0 then
begin
 if Application.MessageBox('确定已完全入库了吗？确定后对应动态信息将自动删除！','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
 begin
   try
    DM.ADOConnection1.BeginTrans;
    with DM.spBMachineStateUpdate do
    begin
      Close;
      procedureName:='proc_织布生产动态信息_订单状态制定';
      Parameters.Refresh;
      with Parameters do
      begin
        ParamByName('@OrderID').Value:=DM.qryljdd.FieldByName('订单号').AsString;
        Parameters.ParamByName('@state').Value:=2;
      end;
      ExecProc;
    end;
    DM.ADOConnection1.CommitTrans;
    Application.MessageBox('入库状态设置成功！','提示',MB_OK+MB_ICONINFORMATION);
     with DM.qryWeavingDynamicInfoDelete do  //当全部入库后生产完成，该订单动态信息自动删除
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete from 订单生产总结 where 品名=:pm');
      Parameters.ParamByName('pm').Value:=DM.qryljdd.FieldByName('品名').AsString;
      ExecSQL;
    end;
     with DM.qryljdd do
    begin
      Close;
      Open;
    end;
   except
    DM.ADOConnection1.RollbackTrans;
    Application.MessageBox('入库状态设置失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
 end
end;
end;

procedure TFrmBDDJD.btn2Click(Sender: TObject);
begin
 if Application.MessageBox('确定要重置状态吗','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
   try
    DM.ADOConnection1.BeginTrans;
    with DM.spBMachineStateUpdate do
    begin
      Close;
      procedureName:='proc_织布生产动态信息_订单状态制定';
      Parameters.Refresh;
      with Parameters do
      begin
        ParamByName('@OrderID').Value:=DM.qryBOrderID.FieldByName('订单号').AsString;
        Parameters.ParamByName('@state').Value:=5;
      end;
      ExecProc;
    end;
    DM.ADOConnection1.CommitTrans;
    Application.MessageBox('状态重置成功！','提示',MB_OK+MB_ICONINFORMATION);
     with DM.qryBOrderID do
    begin
      Close;
      Open;
    end;
     with DM.qrydsdd do
    begin
      Close;
      Open;
    end;
     with DM.qrytlscdd do
    begin
      Close;
      Open;
    end;
     with DM.qryljdd do
    begin
      Close;
      Open;
    end;
     with DM.qryzzdd do
    begin
      Close;
      Open;
    end;
   except
    DM.ADOConnection1.RollbackTrans;
    Application.MessageBox('订单状态重置失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
  end
 else
 begin
  DM.ADOConnection1.RollbackTrans;
 end;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView8StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if  (ARecord.Values[cxgrdbclmnWeavingDynamicInfoDBTableView8Column2.Index])<(ARecord.Values[cxgrdbtblvwWeavingDynamicInfoDBTableView8Column8.Index]) and (ARecord.Values[cxgrdbclmnWeavingDynamicInfoDBTableView8Column2.Index]<>null) and (ARecord.Values[cxgrdbtblvwWeavingDynamicInfoDBTableView8Column8.Index]<>null) then
  AStyle:=cxstyl1;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var
    sum:string;
begin
  if DM.qrytlscdd.FieldByName('品名').Value<>null then
 begin
  with DM.qry3 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) as record_count from 机台了机信息 where 品名=:pm');
    Parameters.ParamByName('pm').Value:=DM.qrytlscdd.FieldByName('品名').AsString;
    Open;
   end;
   RzEdit4.Enabled:=True;
   RzEdit4.Text:=DM.qry3.FieldByName('record_count').AsString;
  with DM.qryjtxx do
  begin
   Close;
   SQL.Clear;
   SQL.Add('select * from 机台了机信息 where 品名=:pm');
   Parameters.ParamByName('pm').Value:=DM.qrytlscdd.FieldByName('品名').AsString;
   Open;
  end;
   dtp1.Enabled:=True;
   dtp1.Date:=DM.qryjtxx.FieldByName('报告日期').AsDateTime;
   DM.qryjtxx.First;
   sum:=' ';
   while not DM.qryjtxx.Eof do
   begin
    sum:=sum+' '+DM.qryjtxx.fieldbyname('车位号').Value;
    DM.qryjtxx.Next;
   end;
   RzDBMemo1.Enabled:=True;
   RzDBMemo1.Text:=sum;
  with DM.qry12 do
   begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(计划开台数) as sumvalue0 from v_棉布生产计划信息 where (订单号 in (select 订单号 from 棉布订单信息表 where 入库状态=0 and 上机状态=1 and 完成状态=0 and 织造状态=0 and 作废状态=0))  and NOT (计划上机进度 IS NULL) and 品名=:pm');
    Parameters.ParamByName('pm').Value:=DM.qrytlscdd.FieldByName('品名').AsString;
    Open;
   end;
   edt2.Enabled:=True;
   edt2.Text:=DM.qry12.FieldByName('sumvalue0').AsString;
 end;
end;

procedure TFrmBDDJD.MenuItem1Click(Sender: TObject);
begin
if cxgrdbtblvwWeavingDynamicInfoDBTableView9.ViewData.RowCount>0 then
 begin
 if Application.MessageBox('确定要转至了机订单吗？','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  try
   DM.ADOConnection1.BeginTrans;
   with DM.spBMachineStateUpdate do
   begin
    Close;
    procedureName:='proc_织布生产动态信息_订单状态制定';
    Parameters.Refresh;
    Parameters.ParamByName('@OrderID').Value:=DM.qryzzdd.FieldByName('订单号').AsString;
    Parameters.ParamByName('@state').Value:=1;
    ExecProc;
    with DM.qry14 do
    begin
     Close;
     SQL.Clear;
     SQL.Add('update 棉布订单信息表 set 了机日期=:ljrq where 订单号=:ddh');
     Parameters.ParamByName('ljrq').Value:=FormatDateTime('yyyy-mm-dd',Date());
     Parameters.ParamByName('ddh').Value:=DM.qryzzdd.FieldByName('订单号').AsString;
     ExecSQL;
    end;
    Application.MessageBox('转单成功！','提示',MB_OK+MB_ICONINFORMATION);
    DM.ADOConnection1.CommitTrans;
    with DM.qryljdd do
    begin
     Close;
     Open;
    end;
    with DM.qryzzdd do
    begin
     Close;
     Open;
    end;
   end;
  except
   Application.MessageBox('转单失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   DM.ADOConnection1.RollbackTrans;
  end;
 end;
end;

procedure TFrmBDDJD.MenuItem2Click(Sender: TObject);
begin
Exit;
end;

procedure TFrmBDDJD.btnQueryClick(Sender: TObject);
begin
if cxgrdbtblvwWeavingDynamicInfoDBTableView3.ViewData.RowCount>0 then
  begin
    FrmBDDXXCZ:=TFrmBDDXXCZ.Create(Self);
    FrmBDDXXCZ.Tag:=2;
    FrmBDDXXCZ.ShowModal;
    FreeAndNil(FrmBDDXXCZ);
  end;
end;

procedure TFrmBDDJD.cxgrdbtblvwWeavingDynamicInfoDBTableView6MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
       if DM.qrywsyxgl.FieldByName('供应商').Value<>null then
       begin
       with DM.qry10 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select sum(到纱) as sumvalue1 from 纬纱管理 where 供应商=:gys');
        Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
        Open;
       end;
       with DM.qry11 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('select sum(车间领用) as sumvalue from 纬纱管理 where 供应商=:gys');
        Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
        Open;
       end;
       if DM.qry10.FieldByName('sumvalue1').AsString<>'' then
       begin
       if DM.qry11.FieldByName('sumvalue').AsString<>'' then
       begin
        edt9.Text:=FloatToStr(strtofloat(DM.qry10.FieldByName('sumvalue1').AsString)-strtofloat(DM.qry11.FieldByName('sumvalue').AsString));
       end
       else
       begin
        edt9.Text:=DM.qry10.FieldByName('sumvalue1').AsString;
       end;
       end
       else
       begin
        edt9.Text:='0';
       end;
       with DM.qry2 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('update 纬纱管理 set 库存=:kcsl where 供应商=:gys');
        Parameters.ParamByName('kcsl').Value:=edt9.Text;
        Parameters.ParamByName('gys').Value:=DM.qrywsyxgl.FieldByName('供应商').AsString;
        ExecSQL;
       end;
       end;
end;

end.

