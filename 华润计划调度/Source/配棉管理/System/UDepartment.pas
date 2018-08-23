unit UDepartment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, RzLabel, Mask,
  DBCtrls, ToolWin, ComCtrls, IniFiles;

type
  TFrmDepartment = class(TForm)
    GroupBox2: TGroupBox;
    RzLabel1: TRzLabel;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDepartment: TFrmDepartment;
  procedure Department(AHandle:THandle);stdcall;
  //GetSkin: 取得指定Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';


implementation

uses UDia1, UDia2, UDM;

{$R *.dfm}

procedure Department(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmDepartment:=TFrmDepartment.Create(Application);
  try
    FrmDepartment.ShowModal;
  finally
    TFrmDepartment(FrmDepartment).Free;
  end;
end;


procedure TFrmDepartment.BitBtn2Click(Sender: TObject);
begin
  if not Assigned(FrmDia1) then
    begin
      Frmdia1:=TFrmdia1.Create(Self);
      Frmdia1.ShowModal;
    end
  else
    Frmdia1.ShowModal;
 { with ATDepartment do
    begin
      Open;
      Edit;
      Append;
      FieldByName('Depart_Name').AsString:=Edit1.Text;
      FieldByName('Depart_Address').AsString:=Edit2.Text;
      Post;
    end;}
end;

procedure TFrmDepartment.BitBtn3Click(Sender: TObject);
begin
  if not Assigned(FrmDia2) then
    begin
      Frmdia2:=TFrmdia2. Create(Self);
      Frmdia2.ShowModal;
    end
  else
    Frmdia2.ShowModal;
  {with ATDepartment do
    begin
      Edit;
      FieldByName('Depart_Name').AsString:=Edit1.Text;
      FieldByName('Depart_Address').AsString:=Edit2.Text;
      Post;
    end;}
end;

procedure TFrmDepartment.BitBtn4Click(Sender: TObject);
begin
  DM.ATDoctor.Active:=False;
  DM.ATDoctor.Filter:='部门名称='''+DM.ATDepartment['部门名称']+'''';
  DM.ATDoctor.Filtered:=True;
  DM.ATDoctor.Active:=True;
  if not DM.ATDoctor.Eof then
    begin
      Application.MessageBox('删除记录出错，有记录隶属于该部门！','提示',64);
      Abort;
    end;

  if Application.MessageBox('确认要删除当前数据吗？','提示',MB_YESNO)=ID_Yes then
    if DM.ATDepartment.Active then
      begin
        try
          DM.ATDepartment.Delete;
          Application.MessageBox('删除成功！','提示',64);
        except
          Application.MessageBox('删除出错！','提示',64);
        end;
      end
    else
      Application.MessageBox('数据集没有打开！','提示',64);
end;

procedure TFrmDepartment.BitBtn7Click(Sender: TObject);
begin
  Close;
  FrmDepartment.Release;
end;

procedure TFrmDepartment.FormShow(Sender: TObject);
begin
  DM.ATDepartment.Active:=True;
end;

end.
