unit UDM;

interface

uses
  SysUtils, Classes,IniFiles, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    qryBCustomer: TADOQuery;
    dsBCustomer: TDataSource;
    qryBUnApprovedOrderModify: TADOQuery;
    qryBAutoOrderID: TADOQuery;
    qrySCustomer: TADOQuery;
    dsSCustomer: TDataSource;
    qryBCategory: TADOQuery;
    dsBCategory: TDataSource;
    qryBApprovedOrder: TADOQuery;
    dsBApprovedOrder: TDataSource;
    qryBUnApprovedOrder: TADOQuery;
    dsBUnApprovedOrder: TDataSource;
    qryBUnApprovedOrderDelete: TADOQuery;
    spBApproveStateUpdate: TADOStoredProc;
    spSApproveStateUpdate: TADOStoredProc;
    qryBUnApprovedOrderInsert: TADOQuery;
    qryBOrderExamine: TADOQuery;
    dsBOrderExamine: TDataSource;
    qryfrxBApprovedOrder: TADOQuery;
    qryfrxBUnApprovedOrder: TADOQuery;
    qrysbxx: TADOQuery;
    dssbxx: TDataSource;
    ADOQuerycw: TADOQuery;
    DataSourcecw: TDataSource;
    ADOQueryzbgc: TADOQuery;
    DataSourcezbgc: TDataSource;
    ADOQuerywlcg: TADOQuery;
    DataSourcewlcg: TDataSource;
    ADOQueryldsh: TADOQuery;
    DataSourceldsh: TDataSource;
    ADOQueryldsp: TADOQuery;
    DataSourceldsp: TDataSource;
    qrygsd: TADOQuery;
    dsgsd: TDataSource;
    qrygsdyxsh: TADOQuery;
    dsgsdyxsh: TDataSource;
    qrygsdzbsh: TADOQuery;
    dsgsdzbsh: TDataSource;
    qrygsdwlsh: TADOQuery;
    dsgsdwlsh: TDataSource;
    qrygsdgl: TADOQuery;
    spgsdyxsh: TADOStoredProc;
    qryzfd: TADOQuery;
    dszfd: TDataSource;
    qryzfdxssh: TADOQuery;
    dszfdxssh: TDataSource;
    qryzfdgl: TADOQuery;
    qryzfdldsh: TADOQuery;
    dszfdldsh: TDataSource;
    qryzfdfsyxbsh: TADOQuery;
    dszfdfsyxbsh: TDataSource;
    spzfdyxsh: TADOStoredProc;
    qryzfdscglbsh: TADOQuery;
    dszfdscglbsh: TDataSource;
    qryzfdgssp: TADOQuery;
    dszfdgssp: TDataSource;
    qrydy: TADOQuery;
    qryqx: TADOQuery;
    qry1: TADOQuery;
    sp1: TADOStoredProc;
    qrydyzt: TADOQuery;
    qry2: TADOQuery;
    qry3: TADOQuery;
    qryzfzt: TADOQuery;
    dszfzt: TDataSource;
    qrytx: TADOQuery;
    qry4: TADOQuery;
    qry5: TADOQuery;
    qry6: TADOQuery;
    qry7: TADOQuery;
    qry8: TADOQuery;
    qry9: TADOQuery;
    qry10: TADOQuery;
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
