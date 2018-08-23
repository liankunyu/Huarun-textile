unit UServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls, Buttons, RzLabel, jpeg, ExtCtrls, XPMan, winsock;

type
  TFrmServer = class(TForm)
    RzLabel1: TRzLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    XPManifest1: TXPManifest;
    Edit1: TEdit;
    RzLabel2: TRzLabel;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmServer: TFrmServer;

implementation
uses UDM;
{$R *.dfm}

procedure TFrmServer.BitBtn1Click(Sender: TObject);
var
  MyIniFile: TIniFile;
begin
  MyIniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'data.ini');
  MyIniFile.WriteString('数据库连接','数据库IP地址',Trim(Edit1.Text));
  MyIniFile.WriteString('数据库连接','数据库名称',Trim(Edit2.Text));
  MyIniFile.Free;
  Application.MessageBox('服务器设置成功！','提示',64);
  Close;
end;

procedure TFrmServer.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmServer.FormShow(Sender: TObject);
var
  MyIniFile: TIniFile;
begin
  MyIniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'data.ini');
  Edit1.Text:=MyIniFile.ReadString('数据库连接','数据库IP地址','');
  Edit2.Text:=MyIniFile.ReadString('数据库连接','数据库名称','');
end;

procedure TFrmServer.SpeedButton1Click(Sender: TObject);  //链接数据库验证！
var
    CString:AnsiString;
    str:AnsiString;
begin
    CString :='Provider=SQLOLEDB.1;Password=sa';  //添加密码
    CString :=CString+';Persist Security Info=False;';

    CString := CString+';Data Source=';    //添加数据库服务器名
    str:= Trim(Edit1.Text);
    CString := CString+str;               //追加从配置文件读入的数据库服务器名字符串

    CString := CString+';Initial Catalog=';    //添加数据库名
    str:= Trim(Edit2.Text);
    CString := CString+str;               //追加从配置文件读入的数据库名字符串

    CString := CString+';User ID=sa';

    DM.ADOConnection1.Connected := false;
    DM.ADOConnection1.ConnectionString := CString;  //数据库连接属性字符串赋新值
    try            //捕捉异常
      DM.ADOConnection1.Connected := true;  //启动与数据库服务器的连接
      Application.MessageBox('连接数据库成功，你可以使用该服务器！','提示',64)
     except        //抛出异常
      Application.MessageBox('与数据库服务器连接未成功，请检查服务器连接是否正确！','提示',MB_ICONERROR+MB_OK);
    end;
end;

procedure TFrmServer.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13)then
    SpeedButton1Click(Sender);
end;

end.
