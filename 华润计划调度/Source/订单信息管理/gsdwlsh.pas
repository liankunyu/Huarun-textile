unit gsdwlsh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzEdit, RzButton, RzPanel, ComCtrls, RzDTP, RzDBDTP,
  DBCtrls, RzDBEdit, Mask, RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  Tfrmgswlsh = class(TForm)
    rzgrpbx2: TRzGroupBox;
    lbl47: TRzLabel;
    rzpnlBtns: TRzPanel;
    btnExamine: TRzToolButton;
    btnExit: TRzToolButton;
    RzGroupBox1: TRzGroupBox;
    RzLabel2: TRzLabel;
    RzMemo1: TRzMemo;
    RzDBMemo5: TRzDBMemo;
    RzLabel6: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel10: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    rzgrpbxInput: TRzGroupBox;
    lblOrderID: TRzLabel;
    lblOrderQuantity: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lbl2: TRzLabel;
    lblSpecification: TRzLabel;
    lbl4: TRzLabel;
    lbl5: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel8: TRzLabel;
    edt1: TRzDBEdit;
    edt2: TRzDBEdit;
    edtOrderID: TRzDBEdit;
    edt31: TRzDBEdit;
    mmo1: TRzDBMemo;
    mmoDeliveryTimeAndAmount: TRzDBMemo;
    mmo3: TRzDBMemo;
    mmo4: TRzDBMemo;
    dtpDeliveryTime: TRzDBDateTimePicker;
    RzDBMemo1: TRzDBMemo;
    RzDBMemo2: TRzDBMemo;
    RzDBMemo3: TRzDBMemo;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    RzDBMemo4: TRzDBMemo;
    RzDBEdit1: TRzDBEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBEdit3: TRzDBEdit;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnExamineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgswlsh: Tfrmgswlsh;

implementation
 uses UDM,gslxd;
{$R *.dfm}

procedure Tfrmgswlsh.FormShow(Sender: TObject);
begin
  if DM.qrygsdwlsh.FieldByName('交货期').Value=null  then
  begin
    dtpDeliveryTime.Visible:=False;
  end
  else
  begin
    mmoDeliveryTimeAndAmount.Visible:=False;
  end;
end;

procedure Tfrmgswlsh.btnExitClick(Sender: TObject);
begin
Close;
end;

procedure Tfrmgswlsh.btnExamineClick(Sender: TObject);
begin
      if Application.MessageBox('确定审核通过吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spgsdyxsh do
      begin
        Close;
        procedureName:='proc_购纱工作联系单物流部审核_审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@bh').Value:=DM.qrygsdwlsh.FieldByName('编号').AsString;
        Parameters.ParamByName('@wlbshr').Value:=Frmgslxd.User;
        Parameters.ParamByName('@wlbshyj').Value:=RzMemo1.text;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qrygsdwlsh do
        begin
          Close;
          Open;
        end;
      end;
    except
      Application.MessageBox('审核失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.ADOConnection1.RollbackTrans;
    end;
  end;
  Self.Close;
end;

end.
