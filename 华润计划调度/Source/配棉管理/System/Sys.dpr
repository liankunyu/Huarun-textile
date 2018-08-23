Library Sys;

uses
  SysUtils,
  Classes,
  Forms,
  UDepartment in 'UDepartment.pas' {FrmDepartment},
  UDia1 in 'UDia1.pas' {FrmDia1},
  UDia2 in 'UDia2.pas' {FrmDia2},
  UDM in 'UDM.pas' {DM: TDataModule},
  UDoctor in 'UDoctor.pas' {FrmDoctor},
  UDoc_0 in 'UDoc_0.pas' {FrmDoc_0},
  UDoc_1 in 'UDoc_1.pas' {FrmDoc_1},
  UDoc_2 in 'UDoc_2.pas' {FrmDoc_2},
  cnbh in '..\Sys\cnbh.pas' {Frmcnbh},
  pmfa in '..\Sys\pmfa.pas' {Frmpmfa};

{$R *.res}

exports
Department, Doctor,acnbh,apmfa;
begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  end.
