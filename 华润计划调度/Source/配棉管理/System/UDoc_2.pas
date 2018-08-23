unit UDoc_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzDTP, RzDBDTP, StdCtrls, Mask, DBCtrls, Buttons,
  RzLabel, DB, ExtCtrls, jpeg;

type
  TFrmDoc_2 = class(TForm)
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Image1: TImage;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDoc_2: TFrmDoc_2;

implementation
uses UDM;
{$R *.dfm}

procedure TFrmDoc_2.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date:=StrToDate(formatdatetime('yyyy-mm-dd',DM.AQDoctor1['��������']));
end;

procedure TFrmDoc_2.BitBtn1Click(Sender: TObject);
begin
  if Trim(DBEdit2.Text)<>'' then
    begin
      with DM.qryStaffQuery do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from Ա����Ϣ�� where Ա������=:d');
          Parameters.ParamByName('d').Value:=Trim(DBEdit2.Text);
          Open;
        end;
      if not DM.qryStaffQuery.Eof then
        if Application.MessageBox('��ͬ���ֵ�Ա���Ѿ�����ӣ��Ƿ�Ҫ������Ӹ�Ա����','��ʾ',MB_YESNO)=ID_NO then
          Exit;
      with DM.qryStaffModify do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update Ա����Ϣ�� set Ա������=:a,Ա���Ա�=:b,��������=:c,��������=:d,Ա��ְλ=:e where Ա������=:f');
          Parameters.ParamByName('a').Value:=Trim(DBEdit2.Text);
          Parameters.ParamByName('b').Value:=Trim(DBComboBox1.Text);
          Parameters.ParamByName('c').Value:=formatdatetime('yyyy-mm-dd',DateTimePicker1.date);
          Parameters.ParamByName('d').Value:=Trim(DBComboBox3.Text);
          Parameters.ParamByName('e').Value:=Trim(DBComboBox2.Text);
          Parameters.ParamByName('f').Value:=Trim(DBEdit1.Text);
          ExecSQL;
        end;
      Application.MessageBox('�޸�Ա����Ϣ�ɹ���','��ʾ',64);
      Close;
    end;

end;

procedure TFrmDoc_2.FormCreate(Sender: TObject);
begin
  with DM.AQDepartment do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from ������Ϣ��');
      Open;
    end;
{  with DM.AQPost do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select Post_ID,Post_Name from Post where Post_Type=:a');
      Parameters.ParamByName('a').Value:='ҽ��';
      Open;
    end;
  for j:=0 to DM.AQPost.RecordCount-1 do
    begin
      ComboBox2.Items.AddObject(Trim(DM.AQPost.FieldByName('Post_Name').AsString),TObject(DM.AQPost.FieldByName('Post_ID').AsInteger));
      DM.AQPost.Next;
    end;     }
end;

procedure TFrmDoc_2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
