unit usersearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzCmboBx, RzPanel, RzRadGrp, RzButton,
  RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  TFrmUserSearch = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchItems: TRzLabel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    cbbSearchItems: TRzComboBox;
    rzdtSearchKey: TRzEdit;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUserSearch: TFrmUserSearch;

implementation
uses user,cxFilter,cxGridDBTableView;

{$R *.dfm}

procedure TFrmUserSearch.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmUserSearch.btnSearchClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //数据表相关的列
begin
   if cbbSearchItems.ItemIndex<1 then
   begin
     Application.MessageBox('请选择查询项目！','提示',MB_OK+MB_ICONINFORMATION);
     cbbSearchItems.SetFocus;
     Exit;
   end;
   if Trim(rzdtSearchKey.Text)='' then
   begin
     Application.MessageBox('请输入要查询项目的关键字！','提示',MB_OK+MB_ICONINFORMATION);
     rzdtSearchKey.SetFocus;
     Exit;
   end;
   if cbbSearchItems.ItemIndex=1 then AColumn:=FrmUser.cxgrdbclmnUserName;
   if cbbSearchItems.ItemIndex=2 then AColumn:=FrmUser.cxgrdbclmnDep;
   if cbbSearchItems.ItemIndex=3 then AColumn:=FrmUser.cxgrdbclmnPopem;
   case rzrdgrpSearchWay.ItemIndex of
   0:begin
      with FrmUser.cxgrdbtblvwUsers.DataController.Filter  do
      begin
        Root.Clear;
        Root.AddItem(AColumn,foLike,'%'+Trim(rzdtSearchKey.Text)+'%',Trim(rzdtSearchKey.Text));
        Active:=True;
      end;
     end;
   1:begin
      with FrmUser.cxgrdbtblvwUsers.DataController.Filter  do
      begin
        Root.Clear;
        Root.AddItem(AColumn,foEqual,Trim(rzdtSearchKey.Text),Trim(rzdtSearchKey.Text));
        Active:=True;
      end;
     end;
   end;
   Self.Close;
end;

end.
