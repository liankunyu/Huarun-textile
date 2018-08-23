unit bpmsr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, ImgList, cxGraphics, RzButton, StdCtrls,
  Mask, RzEdit, RzLabel;

type
  TFrmBPMSR = class(TForm)
    rzpnl1: TRzPanel;
    lblProductName: TRzLabel;
    edtProductName: TRzEdit;
    btnConfirm: TRzToolButton;
    btnExit: TRzToolButton;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBPMSR: TFrmBPMSR;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmBPMSR.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBPMSR.btnConfirmClick(Sender: TObject);
begin
  if Trim(edtProductName.Text)='' then
  begin
    Application.MessageBox('请输入品名信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  if Self.Tag=1 then
  begin
      DM.con1.BeginTrans;
      try
       with DM.spBProductNameAdd do
       begin
         Close;
         procedureName:='proc_棉布订单信息品名增加';
         Parameters.Refresh;
         with Parameters do
         begin
            ParamByName('@ID').Value:=DM.qryBVarietiesTurn.FieldByName('编号').AsInteger;
            ParamByName('@ProductName').Value:=Trim(edtProductName.Text);
            ParamByName('@Category').Value:=DM.qryBVarietiesTurn.FieldByName('产品坯别').AsString;
            ParamByName('@Specification').Value:=DM.qryBVarietiesTurn.FieldByName('规格').AsString;
            ParamByName('@WarpSource').Value:=DM.qryBVarietiesTurn.FieldByName('经纱来源').AsString;
            ParamByName('@WeftSource').Value:=DM.qryBVarietiesTurn.FieldByName('纬纱来源').AsString;
         end;
         ExecProc;
       end;
       Application.MessageBox('品名保存成功！','提示',MB_OK+MB_ICONINFORMATION);
       DM.con1.CommitTrans;
       with DM.qryBVarietiesTurn do
       begin
         Close;
         Open;
       end;
      except
        Application.MessageBox('品名保存失败,请核查原因！','提示',MB_OK+MB_ICONERROR);
        DM.con1.RollbackTrans;
      end;
      Self.Close;
  end;
  if Self.Tag=2 then
  begin
    DM.con1.BeginTrans;
      try
       with DM.spBProductNameAdd do
       begin
         Close;
         procedureName:='proc_棉布订单信息品名修改';
         Parameters.Refresh;
         with Parameters do
         begin
            ParamByName('@ID').Value:=DM.qryBVarietiesTurn.FieldByName('编号').AsInteger;
            ParamByName('@OldProductName').Value:=DM.qryBVarietiesTurn.FieldByName('品名').AsString;
            ParamByName('@NewProductName').Value:=Trim(edtProductName.Text);
            ParamByName('@Category').Value:=DM.qryBVarietiesTurn.FieldByName('产品坯别').AsString;
            ParamByName('@Specification').Value:=DM.qryBVarietiesTurn.FieldByName('规格').AsString;
            ParamByName('@WarpSource').Value:=DM.qryBVarietiesTurn.FieldByName('经纱来源').AsString;
            ParamByName('@WeftSource').Value:=DM.qryBVarietiesTurn.FieldByName('纬纱来源').AsString;
            ParamByName('@WhetherNewProductName').Value:=DM.qryBVarietiesTurn.FieldByName('是否是新品名').AsBoolean;
         end;
         ExecProc;
       end;
       Application.MessageBox('品名修改成功！','提示',MB_OK+MB_ICONINFORMATION);
       DM.con1.CommitTrans;
       with DM.qryBVarietiesTurn do
       begin
         Close;
         Open;
       end;
      except
        Application.MessageBox('品名修改失败,请核查原因！','提示',MB_OK+MB_ICONERROR);
        DM.con1.RollbackTrans;
      end;
      Self.Close;
  end;
end;

procedure TFrmBPMSR.FormShow(Sender: TObject);
begin
  if Self.Tag=1 then
  begin
    edtProductName.SetFocus;
  end;
  if Self.Tag=2 then
  begin
    edtProductName.Text:=DM.qryBVarietiesTurn.FieldByName('品名').Value;
    edtProductName.SetFocus;
  end;
end;

end.
