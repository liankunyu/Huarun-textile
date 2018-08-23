unit image1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxBDEComponents, ImgList, cxGraphics, DBCtrls,
  RzButton, StdCtrls, Mask, RzEdit;

type
  TFrmimage1 = class(TForm)
    btn2: TRzToolButton;
    dbimg1: TDBImage;
    cxmglst1: TcxImageList;
    dlgOpen1: TOpenDialog;
    frxBDEComponents1: TfrxBDEComponents;
    cxImageList1: TcxImageList;
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmimage1: TFrmimage1;

implementation

{$R *.dfm}

procedure TFrmimage1.btn2Click(Sender: TObject);
begin
Self.Close;
end;

end.
