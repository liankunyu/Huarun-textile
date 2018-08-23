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
  //GetSkin: ȡ��ָ��Skin
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
  Edit2.Text:=MyIniFile.ReadString('��¼��Ϣ','Ա������','');
  Edit1.SetFocus;
end;

procedure TFrmPassword.BitBtn1Click(Sender: TObject);
begin
  if (Trim(Edit1.Text)='')or(Trim(Edit3.Text)='')or(Trim(Edit4.Text)='')then
    begin
      Application.MessageBox('�Բ����������������ܽ����޸ģ�','��ʾ',MB_ICONINFORMATION+MB_OK);
      Exit;
    end;
  with DM.qryUserQuery  do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from �û���Ϣ�� where Ա������=:a and �û�����=:b');
    Parameters.ParamByName('a').Value:= Edit2.Text;
    Parameters.ParamByName('b').Value:= Edit1.Text;
    Open;
  end;
  if DM.qryUserQuery.Eof then
  begin
    Application.MessageBox('�Բ��𣬾�������������࣬���������룡','��ʾ',MB_ICONINFORMATION+MB_OK);
    Edit1.SetFocus;
    Exit;
  end;
  if (Trim(Edit3.Text)<>Trim(Edit4.Text)) then
    begin
      Application.MessageBox('�Բ��������������벻��ͬ��','��ʾ',MB_ICONINFORMATION+MB_OK);
      Edit4.SetFocus;
      Exit;
    end;
  try
    DM.ADOConnection1.BeginTrans;
    with DM.AQUser do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update �û���Ϣ�� set �û�����=:b where Ա������=:c');
        Parameters.ParamByName('b').Value:=Encrypt(Trim(Edit3.Text));
        Parameters.ParamByName('c').Value:=Trim(Edit2.Text);
        ExecSQL;
      end;
    DM.ADOConnection1.CommitTrans;
    Application.MessageBox('�޸��û���Ϣ�ɹ���','��ʾ',MB_ICONINFORMATION+MB_OK);
  except
    DM.ADOConnection1.RollbackTrans; 
    Application.MessageBox('�޸��û���Ϣ���ִ���','����',MB_ICONERROR+MB_OK);
  end;
  Self.Close;
end;

procedure TFrmPassword.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
