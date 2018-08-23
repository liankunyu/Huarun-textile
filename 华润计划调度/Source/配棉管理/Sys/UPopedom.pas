unit UPopedom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, RzPanel, RzRadGrp, ExtCtrls, Buttons,
  DB, ADODB, RzLabel, IniFiles;

type
  TFrmPopedom = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    CheckBox8: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    RzLabel1: TRzLabel;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    str : string;
    procedure M_Popedum(SID : string; ADOQuer : TADOQuery);
  end;

var
  FrmPopedom: TFrmPopedom;
  procedure Popedom(AHandle:THandle);stdcall;
  //GetSkin: 取得指定Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';
implementation
uses UDM;
{$R *.dfm}

procedure Popedom(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmPopedom:=TFrmPopedom.Create(Application);
  try
    FrmPopedom.ShowModal;
  finally
    TFrmPopedom(FrmPopedom).Free;
  end;
end;

procedure TFrmPopedom.M_Popedum(SID :string; ADOQuer : TADOQuery);
var
  i,p : Integer;
begin
  p := 0;
  with ADOQuer do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from 用户信息表 where 员工工号=:a');
    Parameters.ParamByName('a').Value:=SID;
    Open;
  end;
  for i:=1 to 5 do
    begin
      (self.FindComponent('CheckBox'+inttostr(i)) as TCheckBox).Checked := ADOQuer.FieldByName('P-'+IntToStr(i)).AsBoolean;
      if ADOQuer.FieldByName('P-'+IntToStr(i)).AsBoolean=False then
        p := 1;
    end;
    if p=0 then
      CheckBox8.Checked := True
    else
      CheckBox8.Checked := False;
end;
procedure TFrmPopedom.FormShow(Sender: TObject);
begin
  with DM.AQUser do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 用户信息表 order by 部门名称');
      Open;
    end;
    M_Popedum(DM.AQUser['员工工号'],DM.AQPopedom);
    Label1.Caption:=Trim(DM.AQUser['员工工号']);
end;

procedure TFrmPopedom.DBGrid1CellClick(Column: TColumn);
begin
  M_Popedum(DM.AQUser['员工工号'],DM.AQPopedom);
  Label1.Caption:=Trim(DM.AQUser['员工工号']);
end;

procedure TFrmPopedom.BitBtn1Click(Sender: TObject);
var
  i : Integer; 
begin
  with DM.AQPopedom do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from 用户信息表 where 员工工号=:a');
    Parameters.ParamByName('a').Value:=DM.AQUser['员工工号'];
    Open;
    Edit;
    for i:=1 to 5 do
      FieldByName('P-'+IntToStr(i)).AsBoolean := (self.FindComponent('CheckBox'+inttostr(i)) as TCheckBox).Checked;
    Post;
  end;
  Application.MessageBox('修改用户权限成功！','提示',MB_ICONINFORMATION+MB_OK);
end;

procedure TFrmPopedom.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPopedom.CheckBox1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if TCheckBox(Sender).Checked = False then
    CheckBox8.Checked := False;
end;
procedure TFrmPopedom.CheckBox8MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i : Integer;
  t : Boolean;
begin
  if CheckBox8.Checked then
    t := True
  else
    t := False;
  for i:=1 to 5 do
    (self.FindComponent('CheckBox'+inttostr(i)) as TCheckBox).Checked := t;
end;

procedure TFrmPopedom.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('是否要删除该用户？删除后该用户不能登录此系统！','提示',MB_YESNO)=ID_YES then
    begin
      with DM.AQUser do
        begin
          Delete;
          M_Popedum(DM.AQUser['员工工号'],DM.AQPopedom);
          Label1.Caption:=Trim(DM.AQUser['员工工号']);
          Application.MessageBox('删除用户成功！','提示',MB_ICONINFORMATION+MB_OK);
        end;
    end;
end;

end.
