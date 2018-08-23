unit backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, Buttons, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls,
  RzPanel, ComCtrls, ImgList, cxGraphics;

type
  TFrmBackUp = class(TForm)
    rzpnlAppName: TRzPanel;
    rzpnlRestore: TRzPanel;
    dlgSave1: TSaveDialog;
    lblFileSelect: TRzLabel;
    rzdtBackUpPath: TRzEdit;
    btnSearch: TSpeedButton;
    pb1: TProgressBar;
    rzpnlBtns: TRzPanel;
    btnBackUp: TRzToolButton;
    btnExit: TRzToolButton;
    ImageList1: TImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure rzbtbtnBackUpClick(Sender: TObject);
    procedure rzbtbtnExitClick(Sender: TObject);
    procedure dlgSave1CanClose(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function pro(): Boolean;   stdcall;   //�ؼ��� λ��Ҳ�ܹؼ�

var
  FrmBackUp: TFrmBackUp;
  procedure pbackup(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}
procedure pbackup(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBackUp:=TFrmBackUp.Create(Application);
  try
    FrmBackUp.ShowModal;
  finally
    TFrmBackUp(FrmBackUp).Free;
  end;
end;

function pro() :Boolean;
begin
  if FrmBackUp.pb1.Position<100 then
   FrmBackUp.pb1.Position:=FrmBackUp.pb1.Position+1;
end;

procedure TFrmBackUp.btnSearchClick(Sender: TObject);
begin
  dlgSave1.InitialDir:=extractfiledir(Application.ExeName);
  dlgSave1.Title :='�ļ�����';
  dlgSave1.Execute;
end;

procedure TFrmBackUp.rzbtbtnBackUpClick(Sender: TObject);
var
  dir:string;
  id:DWORD;
begin
  if rzdtBackUpPath.Text='' then
   Application.MessageBox('�㻹û��ѡ�񱸷�·������ѡ�񱸷�·����','��ʾ',MB_ICONINFORMATION+MB_OK)
  else
  begin
   try
     begin
       dir:=dlgSave1.FileName+'.bak';
       with DM.qryBackUp do
       begin
         Close;
         SQL.Clear;
         SQL.Add('backup database JHDD to disk='+''''+dir+'''');
         ExecSQL;
       end;
       CreateThread(nil,0,@pro,nil,0,id);
       pb1.Position:=pb1.Max;    //ʹTprogressBar����Ľ�����Ϊ���ֵ
       Application.MessageBox('�������ݿ�ɹ���','��ʾ',MB_ICONINFORMATION+MB_OK);
       pb1.Position:=pb1.Min;
     end;
   except
      Application.MessageBox('�������ݿ�ʱ���ִ�����˲����б��ݣ�','����',MB_ICONERROR+MB_OK);
   end;
  end;
end;

procedure TFrmBackUp.rzbtbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBackUp.dlgSave1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  rzdtBackUpPath.Text :=dlgSave1.FileName;
end;

end.
