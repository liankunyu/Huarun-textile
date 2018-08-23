unit UDM;

interface

uses
  SysUtils, Classes,IniFiles, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    qryBOutOfWarehouseInfo: TADOQuery;
    dsBOutOfWarehouseInfo: TDataSource;
    qryBProductName: TADOQuery;
    dsBProductName: TDataSource;
    qryBOutOfWarehouseInfoModify: TADOQuery;
    qryBTotalOutOfWarehouse: TADOQuery;
    dsBTotalOutOfWarehouse: TDataSource;
    qryBOutOfWarehouseInfoDelete: TADOQuery;
    qryWeaverStorage: TADOQuery;
    dsWeaverStorage: TDataSource;
    qryWeftStorage: TADOQuery;
    dsWeftStorage: TDataSource;
    qryBCustomerName: TADOQuery;
    dsBCustomerName: TDataSource;
    qryBOrderID: TADOQuery;
    qryBDeliveryStateUpdate: TADOQuery;
    qryzzkcxx: TADOQuery;
    dszzkcxx: TDataSource;
    qryzzkcxxzj: TADOQuery;
    qrywskc: TADOQuery;
    dswskc: TDataSource;
    qrywskczj: TADOQuery;
    dsBOrderID: TDataSource;
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
