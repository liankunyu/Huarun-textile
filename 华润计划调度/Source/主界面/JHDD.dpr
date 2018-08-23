program JHDD;

uses
  Forms,
  main in 'main.pas' {FrmMain},
  gy in 'gy.pas' {FrmGY},
  UDM in 'UDM.pas' {DM: TDataModule},
  unitshare in 'unitshare.pas';

{$R *.res}
begin
   Application.Initialize;
   Application.Title:='计划调度系统';
   Application.CreateForm(TFrmMain, FrmMain);
   Application.CreateForm(TFrmGY, FrmGY);
   Application.CreateForm(TDM, DM);
   Application.Run;
end.
