unit sxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxLabel, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, RzButton, RzPanel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Mask, RzEdit, RzLabel,
  ExtCtrls, ImgList;

type
  TFrmSXX = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    RzPanel2: TRzPanel;
    cxgrdYarnInfo: TcxGrid;
    cxgrdbtblvwYarnInfo: TcxGridDBTableView;
    cxgrdlvlYarnInfo: TcxGridLevel;
    rzgrpbxQuery: TRzGroupBox;
    btnQuery: TRzToolButton;
    btnExit: TRzToolButton;
    cxmglst1: TcxImageList;
    rzdtSpecification: TRzEdit;
    cxgrdbclmnProductName: TcxGridDBColumn;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSXX: TFrmSXX;
  procedure psxx(AHandle:THandle);stdcall;

implementation
uses UDM;

{$R *.dfm}

procedure psxx(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmSXX:=TFrmSXX.Create(Application);
  try
    FrmSXX.ShowModal;
  finally
    TFrmSXX(FrmSXX).Free;
  end;
end;

procedure TFrmSXX.FormShow(Sender: TObject);
begin
  with DM.qryYarnInfo do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select * from ɴ��Ϣ��');
     Open;
   end;
end;

procedure TFrmSXX.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmSXX.btnQueryClick(Sender: TObject);
var
 AColumn:TcxGridDBColumn;      //���ݱ���ص���
begin
  if Trim(rzdtSpecification.Text)<>'' then
  begin
    AColumn:=cxgrdbclmnSpecification;
    with cxgrdbtblvwYarnInfo.DataController.Filter  do
    begin
      Root.AddItem(AColumn,foLike,Trim(rzdtSpecification.Text),Trim(rzdtSpecification.Text));
      Active:=True;
    end;
    if cxgrdbtblvwYarnInfo.ViewData.RowCount>0  then
    begin
      Application.MessageBox('�˹����ڣ���ص���Ϣ����ʾ������','��ʾ',MB_OK+MB_ICONINFORMATION);
    end
    else
    begin
      Application.MessageBox('�˹�񲻴��ڣ���˲飡','��ʾ',MB_OK+MB_ICONINFORMATION);
    end;
  end
  else
  begin
    Application.MessageBox('������Ҫ��ѯ�Ĺ��','��ʾ',MB_OK+MB_ICONINFORMATION);
    rzdtSpecification.SetFocus;
  end;
end;
end.
