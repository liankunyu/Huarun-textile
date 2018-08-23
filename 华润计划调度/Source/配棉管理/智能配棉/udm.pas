unit udm;

interface

uses
  SysUtils, Classes, DB, ADODB, IniFiles, Dialogs, Forms, Windows;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  iFile:TIniFile;
  datas,inita,path:string;
begin
  iFile:=Tinifile.Create(ExtractFilePath(ExtractFilePath(ParamStr(0)))+'data.ini');
  datas:=ifile.ReadString('数据库连接','数据库IP地址','');
  inita:=ifile.ReadString('数据库连接','数据库名称','');
  path:=('Provider=SQLOLEDB.1;Password=sa;User ID=sa;Persist Security Info=True;Initial Catalog='+quotedstr(inita)+';Data Source='+quotedstr(datas)+'');
  ADOconnection1.ConnectionString:=path;
  ADOconnection1.Connected:=true;
end;


end.
