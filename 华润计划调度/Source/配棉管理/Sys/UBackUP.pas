unit UBackUP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, RzLabel, IniFiles;

type
  TFrmBackUp = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    SaveDialog1: TSaveDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SaveDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Str:String;
  end;

var
  FrmBackUp: TFrmBackUp;
  procedure BackUp(AHandle:THandle);stdcall;
  //GetSkin: 取得指定Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';
implementation
uses UDM;
{$R *.dfm}

procedure BackUp(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmBackUp:=TFrmBackUp.Create(Application);
  try
    FrmBackUp.ShowModal;
  finally
    TFrmBackUp(FrmBackUp).Free;
  end;
end;

procedure TFrmBackUp.SpeedButton1Click(Sender: TObject);
begin                //打开保存路径对话框
  SaveDialog1.InitialDir :=extractfiledir(application.ExeName );
  SaveDialog1.Title :='保存文件';
  SaveDialog1.Execute ;
end;

procedure TFrmBackUp.SaveDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  Edit1.Text :=SaveDialog1.FileName + datetostr(now);
end;

procedure TFrmBackUp.BitBtn1Click(Sender: TObject);
var sqlstr:string;
begin

  if Trim(Edit1.Text)='' then
    Application.MessageBox('你还没有选择备份路径，请选择备份路径！','提示',MB_ICONINFORMATION+MB_OK)
  else
    try
      sqlstr:='Backup database '+Str+' To Disk= '+Quotedstr(edit1.Text)+' with init';
      DM.ADOCommand1.CommandText:='';
      DM.ADOCommand1.CommandText:=sqlstr;
      DM.ADOCommand1.Execute;
      Application.MessageBox('备份数据库成功！','提示',MB_ICONINFORMATION+MB_OK);
      Close;
    except
      Application.MessageBox('备份数据库时出现错误，请核查后进行备份！','错误',MB_ICONERROR+MB_OK);
    end;  
end;

procedure TFrmBackUp.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmBackUp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    BitBtn1Click(Sender);
end;

procedure TFrmBackUp.FormCreate(Sender: TObject);
var Myinifile:TIniFile;
begin
  MyIniFile := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Data.ini');
  Str := MyIniFile.ReadString('System','Initial Catalog',''); //从配置文件读数据库
end;

end.
