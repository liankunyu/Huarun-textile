unit gsdcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzCmboBx, Mask, RzEdit, RzPanel, RzRadGrp, RzButton,
  RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  Tfrmgsdcx = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    lblSearchItems: TRzLabel;
    edtSearchKey: TRzEdit;
    cbbSearchItems: TRzComboBox;
    ImageList1: TImageList;
    procedure cbbSearchItemsChange(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgsdcx: Tfrmgsdcx;

implementation
 uses UDM;
{$R *.dfm}

procedure Tfrmgsdcx.cbbSearchItemsChange(Sender: TObject);
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

procedure Tfrmgsdcx.btnExitClick(Sender: TObject);
begin
close;
end;

procedure Tfrmgsdcx.btnSearchClick(Sender: TObject);
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
   if Self.tag=1 then
   begin
     if cbbSearchItems.ItemIndex=1 then
    begin
     case rzrdgrpSearchWay.ItemIndex of
     0:begin
        with DM.qrygsd do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from V_购纱工作联系单 where 客户名称 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
       end;
     1:begin
          with DM.qrygsd do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from V_购纱工作联系单 where 客户名称=:khmc');
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
            with DM.qrygsd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 规格 like ''%'+(Trim(edtSearchKey.Text))+'%''');
                Open;
              end;
           end;
         1:begin
              with DM.qrygsd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 规格=:gg');
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
            with DM.qrygsd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 客户采购订单号 like ''%'+(Trim(edtSearchKey.Text))+'%''');
                Open;
              end;
           end;
         1:begin
              with DM.qrygsd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 客户采购订单号=:hth');
                Parameters.ParamByName('hth').Value:=Trim(edtSearchKey.Text);
                Open;
              end;
           end;
     end;
    end;
    if DM.qrygsd.Eof then
     begin
       Application.MessageBox('查询为空，请重新输入查询信息！','提示',MB_OK+MB_ICONINFORMATION);
       edtSearchKey.SetFocus;
       Exit;
     end;
   end;

   if Self.tag=2 then
   begin
     if cbbSearchItems.ItemIndex=1 then
    begin
     case rzrdgrpSearchWay.ItemIndex of
     0:begin
        with DM.qrygsdwlsh do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from V_购纱工作联系单 where 客户名称 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 生产部审核状态=1');
            Open;
          end;
       end;
     1:begin
          with DM.qrygsdwlsh do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from V_购纱工作联系单 where 客户名称=:khmc and 生产部审核状态=1');
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
            with DM.qrygsdwlsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 规格 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 生产部审核状态=1');
                Open;
              end;
           end;
         1:begin
              with DM.qrygsdwlsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 规格=:gg and 生产部审核状态=1');
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
            with DM.qrygsdwlsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 客户采购订单号 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 生产部审核状态=1');
                Open;
              end;
           end;
         1:begin
              with DM.qrygsdwlsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from V_购纱工作联系单 where 客户采购订单号=:hth and 生产部审核状态=1');
                Parameters.ParamByName('hth').Value:=Trim(edtSearchKey.Text);
                Open;
              end;
           end;
     end;
    end;
    if DM.qrygsdwlsh.Eof then
     begin
       Application.MessageBox('查询为空，请重新输入查询信息！','提示',MB_OK+MB_ICONINFORMATION);
       edtSearchKey.SetFocus;
       Exit;
     end;
   end;
  Self.Close;
end;

procedure Tfrmgsdcx.FormShow(Sender: TObject);
begin
 if Self.Tag =1then
 begin
   btnSearch.Tag:=1;
 end;
 if Self.Tag =2then
 begin
   btnSearch.Tag:=2;
 end;
 end;


procedure Tfrmgsdcx.edtSearchKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

end.
