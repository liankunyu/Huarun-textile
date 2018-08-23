library CXGL;

uses
  Forms,
  pmcx in 'pmcx.pas' {FrmPmcx},
  udm in 'udm.pas' {dm: TDataModule},
  ymrkcx in 'ymrkcx.pas' {FrmYmrkcx},
  ymckcx in 'ymckcx.pas' {FrmYmckcx};

{$R *.res}

exports
   apmcx,aymrkcx,aymckcx;

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
end.
