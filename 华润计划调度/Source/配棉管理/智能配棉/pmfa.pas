unit pmfa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, ComCtrls, StdCtrls,
  Mask, RzEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzButton,
  RzPanel, RzLabel, ExtCtrls, ADODB;

type
  TFrmPmfa = class(TForm)
    rzgrpbx1: TRzGroupBox;
    RzLabel1: TRzLabel;
    lbl3: TRzLabel;
    lbl4: TRzLabel;
    lbl6: TRzLabel;
    lbl7: TRzLabel;
    lbl8: TRzLabel;
    lbl9: TRzLabel;
    lbl10: TRzLabel;
    RzPanel2: TRzPanel;
    bsave: TRzBitBtn;
    bcancel: TRzBitBtn;
    breturn: TRzBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DateTimePicker1: TDateTimePicker;
    RzLabel2: TRzLabel;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzEdit4: TRzEdit;
    RzEdit5: TRzEdit;
    RzEdit6: TRzEdit;
    RzEdit7: TRzEdit;
    RzEdit8: TRzEdit;
    RzEdit9: TRzEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    RzEdit1: TRzEdit;
    lbl1: TRzLabel;
    ADOQuery3: TADOQuery;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure breturnClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure bsaveClick(Sender: TObject);
    procedure bcancelClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPmfa: TFrmPmfa;
  procedure apmfa(AHandle:THandle);stdcall;

implementation

uses udm, Ymjp;

{$R *.dfm}

procedure apmfa(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmPmfa:=TFrmPmfa.Create(Application);
  try
    FrmPmfa.ShowModal;
  finally
    FreeAndNil(FrmPmfa);
  end;
end;

procedure TFrmPmfa.FormShow(Sender: TObject);
var
  S: String;
begin
  ADOQuery1.Active:=True;
  DateTimePicker1.DateTime:=Date();
  RzEdit2.SetFocus;
  with ADOQuery3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 配棉平均参数 ');
    Open;
  end;
  if ADOQuery3.RecordCount>0 then
  begin
    ADOQuery3.Last;
    S:=Trim('HR')+Format('%.4d',[(StrToInt(Copy(ADOQuery3.FieldByName('方案号').AsString,3,4))+1)]);
  end
  else
  begin
      S :=Trim('HR')+'0001';
  end;
  RzEdit1.Text:=s;
end;

procedure TFrmPmfa.breturnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmPmfa.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  RzEdit2.Text:=ADOQuery1.fieldbyname('平均品级').AsString;
  RzEdit3.Text:=ADOQuery1.fieldbyname('平均主体长度').AsString;
  RzEdit4.Text:=ADOQuery1.fieldbyname('平均短绒').AsString;
  RzEdit5.Text:=ADOQuery1.fieldbyname('平均断裂比强度').AsString;
  RzEdit6.Text:=ADOQuery1.fieldbyname('平均马克隆值').AsString;
  RzEdit7.Text:=ADOQuery1.fieldbyname('平均回潮率').AsString;
  RzEdit8.Text:=ADOQuery1.fieldbyname('平均含杂').AsString;
  RzEdit9.Text:=ADOQuery1.fieldbyname('平均含糖').AsString;
end;

procedure TFrmPmfa.bsaveClick(Sender: TObject);
  begin
    if (RzEdit2.Text<>'') and (RzEdit3.Text<>'') and (RzEdit4.Text<>'') and (RzEdit5.Text<>'') and (RzEdit6.Text<>'') and (RzEdit7.Text<>'') and (RzEdit8.Text<>'') and (RzEdit9.Text<>'') then
      begin
        with ADOQuery2 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select  *   from    配棉平均参数');
            Open;
            Edit;
            Insert;
            FieldByName('时间').AsString:=formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime);
            FieldByName('方案号').AsString:=RzEdit1.Text;
            FieldByName('平均品级').AsString:=RzEdit2.Text;
            FieldByName('平均主体长度').AsString:=RzEdit3.Text;
            FieldByName('平均短绒').AsString:=RzEdit4.Text;
            FieldByName('平均断裂比强度').AsString:=RzEdit5.Text;
            FieldByName('平均马克隆值').AsString:=RzEdit6.Text;
            FieldByName('平均回潮率').AsString:=RzEdit7.Text;
            FieldByName('平均含杂').AsString:=RzEdit8.Text;
            FieldByName('平均含糖').AsString:=RzEdit9.Text;
            Refresh;
          end;
          with ADOQuery4 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select  *   from    配棉方案号');
            Open;
            Edit;
            Insert;
            FieldByName('方案号').AsString:=RzEdit1.Text;
            FieldByName('时间').AsString:=formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime);
            Refresh;
          end;
          application.MessageBox('新建配棉方案保存成功!','提示',MB_OK+MB_ICONINFORMATION);
      end
    else
      begin
        showmessage('请输入配棉平均物理指标!');
        Exit;
      end;
      //application.MessageBox('新建配棉方案保存成功!','提示',MB_OK+MB_ICONINFORMATION);
      {FrmPmfa.Close;
      Frmymjp.adoquery1.Close;
      Frmymjp.adoquery1.SQL.Clear;
      Frmymjp.adoquery1.SQL.Add('select * from 配棉平均参数 where 方案号=:fah');
      Frmymjp.adoquery1.Parameters.ParamByName('fah').Value:=RzEdit1.Text;
      Frmymjp.adoquery1.Open; }
  end;

procedure TFrmPmfa.bcancelClick(Sender: TObject);
var S:string;
  begin
      with ADOQuery3 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select * from 配棉平均参数 ');
          Open;
        end;
        if ADOQuery3.RecordCount>0 then
        begin
          ADOQuery3.Last;
          S:=Trim('HR')+Format('%.4d',[(StrToInt(Copy(ADOQuery3.FieldByName('方案号').AsString,3,4))+1)]);
        end
        else
        begin
            S :=Trim('HR')+'0001';
        end;
    RzEdit1.Text:=S;
    with ADOQuery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select  *   from    配棉平均参数');
          Open;
        end;
  end;

procedure TFrmPmfa.RzBitBtn1Click(Sender: TObject);
  begin
    FrmPmfa.Close;
    FrmYmjp:=TFrmYmjp.Create(Self);
    FrmYmjp.ShowModal;
    FrmYmjp.Free;
    
  end;

procedure TFrmPmfa.RzBitBtn2Click(Sender: TObject);
begin
  if Application.MessageBox('确定删除该配棉方案?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
    begin
      with  ADOQuery5 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select  * from 配棉物理指标 where 方案号=:fah ');
        Parameters.ParamByName('fah').Value:=ADOQuery1.fieldbyname('方案号').Value;
        Open;
      end;
      if ADOQuery5.Eof then
      begin
        ADOQuery1.Delete;
      end
      else
      begin
        Application.MessageBox('该方案号内有相关数据，请先删除参与配棉的原棉数据！','提示',MB_OK+MB_ICONERROR);
      end;
    end;
end;
end.
