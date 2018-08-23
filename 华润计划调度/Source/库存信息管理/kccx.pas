unit kccx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp, RzButton, RzLabel,
  ExtCtrls, ImgList, cxGraphics;

type
  TFrmKCCX = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    edtSearchKey: TRzEdit;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKCCX: TFrmKCCX;

implementation
uses zbkcyj,cxFilter,CxGridDBTableView;

{$R *.dfm}

procedure TFrmKCCX.FormShow(Sender: TObject);
begin
  if Self.Tag=1 then
  begin
    edtSearchKey.Text:='品名';
  end;
  if Self.Tag=2 then
  begin
    edtSearchKey.Text:='规格';
  end;
end;

procedure TFrmKCCX.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmKCCX.btnSearchClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //数据表相关的列
begin
  if FrmKCCX.Tag=1   then
   begin
      if Trim(edtSearchKey.Text)='' then
     begin
       Application.MessageBox('请输入要查询的品名！','提示',MB_OK+MB_ICONINFORMATION);
       edtSearchKey.SetFocus;
       Exit;
     end;
     AColumn:=FrmZBKCYJ.cxgrdbclmnWeaverProductName;
    case rzrdgrpSearchWay.ItemIndex of
     0:begin
          with FrmZBKCYJ.cxgrdbtblvwWeaverStorage.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
     1:begin
          with FrmZBKCYJ.cxgrdbtblvwWeaverStorage.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
    end;
   end;
   if FrmKCCX.Tag=2 then
   begin
     if Trim(edtSearchKey.Text)='' then
     begin
       Application.MessageBox('请输入要查询的规格！','提示',MB_OK+MB_ICONINFORMATION);
       edtSearchKey.SetFocus;
       Exit;
     end;
     AColumn:=FrmZBKCYJ.cxgrdbclmnWeftSpecification;
    case rzrdgrpSearchWay.ItemIndex of
     0:begin
          with FrmZBKCYJ.cxgrdbtblvwWeftStorage.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foLike,'%'+Trim(edtSearchKey.Text)+'%',Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
     1:begin
          with FrmZBKCYJ.cxgrdbtblvwWeftStorage.DataController.Filter  do
          begin
            Root.Clear;
            Root.AddItem(AColumn,foEqual,Trim(edtSearchKey.Text),Trim(edtSearchKey.Text));
            Active:=True;
          end;
       end;
    end;
   end;
   Self.Close;
    end;


  


end.
