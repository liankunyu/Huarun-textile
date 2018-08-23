unit bzgq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridTableView, RzButton, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls, RzPanel,
  ADODB, Mask, RzEdit, RzLabel, cxMaskEdit, cxTextEdit, cxContainer,
  cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

type
  TFrmBZGQ = class(TForm)
    RzPanel1: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    RzPanel5: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    RzPanel2: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    RzEdit2: TRzEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    RzPanel3: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    RzLabel2: TRzLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column3: TcxGridDBColumn;
    RzBitBtn3: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBZGQ: TFrmBZGQ;
  procedure pbzgq(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}
procedure pbzgq(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBZGQ:=TFrmBZGQ.Create(Application);
  try
    FrmBZGQ.ShowModal;
  finally
    TFrmBZGQ(FrmBZGQ).Free;
  end;
end;

procedure TFrmBZGQ.FormCreate(Sender: TObject);
begin
  with DM.qryBM do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 部门信息表 where 部门名称=:bm1 or 部门名称=:bm2');
    Parameters.ParamByName('bm1').Value:='织部分场';
    Parameters.ParamByName('bm2').Value:='纺部分场';
    open;
  end;
  DM.qryBZ.Active:=True;
  DM.qryGQ.Active:=True;
  DM.QryCJ.Active:=True;
end;

procedure TFrmBZGQ.RzBitBtn7Click(Sender: TObject);
begin
  self.close;
end;

procedure TFrmBZGQ.RzBitBtn1Click(Sender: TObject);
begin
  RzEdit1.Enabled:=True;
  RzEdit1.SetFocus;
  cxLookupComboBox1.Enabled:=True;
  RzBitBtn1.Enabled:=False;
  RzBitBtn2.Enabled:=True;
  RzBitBtn3.Enabled:=True;
end;

procedure TFrmBZGQ.RzBitBtn2Click(Sender: TObject);
begin
  if (Trim(RzEdit1.Text)<>'')and (cxLookupComboBox1.Text<>'') then
  begin
   try
    with DM.qryBZ do
    begin
      Insert;
      FieldByName('班组名称').AsString:=Trim(RzEdit1.Text);
      FieldByName('作业工区').AsString:=cxLookupComboBox1.Text;
      Append;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
    end;
   except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   RzEdit1.Text:='';
   RzEdit1.Enabled:=False;
   cxLookupComboBox1.Enabled:=False;
   RzBitBtn2.Enabled:=False;
   RzBitBtn3.Enabled:=False;
   RzBitBtn1.Enabled:=True;
  end
  else
  begin
    Application.MessageBox('请输入要添加的班组信息！','提示',MB_OK+MB_ICONINFORMATION);
    RzEdit1.SetFocus;
  end;
end;

procedure TFrmBZGQ.RzBitBtn4Click(Sender: TObject);
begin
  RzEdit2.Enabled:=True;
  RzEdit2.SetFocus;
  cxLookupComboBox2.Enabled:=True;
  cxLookupComboBox3.Enabled:=True;
  RzBitBtn4.Enabled:=False;
  RzBitBtn5.Enabled:=True;
  RzBitBtn6.Enabled:=True;
end;

procedure TFrmBZGQ.RzBitBtn5Click(Sender: TObject);
begin
  if (Trim(RzEdit2.Text)<>'') and (cxLookupComboBox2.Text<>'') and (cxLookupComboBox3.Text<>'') then
  begin
   try
    with DM.qryGQ  do
    begin
      Insert;
      FieldByName('工区').AsString:=Trim(RzEdit2.Text);
      FieldByName('车间').AsString:=cxLookupComboBox2.Text;
      FieldByName('部门').AsString:=cxLookupComboBox3.Text;
      Append;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
    end;
   except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   RzEdit2.Text:='';
   RzEdit2.Enabled:=False;
   cxLookupComboBox2.Text:='';
   cxLookupComboBox2.Enabled:=False;
   cxLookupComboBox3.Text:='';
   cxLookupComboBox3.Enabled:=False;
   RzBitBtn5.Enabled:=False;
   RzBitBtn6.Enabled:=False;
   RzBitBtn4.Enabled:=True;
  end
  else
  begin
   Application.MessageBox('请输入要添加的工区信息！','提示',MB_OK+MB_ICONINFORMATION);
   RzEdit2.SetFocus;
  end;
end;

procedure TFrmBZGQ.RzBitBtn6Click(Sender: TObject);
begin
  RzEdit2.Text:='';
  RzEdit2.Enabled:=False;
  cxLookupComboBox2.Text:='';
  cxLookupComboBox2.Enabled:=False;
  cxLookupComboBox3.Text:='';
  cxLookupComboBox3.Enabled:=False;
  RzBitBtn5.Enabled:=False;
  RzBitBtn6.Enabled:=False;
  RzBitBtn4.Enabled:=True;
end;

procedure TFrmBZGQ.RzBitBtn3Click(Sender: TObject);
begin
  RzEdit1.Text:='';
  RzEdit1.Enabled:=False;
  cxLookupComboBox1.Enabled:=False;
  RzBitBtn2.Enabled:=False;
  RzBitBtn3.Enabled:=False;
  RzBitBtn1.Enabled:=True;
end;

end.
