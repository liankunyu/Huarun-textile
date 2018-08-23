unit ddpscz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, cxGraphics, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp,
  RzButton, RzLabel, ExtCtrls, RzCmboBx;

type
  Tfrmddps = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    edtSearchKey: TRzEdit;
    lblSearchItems: TRzLabel;
    cbbSearchItems: TRzComboBox;
    ImageList1: TImageList;
    procedure btnSearchClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure cbbSearchItemsChange(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmddps: Tfrmddps;

implementation
uses cxFilter,cxGridDBTableView,UDM;
{$R *.dfm}

procedure Tfrmddps.btnSearchClick(Sender: TObject);
begin
    if cbbSearchItems.ItemIndex<1 then
   begin
     Application.MessageBox('请选择查询项目！','提示',MB_OK+MB_ICONINFORMATION);
     cbbSearchItems.SetFocus;
     Exit;
   end;
   if Trim(edtSearchKey.Text)='' then
   begin
     Application.MessageBox('请输入要查询的关键信息！','提示',MB_OK+MB_ICONINFORMATION);
     edtSearchKey.SetFocus;
     Exit;
   end;
 if cbbSearchItems.ItemIndex=1 then
  begin
     case rzrdgrpSearchWay.ItemIndex of
     0:begin
        with DM.ADOQuerycw do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_棉布订单审核 where 客户名称 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1)');
            Open;
          end;
       end;
     1:begin
          with DM.ADOQuerycw do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_棉布订单审核 where 客户名称=:khmc and 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1)');
            Parameters.ParamByName('khmc').Value:=Trim(edtSearchKey.Text);
            Open;
          end;
       end;
     end;
  end;
   if cbbSearchItems.ItemIndex=2 then
  begin
     case rzrdgrpSearchWay.ItemIndex of
         0:begin
            with DM.ADOQuerycw do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from v_棉布订单审核 where 规格 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1)');
                Open;
              end;
           end;
         1:begin
              with DM.ADOQuerycw do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from v_棉布订单审核 where 规格=:gg and 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1)');
                Parameters.ParamByName('gg').Value:=Trim(edtSearchKey.Text);
                Open;
              end;
           end;
         end;
  end;
     if cbbSearchItems.ItemIndex=3 then
  begin
     case rzrdgrpSearchWay.ItemIndex of
         0:begin
            with DM.ADOQuerycw do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from v_棉布订单审核 where 客户采购订单号 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1)');
                Open;
              end;
           end;
         1:begin
              with DM.ADOQuerycw do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from v_棉布订单审核 where 客户采购订单号=:hth and 订单号 in (select 订单号 from 棉布订单信息表 where 公司领导审批状态=0 and 销售部审核状态=1)');
                Parameters.ParamByName('hth').Value:=Trim(edtSearchKey.Text);
                Open;
              end;
           end;
     end;
  end;
       if DM.ADOQuerycw.Eof then
     begin
       Application.MessageBox('查询为空，请重新输入查询信息！','提示',MB_OK+MB_ICONINFORMATION);
       edtSearchKey.SetFocus;
       Exit;
     end;
     Self.Close;
end;

procedure Tfrmddps.btnExitClick(Sender: TObject);
begin
close;
end;

procedure Tfrmddps.cbbSearchItemsChange(Sender: TObject);
begin
  if cbbSearchItems.ItemIndex=0 then
  begin
   lblSearchKey.Caption:='关键字';
  end;
  if cbbSearchItems.ItemIndex=1 then
  begin
   lblSearchKey.Caption:='客户名称';
  end;
  if cbbSearchItems.ItemIndex=2 then
  begin
   lblSearchKey.Caption:='规格';
  end;
    if cbbSearchItems.ItemIndex=3 then
  begin
   lblSearchKey.Caption:='合同号';
  end;
end;

procedure Tfrmddps.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

end.
