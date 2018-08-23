unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB, IniFiles,Windows,Dialogs,Forms;

type
  TDM = class(TDataModule)
    con1: TADOConnection;
    qryDepName: TADOQuery;
    dsDepName: TDataSource;
    qryUserName: TADOQuery;
    dsUserName: TDataSource;
    qryLogin: TADOQuery;
    qryLoginLog: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  datas,inita,path:string;
  iFile:TiniFile;

implementation
uses link;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  iFile:=Tinifile.Create(ExtractFilePath(Application.ExeName)+'data.ini');
  datas:=ifile.ReadString('System','Data Source','');
  inita:=ifile.ReadString('System','Initial Catalog','');
  path:=('Provider=SQLOLEDB.1;Password=sa;User ID=sa;Persist Security Info=True;Initial Catalog='+quotedstr(inita)+';Data Source='+quotedstr(datas)+'');
  con1.ConnectionString:=path;
  try
    con1.Connected:=True;
    qryDepName.Open;
  except
    Application.MessageBox('数据库连接失败,请点击连接按钮重新连接！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
end;

end.
