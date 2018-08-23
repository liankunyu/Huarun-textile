library loginsystem;

uses
  SysUtils,
  Classes,
  Forms,
  Windows,
  controls,
  link in 'link.pas' {FrmLink},
  login in 'login.pas' {FrmLogin},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

function ShowLoginForm(handle:Thandle):Boolean;stdcall;
var
  FrmLogin: TFrmLogin;
  ResultModal: Integer;
begin
  Application.Handle:=handle;
  FrmLogin:=TFrmLogin.Create(Application);
  try
    ResultModal:=FrmLogin.ShowModal;
   if ResultModal=mrok then
   begin
    Result :=true;
   end;
  finally
    FrmLogin.Free;
    Application.Handle:=0;
  end;
end;

exports
  ShowLoginForm;
begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
end.
