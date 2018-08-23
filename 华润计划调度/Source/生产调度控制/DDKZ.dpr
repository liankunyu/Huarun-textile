library DDKZ;
uses
  Forms,
  bddjd in 'bddjd.pas' {FrmBDDJD},
  UDM in 'UDM.pas' {DM: TDataModule},
  bddjdcz in 'bddjdcz.pas' {FrmBDDJDCZ},
  bddxxxg in 'bddxxxg.pas' {FrmDDXXXG},
  bscdd in 'bscdd.pas' {FrmBDDXX},
  bscddcz in 'bscddcz.pas' {FrmDDXXCZ},
  bjfb in 'bjfb.pas' {FrmBJFB},
  bddxxcz in 'bddxxcz.pas' {FrmBDDXXCZ};

{$R *.res}
exports pbddjd,pbjhdd;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmBDDXXCZ, FrmBDDXXCZ);
  end.
