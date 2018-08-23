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
    procedure DataModuleCreate(Sender: TObject);           //==创建动态数据库连接
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

//==================  创建动态数据库连接==========================

procedure TDM.DataModuleCreate(Sender: TObject);
var  {*****数据模块窗体创建事件*****}
    MyIniFile:TIniFile;
    CString:AnsiString;
    str:AnsiString;
begin
    MyIniFile := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini');
    CString :='Provider='+MyIniFile.ReadString('Database','Provider','')+';Password='+MyIniFile.ReadString('Database','Password','');  //添加密码
    CString :=CString+';Persist Security Info=False;Initial Catalog='+MyIniFile.ReadString('Database','Initial Catalog','');    //添加数据库

    CString := CString+';Data Source=';    //添加数据库服务器名
    str:= MyIniFile.ReadString('Database','Data Source','');  //从配置文件读数据库服务器名
    CString := CString+str;               //追加从配置文件读入的数据库服务器名字符串

    CString := CString+';User ID='+MyIniFile.ReadString('Database','User ID','');

    DM.con1.Connected := false;
    DM.con1.ConnectionString := CString;  //数据库连接属性字符串赋新值
    try            //捕捉异常
      DM.con1.Connected := true;  //启动与数据库服务器的连接
     except        //抛出异常
      Application.MessageBox('与数据库服务器连接未成功，请检查服务器连接是否正确！','提示',MB_ICONERROR+MB_OK);
    end;
end;

end.
