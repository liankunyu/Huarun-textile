unit pwdchange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, Mask, RzEdit, RzLabel,
  DB, ADODB,Inifiles, ImgList, cxGraphics;

type
  TFrmPwdChange = class(TForm)
    lblOldPwd: TRzLabel;
    rzdtUserName: TRzEdit;
    lblUserName: TRzLabel;
    rzdtOldPwd: TRzEdit;
    lblNewPwd: TRzLabel;
    rzdtNewPwd: TRzEdit;
    rzdtInputAgain: TRzEdit;
    lblInputAgain: TRzLabel;
    rzpnlBtns: TRzPanel;
    btnConfirm: TRzToolButton;
    btnExit: TRzToolButton;
    ImageList1: TImageList;
    procedure rzbtbtnExitClick(Sender: TObject);
    procedure rzbtbtnConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rzdtInputAgainKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPwdChange: TFrmPwdChange;
  user:string;  //�û�����Ϣ
  lFile:TiniFile;
  procedure ppwdchange(AHandle:THandle);stdcall;
implementation
uses UDM;
{$R *.dfm}

procedure ppwdchange(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmPwdChange:=TFrmPwdChange.Create(Application);
  try
    FrmPwdChange.ShowModal;
  finally
    TFrmPwdChange(FrmPwdChange).Free;
  end;
end;

procedure TFrmPwdChange.FormShow(Sender: TObject);
begin
  lFile:=Tinifile.Create(ExtractFilePath(ParamStr(0))+'login.ini');
  user:=lFile.ReadString('��¼��Ϣ','name','');
  rzdtUserName.Text:=user;
  rzdtUserName.Enabled:=False;
end;

procedure TFrmPwdChange.rzbtbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmPwdChange.rzbtbtnConfirmClick(Sender: TObject);
begin
  if (Trim(rzdtOldPwd.Text)='')or(Trim(rzdtNewPwd.Text)='')or(Trim(rzdtInputAgain.Text)='') then
  begin
    Application.MessageBox('���벻��Ϊ�գ������룡','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryPwdChange do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select * from �û���Ϣ�� where �û���=:YHM');
      Parameters.ParamByName('YHM').Value:=rzdtUserName.Text;
      Open;
    end;
    if Trim(rzdtOldPwd.Text)<>DM.qryPwdChange.FieldByName('����').AsString then
    begin
      Application.MessageBox('������ľ����벻��ȷ�����������룡','��ʾ',MB_OK+MB_ICONERROR);
      rzdtOldPwd.SetFocus;
      Exit;
    end;
    if Trim(rzdtNewPwd.Text)<>Trim(rzdtInputAgain.Text) then
    begin
      Application.MessageBox('��������������벻һ��,���������룡','��ʾ',MB_OK+MB_ICONERROR);
      Exit;
    end;
    if Application.MessageBox('ȷ���޸�������','�����޸�',MB_OKCANCEL)=IDOK then
    begin
     try
      with DM.qryPwdChange do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update �û���Ϣ�� set ����=:MM where �û���=:YHM');
        Parameters.ParamByName('MM').Value:=Trim(rzdtNewPwd.Text);
        Parameters.ParamByName('YHM').Value:=rzdtUserName.Text;
        ExecSQL;
      end;
      Application.MessageBox('�޸ĳɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
     except
       Application.MessageBox('���ݴ������','��ʾ',MB_OK+MB_ICONERROR);
     end;
     Self.Close;
    end;
end;

procedure TFrmPwdChange.rzdtInputAgainKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13  then
    btnConfirm.Click;
end;

end.
