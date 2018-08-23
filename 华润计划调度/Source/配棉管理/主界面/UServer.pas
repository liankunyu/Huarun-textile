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
  MyIniFile.WriteString('���ݿ�����','���ݿ�IP��ַ',Trim(Edit1.Text));
  MyIniFile.WriteString('���ݿ�����','���ݿ�����',Trim(Edit2.Text));
  MyIniFile.Free;
  Application.MessageBox('���������óɹ���','��ʾ',64);
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
  Edit1.Text:=MyIniFile.ReadString('���ݿ�����','���ݿ�IP��ַ','');
  Edit2.Text:=MyIniFile.ReadString('���ݿ�����','���ݿ�����','');
end;

procedure TFrmServer.SpeedButton1Click(Sender: TObject);  //�������ݿ���֤��
var
    CString:AnsiString;
    str:AnsiString;
begin
    CString :='Provider=SQLOLEDB.1;Password=sa';  //�������
    CString :=CString+';Persist Security Info=False;';

    CString := CString+';Data Source=';    //������ݿ��������
    str:= Trim(Edit1.Text);
    CString := CString+str;               //׷�Ӵ������ļ���������ݿ���������ַ���

    CString := CString+';Initial Catalog=';    //������ݿ���
    str:= Trim(Edit2.Text);
    CString := CString+str;               //׷�Ӵ������ļ���������ݿ����ַ���

    CString := CString+';User ID=sa';

    DM.ADOConnection1.Connected := false;
    DM.ADOConnection1.ConnectionString := CString;  //���ݿ����������ַ�������ֵ
    try            //��׽�쳣
      DM.ADOConnection1.Connected := true;  //���������ݿ������������
      Application.MessageBox('�������ݿ�ɹ��������ʹ�ø÷�������','��ʾ',64)
     except        //�׳��쳣
      Application.MessageBox('�����ݿ����������δ�ɹ�����������������Ƿ���ȷ��','��ʾ',MB_ICONERROR+MB_OK);
    end;
end;

procedure TFrmServer.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13)then
    SpeedButton1Click(Sender);
end;

end.
