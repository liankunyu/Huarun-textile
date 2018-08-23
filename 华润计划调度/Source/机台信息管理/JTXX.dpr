library JTXX;

uses
  Forms,
  jtbjbg in 'jtbjbg.pas' {FrmJTBJBG},
  UDM in 'UDM.pas' {DM: TDataModule},
  jtbjbgdr in 'jtbjbgdr.pas' {FrmJTBJBGDR},
  bjkt in 'bjkt.pas' {FrmBJKT},
  bjktdr in 'bjktdr.pas' {FrmBJKTDR},
  bjfb in 'bjfb.pas' {FrmBJFB},
  ftbjbgdr in 'ftbjbgdr.pas' {FrmFTBJRBGDR},
  scljyb in 'scljyb.pas' {FrmSCLJYB},
  cjddgl in 'cjddgl.pas' {FrmLJYBGX},
  bscddcz in 'bscddcz.pas' {FrmLJYBCZ};

{$R *.res}
exports pbjbg,pbjkt,pbjfb,pcjddgl;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLJYBCZ, FrmLJYBCZ);
  end.
