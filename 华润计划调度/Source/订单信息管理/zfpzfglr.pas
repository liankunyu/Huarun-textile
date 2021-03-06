unit zfpzfglr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzPanel, ComCtrls, Mask, RzEdit, StdCtrls, RzLabel,
  ExtCtrls, ImgList, cxGraphics,IniFiles;

type
  Tfrmzfpzfglr = class(TForm)
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
    mmo3: TRzMemo;
    rzpnlBtns: TRzPanel;
    btnSave: TRzToolButton;
    btnExit: TRzToolButton;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzEdit4: TRzEdit;
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
  frmzfpzfglr: Tfrmzfpzfglr;
  lFile:TiniFile;
implementation
 uses UDM,zfpzfg;
{$R *.dfm}

procedure Tfrmzfpzfglr.btnExitClick(Sender: TObject);
begin
close;
end;

procedure Tfrmzfpzfglr.FormShow(Sender: TObject);
begin
  if Self.Tag=1 then
  begin

    edtPurchaseID.SetFocus;
    btnSave.Tag:=1;
  end;
    if Self.Tag=2 then
  begin
    edtPurchaseID.Text:=DM.qryzfd.FieldByName('单号').AsString;
    edtPurchaseID.SetFocus;
    edt1.Text:=DM.qryzfd.FieldByName('部门').AsString;
    edt2.Text:=DM.qryzfd.FieldByName('规格').AsString;
    rzedit2.Text:=DM.qryzfd.FieldByName('捻度').AsString;
    rzedit1.Text:=DM.qryzfd.FieldByName('数量及价格').AsString;
    rzedit3.Text:=DM.qryzfd.FieldByName('筒重').AsString;
    rzedit4.Text:=DM.qryzfd.FieldByName('系数').AsString;
    mmo1.Text:=DM.qryzfd.FieldByName('上机').AsString;
    mmo2.Text:=DM.qryzfd.FieldByName('包装').AsString;
    mmo3.Text:=DM.qryzfd.FieldByName('备注').AsString;
    mmo4.Text:=DM.qryzfd.FieldByName('下机品种').AsString;
    mmo5.Text:=DM.qryzfd.FieldByName('交货事宜').AsString;
    btnSave.Tag:=2;
  end;
    if Self.Tag=3 then
  begin
    edtPurchaseID.Text:=DM.qryzfd.FieldByName('单号').AsString;
    edtPurchaseID.SetFocus;
    edt1.Text:=DM.qryzfd.FieldByName('部门').AsString;
    edt2.Text:=DM.qryzfd.FieldByName('规格').AsString;
    rzedit2.Text:=DM.qryzfd.FieldByName('捻度').AsString;
    rzedit1.Text:=DM.qryzfd.FieldByName('数量及价格').AsString;
    rzedit3.Text:=DM.qryzfd.FieldByName('筒重').AsString;
    rzedit4.Text:=DM.qryzfd.FieldByName('系数').AsString;
    mmo1.Text:=DM.qryzfd.FieldByName('上机').AsString;
    mmo2.Text:=DM.qryzfd.FieldByName('包装').AsString;
    mmo3.Text:=DM.qryzfd.FieldByName('备注').AsString;
    mmo4.Text:=DM.qryzfd.FieldByName('下机品种').AsString;
    mmo5.Text:=DM.qryzfd.FieldByName('交货事宜').AsString;
    btnSave.Tag:=3;
  end;
end;

