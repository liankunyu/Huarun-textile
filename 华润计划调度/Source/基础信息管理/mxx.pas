unit mxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxContainer, StdCtrls, RzEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  RzPanel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Mask, RzLabel,
  RzButton, ExtCtrls, cxBlobEdit;

type
  TFrmMXX = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    RzPanel3: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel2: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    RzLabel6: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    RzEdit3: TRzEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1DBColumn: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    cxGridDBTableView1DBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzMemo1: TRzMemo;
    RzBitBtn3: TRzBitBtn;
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBox2Exit(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    {function auto():string;}
  public
    { Public declarations }
  end;

var
  FrmMXX: TFrmMXX;
  procedure pmxx(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}

procedure pmxx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmMXX:=TFrmMXX.Create(Application);
  try
    FrmMXX.ShowModal;
  finally
    TFrmMXX(FrmMXX).Free;
  end;
end;

{function TFrmBXX.auto;
var
  fadm:string;
  year:Word;
begin
  DecodeDate(Now(),year);
  
end;}


procedure TFrmMXX.RzBitBtn7Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmMXX.RzBitBtn1Click(Sender: TObject);
begin
  RzEdit1.Enabled:=True;
  RzEdit1.SetFocus;
  RzBitBtn1.Enabled:=False;
  RzBitBtn2.Enabled:=True;
  RzBitBtn3.Enabled:=True;
end;

procedure TFrmMXX.RzBitBtn2Click(Sender: TObject);
begin
  if Trim(RzEdit1.Text)<>'' then
  begin
   try
    with DM.qryMPZ do
    begin
      Insert;
      FieldByName('类别名称').AsString:=Trim(RzEdit1.Text);
      Append;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
    end;
   except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   RzEdit1.Text:='';
   RzEdit1.Enabled:=False;
   RzBitBtn2.Enabled:=False;
   RzBitBtn3.Enabled:=False;
   RzBitBtn1.Enabled:=True;
  end
  else
  begin
    Application.MessageBox('请输入要添加的品种名称！','提示',MB_OK+MB_ICONINFORMATION);
    RzEdit1.SetFocus;
  end;
end;

procedure TFrmMXX.RzBitBtn4Click(Sender: TObject);
begin
  RzEdit3.Enabled:=True;
  RzEdit3.ReadOnly:=True;
  cxLookupComboBox2.Enabled:=True;
  cxLookupComboBox2.SetFocus;
  RzMemo1.Enabled:=True;
  RzBitBtn5.Enabled:=True;
  RzBitBtn6.Enabled:=True;
  RzBitBtn4.Enabled:=False;
end;

procedure TFrmMXX.RzBitBtn5Click(Sender: TObject);
begin
  try
  with DM.ADOQuery1 do
  begin
    Insert;
    FieldByName('方案代码').AsString:=RzEdit3.Text;
    FieldByName('配棉种类').AsString:=cxLookupComboBox2.Text;
    FieldByName('配棉方案').AsString:=Trim(RzMemo1.Text);
    Append;
    Close;
    SQL.Clear;
    SQL.Add('select * from 配棉方案表 order by 方案代码');
    Open;
    Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
  end;
 except
   Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
 end;
 RzBitBtn4.Enabled:=True;
 RzBitBtn5.Enabled:=False;
 RzBitBtn6.Enabled:=False;
 RzEdit3.Text:='';
 RzEdit3.Enabled:=False;
 cxLookupComboBox2.Text:='';
 cxLookupComboBox2.Enabled:=False;
 RzMemo1.Text:='';
 RzMemo1.Enabled:=False;
end;

procedure TFrmMXX.RzBitBtn6Click(Sender: TObject);
begin
 RzBitBtn4.Enabled:=True;
 RzBitBtn5.Enabled:=False;
 RzBitBtn6.Enabled:=False;
 RzEdit3.Text:='';
 RzEdit3.Enabled:=False;
 cxLookupComboBox2.Text:='';
 cxLookupComboBox2.Enabled:=False;
 RzMemo1.Text:='';
 RzMemo1.Enabled:=False;
end;

procedure TFrmMXX.FormShow(Sender: TObject);
begin
  DM.qryMPZ.Active:=True;
  with DM.ADOQuery1  do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 配棉方案表 order by 方案代码');
    Open;
  end;
end;

procedure TFrmMXX.cxLookupComboBox2Exit(Sender: TObject);
begin
  {RzEdit3.Text:=auto(); }
end;

procedure TFrmMXX.RzBitBtn3Click(Sender: TObject);
begin
  RzEdit1.Text:='';
  RzEdit1.Enabled:=False;
  RzBitBtn2.Enabled:=False;
  RzBitBtn3.Enabled:=False;
  RzBitBtn1.Enabled:=True;
end;

end.
