unit ULog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFrmLog = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLog: TFrmLog;
  procedure Log(AHandle:THandle);stdcall;
  //GetSkin: 取得指定Skin
  //function GetSkin(const ASkinName: PChar; var Stream: TMemoryStream): Boolean;stdcall;external 'DLLSkinRC.dll';
implementation

{$R *.dfm}

procedure Log(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmLog:=TFrmLog.Create(Application);
  try
    FrmLog.ShowModal;
  finally
    TFrmLog(FrmLog).Free;
  end;
end;

end.
