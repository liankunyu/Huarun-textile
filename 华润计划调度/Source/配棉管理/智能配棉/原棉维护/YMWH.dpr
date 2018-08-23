library YMWH;

uses
  Forms,
  SysUtils,
  Classes,
  ymcdwh in 'ymcdwh.pas' {FrmYmcdwh},
  UDM in 'UDM.pas' {DM: TDataModule},
  ymjscdwh in 'ymjscdwh.pas' {FrmYmjscdwh},
  ymlbwh in 'ymlbwh.pas' {FrmYmlbwh},
  ymmrwh in 'ymmrwh.pas' {FrmYmmrwh},
  ymyjhwh in 'ymyjhwh.pas' {FrmYmyjhwh},
  ymbfdqpjwh in 'ymbfdqpjwh.pas' {FrmYmbfdqpjwh},
  ymqhpzdybwh in 'ymqhpzdybwh.pas' {FrmYmqhfpzdybwh},
  ymsybzwh in 'ymsybzwh.pas' {FrmYmsybzwh},
  zymzlwh in 'zymzlwh.pas' {Frmzymzlwh},
  zympzwh in 'zympzwh.pas' {FrmZympzwh},
  zymbmwh in 'zymbmwh.pas' {FrmZymbmwh};

{$R *.res}

exports
AYMCDWH,AYmjscdwh,AYmlbwh,AYmmrwh,AYMYJHWH;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
 { Application.CreateForm(TFrmYmbfdqpjwh, FrmYmbfdqpjwh);
  Application.CreateForm(TFrmYmqhfpzdybwh, FrmYmqhfpzdybwh);
  Application.CreateForm(TFrmYmsybzwh, FrmYmsybzwh);
  Application.CreateForm(TFrmzymzlwh, Frmzymzlwh);
  Application.CreateForm(TFrmZympzwh, FrmZympzwh);
  Application.CreateForm(TFrmZymbmwh, FrmZymbmwh); }
  end.
