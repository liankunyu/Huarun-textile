library KCXX;

uses
  Forms,
  bckxx in 'bckxx.pas' {FrmBCKXX},
  UDM in 'UDM.pas' {DM: TDataModule},
  zbkcyj in 'zbkcyj.pas' {FrmZBKCYJ},
  kccx in 'kccx.pas' {FrmKCCX},
  bckcz in 'bckcz.pas' {FrmBCKCZ},
  zzkc in 'zzkc.pas' {frmzzkc},
  wskc in 'wskc.pas' {frmwskc};

{$R *.res}
exports pbckxx,pzbkcyj;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  end.
