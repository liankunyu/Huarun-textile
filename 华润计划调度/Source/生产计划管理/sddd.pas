unit sddd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, StdCtrls, RzEdit, ComCtrls, RzButton, DBCtrls, Mask,
  RzLabel, ExtCtrls, ImgList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxLabel, cxBlobEdit,
  cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  Tfrmsddtz = class(TForm)
    cxmglst1: TcxImageList;
    cxImageList2: TcxImageList;
    RzPanel1: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel10: TRzLabel;
    Label1: TLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    rzpnl1: TRzPanel;
    rzgrpbxQueryCondition: TRzGroupBox;
    lblOrderID: TRzLabel;
    lblSpecification: TRzLabel;
    lblDeliveryTimeAndAmount: TRzLabel;
    edtOrderID: TRzEdit;
    edtgg: TRzEdit;
    mmoDeliveryTimeAndAmount: TRzMemo;
    RzLabel1: TRzLabel;
    RzEdit1: TRzEdit;
    RzLabel2: TRzLabel;
    RzEdit5: TRzEdit;
    RzLabel21: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel4: TRzLabel;
    RzMemo1: TRzMemo;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzMemo2: TRzMemo;
    RzMemo3: TRzMemo;
    RzMemo4: TRzMemo;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzLabel3: TRzLabel;
    RzMemo5: TRzMemo;
    rzpnlBtns: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzEdit4: TRzEdit;
    rzbtbtnQuery: TRzBitBtn;
    rzbtbtnCancel: TRzBitBtn;
    rzbtbtnPrint: TRzBitBtn;
    rzbtbtnExit: TRzBitBtn;
    rzbtbtnSave: TRzBitBtn;
    rzbtbtnModify: TRzBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxgrdOutOfWarehouse: TcxGrid;
    cxgrdbtblvwTotalOutOfWarehouseInfo: TcxGridDBTableView;
    cxgrdbclmnSpecification: TcxGridDBColumn;
    cxgrdbclmnOrderID: TcxGridDBColumn;
    cxgrdbclmnOrderAmount: TcxGridDBColumn;
    cxgrdbclmnTotalOutOfWarehouseAmount: TcxGridDBColumn;
    cxgrdbclmnRemainAmount: TcxGridDBColumn;
    cxgrdbchrtvwOutOfWarehouseChart: TcxGridDBChartView;
    cxgrdbchrtdtgrpOrderID: TcxGridDBChartDataGroup;
    cxgrdbchrtdtgrpProductName: TcxGridDBChartDataGroup;
    cxgrdbchrtsrsOrderAmount: TcxGridDBChartSeries;
    cxgrdbchrtsrsTotalOutOfWarehouseAmount: TcxGridDBChartSeries;
    cxgrdbtblvwOutOfWarehouseInfo: TcxGridDBTableView;
    cxgrdbclmnNewProductName: TcxGridDBColumn;
    cxgrdbclmnOutOfWarehouseAmount: TcxGridDBColumn;
    cxgrdbclmnOutDate: TcxGridDBColumn;
    cxgrdbclmnMemo: TcxGridDBColumn;
    cxgrdlvlOutOfWarehouseTotalInfo: TcxGridLevel;
    RzLabel9: TRzLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsddtz: Tfrmsddtz;

implementation

{$R *.dfm}

end.
