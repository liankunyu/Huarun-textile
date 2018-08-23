unit zfpzfgscglbsh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzPanel, ComCtrls, RzDTP, RzDBDTP, StdCtrls, DBCtrls,
  RzDBEdit, Mask, RzEdit, RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  TFrmzfpzfgscglbsh = class(TForm)
    rzgrpbxInput: TRzGroupBox;
    lblOrderID: TRzLabel;
    lbl1: TRzLabel;
    lbl2: TRzLabel;
    lblOrderAddress: TRzLabel;
    lblProductName: TRzLabel;
    lblOrderTime1: TRzLabel;
    lbl3: TRzLabel;
    lbl4: TRzLabel;
    lbl5: TRzLabel;
    lblSpecification: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lblDeliveryDescribe: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblWarpSource: TRzLabel;
    lbl6: TRzLabel;
    lbl7: TRzLabel;
    edt1: TRzDBEdit;
    edt2: TRzDBEdit;
    edtOrderID: TRzDBEdit;
    edt31: TRzDBEdit;
    mmo3: TRzDBMemo;
    mmo4: TRzDBMemo;
    RzDBMemo3: TRzDBMemo;
    RzDBMemo4: TRzDBMemo;
    RzDBEdit1: TRzDBEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    rzpnlBtns: TRzPanel;
    btnExamine: TRzToolButton;
    btnExit: TRzToolButton;
    lbl8: TRzLabel;
    RzDBEdit8: TRzDBEdit;
    lbl9: TRzLabel;
    RzMemo1: TRzMemo;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnExamineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmzfpzfgscglbsh: TFrmzfpzfgscglbsh;

implementation
 uses UDM,zfpzfg;
{$R *.dfm}

procedure TFrmzfpzfgscglbsh.btnExitClick(Sender: TObject);
begin
Close;
end;

procedure TFrmzfpzfgscglbsh.btnExamineClick(Sender: TObject);
begin
     if Application.MessageBox('ȷ�����ͨ����?��˳ɹ��󽫲��ܽ��г���!','��ʾ',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spzfdyxsh do
      begin
        Close;
        procedureName:='proc_�Է�֪ͨ�������������_���״̬����';
        Parameters.Refresh;
        Parameters.ParamByName('@bh').Value:=DM.qryzfdscglbsh.FieldByName('���').AsString;
        Parameters.ParamByName('@scglbshyj').Value:=Trim(RzMemo1.Text);
        Parameters.ParamByName('@scglbshr').Value:=frmzfpzfg.User;
        ExecProc;
        Application.MessageBox('��˳ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryzfdscglbsh do
        begin
          Close;
          Open;
        end;
      end;
    except
      Application.MessageBox('���ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
  end;
  Self.Close;
end;

end.
