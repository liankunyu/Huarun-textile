unit bhpxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, StdCtrls, RzEdit, Mask, RzLabel, ImgList,
  cxGraphics, RzButton;

type
  TFrmBHPXX = class(TForm)
    rzpnl1: TRzPanel;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btn1: TRzToolButton;
    cxmglst1: TcxImageList;
    lblOrderID: TRzLabel;
    edtOrderID: TRzEdit;
    lblOldProductName: TRzLabel;
    edtOldProductName: TRzEdit;
    mmoSpecification: TRzMemo;
    lblSpecification: TRzLabel;
    lblNewWeftSource: TRzLabel;
    mmoNewWeftSource: TRzMemo;
    lblNewWarpSource: TRzLabel;
    mmoNewWarpSource: TRzMemo;
    lblNewProductName: TRzLabel;
    edtNewProductName: TRzEdit;
    btnSearch: TRzToolButton;
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBHPXX: TFrmBHPXX;

implementation
uses UDM,bxxck;

{$R *.dfm}

procedure TFrmBHPXX.FormShow(Sender: TObject);
begin
  if Self.Tag=1 then
  begin
    edtOrderID.Text:=DM.qryBProductionPlan.FieldByName('订单号').Value;
    edtOldProductName.Text:=DM.qryBProductionPlan.FieldByName('品名').Value;
    mmoSpecification.Text:=DM.qryBProductionPlan.FieldByName('规格').Value;
    mmoNewWarpSource.SetFocus;
  end;
  if Self.Tag=2 then
  begin
    edtOrderID.Text:=DM.qryBBatchChange.FieldByName('订单号').Value;
    edtOldProductName.Text:=DM.qryBBatchChange.FieldByName('换批前品名').Value;
    edtNewProductName.Text:=DM.qryBBatchChange.FieldByName('换批后品名').Value;
    mmoSpecification.Text:=DM.qryBBatchChange.FieldByName('规格').Value;
    mmoNewWarpSource.Text:=DM.qryBBatchChange.FieldByName('经纱来源').Value;
    mmoNewWeftSource.Text:=DM.qryBBatchChange.FieldByName('纬纱来源').Value;
    mmoNewWeftSource.SetFocus;
  end;
end;

procedure TFrmBHPXX.btnSearchClick(Sender: TObject);
begin
  FrmBXXCK:=TFrmBXXCK.Create(Self);
  FrmBXXCK.Tag:=3;
  FrmBXXCK.rzgrpbxQuery.Visible:=False;
  FrmBXXCK.ShowModal;
  FreeAndNil(FrmBXXCK);
end;

procedure TFrmBHPXX.btnSaveClick(Sender: TObject);
begin
  DM.con1.BeginTrans;
  if Self.Tag=1 then
  begin
    try
      with DM.spBBatchChangeAdd do
      begin
        Close;
        procedureName:='proc_棉布品种换批信息增加';
        Parameters.Refresh;
        with Parameters do
        begin
          ParamByName('@OrderID').Value:=DM.qryBProductionPlan.FieldByName('订单号').AsString;
          ParamByName('@ProductName').Value:=edtNewProductName.Text;
          ParamByName('@Category').Value:=DM.qryBProductionPlan.FieldByName('产品坯别').AsString;
          ParamByName('@Specification').Value:=DM.qryBProductionPlan.FieldByName('规格').AsString;
          ParamByName('@WarpSource').Value:=Trim(mmoNewWarpSource.Text);
          ParamByName('@WeftSource').Value:=Trim(mmoNewWeftSource.Text);
        end;
        ExecProc;
      end;
      Application.MessageBox('换批信息增加成功！','提示',MB_OK+MB_ICONINFORMATION);
      DM.con1.CommitTrans;
      with DM.qryBBatchChange do
      begin
        Close;
        Open;
      end;
    except
      Application.MessageBox('换批信息增加失败,请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.con1.RollbackTrans;
    end;
  end;
  if Self.Tag=2 then
  begin
    try
      with DM.spBBatchChangeAdd do
      begin
        Close;
        procedureName:='proc_棉布品种换批信息修改';
        Parameters.Refresh;
        with Parameters do
        begin
          ParamByName('@ID').Value:=DM.qryBBatchChange.FieldByName('编号').AsInteger;
          ParamByName('@OldProductName').Value:=DM.qryBBatchChange.FieldByName('换批后品名').AsString;
          ParamByName('@NewProductName').Value:=edtNewProductName.Text;
          ParamByName('@Category').Value:=DM.qryBBatchChange.FieldByName('产品坯别').AsString;
          ParamByName('@Specification').Value:=DM.qryBBatchChange.FieldByName('规格').AsString;
          ParamByName('@WarpSource').Value:=Trim(mmoNewWarpSource.Text);
          ParamByName('@WeftSource').Value:=Trim(mmoNewWeftSource.Text);
          ParamByName('@WhetherNewProductName').Value:=DM.qryBBatchChange.FieldByName('是否是新品名').AsBoolean;
        end;
        ExecProc;
      end;
      Application.MessageBox('换批信息修改成功！','提示',MB_OK+MB_ICONINFORMATION);
      DM.con1.CommitTrans;
      with DM.qryBBatchChange do
      begin
        Close;
        Open;
      end;
    except
      Application.MessageBox('换批信息修改失败,请核查原因！','提示',MB_OK+MB_ICONERROR);
      DM.con1.RollbackTrans;
    end;
  end;
  Self.Close;
end;

procedure TFrmBHPXX.btn1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
