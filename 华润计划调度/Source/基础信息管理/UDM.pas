unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB,IniFiles;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    qryYarnInfo: TADOQuery;
    dsYarnInfo: TDataSource;
    qryBCategory: TADOQuery;
    dsBCategory: TDataSource;
    qryDep: TADOQuery;
    dsDep: TDataSource;
    qryBCustomer: TADOQuery;
    dsBCustomer: TDataSource;
    qrySCustomer: TADOQuery;
    dsSCustomer: TDataSource;
    qryBCustomerModify: TADOQuery;
    qrySCustomerModify: TADOQuery;
    qryGreyInfo: TADOQuery;
    dsGreyInfo: TDataSource;
    qryBCraftInfo: TADOQuery;
    dsBCraftInfo: TDataSource;
    qryBCraftTurn: TADOQuery;
    dsBCraftTurn: TDataSource;
    qrySCraftInfo: TADOQuery;
    dsSCraftInfo: TDataSource;
    qrySCraftTurn: TADOQuery;
    dsSCraftTurn: TDataSource;
    spBCraftStateUpdate: TADOStoredProc;
    qryBCraftInfoInsert: TADOQuery;
    dsBCraftInfoInsert: TDataSource;
    spBExamineStateUpdate: TADOStoredProc;
    qryCraftInfoPrint: TADOQuery;
    qryBCraftInfoDelete: TADOQuery;
    qryProductNameWhetherInOrderInfo: TADOQuery;
    qryProductNameWhetherInCraftInfo: TADOQuery;
    qryCraftInProductionInfo: TADOQuery;
    qrygyhz: TADOQuery;
    dsgyhz: TDataSource;
    qryzw: TADOQuery;
    dszw: TDataSource;
    qryqx: TADOQuery;
    qry1: TADOQuery;
    qryjsyxgl: TADOQuery;
    dsjsyxgl: TDataSource;
    qryjscg: TADOQuery;
    dsjscg: TDataSource;
    qry2: TADOQuery;
    qry3: TADOQuery;
    qrywsyxgl: TADOQuery;
    dswsyxgl: TDataSource;
    qrywscg: TADOQuery;
    dswscg: TDataSource;
    qry4: TADOQuery;
    qry5: TADOQuery;
    qryzzjl: TADOQuery;
    dszzjl: TDataSource;
    qry6: TADOQuery;
    qry7: TADOQuery;
    qry8: TADOQuery;
    qry9: TADOQuery;
    qrypmpd: TADOQuery;
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
