unit login;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, DB, ADODB,
  RzButton, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, RzLabel, jpeg, ExtCtrls,
  Mask, RzEdit,IniFiles, DBCtrls, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    cbbDepName: TcxLookupComboBox;
    cbbUserName: TcxLookupComboBox;
    edtPwd: TRzEdit;
    btnConfirm: TRzBitBtn;
    btnCancel: TRzBitBtn;
    btnLink: TRzBitBtn;
    lblUserName: TRzLabel;
    lblPwd: TRzLabel;
    lblDepName: TRzLabel;
    procedure edtPwdKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnLinkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbDepNamePropertiesChange(Sender: TObject);
    procedure cbbUserNamePropertiesChange(Sender: TObject);

  private
    { Private declarations }
     function DynamicResolution(X,Y:word):bool;  //��Ļ�ֱ��ʵ�����������
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  loginok:Boolean=False;
  datas,inita,path:string;
  iFile:TiniFile;
  lFile:TiniFile;
  swidth,sheight:Integer;

implementation
uses link,UDM;

{$R *.dfm}

function TFrmLogin.DynamicResolution(X,Y:word):bool;  //��Ļ�ֱ��ʵ�����������
Var 
    lpDevMode:TDeviceMode; 
begin 
    result:=EnumDisplaySettings(nil,0,lpDevMode);
    if result then
    begin
      lpDevMode.dmFields:=DM_PELSWIDTH or DM_PELSHEIGHT;
      lpDevMode.dmPelsWidth:=X;
      lpDevMode.dmPelsHeight:=Y;
      result:=ChangeDisplaySettings(lpDevMode,0)=DISP_CHANGE_SUCCESSFUL;
    end; 
end; 
procedure TFrmLogin.btnLinkClick(Sender: TObject);
begin
  FrmLink:=TFrmLink.Create(self);
  FrmLink.ShowModal;
  FreeandNil(FrmLink);
  if DM.con1.Tag=1 then
  begin
    cbbDepName.Clear;
    edtPwd.Text:='';
    DM.qryDepName.Open;
  end;
end;

procedure TFrmLogin.btnCancelClick(Sender: TObject);
begin
 Self.Close;
end;
procedure TFrmLogin.edtPwdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    btnConfirm.Click
  else
  if Key=#27 then
    btnCancel.Click;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if loginok=False then
  begin
    Self.Visible:=False;
    if (swidth<>Screen.Width) or (sheight<>Screen.Height) then
    begin
      if DynamicResolution(swidth,sheight) then        //û������׼ȷ��¼��Ϣʱ���رմ������Ļ�ֱ��ʱ�Ϊԭʼ�ֱ���
        showmessage( '��Ļ�ķֱ����ѳɹ���Ϊԭʼ�ֱ��� ��');
    end;
    Application.Terminate;
  end;
end;
procedure TFrmLogin.btnConfirmClick(Sender: TObject);
var
  bmmc,name,qxmc,logintime:string;
begin
  if cbbDepName.Text='' then
  begin
    Application.MessageBox('��ѡ�����ڲ��ţ�','��ʾ',MB_OK+MB_ICONINFORMATION);
    cbbDepName.SetFocus;
    Exit;
  end;
  if cbbUserName.Text='' then
  begin
     Application.MessageBox('��ѡ���û�����','��ʾ',MB_OK+MB_ICONINFORMATION);
     cbbUserName.SetFocus;
     Exit;
  end;
  if trim(edtPwd.Text)='' then
  begin
     Application.MessageBox('���������룡','��ʾ',MB_OK+MB_ICONINFORMATION);
     edtPwd.SetFocus;
     Exit;
  end
  else
  if DM.qryLogin.FieldByName('����').AsString<>trim(edtPwd.Text) then
  begin
    Application.MessageBox('��������������������룡','��ʾ',MB_OK+MB_ICONERROR);
    edtPwd.SetFocus;
    Exit;
  end
  else
  begin
    loginok:=True;
    bmmc:=cbbDepName.Text;
    name:=cbbUserName.Text;
    qxmc:=DM.qryLogin.FieldByName('����Ȩ��').Value;
    logintime:=DateTimeToStr(now);
    lFile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'login.ini');
    try
      lFile.WriteString('��¼��Ϣ','bmmc',cbbDepName.Text);
      lFile.WriteString('��¼��Ϣ','name',cbbUserName.Text);
      lFile.WriteString('��¼��Ϣ','logintime',logintime);
      lFile.WriteString('��¼��Ϣ','qx',qxmc);
      lFile.WriteString('��¼��Ϣ','�ֱ��ʿ�',IntToStr(swidth));  //��ȡԭʼ��Ļ�ֱ��ʿ�
      lFile.WriteString('��¼��Ϣ','�ֱ��ʸ�',IntToStr(sheight)); //��ȡԭʼ��Ļ�ֱ��ʸ�
      with DM.qryLoginLog do
       begin
          Close;
          SQL.Clear;
          SQL.Add('select * from ��¼��־��');
          Open;
          Insert;
          FieldByName('�û���').AsString:=cbbUserName.Text;
          FieldByName('��������').AsString:=cbbDepName.Text;
          FieldByName('��¼ʱ��').AsString:=logintime;
          Post;
       end;
    finally
      lFile.Free;
    end;
    self.Close;
  end;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  swidth:=Screen.Width;
  sheight:=Screen.Height;
   if (screen.Width<1024) and (screen.Height<768) then   //�����Ļ�ֱ��ʣ������ʱ����Ļ�ֱ��ʲ�ͬʱ�Զ�����Ϊ���ʱ����Ļ�ֱ��ʣ���ƴ���ʱ��Ļ�ֱ���Ϊ1024*768��
   begin
      swidth:=Screen.Width;
      sheight:=Screen.Height;
     if DynamicResolution(1024,768) then
      showmessage( '��Ļ�ķֱ����ѳɹ���Ϊ:1024*768 ��');
   end;
end;
procedure TFrmLogin.cbbDepNamePropertiesChange(Sender: TObject);
begin
  cbbUserName.Text:='';
  if cbbDepName.Text='' then
    Exit;
  with DM.qryUserName do
  begin
    Close;
    sql.Clear;
    SQL.Add('select * from �û���Ϣ�� where ��������=:BMMC');
    Parameters.ParamByName('BMMC').Value:=cbbDepName.Text;
    Open;
  end;
  if DM.qryUserName.Eof then
  begin
     Application.MessageBox('��û�иò����е��û���Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmLogin.cbbUserNamePropertiesChange(Sender: TObject);
begin
  edtPwd.Text:='';
  if cbbUserName.Text='' then
  Exit;
  with DM.qryLogin do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from �û���Ϣ�� where ��������=:BMMC and �û���=:YHM');
    Parameters.ParamByName('BMMC').Value:=cbbDepName.Text;
    Parameters.ParamByName('YHM').Value:=cbbUserName.Text;
    Open;
  end;
end;

end.
