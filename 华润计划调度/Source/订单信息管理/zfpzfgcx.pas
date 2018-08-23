unit zfpzfgcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzCmboBx, Mask, RzEdit, RzPanel, RzRadGrp, RzButton,
  RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  Tfrmzfdcx = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzfdcx: Tfrmzfdcx;

implementation

uses UDM;

{$R *.dfm}

procedure Tfrmzfdcx.cbbSearchItemsChange(Sender: TObject);
begin
  if cbbSearchItems.ItemIndex=0 then
  begin
   lblSearchKey.Caption:='关键字';

  end;
  if cbbSearchItems.ItemIndex=1 then
  begin
   lblSearchKey.Caption:='编号';
  end;
  if cbbSearchItems.ItemIndex=2 then
  begin
   lblSearchKey.Caption:='品名及规格';
  end;
    if cbbSearchItems.ItemIndex=3 then
  begin
   lblSearchKey.Caption:='下机品种';
  end;
end;

procedure Tfrmzfdcx.btnExitClick(Sender: TObject);
begin
close;
end;

procedure Tfrmzfdcx.btnSearchClick(Sender: TObject);
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
        with DM.qryzfd do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 自纺品种翻改通知单 where 单号 like ''%'+(Trim(edtSearchKey.Text))+'%''');
            Open;
          end;
       end;
     1:begin
          with DM.qryzfd do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 自纺品种翻改通知单 where 单号=:dh');
            Parameters.ParamByName('dh').Value:=Trim(edtSearchKey.Text);
            Open;
          end;
       end;
     end;
    end;
    if cbbSearchItems.ItemIndex=2 then
     begin
     case rzrdgrpSearchWay.ItemIndex of
         0:begin
            with DM.qryzfd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 规格 like ''%'+(Trim(edtSearchKey.Text))+'%''');
                Open;
              end;
           end;
         1:begin
              with DM.qryzfd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 规格=:gg');
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
            with DM.qryzfd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 下机品种 like ''%'+(Trim(edtSearchKey.Text))+'%''');
                Open;
              end;
           end;
         1:begin
              with DM.qryzfd do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 下机品种=:xjpz');
                Parameters.ParamByName('xjpz').Value:=Trim(edtSearchKey.Text);
                Open;
              end;
           end;
     end;
    end;
    if DM.qryzfd.Eof then
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
        with DM.qryzfdfsyxbsh do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 自纺品种翻改通知单 where 单号 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 协理签收状态=1');
            Open;
          end;
       end;
     1:begin
          with DM.qryzfdfsyxbsh do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 自纺品种翻改通知单 where 单号=:dh and 协理签收状态=1');
            Parameters.ParamByName('dh').Value:=Trim(edtSearchKey.Text);
            Open;
          end;
       end;
     end;
    end;
    if cbbSearchItems.ItemIndex=2 then
     begin
     case rzrdgrpSearchWay.ItemIndex of
         0:begin
            with DM.qryzfdfsyxbsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 规格 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 协理签收状态=1');
                Open;
              end;
           end;
         1:begin
              with DM.qryzfdfsyxbsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 规格=:gg and 协理签收状态=1');
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
            with DM.qryzfdfsyxbsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 下机品种 like ''%'+(Trim(edtSearchKey.Text))+'%'' and 协理签收状态=1');
                Open;
              end;
           end;
         1:begin
              with DM.qryzfdfsyxbsh do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 自纺品种翻改通知单 where 下机品种=:xjpz and 协理签收状态=1');
                Parameters.ParamByName('xjpz').Value:=Trim(edtSearchKey.Text);
                Open;
              end;
           end;
     end;
    end;
    if DM.qryzfdfsyxbsh.Eof then
     begin
       Application.MessageBox('查询为空，请重新输入查询信息！','提示',MB_OK+MB_ICONINFORMATION);
       edtSearchKey.SetFocus;
       Exit;
     end;
   end;
  Self.Close;
end;

end.
