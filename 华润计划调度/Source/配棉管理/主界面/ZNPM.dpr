program ZNPM;

uses
  Forms,
  main in 'main.pas' {FrmMain},
  UServer in 'UServer.pas' {FrmServer},
  Login in 'Login.pas' {FrmLogin},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '�������޹���ϵͳ';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmServer, FrmServer);
  Application.Run;
end.
