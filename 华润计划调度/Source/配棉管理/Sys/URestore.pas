unit URestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls, RzLabel, IniFiles;

type
  TFrmRestore = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure OpenDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    str : string;
  end;

var
  FrmRestore: TFrmRestore;
  procedure Restore(AHandle:THandle);stdcall;
  //GetSkin: 取得指定Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';
implementation
uses UDM;
{$R *.dfm}
procedure Restore(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmRestore:=TFrmRestore.Create(Application);
  try
    FrmRestore.ShowModal;
  finally
    TFrmRestore(FrmRestore).Free;
  end;
end;
procedure TFrmRestore.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir :=extractfiledir(application.ExeName );
  OpenDialog1.Title :='选取打开文件';
  OpenDialog1.Execute;
end;

procedure TFrmRestore.OpenDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  Edit1.Text:=OpenDialog1.FileName;
end;

procedure TFrmRestore.BitBtn1Click(Sender: TObject);
var sqlstr:string;
begin
  if Trim(Edit1.Text)='' then
      Application.MessageBox('你还没有选择还原文件，请选择还原文件！','提示',MB_ICONINFORMATION+MB_OK)
  else
    try
      sqlstr:='Restore database '+str+' From Disk= '+Quotedstr(Edit1.Text)+' with norecovery';
      DM.ADOCommand1.CommandText:='';
      DM.ADOCommand1.CommandText:=sqlstr;
      DM.ADOCommand1.Execute;
      Application.MessageBox('还原数据库成功！','提示',MB_ICONINFORMATION+MB_OK);
    except
      Application.MessageBox('还原数据库时出现错误，请核查后进行还原！','错误',MB_ICONERROR+MB_OK);
    end;
end;

procedure TFrmRestore.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRestore.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    BitBtn1Click(Sender);
end;

procedure TFrmRestore.FormCreate(Sender: TObject);
var Myinifile:TIniFile;
begin   //打开挂号界面给相应的conbobox赋值
  MyIniFile := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Data.ini');
  Str := MyIniFile.ReadString('System','Initial Catalog',''); //从配置文件读数据库
end;

end.
