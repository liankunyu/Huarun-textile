unit gslxdlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ComCtrls, Mask, RzEdit, StdCtrls, RzLabel, RzPanel,
  ExtCtrls, ImgList, cxGraphics,IniFiles;

type
  Tfrmgslxdlr = class(TForm)
    RzPanel1: TRzPanel;
    rzgrpbxInput: TRzGroupBox;
    lblProductName: TRzLabel;
    lblSpecification: TRzLabel;
    lblQualityRequirement: TRzLabel;
    lblPackagingRequirement: TRzLabel;
    lblWarpSource: TRzLabel;
    lblPurchaseID: TRzLabel;
    lblOrderAddress: TRzLabel;
    lblOrderTime1: TRzLabel;
    lblDeliveryDescribe: TRzLabel;
    mmo2: TRzMemo;
    edt2: TRzEdit;
    mmo5: TRzMemo;
    mmo1: TRzMemo;
    mmo4: TRzMemo;
    edtPurchaseID: TRzEdit;
    edt1: TRzEdit;
    dtpOrderTime: TDateTimePicker;
    mmo3: TRzMemo;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgslxdlr: Tfrmgslxdlr;
   lFile:TiniFile;
implementation
 uses UDM,gslxd;
{$R *.dfm}

procedure Tfrmgslxdlr.btnExitClick(Sender: TObject);
begin
close;
end;

procedure Tfrmgslxdlr.FormShow(Sender: TObject);
begin
  if Self.Tag=1 then
  begin
    dtpOrderTime.Date:=Date();
    edtPurchaseID.SetFocus;
    btnSave.Tag:=1;
  end;
    if Self.Tag=2 then
  begin
    edtPurchaseID.Text:=DM.qrygsd.FieldByName('��ɴ�����').AsString;
    edtPurchaseID.SetFocus;
    edt1.Text:=DM.qrygsd.FieldByName('�ͻ��ɹ�������').AsString;
    edt2.Text:=DM.qrygsd.FieldByName('ִ�в���').AsString;
    dtpOrderTime.Date:=DM.qrygsd.FieldByName('��ɴ����').AsDateTime;
    mmo5.Text:=DM.qrygsd.FieldByName('Ʒ�ֱ��').AsString;
    mmo1.Text:=DM.qrygsd.FieldByName('�⹺ɴ��').AsString;
    mmo2.Text:=DM.qrygsd.FieldByName('�⹺����˿').AsString;
    mmo3.Text:=DM.qrygsd.FieldByName('����Ҫ��').AsString;
    mmo4.Text:=DM.qrygsd.FieldByName('��ע').AsString;
    btnSave.Tag:=2;
  end;
    if Self.Tag=3 then
  begin
    edtPurchaseID.Text:=DM.qrygsd.FieldByName('��ɴ�����').AsString;
    edtPurchaseID.SetFocus;
    edt1.Text:=DM.qrygsd.FieldByName('�ͻ��ɹ�������').AsString;
    edt2.Text:=DM.qrygsd.FieldByName('ִ�в���').AsString;
    dtpOrderTime.Date:=DM.qrygsd.FieldByName('��ɴ����').AsDateTime;
    mmo5.Text:=DM.qrygsd.FieldByName('Ʒ�ֱ��').AsString;
    mmo1.Text:=DM.qrygsd.FieldByName('�⹺ɴ��').AsString;
    mmo2.Text:=DM.qrygsd.FieldByName('�⹺����˿').AsString;
    mmo3.Text:=DM.qrygsd.FieldByName('����Ҫ��').AsString;
    mmo4.Text:=DM.qrygsd.FieldByName('��ע').AsString;
    btnSave.Tag:=3;
  end;
end;

