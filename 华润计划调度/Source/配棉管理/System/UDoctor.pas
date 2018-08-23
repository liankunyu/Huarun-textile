unit UDoctor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, RzLabel, DBCtrls, Buttons, DB, IniFiles;

type
  TFrmDoctor = class(TForm)
    GroupBox2: TGroupBox;
    RzLabel1: TRzLabel;
    grp1: TGroupBox;
    btn1: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn7: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    
  public
    
  end;

var
  FrmDoctor: TFrmDoctor;
  procedure Doctor(AHandle:THandle);stdcall;
  //GetSkin: 取得指定Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';
implementation
uses UDM, UDoc_0, UDoc_1 ,UDoc_2;
{$R *.dfm}

procedure Doctor(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmDoctor:=TFrmDoctor.Create(Application);
  try
    FrmDoctor.ShowModal;
  finally
    TFrmDoctor(FrmDoctor).Free;
  end;
end;

procedure TFrmDoctor.btn1Click(Sender: TObject);
begin
  if not Assigned(FrmDoc_0) then
    begin
      FrmDoc_0:=TFrmDoc_0.Create(Self);
      FrmDoc_0.ShowModal;
    end
  else
    FrmDoc_0.ShowModal;
end;

procedure TFrmDoctor.btn3Click(Sender: TObject);
begin
  if not Assigned(FrmDoc_1) then
    begin
      FrmDoc_1:=TFrmDoc_1.Create(Self);
      FrmDoc_1.ShowModal;
    end
  else
    FrmDoc_1.ShowModal;
end;

procedure TFrmDoctor.btn4Click(Sender: TObject);
begin
  if not Assigned(FrmDoc_2) then
    begin
      FrmDoc_2:=TFrmDoc_2.Create(Self);
      FrmDoc_2.ShowModal;
    end
  else
    FrmDoc_2.ShowModal;
end;

procedure TFrmDoctor.btn5Click(Sender: TObject);
begin
  with DM.AQ1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select 员工工号 from 用户信息表 where 员工工号=:a');
      Parameters.ParamByName('a').Value:=DM.AQDoctor1['员工工号'];
      Open;
    end;
  if  not DM.AQ1.Eof then
    begin
      Application.MessageBox('有数据属于该员工，不能删除！','提示',64);
      Exit;
    end;

  if Application.MessageBox('数据重要，请谨慎操作！确认要删除当前数据吗？','提示',MB_YESNO)=ID_Yes then
      begin
        try
          DM.AQDoctor1.Delete;
          Application.MessageBox('删除成功！','提示',64);
        except
          Application.MessageBox('删除出错！','提示',64);
        end;
      end;
end;


procedure TFrmDoctor.btn7Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDoctor.FormShow(Sender: TObject);
begin
  DM.AQDoctor1.Open;
end;

end.

