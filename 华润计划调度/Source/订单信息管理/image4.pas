unit image4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, frxClass, frxBDEComponents, ImgList, cxGraphics,
  DBCtrls;

type
  TFrmimage4 = class(TForm)
    dbimg1: TDBImage;
    cxmglst1: TcxImageList;
    dlgOpen1: TOpenDialog;
    frxBDEComponents1: TfrxBDEComponents;
    cxImageList1: TcxImageList;
    btn2: TRzToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmimage4: TFrmimage4;

implementation

{$R *.dfm}

end.
