unit ftbjbgdr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxProgressBar,
  ExcelXP, OleServer, ComCtrls, StdCtrls, RzLstBox, Mask, RzEdit, RzButton,
  RzLabel, RzPanel, ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmFTBJRBGDR = class(TForm)
    rzpnl1: TRzPanel;
    rzgrpbxFileSelect: TRzGroupBox;
    lblFileSelect: TRzLabel;
    btnFileSelect: TRzToolButton;
    rzdtFileSelect: TRzEdit;
    rzpnlFileContent: TRzPanel;
    lbl2: TRzLabel;
    lstFileContent: TRzListBox;
    rzpnlImportSetting: TRzPanel;
    lblBeginNo: TRzLabel;
    lblEndNo: TRzLabel;
    btnImport: TRzToolButton;
    btnExit: TRzToolButton;
    rzdtBeginNo: TRzEdit;
    rzdtEndNo: TRzEdit;
    OpenDialog1: TOpenDialog;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelApplication1: TExcelApplication;
    cxprgrsbrImportProceed: TcxProgressBar;
    procedure btnFileSelectClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure rzdtFileSelectChange(Sender: TObject);
    procedure rzdtEndNoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
   // function replace(shiftcode:string):string;//�滻��ź�������
  public
    { Public declarations }
  end;

var
  FrmFTBJRBGDR: TFrmFTBJRBGDR;

implementation
uses jtbjbg,UDM;

{$R *.dfm}

{function TFrmFTBJRBGDR.replace(shiftcode:string):string; //�滻��ź�������
begin
  if shiftcode='A' then Result:='1';
  if shiftcode='B' then Result:='2';
end; }

procedure TFrmFTBJRBGDR.btnFileSelectClick(Sender: TObject);
begin
  rzdtFileSelect.Text:='';
  ExcelApplication1.Quit;
  ExcelWorkBook1.Disconnect;
  ExcelWorkSheet1.Disconnect;
  ExcelApplication1.Disconnect;
  if OpenDialog1.Execute then
  rzdtFileSelect.Text:=OpenDialog1.FileName;
end;

procedure TFrmFTBJRBGDR.btnExitClick(Sender: TObject);
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

procedure TFrmFTBJRBGDR.btnImportClick(Sender: TObject);
 var
  row:integer;
