unit UDoc_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, RzLabel, Buttons, ExtCtrls, jpeg;

type
  TFrmDoc_1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function auto():string;
  public
    { Public declarations }
  end;

var
  FrmDoc_1: TFrmDoc_1;

implementation
uses UDM;
{$R *.dfm}

function TFrmDoc_1.auto;
var
  s,ygh:string;
begin
  if DM.ADOQuery1.RecordCount>0 then
  begin
    DM.ADOQuery1.Last;
    s:= Copy(DM.ADOQuery1.FieldByName('Ա������').AsString,1,3);
    ygh:=s+Format('%.3d',[(StrToInt(Copy(DM.ADOQuery1.FieldByName('Ա������').AsString,4,3))+1)]);
  end
  else
  begin
    ygh:='YG-001';
  end;
  result:=ygh;
end;

procedure TFrmDoc_1.BitBtn1Click(Sender: TObject);
begin
  if Trim(Edit2.Text)<>'' then
    begin
      with DM.qryStaffQuery do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from Ա����Ϣ�� where Ա������=:d');
          Parameters.ParamByName('d').Value:=Trim(Edit2.Text);
          Open;
        end;
      if not DM.qryStaffQuery.Eof then
        if Application.MessageBox('��ͬ���ֵ���Ա�Ѿ�����ӣ��Ƿ�Ҫ������Ӹ�Ա����Ϣ��','��ʾ',MB_YESNO)=ID_NO then
          Exit;
      with DM.AQDoctor1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('insert into Ա����Ϣ��(Ա������,Ա������,Ա���Ա�,��������,��������,Ա��ְλ) values(:a,:b,:c,:d,:e,:f)');
          Parameters.ParamByName('a').Value:=auto();
          Parameters.ParamByName('b').Value:=Trim(Edit2.Text);
          Parameters.ParamByName('c').Value:=Trim(ComboBox1.Text);
          Parameters.ParamByName('d').Value:=formatdatetime('yyyy-mm-dd',DateTimePicker1.date);
          Parameters.ParamByName('e').Value:=Trim(ComboBox2.Text);
          Parameters.ParamByName('f').Value:=Trim(ComboBox3.Text);
          ExecSQL;
          SQL.Clear;
          SQL.Add('select * from Ա����Ϣ�� where Ա������=:yggh');
          Parameters.ParamByName('yggh').Value:=auto();
          Open;
        end;
      Application.MessageBox('���Ա����Ϣ�ɹ���','��ʾ',64);
      Self.Close;
    end;

end;

procedure TFrmDoc_1.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDoc_1.FormCreate(Sender: TObject);
var
  i:Integer;
begin
  with DM.AQDepartment do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from ������Ϣ��');
      Open;
    end;
  for i:=0 to DM.AQDepartment.RecordCount-1 do
    begin
      ComboBox2.Items.Add(Trim(DM.AQDepartment.FieldByName('��������').AsString));
      DM.AQDepartment.Next;
    end;
    DM.ADOQuery1.Open;

 { with DM.AQPost do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Post_ID,Post_Name from Post where Post_Type=:a');
      Parameters.ParamByName('a').Value:='ҽ��';
      Open;
    end;
  for j:=0 to DM.AQPost.RecordCount-1 do
    begin
      ComboBox3.Items.AddObject(Trim(DM.AQPost.FieldByName('Post_Name').AsString),TObject(DM.AQPost.FieldByName('Post_ID').AsInteger));
      DM.AQPost.Next;
    end;  }
end;

procedure TFrmDoc_1.FormShow(Sender: TObject);
begin
  Edit2.Clear;
end;

end.
