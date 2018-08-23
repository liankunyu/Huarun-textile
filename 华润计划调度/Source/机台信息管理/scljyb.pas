unit scljyb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPrgres, OleServer, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, ExcelXP,
  cxProgressBar, StdCtrls, RzLstBox, RzPanel, Mask, RzEdit,
  RzButton, RzLabel, ExtCtrls, IniFiles, ComCtrls,math, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmSCLJYB = class(TForm)
    rzgrpbxFileSelect: TRzGroupBox;
    lblFileSelect: TRzLabel;
    btnFileSelect: TRzToolButton;
    edtFileSelect: TRzEdit;
    rzpnlFileContent: TRzPanel;
    lbl2: TRzLabel;
    lstFileContent: TRzListBox;
    rzpnlImportSetting: TRzPanel;
    lblBeginNo: TRzLabel;
    lblEndNo: TRzLabel;
    btnImport: TRzToolButton;
    btnExit: TRzToolButton;
    edtBeginNo: TRzEdit;
    edtEndNo: TRzEdit;
    cxprgrsbrImportProceed: TcxProgressBar;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelWorksheet1: TExcelWorksheet;
    dlgOpen1: TOpenDialog;
    procedure btnFileSelectClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure edtFileSelectChange(Sender: TObject);
    procedure edtEndNoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSCLJYB: TFrmSCLJYB;

implementation
uses UDM,jtbjbg;
{$R *.dfm}

procedure TFrmSCLJYB.btnFileSelectClick(Sender: TObject);
begin
  edtFileSelect.Text:='';
  ExcelWorkSheet1.Disconnect;
  ExcelWorkBook1.Disconnect;
  ExcelApplication1.Disconnect;
  ExcelApplication1.Quit;
  if dlgOpen1.Execute then
  edtFileSelect.Text:=dlgOpen1.FileName;
end;

procedure TFrmSCLJYB.btnExitClick(Sender: TObject);
begin
  try
    ExcelWorkSheet1.Disconnect;
    ExcelWorkBook1.Disconnect;
    ExcelApplication1.Disconnect;
    ExcelApplication1.Quit;
  finally
   Self.close;
  end;
end;

procedure TFrmSCLJYB.btnImportClick(Sender: TObject);
var
  row:integer;
begin
  if edtBeginNo.Text=''then
  begin
    Application.MessageBox('请指定要导入的开始行！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  if edtEndNo.Text=''then
  begin
    Application.MessageBox('请指定要导入的结束行！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  try
    ExcelWorkSheet1.ConnectTo(ExcelWorkBook1.Worksheets[1] as _worksheet);
  except
    Application.MessageBox('连接工作表时出现错误！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryLJ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 机台了机信息 where 报告日期=:bgrq');
    Parameters.ParamByName('bgrq').Value:=Excelworksheet1.Cells.Item[StrToInt(edtBeginNo.Text),11];
    Open;
  end;
  if not DM.qryLJ.Eof then
  begin
    Application.MessageBox('所选择的Excel表已经导入,请导入其他Excel数据！','提示',MB_OK+MB_ICONINFORMATION);
    edtFileSelect.Text:='';
    edtEndNo.Text:='';
    edtEndNo.Enabled:=False;
    btnImport.Enabled:=False;
    Exit;
  end;
  try
   cxprgrsbrImportProceed.Visible:=True;
   cxprgrsbrImportProceed.Properties.Max:=StrToInt(edtEndNo.Text)-StrToInt(edtBeginNo.Text)+1;
   row:=StrToInt(edtBeginNo.Text);
   DM.ADOConnection1.BeginTrans;
   while row<=StrToInt(edtEndNo.Text) do  //注意：含有隐藏列
   begin
     with DM.qryLJinsert do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from 机台了机信息');
       Open;
       Append;
       Fields[1].Value:=Excelworksheet1.Cells.Item[row,1];     //区域
       Fields[2].Value:=Excelworksheet1.Cells.Item[row,3];     //品名
       Fields[3].Value:=Excelworksheet1.Cells.Item[row,2];     //车位号
       Fields[4].Value:=Excelworksheet1.Cells.Item[row,4];     //轴长
       Fields[5].Value:=Excelworksheet1.Cells.Item[row,5];     //缩率
       Fields[6].Value:=Excelworksheet1.Cells.Item[row,6];     //日产
       Fields[7].Value:=Excelworksheet1.Cells.Item[row,8];     //上机时间
       Fields[8].Value:=Excelworksheet1.Cells.Item[row,7];     //了机周期
       Fields[9].Value:=RoundTo(Excelworksheet1.Cells.Item[row,9],-2);     //预了机时间
       Fields[10].Value:=Excelworksheet1.Cells.Item[row,11];     //报告日期
       Fields[11].Value:=Excelworksheet1.Cells.Item[row,10];     //了机后状态
       Post;
     end;
     row:=row+1;
     cxprgrsbrImportProceed.Position:=cxprgrsbrImportProceed.Position+1;
   end;
   DM.ADOConnection1.CommitTrans;
   ShowMessage('导入成功,共导入 '+IntToStr(StrToInt(edtEndNo.Text)-StrToInt(edtBeginNo.Text)+1)+'条数据！');
  except
    DM.ADOConnection1.RollbackTrans;
    showmessage('导入第'+IntToStr(row)+'行数据时出现错误，请核查原因！');
  end;
  edtFileSelect.Text:='';
  edtEndNo.Text:='';
  edtEndNo.Enabled:=False;
  btnImport.Enabled:=False;
  cxprgrsbrImportProceed.Visible:=False;
  cxprgrsbrImportProceed.Position:=0;
 if ( not DM.qry1.Active) or (DM.qry1.Eof) then Exit
 else
 begin
    FrmJTBJBG.cxgrdbtblvwLoomReportInfoDBTableView1.DataController.Filter.Active:=True;
    FrmJTBJBG.btnQuery.Click;
 end;
end;

procedure TFrmSCLJYB.edtFileSelectChange(Sender: TObject);
var
  i:integer;
begin
  lstFileContent.Items.Clear;
  if edtFileSelect.Text<>'' then
  begin
   try
     ExcelApplication1.Connect;
     ExcelApplication1.Workbooks.Add(edtFileSelect.Text,0);
     ExcelWorkBook1.ConnectTo(ExcelApplication1.Workbooks[1]);
   except
     Application.MessageBox('打开Excel文件失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     Exit;
   end;
   ExcelApplication1.Visible[0]:=true;
   for i:=1 to ExcelWorkBook1.Worksheets.Count do
   begin
    ExcelWorkSheet1.ConnectTo(ExcelWorkBook1.Worksheets[i] as _worksheet);
    lstFileContent.Items.Add(ExcelWorkSheet1.Name);
    ExcelWorkSheet1.Disconnect;
   end;
   edtEndNo.Enabled:=True;
   edtEndNo.SetFocus;
   btnImport.Enabled:=True;
  end;
end;

procedure TFrmSCLJYB.edtEndNoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,#13]) then
   begin
    key:=#0;
    application.MessageBox('请输入整数!','提示',MB_OK+MB_ICONINFORMATION);
   end;
  if Key=#13 then
  begin
    btnImport.Click;
  end;
end;

end.
