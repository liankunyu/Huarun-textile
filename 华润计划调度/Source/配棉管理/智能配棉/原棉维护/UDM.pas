unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB, IniFiles, Forms, Windows, Dialogs;

type
  TDM = class(TDataModule)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    qry2: TADOQuery;
    ds2: TDataSource;
    ADOQuery1: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);           //==������̬���ݿ�����
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

//==================  ������̬���ݿ�����==========================

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

    DM.con1.Connected := false;
    DM.con1.ConnectionString := CString;  //���ݿ����������ַ�������ֵ
    try            //��׽�쳣
      DM.con1.Connected := true;  //���������ݿ������������
     except        //�׳��쳣
      Application.MessageBox('�����ݿ����������δ�ɹ�����������������Ƿ���ȷ��','��ʾ',MB_ICONERROR+MB_OK);
    end;
end;

end.
