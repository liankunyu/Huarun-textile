library XTGL;

uses
  Forms,
  pwdchange in 'pwdchange.pas' {FrmPwdChange},
  UDM in 'UDM.pas' {DM: TDataModule},
  backup in 'backup.pas' {FrmBackUp},
  restore in 'restore.pas' {FrmRestore},
  log in 'log.pas' {FrmLog},
  clear in 'clear.pas' {FrmClear},
  user in 'user.pas' {FrmUser},
  usermodify in 'usermodify.pas' {FrmUserModify},
  popem in 'popem.pas' {FrmPopem},
  usersearch in 'usersearch.pas' {FrmUserSearch};

{$R *.res}
exports
  ppwdchange,pbackup,prestore,plog,pclear,puser,ppopem;
begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  end.

