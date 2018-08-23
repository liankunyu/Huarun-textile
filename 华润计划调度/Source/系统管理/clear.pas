unit clear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzPanel, ExtCtrls, RzRadGrp, StdCtrls, ImgList,
  cxGraphics;

type
  TFrmClear = class(TForm)
    rzchckgrpServiceTables: TRzCheckGroup;
    rzchckgrpBasedTables: TRzCheckGroup;
    rzpnlBtns: TRzPanel;
    btnClear: TRzToolButton;
    btnExit: TRzToolButton;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClear: TFrmClear;
  procedure pclear(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}

procedure pclear(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmClear:=TFrmClear.Create(Application);
  try
    FrmClear.ShowModal;
  finally
    TFrmClear(FrmClear).Free;
  end;
end;
procedure TFrmClear.FormShow(Sender: TObject);
  var
 i:integer;
 begin
  for i:=0 to rzchckgrpServiceTables.Items.Count-1 do
  begin
   rzchckgrpServiceTables.ItemChecked[i]:=False;
  end;
 end;

procedure TFrmClear.btnClearClick(Sender: TObject);
var
 i,j:integer;
begin
 if Application.MessageBox('确定要初始化选中的数据表？','提示',MB_OKCANCEL)=1 then
 begin
  try
   DM.ADOConnection1.BeginTrans;
   for i:=0 to self.ComponentCount-1 do
     begin
        if (self.Components[i].ClassType<>TRzCheckgroup) then Continue;
            for j:=0 to TRzCheckgroup(self.Components[i]).Items.Count-1 do
            begin
             if TRzCheckgroup(self.Components[i]).Checks[j].Checked=true  then
             begin
               with DM.qryWhetherTableEmpty do
               begin
                Close;
                SQL.Clear;
                SQL.Add('select * from '+TRzCheckgroup(self.Components[i]).Items[j]);
                Open;
               end;
               if  not DM.qryWhetherTableEmpty.Eof then
               begin
                with DM.qryClear do
                begin
                 close;
                 sql.Clear;
                 sql.Add('delete '+TRzCheckgroup(self.Components[i]).Items[j]);
                 ExecSQL;
                end;
               end;
             end;
            end;
     end;
    Application.MessageBox('初始化成功！','提示',MB_OK+MB_ICONINFORMATION);
    DM.ADOConnection1.CommitTrans;
  except
    Application.MessageBox('初始化失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    DM.ADOConnection1.RollbackTrans;
  end;
 end;
end;

procedure TFrmClear.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
