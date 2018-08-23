unit xxcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzEdit, RzPanel, StdCtrls, DBCtrls, Mask, RzLabel,
  ExtCtrls, ImgList, cxGraphics;

type
  TFxxcx = class(TForm)
    cxImageList1: TcxImageList;
    rzpnl1: TRzPanel;
    lblSpecification: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    lblEfficiency: TRzLabel;
    lblMachineTime: TRzLabel;
    lblDeliveryTime: TRzLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    rzgrpbxQueryCondition: TRzGroupBox;
    RzLabel1: TRzLabel;
    lblProductName1: TRzLabel;
    edtOrderID: TRzEdit;
    edtgg: TRzEdit;
    RzPanel1: TRzPanel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    Label2: TLabel;
    btnExit: TRzToolButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBMemo2: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fxxcx: TFxxcx;

implementation

{$R *.dfm}

end.
