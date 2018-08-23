library  KCGL;

uses
  Forms,
  ymkc in 'ymkc.pas' {FrmYmkc},
  udm in 'udm.pas' {DM: TDataModule},
  ymrk in 'ymrk.pas' {FrmYmrk},
  ymck in 'ymck.pas' {FrmYmck};

{$R *.res}
exports aymkc,aymrk,aymck;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
end.
