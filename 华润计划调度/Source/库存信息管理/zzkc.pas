unit zzkc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, ComCtrls, RzDTP, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, RzPanel, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls, ImgList,
  cxCalendar, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  Tfrmzzkc = class(TForm)
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    rzgrpbxWeaverInput: TRzGroupBox;
    lblProductName: TRzLabel;
    lblWeaverAmount: TRzLabel;
    edtProductName: TRzEdit;
    rzpnlWeaverBtns: TRzPanel;
    btnWeaverQuery: TRzToolButton;
    btnWeaverEnterWarehouse: TRzToolButton;
    btnWeaverExit: TRzToolButton;
    btnWeaverSave: TRzToolButton;
    btnWeaverCancel: TRzToolButton;
    rzbtbtnDelete: TRzToolButton;
    cxgrd1: TcxGrid;
    cxgrdbtblvwzzkc: TcxGridDBTableView;
    cxgrdbclmnWeaverProductName: TcxGridDBColumn;
    cxgrdbclmnWeaverStorageAmount: TcxGridDBColumn;
    cxgrdbclmnWeaverWarningAmount: TcxGridDBColumn;
    cxgrdbtblvwzzkcColumn1: TcxGridDBColumn;
    cxgrdlvlWeaverStorage: TcxGridLevel;
    RzEdit1: TRzEdit;
    RzLabel1: TRzLabel;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    DateTimePicker1: TDateTimePicker;
    ImageList1: TImageList;
    procedure btnWeaverExitClick(Sender: TObject);
    procedure btnWeaverEnterWarehouseClick(Sender: TObject);
    procedure btnWeaverCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnWeaverSaveClick(Sender: TObject);
    procedure btnWeaverQueryClick(Sender: TObject);
    procedure rzbtbtnDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzzkc: Tfrmzzkc;

implementation
   uses UDM;
{$R *.dfm}

procedure Tfrmzzkc.btnWeaverExitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmzzkc.btnWeaverEnterWarehouseClick(Sender: TObject);
begin
  edtProductName.Enabled:=True;
  RzEdit2.Enabled:=True;
  RzEdit3.Enabled:=True;
  DateTimePicker1.Enabled:=True;
  edtProductName.SetFocus;
  btnWeaverSave.Enabled:=True;
  btnWeaverCancel.Enabled:=True;
  btnWeaverEnterWarehouse.Enabled:=False;
end;

procedure Tfrmzzkc.btnWeaverCancelClick(Sender: TObject);
begin
  edtProductName.text:='';
  RzEdit2.text:='';
  RzEdit3.text:='';
  edtProductName.Enabled:=False;
  RzEdit2.Enabled:=False;
  RzEdit3.Enabled:=False;
  DateTimePicker1.Enabled:=False;
  btnWeaverSave.Enabled:=False;
  btnWeaverCancel.Enabled:=False;
  btnWeaverEnterWarehouse.Enabled:=True;
end;

procedure Tfrmzzkc.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Date();
end;

procedure Tfrmzzkc.btnWeaverSaveClick(Sender: TObject);
begin
  try
    with DM.qryzzkcxx do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 织轴库存信息');
      active:=true;
      Insert;
      FieldByName('品名').AsString:=Trim(edtProductName.text);
      FieldByName('入库数量').AsString:=Trim(RzEdit2.text);
      FieldByName('出库数量').AsString:=Trim(RzEdit3.text);
      FieldByName('出入库日期').AsString:=formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime);
      Append;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
     with DM.qryzzkcxx do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from 织轴库存信息 where 品名=:pm');
        Parameters.ParamByName('pm').Value:=edtProductName.text;
        Open;
      end;
    end;
   except
    Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
  end;
   btnWeaverCancel.Click;
  end;
procedure Tfrmzzkc.btnWeaverQueryClick(Sender: TObject);
begin
     if Trim(RzEdit1.Text)<>'' then
  begin
   with DM.qryzzkcxx do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 织轴库存信息 where 品名=:pm');
      Parameters.ParamByName('pm').Value:=Trim(RzEdit1.text);
      Open;
    end;
    if  DM.qryzzkcxx.Eof then
    begin
      Application.MessageBox('此信息不存在！','提示',MB_OK+MB_ICONINFORMATION);
    end
    else
    begin
    rzbtbtnDelete.Enabled:=True;
    end;
  end
  else
  begin
    Application.MessageBox('请输入要查询的品名！','提示',MB_OK+MB_ICONINFORMATION);
    rzedit1.SetFocus;
  end;
end;

procedure Tfrmzzkc.rzbtbtnDeleteClick(Sender: TObject);
begin
     if cxgrdbtblvwzzkc.ViewData.RecordCount>0 then
  begin
   if Application.MessageBox('确定删除该信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
   begin
    try
     DM.qryzzkcxx.Delete;
     Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
    except
     Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
    end;
   end;
  end
  else
  begin
    Application.MessageBox('没有可以删除的信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure Tfrmzzkc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DM.qryWeaverStorage do
    begin
    Close;
    SQL.Clear;
    SQL.Add('select * from V_织轴库存信息');
    active:=true;
   end;
end;

end.
