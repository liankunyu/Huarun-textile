unit cjddgl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, cxGraphics;

type
  TFrmCJDDGL = class(TForm)
    cxImageList1: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCJDDGL: TFrmCJDDGL;
  procedure pcjddgl(AHandle:THandle);stdcall;
implementation

{$R *.dfm}
procedure pcjddgl(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmCJDDGL:=TFrmCJDDGL.Create(Application);
  try
    FrmCJDDGL.ShowModal;
  finally
    TFrmCJDDGL(FrmCJDDGL).Free;
  end;
end;

end.
