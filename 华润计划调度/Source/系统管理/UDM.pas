unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB,IniFiles;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    qryDep: TADOQuery;
    dsDep: TDataSource;
    qryUserCheck: TADOQuery;
    qryPopemID: TADOQuery;
    qryPwdChange: TADOQuery;
    qryLog: TADOQuery;
    qryBackUp: TADOQuery;
    qryRestore: TADOQuery;
    qryClear: TADOQuery;
    dsLog: TDataSource;
    qryUser: TADOQuery;
    dsUser: TDataSource;
    dsPopem: TDataSource;
    qryPopem: TADOQuery;
    qryUserModify: TADOQuery;
    qryPopemFunc: TADOQuery;
    spUnVisibleNum: TADOStoredProc;
    qryWhetherTableEmpty: TADOQuery;
    qryzw: TADOQuery;
    dszw: TDataSource;
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

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  iFile:=Tinifile.Create(ExtractFilePath(ExtractFilePath(ParamStr(0)))+'data.ini');
  datas:=ifile.ReadString('System','Data Source','');
  inita:=ifile.ReadString('System','Initial Catalog','');
  path:=('Provider=SQLOLEDB.1;Password=sa;User ID=sa;Persist Security Info=True;Initial Catalog='+quotedstr(inita)+';Data Source='+quotedstr(datas)+'');
  ADOconnection1.ConnectionString:=path;
  ADOconnection1.Connected:=true;
end;

end.