procedure Tfrmgslxdlr.btnSaveClick(Sender: TObject);
begin
    if self.Tag=1 then
  begin
      try
      with DM.qrygsdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into ��ɴ��ϵ��(��ɴ�����,�ͻ��ɹ�������,ִ�в���,Ʒ�ֱ��,�⹺ɴ��,�⹺����˿,����Ҫ��,��ɴ����,��ע,¼����,¼������)');
        SQL.Add('values(:gsdbh,:khcgddh,:zxbm,:pzbh,:wgsx,:wgjds,:zlyq,:dsrq,:bz,:lrr,:lrrq)');
        Parameters.ParamByName('gsdbh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khcgddh').Value:=trim(edt1.Text);
        Parameters.ParamByName('zxbm').Value:=trim(edt2.Text);
        Parameters.ParamByName('pzbh').Value:=trim(mmo5.Text);
        Parameters.ParamByName('wgsx').Value:=trim(mmo1.Text);
        Parameters.ParamByName('wgjds').Value:=trim(mmo2.Text);
        Parameters.ParamByName('zlyq').Value:=trim(mmo3.Text);
        Parameters.ParamByName('dsrq').Value:= formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('bz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmgslxd.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        ExecSQL;
        Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        with DM.qrygsd do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from V_��ɴ������ϵ�� ');
          Open;
        end;
    end;
    except
      Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
   end;
   end;
       if self.Tag=2 then
  begin
      try
      with DM.qrygsdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update ��ɴ��ϵ�� set ��ɴ�����=:gsdbh,�ͻ��ɹ�������=:khcgddh,ִ�в���=:zxbm,Ʒ�ֱ��=:pzbh,�⹺ɴ��=:wgsx,�⹺����˿=:wgjds,����Ҫ��=:zlyq,��ɴ����=:dsrq,��ע=:bz,¼����=:lrr,¼������=:lrrq  where ���=:bh');
        Parameters.ParamByName('gsdbh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khcgddh').Value:=trim(edt1.Text);
        Parameters.ParamByName('zxbm').Value:=trim(edt2.Text);
        Parameters.ParamByName('pzbh').Value:=trim(mmo5.Text);
        Parameters.ParamByName('wgsx').Value:=trim(mmo1.Text);
        Parameters.ParamByName('wgjds').Value:=trim(mmo2.Text);
        Parameters.ParamByName('zlyq').Value:=trim(mmo3.Text);
        Parameters.ParamByName('dsrq').Value:= formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('bz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmgslxd.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        Parameters.ParamByName('bh').Value:=DM.qrygsd.FieldByName('���').AsString;
        ExecSQL;
        Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
      with DM.qrygsd do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from V_��ɴ������ϵ�� ');
        Open;
      end;
    end;
    except
      Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
   end;
   end;
    if self.Tag=3 then
  begin
      try
      with DM.qrygsdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into ��ɴ��ϵ��(��ɴ�����,�ͻ��ɹ�������,ִ�в���,Ʒ�ֱ��,�⹺ɴ��,�⹺����˿,����Ҫ��,��ɴ����,��ע,¼����,¼������)');
        SQL.Add('values(:gsdbh,:khcgddh,:zxbm,:pzbh,:wgsx,:wgjds,:zlyq,:dsrq,:bz,:lrr,:lrrq)');
        Parameters.ParamByName('gsdbh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('khcgddh').Value:=trim(edt1.Text);
        Parameters.ParamByName('zxbm').Value:=trim(edt2.Text);
        Parameters.ParamByName('pzbh').Value:=trim(mmo5.Text);
        Parameters.ParamByName('wgsx').Value:=trim(mmo1.Text);
        Parameters.ParamByName('wgjds').Value:=trim(mmo2.Text);
        Parameters.ParamByName('zlyq').Value:=trim(mmo3.Text);
        Parameters.ParamByName('dsrq').Value:= formatdatetime('yyyy-mm-dd',dtpOrderTime.Date);
        Parameters.ParamByName('bz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmgslxd.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        ExecSQL;
        Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        with DM.qrygsd do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from V_��ɴ������ϵ�� ');
          Open;
        end;
    end;
    except
      Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
   end;
   end;
   self.close;
   end;
   
end.
