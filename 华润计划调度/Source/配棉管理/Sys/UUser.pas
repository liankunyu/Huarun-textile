unit UUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, RzRadGrp, Buttons,IniFiles;

type
  TFrmUser = class(TForm)
    edtUserPwd: TEdit;
    Panel1: TPanel;
    RzLabel3: TRzLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbbStaffID: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cbbDepName: TComboBox;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cbbDepNameChange(Sender: TObject);
    procedure cbbStaffIDChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUser: TFrmUser;
  procedure User(AHandle:THandle);stdcall;
  //GetSkin: ȡ��ָ��Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';
implementation
uses UDM, Crypt;
{$R *.dfm}
procedure User(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmUser:=TFrmUser.Create(Application);
  try
    FrmUser.ShowModal;
  finally
    TFrmUser(FrmUser).Free;
  end;
end;

procedure TFrmUser.FormShow(Sender: TObject);
begin
  with DM.qryDepName do  //��combobox2��ӿ���
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ������Ϣ��');
    Open;
  end;
  while not DM.qryDepName.Eof do
  begin
    cbbDepName.Items.Add(DM.qryDepName.FieldByName('��������').AsString);
    DM.qryDepName.Next;
  end;
end;

procedure TFrmUser.BitBtn1Click(Sender: TObject);
//var s:Integer;
begin
  if (Trim(cbbDepName.Text)='') or (Trim(cbbStaffID.Text)='') or (Trim(edtUserPwd.Text)='') then
    begin
      Application.MessageBox('���벻��Ϊ�գ������룡','��ʾ',MB_ICONINFORMATION+MB_OK);
      Exit;
    end;
  if (CheckBox1.Checked=False) and (CheckBox2.Checked=False) and (CheckBox3.Checked=False) and (CheckBox4.Checked=False)
   and (CheckBox5.Checked=False)then
   begin
      Application.MessageBox('��ѡ����û���Ȩ�ޣ�Ȼ�����ύ��','��ʾ',MB_ICONINFORMATION+MB_OK);
      Exit;
   end;

  try
    DM.ADOConnection1.BeginTrans;
    with DM.qryUserQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from �û���Ϣ�� where Ա������=:yggh');
      Parameters.ParamByName('yggh').Value:=cbbStaffID.Text;
      Open;
    end;
    if not DM.qryUserQuery.Eof then
    begin
      Application.MessageBox('�Բ��𣬱�ϵͳ�Ѿ�ӵ���˵�¼��ϵͳ��Ա�����ţ�','��ʾ',MB_ICONINFORMATION+MB_OK);
      Exit;
    end;
    with DM.AQUser do
    begin
      Close;
      SQL.Clear;
      SQL.Add('insert into �û���Ϣ��(��������,Ա������,�û�����,[p-1],[p-2],[p-3],[p-4],[p-5]) values(:bmmc,:a,:b,:c,:d,:e,:f,:g)');
      Parameters.ParamByName('bmmc').Value:=cbbDepName.Text;
      Parameters.ParamByName('a').Value:=cbbStaffID.Text;
      Parameters.ParamByName('b').Value:=Trim(edtUserPwd.Text);
      Parameters.ParamByName('c').Value:=CheckBox1.Checked;
      Parameters.ParamByName('d').Value:=CheckBox2.Checked;
      Parameters.ParamByName('e').Value:=CheckBox3.Checked;
      Parameters.ParamByName('f').Value:=CheckBox4.Checked;
      Parameters.ParamByName('g').Value:=CheckBox5.Checked;
      ExecSQL;
    end;
    DM.ADOConnection1.CommitTrans;
    Application.MessageBox('�����û��ɹ���','��ʾ',MB_ICONINFORMATION+MB_OK);
    cbbDepName.Text:='';
    cbbStaffID.Text:='';
    edtUserPwd.Text:='';
    edtUserPwd.Enabled:=False;
    CheckBox1.Checked:=False;
    CheckBox2.Checked:=False;
    CheckBox3.Checked:=False;
    CheckBox4.Checked:=False;
    CheckBox5.Checked:=False;
  except
    DM.ADOConnection1.RollbackTrans;
    Application.MessageBox('�Բ�������û����ִ�����˶�֮���ٽ��У�','����',MB_ICONERROR+MB_OK);
  end;

end;

procedure TFrmUser.BitBtn2Click(Sender: TObject);
begin
  Close;
end;



procedure TFrmUser.cbbDepNameChange(Sender: TObject);
begin
  cbbStaffID.Text:='';
  cbbStaffID.Items.Clear;
  if cbbDepName.Text<>'' then
  begin
    with DM.AQUser do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Ա����Ϣ�� where ��������=:bmmc');
      Parameters.ParamByName('bmmc').Value:=cbbDepName.Text;
      Open;
    end;
    while not DM.AQUser.Eof do
    begin
      cbbStaffID.Items.Add(DM.AQUser.FieldByName('Ա������').AsString);
      DM.AQUser.Next;
    end;
  end;
end;

procedure TFrmUser.cbbStaffIDChange(Sender: TObject);
begin
  if cbbStaffID.Text<>'' then
  begin
    edtUserPwd.Enabled:=True;
  end;
end;

end.
