library JCXX;

uses
  Forms,
  UDM in 'UDM.pas' {DM: TDataModule},
  bxx in 'bxx.pas' {FrmBXX},
  bgy in 'bgy.pas' {FrmBGY},
  khcz in 'khcz.pas' {FrmKHCZ},
  bmxx in 'bmxx.pas' {FrmBMXX},
  bgycz in 'bgycz.pas' {FrmBGYCZ},
  bgylr in 'bgylr.pas' {FrmBGYLR},
  bkh in 'bkh.pas' {FrmBKH},
  skh in 'skh.pas' {FrmSKH},
  bgyfg in 'bgyfg.pas' {FrmBGYFG},
  bxxcz in 'bxxcz.pas' {FrmBXXCZ},
  jsgl in 'jsgl.pas' {Frmjsgl},
  wsgl in 'wsgl.pas' {Frmwsgl},
  zjl in 'zjl.pas' {Frmzjl},
  bgyxg in 'bgyxg.pas' {FrmBGYXG};

{$R *.res}
exports pbkh,pskh,pbxx,pbgy,pbm,pjsgl,pwsgl,pzjl;

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  end.
