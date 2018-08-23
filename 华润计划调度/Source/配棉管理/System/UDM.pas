unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB, IniFiles,Windows,Dialogs,Forms;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ATDepartment: TADOTable;
    DSDepartment: TDataSource;
    ATDoctor: TADOTable;
    DSDoctor: TDataSource;
    AQDoctor1: TADOQuery;
    DSPost: TDataSource;
    AQPost: TADOQuery;
    AQDepartment: TADOQuery;
    DSDepartment1: TDataSource;
    AQ1: TADOQuery;
    DS1: TDataSource;
    DSDoctor1: TDataSource;
    ADOQuery1: TADOQuery;
    qryStaffQuery: TADOQuery;
    qryStaffModify: TADOQuery;
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
var  {*****数据模块窗体创建事件*****}
    iFile:TIniFile;
    datas,inita,path:String;
begin
  iFile:=Tinifile.Create(ExtractFilePath(ExtractFilePath(ParamStr(0)))+'data.ini');
  datas:=ifile.ReadString('数据库连接','数据库IP地址','');
  inita:=ifile.ReadString('数据库连接','数据库名称','');
  path:=('Provider=SQLOLEDB.1;Password=sa;User ID=sa;Persist Security Info=True;Initial Catalog='+quotedstr(inita)+';Data Source='+quotedstr(datas)+'');
  ADOconnection1.ConnectionString:=path;
  ADOconnection1.Connected:=true;
end;
end.
