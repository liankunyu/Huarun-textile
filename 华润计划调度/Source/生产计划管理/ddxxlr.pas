unit bddxxlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, StdCtrls, RzLstBox, ComCtrls, RzButton,
  RzEdit, Mask, RzLabel, ImgList, cxGraphics;

type
  TFrmDDXXLR = class(TForm)
    cxmglst1: TcxImageList;
    rzpnl1: TRzPanel;
    lblProductName: TRzLabel;
    lblSpecification: TRzLabel;
    lblPlanBootAmount: TRzLabel;
    lblSchedulingTime: TRzLabel;
    lblCustomerInfo: TRzLabel;
    lblMachineDetail: TRzLabel;
    edtProductName: TRzEdit;
    mmoSpecification: TRzMemo;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    dtpSchedulingTime: TDateTimePicker;
    edtPlanBootAmount: TRzEdit;
    lstCustomerInfo: TRzListBox;
    mmoMachineDetail: TRzMemo;
    lblPlanMachineType: TRzLabel;
    edtPlanMachineType: TRzEdit;
    lblSchedulingBootAmount: TRzLabel;
    edtSchedulingBootAmount: TRzEdit;
    lblSchedulingMachineType: TRzLabel;
    edtSchedulingMachineType: TRzEdit;
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDDXXLR: TFrmDDXXLR;

implementation

{$R *.dfm}

procedure TFrmDDXXLR.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
