unit DM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
  var  {*****����ģ�鴰�崴���¼�*****}
    MyIniFile:TIniFile;
    CString:AnsiString;
    str:AnsiString;
begin
    MyIniFile := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini');
    CString :='Provider='+MyIniFile.ReadString('Database','Provider','')+';Password='+MyIniFile.ReadString('Database','Password','');  //�������
    CString :=CString+';Persist Security Info=False;Initial Catalog='+MyIniFile.ReadString('Database','Initial Catalog','');    //������ݿ�

    CString := CString+';Data Source=';    //������ݿ��������
    str:= MyIniFile.ReadString('Database','Data Source','');  //�������ļ������ݿ��������
    CString := CString+str;               //׷�Ӵ������ļ���������ݿ���������ַ���

    CString := CString+';User ID='+MyIniFile.ReadString('Database','User ID','');

    DM.ADOConnection1.Connected := false;
    DM.ADOConnection1.ConnectionString := CString;  //���ݿ����������ַ�������ֵ
    try            //��׽�쳣
      DM.ADOConnection1.Connected := true;  //���������ݿ������������
     except        //�׳��쳣
      Application.MessageBox('�����ݿ����������δ�ɹ�����������������Ƿ���ȷ��','��ʾ',MB_ICONERROR+MB_OK);
    end;
end;


end.
