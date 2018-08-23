unit UDM;

interface

uses
  SysUtils, Classes,IniFiles, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    qryJTLoomReportInfo: TADOQuery;
    dsJTLoomReportInfo: TDataSource;
    qryJTInsert: TADOQuery;
    qryJTCheck: TADOQuery;
    qryFTLoomReportInfo: TADOQuery;
    dsFTLoomReportInfo: TDataSource;
    qryTotalLoomReportInfo: TADOQuery;
    dsTotalLoomReportInfo: TDataSource;
    qryFTCheck: TADOQuery;
    qryFTInsert: TADOQuery;
    qryLoomDriveInfo: TADOQuery;
    dsLoomDriveInfo: TDataSource;
    qryBdriveCheck: TADOQuery;
    qryBDriveInsert: TADOQuery;
    qryTotalWeavingLength: TADOQuery;
    qryBTeamReportInfo: TADOQuery;
    dsBTeamReportInfo: TDataSource;
    qryBShutDownDaysQuery: TADOQuery;
    qry1: TADOQuery;
    ds1: TDataSource;
    qryLJ: TADOQuery;
    qryLJinsert: TADOQuery;
    qry2: TADOQuery;
    qrygy: TADOQuery;
    qry3: TADOQuery;
    qry4: TADOQuery;
    qry5: TADOQuery;
    qry6: TADOQuery;
    qry7: TADOQuery;
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
