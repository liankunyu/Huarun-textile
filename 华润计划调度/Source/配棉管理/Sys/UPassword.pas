unit UPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzLabel, ExtCtrls, IniFiles;

type
  TFrmPassword = class(TForm)
    Edit2: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit4: TEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPassword: TFrmPassword;
  procedure Password(AHandle:THandle);stdcall;
  //GetSkin: 取得指定Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';
implementation
uses UDM, Crypt;
{$R *.dfm}
procedure Password(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmPassword:=TFrmPassword.Create(Application);
  try
    FrmPassword.ShowModal;
  finally
    TFrmPassword(FrmPassword).Free;
  end;
end;

procedure TFrmPassword.FormShow(Sender: TObject);
var MyIniFile:Tinifile;
begin
  MyIniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'login.ini');
  Edit2.Text:=MyIniFile.ReadString('登录信息','员工工号','');
  Edit1.SetFocus;
end;

procedure TFrmPassword.BitBtn1Click(Sender: TObject);
begin
  if (Trim(Edit1.Text)='')or(Trim(Edit3.Text)='')or(Trim(Edit4.Text)='')then
    begin
      Application.MessageBox('对不起，请输入完整才能进行修改！','提示',MB_ICONINFORMATION+MB_OK);
      Exit;
    end;
  with DM.qryUserQuery  do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 用户信息表 where 员工工号=:a and 用户密码=:b');
    Parameters.ParamByName('a').Value:= Edit2.Text;
    Parameters.ParamByName('b').Value:= Edit1.Text;
    Open;
  end;
  if DM.qryUserQuery.Eof then
  begin
    Application.MessageBox('对不起，旧密码输入错误相，请重新输入！','提示',MB_ICONINFORMATION+MB_OK);
    Edit1.SetFocus;
    Exit;
  end;
  if (Trim(Edit3.Text)<>Trim(Edit4.Text)) then
    begin
      Application.MessageBox('对不起，两次密码输入不相同！','提示',MB_ICONINFORMATION+MB_OK);
      Edit4.SetFocus;
      Exit;
    end;
  try
    DM.ADOConnection1.BeginTrans;
    with DM.AQUser do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update 用户信息表 set 用户密码=:b where 员工工号=:c');
        Parameters.ParamByName('b').Value:=Encrypt(Trim(Edit3.Text));
        Parameters.ParamByName('c').Value:=Trim(Edit2.Text);
        ExecSQL;
      end;
    DM.ADOConnection1.CommitTrans;
    Application.MessageBox('修改用户信息成功！','提示',MB_ICONINFORMATION+MB_OK);
  except
    DM.ADOConnection1.RollbackTrans; 
    Application.MessageBox('修改用户信息出现错误！','错误',MB_ICONERROR+MB_OK);
  end;
  Self.Close;
end;

procedure TFrmPassword.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
