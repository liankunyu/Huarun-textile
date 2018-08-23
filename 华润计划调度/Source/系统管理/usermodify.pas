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
  xgbh:string;//��¼���޸ĵļ�¼���
  ysyhm:string;//��¼�޸�ǰ���û�����Ϣ
  ysbm:string;//��¼�޸�ǰ�Ĳ�����Ϣ

implementation
uses UDM;

{$R *.dfm}

procedure TFrmUserModify.FormShow(Sender: TObject);
begin
  rzdtUserName.Text:=DM.qryUser.FieldByName('�û���').Value;
  ysyhm:=DM.qryUser.FieldByName('�û���').Value;
  rzdtNewPwd.Text:=DM.qryUser.FieldByName('����').Value;
  rzdtPwdConfirm.Text:=DM.qryUser.FieldByName('����').Value;
  cbbDep.Text:=DM.qryUser.FieldByName('��������').Value;
  ysbm:=DM.qryUser.FieldByName('��������').Value;
  cxLookupComboBox1.Text:=DM.qryUser.FieldByName('ְ��').Value;
  cbbPopem.Text:=DM.qryUser.FieldByName('����Ȩ��').Value;
  xgbh:=DM.qryUser.FieldByName('���').Value;
end;

procedure TFrmUserModify.btnSaveClick(Sender: TObject);
begin
  if (Trim(rzdtUserName.Text)='') or (cbbDep.Text='') then
  begin
    Application.MessageBox('�������û����Ͳ�����Ϣ��','��ʾ',MB_OK+MB_ICONINFORMATION);
    Exit;
  end
  else if (Trim(rzdtUserName.Text)<>ysyhm)or(cbbDep.Text<>ysbm)then
      begin
         with DM.qryUserCheck do
         begin
          Close;
          SQL.Clear;
          SQL.Add('select * from �û���Ϣ�� where ��������=:bmmc and �û���=:yhm');
          Parameters.ParamByName('yhm').Value:=Trim(rzdtUserName.Text);
          Parameters.ParamByName('bmmc').Value:=cbbDep.Text;
          Open;
         end;
         if DM.qryUserCheck.RecordCount=1 then
         begin
          Application.MessageBox('�����д�������ͬ���û��������������룡','��ʾ',MB_OK+MB_ICONERROR);
          rzdtUserName.SetFocus;
          Exit;
         end;
      end;
      if Trim(rzdtPwdConfirm.Text)<>Trim(rzdtNewPwd.Text) then
      begin
        Application.MessageBox('ȷ������������벻һ�£����������룡','��ʾ',MB_OK+MB_ICONERROR);
        rzdtPwdConfirm.SetFocus;
      end
      else
      begin
         try
           with DM.qryUserModify do
           begin
            Close;
            SQL.Clear;
            SQL.Add('update �û���Ϣ�� set �û���=:yhm,����=:mm,��������=:bmmc,ְ��=:zw,����Ȩ��=:ssqx where ���=:bh');
            Parameters.ParamByName('yhm').Value:=Trim(rzdtUserName.Text);
            Parameters.ParamByName('mm').Value:=Trim(rzdtNewPwd.Text);
            Parameters.ParamByName('bmmc').Value:=cbbDep.Text;
            Parameters.ParamByName('zw').Value:=cxLookupComboBox1.Text;
            Parameters.ParamByName('ssqx').Value:=cbbPopem.Text;
            Parameters.ParamByName('bh').Value:=xgbh;
            ExecSQL;
            Application.MessageBox('���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
            with DM.qryUser do
            begin
              Close;
              Open;
            end;
           end;
         except
            Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
         end;
         Self.Close;
      end;
end;

procedure TFrmUserModify.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
