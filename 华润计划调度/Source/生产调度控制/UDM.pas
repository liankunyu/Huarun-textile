unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB,IniFiles;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    qryWeavingDynamicInfo: TADOQuery;
    dsWeavingDynamicInfo: TDataSource;
    qryWeavingDynamicInfoDelete: TADOQuery;
    qryBWhetherHasRecords: TADOQuery;
    qryWeavingDynamicInfoModify: TADOQuery;
    dsBCustomerInfo: TDataSource;
    qryBCustomerInfo: TADOQuery;
    spBFinishStateUpdate: TADOStoredProc;
    qryBOrderAmountQuery: TADOQuery;
    qryscjh: TADOQuery;
    dsscjh: TDataSource;
    qryBOrderID: TADOQuery;
    qryBFinishStateQuery: TADOQuery;
    qryBScheduling: TADOQuery;
    dsBScheduling: TDataSource;
    qrySchedulingModify: TADOQuery;
    qryqrySchedulingDelete: TADOQuery;
    qryBShutDownDaysQuery: TADOQuery;
    spBMachineStateUpdate: TADOStoredProc;
    dsBOrderID: TDataSource;
    qryzjxx: TADOQuery;
    dsBzjxx: TDataSource;
    qryzzdtxx: TADOQuery;
    qryzbdt: TADOQuery;
    qrysbxx: TADOQuery;
    qrydy: TADOQuery;
    qrydsdd: TADOQuery;
    dsBdsdd: TDataSource;
    dsBtlscdd: TDataSource;
    dsBljdd: TDataSource;
    qrytlscdd: TADOQuery;
    qryljdd: TADOQuery;
    qryjsyxgl: TADOQuery;
    qrywsyxgl: TADOQuery;
    qryjsgl: TADOQuery;
    qrywsgl: TADOQuery;
    qry5: TADOQuery;
    qry6: TADOQuery;
    dsBjsyxgl: TDataSource;
    dsBwsyxgl: TDataSource;
    dsBjsgl: TDataSource;
    dsBwsgl: TDataSource;
    ds5: TDataSource;
    ds6: TDataSource;
    qry1: TADOQuery;
    qry2: TADOQuery;
    qryddsczj: TADOQuery;
    dsBddsczj: TDataSource;
    qryjtxx: TADOQuery;
    dsjtxx: TDataSource;
    qry3: TADOQuery;
    qry4: TADOQuery;
    qry7: TADOQuery;
    sp1: TADOStoredProc;
    qry8: TADOQuery;
    qry9: TADOQuery;
    qrycjly: TADOQuery;
    qry10: TADOQuery;
    qry11: TADOQuery;
    qryzzdd: TADOQuery;
    dszzdd: TDataSource;
    qry12: TADOQuery;
    qry13: TADOQuery;
    qry14: TADOQuery;
    qry15: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryBOrderIDBeforeOpen(DataSet: TDataSet);
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
procedure TDM.qryBOrderIDBeforeOpen(DataSet: TDataSet);
var
i:integer;
begin
    with qryBOrderID do
    with (DataSet as TCustomADODataSet) do
    for   i:= 1 to Parameters.Count do
    Parameters.Items[i - 1].Size := Length(Parameters.Items[i - 1].Value);
end;

end.