procedure Tfrmzfpzfglr.btnSaveClick(Sender: TObject);
begin
    if self.Tag=1 then
  begin
      try
      with DM.qryzfdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 自纺品种翻改通知单(单号,部门,规格,捻度,数量及价格,筒重,系数,上机,下机品种,交货事宜,包装,备注,录入人,录入日期)');
        SQL.Add('values(:dh,:bm,:gg,:ld,:sljjg,:tz,:xs,:sj,:xjpz,:jhsy,:baoz,:bz,:lrr,:lrrq)');
        Parameters.ParamByName('dh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('bm').Value:=trim(edt1.Text);
        Parameters.ParamByName('gg').Value:=trim(edt2.Text);
        Parameters.ParamByName('ld').Value:=trim(rzedit2.Text);
        Parameters.ParamByName('sljjg').Value:=trim(rzedit1.Text);
        Parameters.ParamByName('tz').Value:=trim(rzedit3.Text);
        Parameters.ParamByName('xs').Value:=trim(rzedit4.Text);
        Parameters.ParamByName('jhsy').Value:=trim(mmo5.Text);
        Parameters.ParamByName('sj').Value:=trim(mmo1.Text);
        Parameters.ParamByName('baoz').Value:=trim(mmo2.Text);
        Parameters.ParamByName('bz').Value:=trim(mmo3.Text);
        Parameters.ParamByName('xjpz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmzfpzfg.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryzfd do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from 自纺品种翻改通知单 ');
          Open;
        end;
    end;
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   end;
       if self.Tag=2 then
  begin
      try
      with DM.qryzfdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update 自纺品种翻改通知单 set 单号=:dh,部门=:bm,规格=:gg,捻度=:ld,数量及价格=:sljjg,筒重=:tz,系数=:xs,上机=:sj,下机品种=:xjpz,交货事宜=:jhsy,包装=:baoz,备注=:bz,录入人=:lrr,录入日期=:lrrq  where 编号=:bh');
        Parameters.ParamByName('dh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('bm').Value:=trim(edt1.Text);
        Parameters.ParamByName('gg').Value:=trim(edt2.Text);
        Parameters.ParamByName('ld').Value:=trim(rzedit2.Text);
        Parameters.ParamByName('sljjg').Value:=trim(rzedit1.Text);
        Parameters.ParamByName('tz').Value:=trim(rzedit3.Text);
        Parameters.ParamByName('xs').Value:=trim(rzedit4.Text);
        Parameters.ParamByName('jhsy').Value:=trim(mmo5.Text);
        Parameters.ParamByName('sj').Value:=trim(mmo1.Text);
        Parameters.ParamByName('baoz').Value:=trim(mmo2.Text);
        Parameters.ParamByName('bz').Value:=trim(mmo3.Text);
        Parameters.ParamByName('xjpz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmzfpzfg.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        Parameters.ParamByName('bh').Value:=DM.qryzfd.FieldByName('编号').AsString;
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
      with DM.qryzfd do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from 自纺品种翻改通知单 ');
        Open;
      end;
    end;
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   end;
    if self.Tag=3 then
  begin
      try
      with DM.qryzfdgl do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 自纺品种翻改通知单(单号,部门,规格,捻度,数量及价格,筒重,系数,上机,下机品种,交货事宜,包装,备注,录入人,录入日期)');
        SQL.Add('values(:dh,:bm,:gg,:ld,:sljjg,:tz,:xs,:sj,:xjpz,:jhsy,:baoz,:bz,:lrr,:lrrq)');
        Parameters.ParamByName('dh').Value:=Trim(edtPurchaseID.Text);
        Parameters.ParamByName('bm').Value:=trim(edt1.Text);
        Parameters.ParamByName('gg').Value:=trim(edt2.Text);
        Parameters.ParamByName('ld').Value:=trim(rzedit2.Text);
        Parameters.ParamByName('sljjg').Value:=trim(rzedit1.Text);
        Parameters.ParamByName('tz').Value:=trim(rzedit3.Text);
        Parameters.ParamByName('xs').Value:=trim(rzedit4.Text);
        Parameters.ParamByName('jhsy').Value:=trim(mmo5.Text);
        Parameters.ParamByName('sj').Value:=trim(mmo1.Text);
        Parameters.ParamByName('baoz').Value:=trim(mmo2.Text);
        Parameters.ParamByName('bz').Value:=trim(mmo3.Text);
        Parameters.ParamByName('xjpz').Value:=trim(mmo4.Text);
        Parameters.ParamByName('lrr').Value:=Frmzfpzfg.User;
        Parameters.ParamByName('lrrq').Value:=Date();
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryzfd do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from 自纺品种翻改通知单 ');
          Open;
        end;
    end;
    except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   end;
   self.Close;
end;

end.
