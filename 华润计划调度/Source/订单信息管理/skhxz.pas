unit skhxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxTextEdit, Menus, cxGridLevel, cxGridCustomTableView,
  cxGridCardView, cxGridDBCardView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Mask, RzEdit, RzButton, RzLabel, ExtCtrls, RzPanel,
  cxContainer, ImgList;

type
  TFrmSKHXZ = class(TForm)
    rzgrpbxQuery: TRzGroupBox;
    rztbtnQuery: TRzToolButton;
    rztbtnExit: TRzToolButton;
    rzedtInput: TRzEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxgrdCustomer: TcxGrid;
    cxgrdbcrdvwCustomer: TcxGridDBCardView;
    cxgrdbcrdvwrwCustomerID: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwCustomerName: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwAddress: TcxGridDBCardViewRow;
    cxgrdbcrdvwrwTel: TcxGridDBCardViewRow;
    cxgrdlvlCustomer: TcxGridLevel;
    cxmglst1: TcxImageList;
    cxlblCustomerName: TcxLabel;
    cxgrdbcrdvwrwFax: TcxGridDBCardViewRow;
    procedure rztbtnQueryClick(Sender: TObject);
    procedure rztbtnExitClick(Sender: TObject);
    procedure NSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSKHXZ: TFrmSKHXZ;

implementation
uses UDM,sddlr;

{$R *.dfm}

procedure TFrmSKHXZ.rztbtnQueryClick(Sender: TObject);
begin
  if Trim(rzedtInput.Text)='' then
  begin
    Application.MessageBox('请输入要查询的客户名称！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end
  else
  begin
    with DM.qrySCustomer do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 购纱客户信息表 where 客户名称 like ''%'+(Trim(rzedtInput.Text))+'%''');
      Open;
      ExecSQL;
      if Eof then
      begin
        Application.MessageBox('查询客户信息为空！','提示',MB_OK+MB_ICONINFORMATION);
        rzedtInput.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmSKHXZ.rztbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmSKHXZ.NSelectClick(Sender: TObject);
begin
  if cxgrdbcrdvwCustomer.ViewData.CardCount>0 then
  begin
    FrmSDDLR.lstCustomerInfo.Items[0]:=DM.qrySCustomer.FieldByName('客户号').AsString;
    FrmSDDLR.lstCustomerInfo.Items[1]:=DM.qrySCustomer.FieldByName('客户名称').AsString;
    self.Close;
  end;
end;

procedure TFrmSKHXZ.FormShow(Sender: TObject);
begin
  DM.qrySCustomer.Active:=True;
  rzedtInput.SetFocus;
end;

procedure TFrmSKHXZ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   with DM.qrySCustomer do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 购纱客户信息表');
  end;
end;

end.
