unit jsgl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ComCtrls, RzButton, ImgList, StdCtrls, Mask, RzEdit, RzLabel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ExtCtrls,
  RzPanel, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLabel,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmjsgl = class(TForm)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RzGroupBox1: TRzGroupBox;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxstyl5: TcxStyle;
    cxstyl6: TcxStyle;
    cxstyl7: TcxStyle;
    cxstyl8: TcxStyle;
    cxstyl9: TcxStyle;
    cxstyl10: TcxStyle;
    cxstyl11: TcxStyle;
    lblDailyWarpingAmount: TRzLabel;
    edt3: TRzEdit;
    lblDailyMachineWeight: TRzLabel;
    edt4: TRzEdit;
    btnAdd: TRzToolButton;
    btnSave: TRzToolButton;
    btnCancel: TRzToolButton;
    btnDelete: TRzToolButton;
    btnPrint: TRzToolButton;
    RzGroupBox2: TRzGroupBox;
    lbl1: TRzLabel;
    edt1: TRzEdit;
    btn1: TRzToolButton;
    btn2: TRzToolButton;
    btn3: TRzToolButton;
    btn4: TRzToolButton;
    lbl2: TRzLabel;
    dtp1: TDateTimePicker;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    edt2: TRzEdit;
    lbl3: TRzLabel;
    btn5: TRzToolButton;
    btn6: TRzToolButton;
    lbl4: TRzLabel;
    lbl5: TRzLabel;
    ImageList1: TImageList;
    procedure btnAddClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmjsgl: TFrmjsgl;
  procedure pjsgl(AHandle:THandle);stdcall;

implementation

uses UDM;

{$R *.dfm}


