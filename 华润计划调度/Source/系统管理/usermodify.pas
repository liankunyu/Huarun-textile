unit usermodify;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, RzButton, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Mask, RzEdit,
  RzLabel, ImgList, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmUserModify = class(TForm)
    RzPanel1: TRzPanel;
    lblUserName: TRzLabel;
    rzdtUserName: TRzEdit;
    lblNewPwd: TRzLabel;
    rzdtNewPwd: TRzEdit;
    lblPwdConfirm: TRzLabel;
    rzdtPwdConfirm: TRzEdit;
    lblDep: TRzLabel;
    cbbDep: TcxLookupComboBox;
    lblPopem: TRzLabel;
    cbbPopem: TcxLookupComboBox;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    RzLabel1: TRzLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUserModify: TFrmUserModify;
  xgbh:string;//记录被修改的记录编号
  ysyhm:string;//记录修改前的用户名信息
  ysbm:string;//记录修改前的部门信息

implementation
uses UDM;

{$R *.dfm}

procedure TFrmUserModify.FormShow(Sender: TObject);
begin
  rzdtUserName.Text:=DM.qryUser.FieldByName('用户名').Value;
  ysyhm:=DM.qryUser.FieldByName('用户名').Value;
  rzdtNewPwd.Text:=DM.qryUser.FieldByName('密码').Value;
  rzdtPwdConfirm.Text:=DM.qryUser.FieldByName('密码').Value;
  cbbDep.Text:=DM.qryUser.FieldByName('部门名称').Value;
  ysbm:=DM.qryUser.FieldByName('部门名称').Value;
  cxLookupComboBox1.Text:=DM.qryUser.FieldByName('职务').Value;
  cbbPopem.Text:=DM.qryUser.FieldByName('所属权限').Value;
  xgbh:=DM.qryUser.FieldByName('编号').Value;
end;

procedure TFrmUserModify.btnSaveClick(Sender: TObject);
begin
  if (Trim(rzdtUserName.Text)='') or (cbbDep.Text='') then
  begin
    Application.MessageBox('请输入用户名和部门信息！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end
  else if (Trim(rzdtUserName.Text)<>ysyhm)or(cbbDep.Text<>ysbm)then
      begin
         with DM.qryUserCheck do
         begin
          Close;
          SQL.Clear;
          SQL.Add('select * from 用户信息表 where 部门名称=:bmmc and 用户名=:yhm');
          Parameters.ParamByName('yhm').Value:=Trim(rzdtUserName.Text);
          Parameters.ParamByName('bmmc').Value:=cbbDep.Text;
          Open;
         end;
         if DM.qryUserCheck.RecordCount=1 then
         begin
          Application.MessageBox('部门中存在着相同的用户名，请重新输入！','提示',MB_OK+MB_ICONERROR);
          rzdtUserName.SetFocus;
          Exit;
         end;
      end;
      if Trim(rzdtPwdConfirm.Text)<>Trim(rzdtNewPwd.Text) then
      begin
        Application.MessageBox('确认密码和新密码不一致，请重新输入！','提示',MB_OK+MB_ICONERROR);
        rzdtPwdConfirm.SetFocus;
      end
      else
      begin
         try
           with DM.qryUserModify do
           begin
            Close;
            SQL.Clear;
            SQL.Add('update 用户信息表 set 用户名=:yhm,密码=:mm,部门名称=:bmmc,职务=:zw,所属权限=:ssqx where 编号=:bh');
            Parameters.ParamByName('yhm').Value:=Trim(rzdtUserName.Text);
            Parameters.ParamByName('mm').Value:=Trim(rzdtNewPwd.Text);
            Parameters.ParamByName('bmmc').Value:=cbbDep.Text;
            Parameters.ParamByName('zw').Value:=cxLookupComboBox1.Text;
            Parameters.ParamByName('ssqx').Value:=cbbPopem.Text;
            Parameters.ParamByName('bh').Value:=xgbh;
            ExecSQL;
            Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
            with DM.qryUser do
            begin
              Close;
              Open;
            end;
           end;
         except
            Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
         end;
         Self.Close;
      end;
end;

procedure TFrmUserModify.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
