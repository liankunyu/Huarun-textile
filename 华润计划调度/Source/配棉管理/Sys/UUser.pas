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
  //GetSkin: 取得指定Skin
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
  with DM.qryDepName do  //给combobox2添加科室
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 部门信息表');
    Open;
  end;
  while not DM.qryDepName.Eof do
  begin
    cbbDepName.Items.Add(DM.qryDepName.FieldByName('部门名称').AsString);
    DM.qryDepName.Next;
  end;
end;

procedure TFrmUser.BitBtn1Click(Sender: TObject);
//var s:Integer;
begin
  if (Trim(cbbDepName.Text)='') or (Trim(cbbStaffID.Text)='') or (Trim(edtUserPwd.Text)='') then
    begin
      Application.MessageBox('输入不能为空，请输入！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
    end;
  if (CheckBox1.Checked=False) and (CheckBox2.Checked=False) and (CheckBox3.Checked=False) and (CheckBox4.Checked=False)
   and (CheckBox5.Checked=False)then
   begin
      Application.MessageBox('请选择该用户的权限，然后再提交！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
   end;

  try
    DM.ADOConnection1.BeginTrans;
    with DM.qryUserQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 用户信息表 where 员工工号=:yggh');
      Parameters.ParamByName('yggh').Value:=cbbStaffID.Text;
      Open;
    end;
    if not DM.qryUserQuery.Eof then
    begin
      Application.MessageBox('对不起，本系统已经拥有了登录此系统的员工工号！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
    end;
    with DM.AQUser do
    begin
      Close;
      SQL.Clear;
      SQL.Add('insert into 用户信息表(部门名称,员工工号,用户密码,[p-1],[p-2],[p-3],[p-4],[p-5]) values(:bmmc,:a,:b,:c,:d,:e,:f,:g)');
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
    Application.MessageBox('增加用户成功！','提示',MB_ICONINFORMATION+MB_OK);
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
    Application.MessageBox('对不起，添加用户出现错误！请核对之后再进行！','错误',MB_ICONERROR+MB_OK);
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
      SQL.Add('select * from 员工信息表 where 部门名称=:bmmc');
      Parameters.ParamByName('bmmc').Value:=cbbDepName.Text;
      Open;
    end;
    while not DM.AQUser.Eof do
    begin
      cbbStaffID.Items.Add(DM.AQUser.FieldByName('员工工号').AsString);
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
