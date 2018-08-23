unit zfpzfgxssh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzPanel, ComCtrls, Mask, RzEdit, StdCtrls, RzLabel,
  ExtCtrls, ImgList, cxGraphics, RzDTP, RzDBDTP, DBCtrls, RzDBEdit;

type
  Tfrmzfpzfgxssh = class(TForm)
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnExamine: TRzToolButton;
    btnExit: TRzToolButton;
    rzgrpbxInput: TRzGroupBox;
    lblOrderID: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    lblOrderAddress: TRzLabel;
    lblProductName: TRzLabel;
    lblOrderTime1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel5: TRzLabel;
    lblSpecification: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lblDeliveryDescribe: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblWarpSource: TRzLabel;
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
    ImageList1: TImageList;
    procedure btnExamineClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzfpzfgxssh: Tfrmzfpzfgxssh;

implementation
 uses UDM,zfpzfg;
{$R *.dfm}

procedure Tfrmzfpzfgxssh.btnExamineClick(Sender: TObject);
begin
    if Application.MessageBox('确定审核通过吗?审核成功后将不能进行撤销!','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
    try
      DM.ADOConnection1.BeginTrans;
      with DM.spzfdyxsh do
      begin
        Close;
        procedureName:='proc_自纺通知单销售部审核_审核状态更新';
        Parameters.Refresh;
        Parameters.ParamByName('@bh').Value:=DM.qryzfdxssh.FieldByName('编号').AsString;
        Parameters.ParamByName('@xsbshr').Value:=frmzfpzfg.User;
        ExecProc;
        Application.MessageBox('审核成功！','提示',MB_OK+MB_ICONINFORMATION);
        DM.ADOConnection1.CommitTrans;
        with DM.qryzfdxssh do
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

procedure Tfrmzfpzfgxssh.btnExitClick(Sender: TObject);
begin
Close;
end;

end.