begin
  if rzdtbeginNo.Text=''then
  begin
    Application.MessageBox('��ָ��Ҫ����Ŀ�ʼ�У�','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  if rzdtEndNo.Text=''then
  begin
    Application.MessageBox('��ָ��Ҫ����Ľ����У�','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  try
    ExcelWorkSheet1.ConnectTo(ExcelWorkBook1.Worksheets[1] as _worksheet);
  except
    Application.MessageBox('���ӹ�����ʱ���ִ���','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryFTCheck do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ���ﲼ���ձ���� where ��������=:bgrq');
    Parameters.ParamByName('bgrq').Value:=copy(Excelworksheet1.Cells.Item[StrToInt(rzdtBeginNo.Text),2],1,4)+'-'+copy(Excelworksheet1.Cells.Item[StrToInt(rzdtBeginNo.Text),2],6,2)+'-'+copy(Excelworksheet1.Cells.Item[StrToInt(rzdtBeginNo.Text),2],9,2);
    Open;


  end;
  if not DM.qryFTCheck.Eof then
  begin
    Application.MessageBox('��ѡ��ı��������Ѿ�����,�뵼���������ڵ����ݣ�','��ʾ',MB_OK+MB_ICONINFORMATION);
    rzdtFileSelect.Text:='';
    rzdtEndNo.Text:='';
    rzdtEndNo.Enabled:=False;
    btnImport.Enabled:=False;
    Exit;
  end;
  try
   cxprgrsbrImportProceed.Visible:=True;
   cxprgrsbrImportProceed.Properties.Max:=StrToInt(rzdtEndNo.Text)-StrToInt(rzdtBeginNo.Text)+1;
   row:=StrToInt(rzdtBeginNo.Text);
   DM.ADOConnection1.BeginTrans;
   while row<=StrToInt(rzdtEndNo.Text) do  //ע�⣺����������
   begin
     with DM.qryFTInsert do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select * from ���ﲼ���ձ����');
       Open;
       Append;
       Fields[1].Value:=copy(Excelworksheet1.Cells.Item[row,2],1,4)+'-'+copy(Excelworksheet1.Cells.Item[row,2],6,2)+'-'+copy(Excelworksheet1.Cells.Item[row,2],9,2);     //��������
       //Fields[2].Value:=replace(copy(Excelworksheet1.Cells.Item[row,2],12,1));//�滻��ź�������
       Fields[2].Value:=Excelworksheet1.Cells.Item[row,3];   //֯�����
       Fields[3].Value:=Excelworksheet1.Cells.Item[row,4];     //Ʒ��
       Fields[4].Value:=Excelworksheet1.Cells.Item[row,7];      //ת��
       Fields[5].Value:=Excelworksheet1.Cells.Item[row,8];        //Ч��
       Fields[6].Value:=Excelworksheet1.Cells.Item[row,10];        // ֯������
       Fields[7].Value:=Excelworksheet1.Cells.Item[row,21];      //��ͣ������
       Fields[8].Value:=Excelworksheet1.Cells.Item[row,26];      //��γͣ������
       Post;
     end;
     row:=row+1;
     cxprgrsbrImportProceed.Position:=cxprgrsbrImportProceed.Position+1;
   end;
   DM.ADOConnection1.CommitTrans;
   ShowMessage('����ɹ�,������ '+IntToStr(StrToInt(rzdtEndNo.Text)-StrToInt(rzdtBeginNo.Text)+1)+'�����ݣ�');
  except
    DM.ADOConnection1.RollbackTrans;
    showmessage('�����'+IntToStr(row)+'������ʱ���ִ�����˲�ԭ��');
  end;
  rzdtFileSelect.Text:='';
  rzdtEndNo.Text:='';
  rzdtEndNo.Enabled:=False;
  btnImport.Enabled:=False;
  cxprgrsbrImportProceed.Visible:=False;
  cxprgrsbrImportProceed.Position:=0;
  if ( not DM.qryFTLoomReportInfo.Active) or (DM.qryFTLoomReportInfo.Eof) then Exit
  else
  begin
    FrmJTBJBG.cxgrdbtblvwFTLoomReportInfo.DataController.Filter.Active:=True;
    FrmJTBJBG.btnQuery.Click;
  end;
end;

procedure TFrmFTBJRBGDR.rzdtFileSelectChange(Sender: TObject);
var
  i:integer;
begin
  lstFileContent.Items.Clear;
  if rzdtFileSelect.Text<>'' then
  begin
   try
     ExcelApplication1.Connect;
     ExcelApplication1.Workbooks.Add(rzdtFileSelect.Text,0);
     ExcelWorkBook1.ConnectTo(ExcelApplication1.Workbooks[1]);
   except
     Application.MessageBox('��Excel�ļ�ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
     Exit;
   end;
   ExcelApplication1.Visible[0]:=true;
   for i:=1 to ExcelWorkBook1.Worksheets.Count do
   begin
    ExcelWorkSheet1.ConnectTo(ExcelWorkBook1.Worksheets[i] as _worksheet);
    lstFileContent.Items.Add(ExcelWorkSheet1.Name);
    ExcelWorkSheet1.Disconnect;
   end;
   rzdtEndNo.Enabled:=True;
   rzdtEndNo.SetFocus;
   btnImport.Enabled:=True;
  end;
end;

procedure TFrmFTBJRBGDR.rzdtEndNoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,#13]) then
   begin
    key:=#0;
    application.MessageBox('����������!','��ʾ',MB_OK+MB_ICONINFORMATION);
   end;
  if Key=#13 then
  begin
    btnImport.Click;
  end;
end;

end.
