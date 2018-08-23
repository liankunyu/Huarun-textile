unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB,IniFiles;

type
  TDM = class(TDataModule)
    con1: TADOConnection;
    qryBVarietiesTurn: TADOQuery;
    dsBVarietiesTurn: TDataSource;
    qryBProductionPlan: TADOQuery;
    dsBProductionPlan: TDataSource;
    qryBProductionPlanModify: TADOQuery;
    qryBProductionPlanInsert: TADOQuery;
    spBPlanAddStateUpdate: TADOStoredProc;
    qryBXX: TADOQuery;
    dsBXX: TDataSource;
    spBProductNameAdd: TADOStoredProc;
    qryBShutDownDaysQuery: TADOQuery;
    qryBSchedulingInsert: TADOQuery;
    qryBWhetherHasRecords: TADOQuery;
    sp1: TADOStoredProc;
    qry1: TADOQuery;
    ds1: TDataSource;
    qry3: TADOQuery;
    qry4: TADOQuery;
    qry2: TADOQuery;
    qry5: TADOQuery;
    qry6: TADOQuery;
    qry7: TADOQuery;
    qry8: TADOQuery;
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
  con1.ConnectionString:=path;
  con1.Connected:=true;
end;

end.
