unit bddjdcz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, RzCmboBx, Mask, RzEdit, RzPanel, RzRadGrp,
  RzButton, RzLabel, ExtCtrls, ImgList, cxGraphics;

type
  TFrmBDDJDCZ = class(TForm)
    rzpnl1: TRzPanel;
    lblSearchKey: TRzLabel;
    btnSearch: TRzToolButton;
    btnExit: TRzToolButton;
    rzrdgrpSearchWay: TRzRadioGroup;
    edtProductName: TRzEdit;
    lblSearchItems: TRzLabel;
    cbbSearchItems: TRzComboBox;
    dtpProductionDate: TDateTimePicker;
    ImageList1: TImageList;
    procedure btnExitClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cbbSearchItemsChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpProductionDateKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBDDJDCZ: TFrmBDDJDCZ;

implementation
uses UDM,bddjd;

{$R *.dfm}

procedure TFrmBDDJDCZ.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmBDDJDCZ.btnSearchClick(Sender: TObject);
begin
  if cbbSearchItems.ItemIndex<1 then
   begin
     Application.MessageBox('请选择查询项目！','提示',MB_OK+MB_ICONINFORMATION);
     cbbSearchItems.SetFocus;
     Exit;
   end;
   if (cbbSearchItems.ItemIndex=1) and (Trim(edtProductName.Text)='') then
   begin
     Application.MessageBox('请输入要查询品名信息！','提示',MB_OK+MB_ICONINFORMATION);
     edtProductName.SetFocus;
     Exit;
   end;
   if cbbSearchItems.ItemIndex=1  then
   begin
     case rzrdgrpSearchWay.ItemIndex of
      0:begin
          with DM.qryWeavingDynamicInfo do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_织布生产动态信息 where 品名 like ''%'+(Trim(edtProductName.Text))+'%''');
            Open;
          end;
        end;
      1:begin
          with DM.qryWeavingDynamicInfo do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select * from v_织布生产动态信息 where 品名=:pm');
            Parameters.ParamByName('pm').Value:=Trim(edtProductName.Text);
            Open;
          end;
        end;
     end;
     if DM.qryWeavingDynamicInfo.Eof then
     begin
       Application.MessageBox('查询为空，请重新输入品名信息！','提示',MB_OK+MB_ICONINFORMATION);
       edtProductName.SetFocus;
       Exit;
     end;
   end
   else
   begin
    with DM.qryWeavingDynamicInfo do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from v_织布生产动态信息 where 截止日期=:jzrq order by 品名');
      Parameters.ParamByName('jzrq').Value:=formatdatetime('yyyy-mm-dd',dtpProductionDate.Date);
      Open;
    end;
    if DM.qryWeavingDynamicInfo.Eof then
    begin
      Application.MessageBox('查询为空，请重新选择截止日期！','提示',MB_OK+MB_ICONINFORMATION);
      dtpProductionDate.SetFocus;
      Exit;
    end;
   end;
   Self.Close;
   
end;

procedure TFrmBDDJDCZ.cbbSearchItemsChange(Sender: TObject);
begin
  if cbbSearchItems.ItemIndex=0 then
  begin
    lblSearchKey.Visible:=False;
    edtProductName.Visible:=False;
    dtpProductionDate.Visible:=False;
  end;
  if cbbSearchItems.ItemIndex=1 then
  begin
    lblSearchKey.Visible:=True;
    edtProductName.Visible:=True;
    dtpProductionDate.Visible:=False;
    edtProductName.SetFocus;
  end;
  if cbbSearchItems.ItemIndex=2 then
  begin
    lblSearchKey.Visible:=True;
    dtpProductionDate.Visible:=True;
    edtProductName.Visible:=False;
    dtpProductionDate.SetFocus;
  end;
end;

procedure TFrmBDDJDCZ.FormShow(Sender: TObject);
begin
  dtpProductionDate.Date:=Date();
end;

procedure TFrmBDDJDCZ.dtpProductionDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    btnSearch.Click;
  end;
end;

end.