procedure pjsgl(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  Frmjsgl:=TFrmjsgl.Create(Application);
  try
    Frmjsgl.ShowModal;
  finally
    TFrmjsgl(Frmjsgl).Free;
  end;
end;

procedure TFrmjsgl.btnAddClick(Sender: TObject);
begin
RzGroupBox1.Tag:=1;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt2.Enabled:=True;
btnSave.Enabled:=True;
btnCancel.Enabled:=True;
btnAdd.Enabled:=False;
btn5.Enabled:=False;
btnDelete.Enabled:=False;
btnPrint.Enabled:=False;
end;

procedure TFrmjsgl.btn5Click(Sender: TObject);
begin
RzGroupBox1.Tag:=2;
edt3.Enabled:=True;
edt3.Text:=DM.qryjsyxgl.FieldByName('供应商').AsString;
edt4.Enabled:=True;
edt4.Text:=DM.qryjsyxgl.FieldByName('纱支').AsString;
edt2.Enabled:=True;
edt2.Text:=DM.qryjsyxgl.FieldByName('累计采购').AsString;
btnSave.Enabled:=True;
btnCancel.Enabled:=True;
btnAdd.Enabled:=False;
btn5.Enabled:=False;
btnDelete.Enabled:=False;
btnPrint.Enabled:=False;
end;

procedure TFrmjsgl.btnCancelClick(Sender: TObject);
begin
edt3.Text:='';
edt3.Enabled:=False;
edt4.Text:='';
edt4.Enabled:=False;
edt2.Text:='';
edt2.Enabled:=False;
btnSave.Enabled:=False;
btnCancel.Enabled:=False;
btnAdd.Enabled:=True;
btn5.Enabled:=True;
btnDelete.Enabled:=True;
btnPrint.Enabled:=True;
end;

procedure TFrmjsgl.btnDeleteClick(Sender: TObject);
begin
    if Application.MessageBox('确定删除该信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
     try
      with DM.qry2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 经纱营销管理 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qryjsyxgl.FieldByName('编号').AsInteger;
        ExecSQL;
      end;
      with DM.qry3 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 经纱采购 where 供应商=:gys');
        Parameters.ParamByName('gys').Value:=DM.qryjsyxgl.FieldByName('供应商').AsString;
        ExecSQL;
      end;
      with DM.qry8 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 经纱管理 where 供应商=:gys');
        Parameters.ParamByName('gys').Value:=DM.qryjsyxgl.FieldByName('供应商').AsString;
        ExecSQL;
      end;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryjsyxgl do
        begin
          Close;
          Open;
        end;
     except
       Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     end;
  end;
end;

procedure TFrmjsgl.btnSaveClick(Sender: TObject);
begin
if RzGroupBox1.Tag=1 then
 begin
  try
          with DM.qry2 do
          begin
           Close;
           SQL.Clear;
           SQL.Add('insert into 经纱营销管理(供应商,纱支,累计采购)');
           SQL.Add('values(:gys,:sz,:ljcg)');
           Parameters.ParamByName('gys').Value:=edt3.Text;
           Parameters.ParamByName('sz').Value:=edt4.Text;
           if edt2.Text='' then
           begin
            Parameters.ParamByName('ljcg').Value:=null;
           end
           else
           begin
            Parameters.ParamByName('ljcg').Value:=edt2.Text;
           end;
           ExecSQL;
           Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
          end;
          with DM.qryjsyxgl do
          begin
           Close;
           Open;
          end;

  except
       Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
  end;
 end;
 if RzGroupBox1.Tag=2 then
  begin
      try
        with DM.qry2 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('update 经纱营销管理 set 供应商=:gys,纱支=:sz,累计采购=:ljcg where 编号=:bh');
        Parameters.ParamByName('gys').Value:=edt3.Text;
        Parameters.ParamByName('sz').Value:=edt4.Text;
           if edt2.Text='' then
           begin
            Parameters.ParamByName('ljcg').Value:=null;
           end
           else
           begin
            Parameters.ParamByName('ljcg').Value:=edt2.Text;
           end;
        Parameters.ParamByName('bh').Value:=DM.qryjsyxgl.FieldByName('编号').AsInteger;
        ExecSQL;
        Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
        with DM.qryjsyxgl do
        begin
          Close;
          Open;
        end;
      except
       Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
  end;
  btnCancel.Click;
end;


procedure TFrmjsgl.btn1Click(Sender: TObject);
begin
edt1.Enabled:=True;
dtp1.Enabled:=True;
btn2.Enabled:=True;
btn3.Enabled:=True;
btn1.Enabled:=False;
btn4.Enabled:=False;
end;

procedure TFrmjsgl.FormShow(Sender: TObject);
begin
dtp1.Date:=Date();
 with DM.qryjsyxgl do
 begin
  Close;
  Open;
 end;
 with DM.qryjscg do
 begin
  Close;
  Open;
 end;
end;

procedure TFrmjsgl.btn3Click(Sender: TObject);
begin
edt1.Text:='';
edt1.Enabled:=False;
dtp1.Date:=Date();
dtp1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn1.Enabled:=True;
btn4.Enabled:=True;
end;

procedure TFrmjsgl.btn4Click(Sender: TObject);
begin
    if Application.MessageBox('确定删除该信息吗?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
     try
      with DM.qry3 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from 经纱采购 where 编号=:bh');
        Parameters.ParamByName('bh').Value:=DM.qryjscg.FieldByName('编号').AsInteger;
        ExecSQL;
      end;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
        with DM.qryjscg do
        begin
          Close;
          Open;
        end;
     except
       Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
     end;
  end;
end;

procedure TFrmjsgl.btn2Click(Sender: TObject);
begin
      try
        with DM.qry3 do
       begin
        Close;
        SQL.Clear;
        SQL.Add('insert into 经纱采购(采购,采购日期,供应商)');
        SQL.Add('values(:cg,:cgrq,:gys)');
        Parameters.ParamByName('cg').Value:=edt1.Text;
        Parameters.ParamByName('cgrq').Value:=formatdatetime('yyyy-mm-dd',dtp1.Date);
        Parameters.ParamByName('gys').Value:=DM.qryjsyxgl.FieldByName('供应商').AsString;
        ExecSQL;
        Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
       end;
        with DM.qryjscg do
        begin
          Close;
          Open;
        end;
      except
       Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
      end;
      btn3.Click;
end;

procedure TFrmjsgl.btn6Click(Sender: TObject);
begin
Self.Close;
end;

end.
