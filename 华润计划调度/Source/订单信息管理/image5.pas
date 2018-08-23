unit image5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxBDEComponents, ImgList, cxGraphics, RzButton,
  DBCtrls;

type
  TFrmimage5 = class(TForm)
    dbimg1: TDBImage;
    btn2: TRzToolButton;
    cxmglst1: TcxImageList;
    dlgOpen1: TOpenDialog;
    frxBDEComponents1: TfrxBDEComponents;
    cxImageList1: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmimage5: TFrmimage5;

implementation

{$R *.dfm}

end.
