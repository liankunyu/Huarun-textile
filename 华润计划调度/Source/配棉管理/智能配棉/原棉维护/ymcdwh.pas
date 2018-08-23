unit ymcdwh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, RzButton, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls, RzPanel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB, RzCmboBx;

type
  TFrmYmcdwh = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel3: TRzPanel;
    RzLabel11: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzEdit2: TRzEdit;
    RzEdit1: TRzEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    RzEdit3: TRzEdit;
    RzPanel1: TRzPanel;
    bquery: TRzBitBtn;
    bnew: TRzBitBtn;
    bsave: TRzBitBtn;
    breturn: TRzBitBtn;
    ADOQuery1: TADOQuery;
    function cdwhcnbh :string;
    function save :string;
    procedure breturnClick(Sender: TObject);
    procedure bsaveClick(Sender: TObject);
    procedure bnewClick(Sender: TObject);
    procedure bqueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function FindMin(sqlstr:string):integer;       //=====�Զ��������===
  end;

var
  FrmYmcdwh: TFrmYmcdwh;
  procedure AYMCDWH(AHandle:THandle);stdcall;    //=====DLL����==

implementation

uses UDM;

{$R *.dfm}
//============DLL����====��ע�⣺AYMCDWH�е�A,�Ǻ���ϵģ�===
procedure AYMCDWH(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmYmcdwh:=TFrmYmcdwh.Create(Application);
  try
    FrmYmcdwh.ShowModal;
  finally
    TFrmYmcdwh(FrmYmcdwh).Free;
  end;
end;

/////////////////////////////// �Զ�������ź���  //////////////////////////////

function TFrmYmcdwh.FindMin(sqlstr:string):integer;
var
  i,j,number:integer;
  query:tadoquery;
  No:array of integer;
  find:boolean;
begin
  query:=tadoquery.Create(self);
  query.Connection:=dm.con1;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add(sqlstr);
  query.Open;
  if query.RecordCount=0 then result:=1
  else
  begin
    number:=0;
    setlength(No,query.RecordCount);
    for i:=0 to query.RecordCount-1 do
    begin
      no[i]:=query.Fields[0].AsInteger;
      query.Next;
    end;
    for j:=1 to query.RecordCount+1 do
    begin
      find:=false;
      for i:=0 to query.RecordCount-1 do
      if No[i]=j then
      begin
        find:=true;
        break;
      end;
      if not find then
      begin
        number:=j;
        break;
      end;
    end;
    result:=number;
  end;
  query.Free;
end;


//=====================����  Ψһ   ���ڱ��=====================

function TFrmYmcdwh.cdwhcnbh;
var
  S: String;
begin
  with dm.ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from FG11ԭ�޲���ά�� where ���ڱ�� is not null');
    Open;
  end;
  if dm.ADOQuery1.RecordCount>0 then
  begin
    dm.ADOQuery1.Last;
    S :=Trim('cd')+Format('%.3d',[(StrToInt(Copy(dm.ADOQuery1.FieldByName('���ڱ��').AsString,3,3))+1)]);
  end
  else
  begin
    S :=Trim('cd')+'001';
  end;
  result := S;
end;

//========================���溯��=====================

function TFrmYmcdwh.save;
 begin
 try
 RzEdit2.Text:=trim(RzEdit2.Text);
 RzEdit1.Text:=trim(RzEdit1.Text);
 if RzEdit2.Text='' then
 begin
 ShowMessage('�����볧�ڱ�ţ�����Ϊ��');
 Exit;
 end;
 with dm.ADOQuery1 do
 begin
  Edit;
  Insert;
  FieldByName('���ڱ��').AsString:=RzEdit3.Text;
  FieldByName('����').AsString:=RzEdit2.Text;
  FieldByName('��Ӧ��').AsString:=RzEdit1.Text;
  FieldByName('��ע').AsString:=cxLookupComboBox1.Text;
  Refresh;
  end;
 except
 showmessage('����ʧ��!');
 Exit;
 end;
end;

procedure TFrmYmcdwh.breturnClick(Sender: TObject);
begin
  close;
end;

procedure TFrmYmcdwh.bsaveClick(Sender: TObject);
begin
  try
 save;
 application.MessageBox('ԭ�޲�����Ϣ����ɹ�!','��ʾ',MB_OK+MB_ICONINFORMATION);
 with dm.qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from FG11ԭ�޲���ά�� where ���ڱ��=:YGH');
    Parameters.ParamByName('YGH').Value:=RzEdit3.Text;
    Open;
  end;
  RzEdit3.Text:='';
  RzEdit2.Text:='';
  RzEdit1.Text:='';
  bsave.Enabled:=false;
 except
 application.MessageBox('ԭ�޲�����Ϣ����ʧ��!','��ʾ',MB_OK+MB_ICONINFORMATION);
 bsave.Enabled:=False;
 Exit;
 end;
end;

procedure TFrmYmcdwh.bnewClick(Sender: TObject);
begin
  RzEdit3.Text:=cdwhcnbh;
  bsave.Enabled:=True;
end;

procedure TFrmYmcdwh.bqueryClick(Sender: TObject);
begin
  with dm.qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from FG11ԭ�޲���ά�� where ���ڱ�� is not null');
    Open;
  end;
  bsave.Enabled:=False;
end;

procedure TFrmYmcdwh.FormShow(Sender: TObject);
begin
DM.qry2.Active:=True;
end;

end.
