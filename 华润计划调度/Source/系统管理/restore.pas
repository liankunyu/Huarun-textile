unit restore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ComCtrls, Buttons, StdCtrls, Mask, RzEdit, RzLabel,
  ExtCtrls, RzPanel, ImgList, cxGraphics;

type
  TFrmRestore = class(TForm)
    rzpnlAppName: TRzPanel;
    lblFileSelect: TRzLabel;
    rzdtFileSelect: TRzEdit;
    btnSearch: TSpeedButton;
    ProgressBar1: TProgressBar;
    rzpnlRestore: TRzPanel;
    OpenDialog1: TOpenDialog;
    rzpnlBtns: TRzPanel;
    btnRestore: TRzToolButton;
    btnExit: TRzToolButton;
    ImageList1: TImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure OpenDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure rzbtbtnRestoreClick(Sender: TObject);
    procedure rzbtbtnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function pro(): Boolean;   stdcall;   //关键点 位置也很关键

var
  FrmRestore: TFrmRestore;
  procedure prestore(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}
function pro() :Boolean;
begin
  if FrmRestore.ProgressBar1.Position<100 then
   FrmRestore.ProgressBar1.Position:=FrmRestore.ProgressBar1.Position+1;
end;

procedure prestore(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmRestore:=TFrmRestore.Create(Application);
  try
    FrmRestore.ShowModal;
  finally
    TFrmRestore(FrmRestore).Free;
  end;
end;

procedure TFrmRestore.btnSearchClick(Sender: TObject);
begin
  OpenDialog1.InitialDir :=extractfiledir(Application.ExeName );
  OpenDialog1.Title :='选取要打开的文件';
  OpenDialog1.Execute;
end;

procedure TFrmRestore.OpenDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  rzdtFileSelect.Text :=OpenDialog1.FileName;
end;

procedure TFrmRestore.rzbtbtnRestoreClick(Sender: TObject);
var
  id:DWORD;
begin
  if rzdtFileSelect.Text='' then
   Application.MessageBox('你还没有选择恢复路径，请选择恢复路径！','提示',MB_ICONINFORMATION+MB_OK)
  else
  begin
     try
       with DM.qryRestore do
       begin
         Close;
         SQL.Clear;
         SQL.Add('Restore database JHDD From Disk= '+Quotedstr(rzdtFileSelect.Text)+'with norecovery');
         ExecSQL;
       end;
       ProgressBar1.Visible:=True;
       CreateThread(nil,0,@pro,nil,0,id);
       ProgressBar1.Position:=ProgressBar1.Max;    //使TprogressBar组件的进度条为最大值
       Application.MessageBox('恢复数据库成功！','提示',MB_ICONINFORMATION+MB_OK);
       ProgressBar1.Position:=ProgressBar1.Min;
       ProgressBar1.Visible:=False;
     except
       Application.MessageBox('恢复数据库时出现错误，请核查后进行恢复！','错误',MB_ICONERROR+MB_OK);
       ProgressBar1.Position:=ProgressBar1.Min;
       ProgressBar1.Visible:=False;
     end;
  end;
end;

procedure TFrmRestore.rzbtbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
