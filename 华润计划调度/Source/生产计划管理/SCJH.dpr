library SCJH;

uses
  Forms,
  bpzfg in 'bpzfg.pas' {FrmBPZFG},
  UDM in 'UDM.pas' {DM: TDataModule},
  bscjh in 'bscjh.pas' {FrmBSCJH},
  bjhxx in 'bjhxx.pas' {FrmBJHXX},
  bxxck in 'bxxck.pas' {FrmBXXCK},
  bpmsr in 'bpmsr.pas' {FrmBPMSR},
  bjhxxcz in 'bjhxxcz.pas' {FrmBJHXXCZ},
  bddxxlr in 'bddxxlr.pas' {FrmDDXXLR},
  bjfb in 'bjfb.pas' {FrmBJFB};

{$R *.res}
exports pbpzfg,pbscjh;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  //Application.CreateForm(Tfrmsjhlr, frmsjhlr);
  //Application.CreateForm(TFrmsjh, Frmsjh);
  end.
