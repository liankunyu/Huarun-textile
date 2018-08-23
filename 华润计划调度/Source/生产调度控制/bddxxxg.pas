unit bddxxxg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLstBox, ComCtrls, RzButton, RzEdit, Mask, RzLabel,
  ExtCtrls, RzPanel, ImgList, cxGraphics;

type
  TFrmDDXXXG = class(TForm)
    rzpnl1: TRzPanel;
    lblProductName: TRzLabel;
    lblSpecification: TRzLabel;
    lblPlanBootAmount: TRzLabel;
    lblSchedulingTime: TRzLabel;
    lblCustomerInfo: TRzLabel;
    lblMachineDetail: TRzLabel;
    lblPlanMachineType: TRzLabel;
    lblSchedulingBootAmount: TRzLabel;
    lblSchedulingMachineType: TRzLabel;
    edtProductName: TRzEdit;
    mmoSpecification: TRzMemo;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    dtpSchedulingTime: TDateTimePicker;
    edtPlanBootAmount: TRzEdit;
    lstCustomerInfo: TRzListBox;
    mmoMachineDetail: TRzMemo;
    edtPlanMachineType: TRzEdit;
    edtSchedulingBootAmount: TRzEdit;
    edtSchedulingMachineType: TRzEdit;
    btnQuery: TRzToolButton;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDDXXXG: TFrmDDXXXG;

implementation

uses UDM,bjfb;

{$R *.dfm}

procedure TFrmDDXXXG.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmDDXXXG.FormShow(Sender: TObject);
begin
  dtpSchedulingTime.Date:=DM.qryBScheduling.FieldByName('��������').AsDateTime;
  edtProductName.Text:=DM.qryBScheduling.FieldByName('Ʒ��').AsString;
  lstCustomerInfo.Items[0]:=DM.qryBScheduling.FieldByName('�ͻ�����').AsString;
  mmoSpecification.Text:=DM.qryBScheduling.FieldByName('���').AsString;
  edtPlanBootAmount.Text:=DM.qryBScheduling.FieldByName('�ƻ���̨��').AsString;
  edtPlanMachineType.Text:=DM.qryBScheduling.FieldByName('�ƻ�����').AsString;
  edtSchedulingBootAmount.Text:=DM.qryBScheduling.FieldByName('���ȿ�̨��').AsString;
  edtSchedulingBootAmount.SetFocus;
  edtSchedulingMachineType.Text:=DM.qryBScheduling.FieldByName('���ȿ�̨����').AsString;
  mmoMachineDetail.Text:=DM.qryBScheduling.FieldByName('��̨����').AsString;
end;

procedure TFrmDDXXXG.btnSaveClick(Sender: TObject);
begin
 try
    with DM.qrySchedulingModify do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update �޲��ƻ�������Ϣ�� set ��������=:ddrq,��̨��=:kts,��̨����=:ktjx,��̨����=:ktxq where ���=:bh');
      Parameters.ParamByName('ddrq').Value:=formatdatetime('yyyy-mm-dd',dtpSchedulingTime.Date);
      Parameters.ParamByName('kts').Value:=Trim(edtSchedulingBootAmount.Text);
      Parameters.ParamByName('ktjx').Value:=Trim(edtSchedulingMachineType.Text);
      Parameters.ParamByName('ktxq').Value:=Trim(mmoMachineDetail.Text);
      Parameters.ParamByName('bh').Value:=DM.qryBScheduling.FieldByName('���').AsString;
      ExecSQL;
      Application.MessageBox('������Ϣ���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
    end;
    with DM.qryBScheduling  do
    begin
      Close;
      Open;
    end;
 except
   Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONINFORMATION);
 end;
 Self.Close;
end;

procedure TFrmDDXXXG.btnQueryClick(Sender: TObject);
begin
  FrmBJFB:=TFrmBJFB.Create(Self);
  FrmBJFB.ShowModal;
  FreeAndNil(FrmBJFB);
end;

end.
