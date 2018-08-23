unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzRadGrp, RzDBRGrp, RzEdit, StdCtrls, Mask, ExtCtrls,
  RzLabel, RzButton, Buttons, IniFiles, RzBckgnd, jpeg, RzStatus,
  Nb30,StrUtils,DateUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmLogin = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Edit1: TEdit;
    RzVersionInfo1: TRzVersionInfo;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    Popedom: Array[1..7] of Boolean;
    procedure MoKuaiQuanXian;
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation
uses UDM, Main,UServer;
{$R *.dfm}

procedure TFrmLogin.MoKuaiQuanXian;
begin
  if DM.AQLogin['P-1']=True then
    begin
      FrmMain.RzGroup1.Visible:=True;
      FrmMain.N1.Visible:=True;
    end
  else
    begin
      FrmMain.RzGroup1.Visible:=False;
      FrmMain.N1.Visible:=False;
    end;

  if DM.AQLogin['P-2']=True then
    begin
      FrmMain.RzGroup2.Visible:=True;
      FrmMain.N4.Visible:=True;
    end
  else
    begin
      FrmMain.RzGroup2.Visible:=False;
      FrmMain.N4.Visible:=False;
    end;
    

  if DM.AQLogin['P-3']=True then
    begin
      FrmMain.RzGroup3.Visible:=True;
      FrmMain.N73.Visible:=True;
    end
  else
    begin
      FrmMain.RzGroup3.Visible:=False;
      FrmMain.N73.Visible:=False;
    end;
    

  if DM.AQLogin['P-4']=True then
    begin
      FrmMain.RzGroup4.Visible:=True;
      FrmMain.N2.Visible:=True;
    end
  else
    begin
      FrmMain.RzGroup4.Visible:=False;
      FrmMain.N2.Visible:=False;
    end;
    

  if DM.AQLogin['P-5']=True then
    begin
      FrmMain.RzGroup5.Visible:=True;
      FrmMain.N5.Visible:=True;
    end
  else
    begin
      FrmMain.RzGroup5.Visible:=False;
      FrmMain.N5.Visible:=False;
    end;

end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  with DM.qryDepName do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct 部门名称 from 用户信息表 order by 部门名称');
    open;
  end;
end;

procedure TFrmLogin.BitBtn1Click(Sender: TObject);
var MyIniFile:Tinifile;
begin
  if cxLookupComboBox1.Text='' then
  begin
    Application.MessageBox('部门名称不能为空，请输入！','提示',64);
    cxLookupComboBox1.SetFocus;
    Exit;
  end;
  if cxLookupComboBox2.Text='' then
  begin
    Application.MessageBox('员工工号不能为空，请输入！','提示',64);
    cxLookupComboBox2.SetFocus;
    Exit;
  end;
  if Edit1.Text='' then
  begin
    Application.MessageBox('密码不能为空，请输入！','提示',64);
    Edit1.SetFocus;
    Exit;
  end;
  with DM.AQLogin do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from 用户信息表 where 部门名称=:a and 员工工号=:b');
    Parameters.ParamByName('a').Value:=cxLookupComboBox1.Text;
    Parameters.ParamByName('b').Value:=cxLookupComboBox2.Text;
    Open;
  end;
  if (Trim(DM.AQLogin['用户密码']) <> trim(Edit1.Text)) then
  begin
    Application.MessageBox('用户密码不正确，请您重新输入','提示',MB_ICONERROR+MB_OK+MB_TASKMODAL);
    Edit1.SetFocus;
    exit;
  end
  else
  begin
    MyIniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'Login.ini');
    MyIniFile.WriteString('登录信息','员工工号',cxLookupComboBox2.Text);
    FrmMain.RzStatusPane3.Caption:=cxLookupComboBox1.Text;
    FrmMain.RzStatusPane1.Caption:=cxLookupComboBox2.Text;
    MoKuaiQuanXian;
    FrmLogin.Tag:=1;
    FrmLogin.Close;
  end;
end;

procedure TFrmLogin.BitBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmLogin.BitBtn3Click(Sender: TObject);
begin
  if not Assigned(FrmServer) then
    begin
      FrmServer:=TFrmServer.Create(Self);
      FrmServer.ShowModal;
    end
  else
    FrmServer.ShowModal;
end;

procedure TFrmLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)and (BitBtn1.Enabled<>False) then
    BitBtn1Click(self);
end;

procedure TFrmLogin.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  cxLookupComboBox2.Text:='';
  if cxLookupComboBox1.Text<>'' then
  begin
     with DM.qryStaffID do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select 员工工号 from 员工信息表 where 部门名称=:a');
        Parameters.ParamByName('a').Value:=cxLookupComboBox1.Text;
        Open;
      end;
  end;

end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.Tag=0 then
  begin
    Application.Terminate;
  end;
end;

end.
