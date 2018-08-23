library ZNPMGL;

uses
  Forms,
  udm in 'udm.pas' {DM: TDataModule},
  Ymjp in 'Ymjp.pas' {FrmYmjp},
  sumt_1 in 'sumt_1.pas' {Form1},
  sumt_2 in 'sumt_2.pas' {Form2},
  sumt_3 in 'sumt_3.pas' {Form4},
  sumt_fgh in 'sumt_fgh.pas' {Form3},
  famx in 'famx.pas' {FrmFamx},
  pmkc in 'pmkc.pas' {FrmPmkc},
  syrk in 'syrk.pas' {FrmSyrk},
  pmfa in 'pmfa.pas' {FrmPmfa};

{$R *.res}
exports
  asumt_3,aymjp,apmkc,asyrk,apmfa;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  end.
