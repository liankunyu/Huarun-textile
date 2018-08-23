unit bxxlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, RzButton,
  ExtCtrls, RzPanel, StdCtrls, RzEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Mask,
  RzLabel;

type
  TFrmBXXLR = class(TForm)
    lblProductName: TRzLabel;
    rzdtProductName: TRzEdit;
    lblCategory: TRzLabel;
    lblSpecification: TRzLabel;
    rzmSpecification: TRzMemo;
    lblWarpSource: TRzLabel;
    rzmWarpSource: TRzMemo;
    lblWeftSource: TRzLabel;
    rzmWeftSource: TRzMemo;
    rzpnlBtns: TRzPanel;
    rzbtbtnSave: TRzBitBtn;
    rzbtbtnExit: TRzBitBtn;
    rzdtCurrentYear: TRzEdit;
    RzLabel6: TRzLabel;
    rzdtCategory: TRzEdit;
    procedure rzbtbtnSaveClick(Sender: TObject);
    procedure rzbtbtnExitClick(Sender: TObject);
  private
    { Private declarations }
    function auto():string;
  public
    { Public declarations }
  end;

var
  FrmBXXLR: TFrmBXXLR;
  modifingID:Integer;//��¼���ڱ�����Ϣ�޸ĵļ�¼���
  year:array[0..8] of string =('2011','2012','2013','2014','2015','2016','2017','2018','2019');
  a:array[0..8]of string =('C','D','E','F','G','H','I','J','K');

implementation

{$R *.dfm}
uses UDM;

function TFrmBXXLR.auto;
var
  i:Integer;
  b,s,pm:string;
begin
  for i:=0 to 8 do
  begin
    if year[i]=RzEdit6.Text  then b:=a[i];
    break;
  end;
  if cxLookupComboBox1.Text<>'' then
  begin
     if cxLookupComboBox1.Text='Ư����' then
     begin
      with DM.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from ����Ϣ�� where ����Ʒ��=:sspz1');
        Parameters.ParamByName('sspz1').Value:=cxLookupComboBox1.Text;
        Open;
        Last;
      end;
      s:=DM.ADOQuery1.FieldByName('Ʒ��').AsString;
      if (StrtoInt(copy(s,4,Length(s)-4))<10000) then
      begin
        pm:=b+'-A'+IntToStr(StrtoInt(copy(s,4,Length(s)-4))+1)+'P';
        Result:=pm;
      end
      else
      begin
        pm:=b+'-A'+'1P';
        Result:=pm;
      end;
     end;
    if cxLookupComboBox1.Text='Ⱦɫ��' then
    begin
      with DM.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from ����Ϣ�� where ����Ʒ��=:sspz2');
        Parameters.ParamByName('sspz2').Value:=cxLookupComboBox1.Text;
        Open;
        Last;
      end;
      s:=DM.ADOQuery1.FieldByName('Ʒ��').AsString;
      if (StrtoInt(copy(s,4,Length(s)-4))<10000) then
      begin
        pm:=b+'-A'+IntToStr(StrtoInt(copy(s,4,Length(s)-4))+1)+'R';
        Result:=pm;
      end
      else
      begin
        pm:=b+'-A'+'1R';
        Result:=pm;
      end;
    end;
    if cxLookupComboBox1.Text='����' then
    begin
      with DM.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from ����Ϣ�� where ����Ʒ��=:sspz3');
        Parameters.ParamByName('sspz3').Value:=cxLookupComboBox1.Text;
        Open;
        Last;
      end;
      s:=DM.ADOQuery1.FieldByName('Ʒ��').AsString;
      if (StrtoInt(copy(s,4,Length(s)-4))<10000) then
      begin
        pm:=b+'-A'+IntToStr(StrtoInt(copy(s,4,Length(s)-4))+1);
        Result:=pm;
      end
      else
      begin
        pm:=b+'-A'+'1';
        Result:=pm;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('Ҫѡ����Ʒ�ֺ����ȷ��Ʒ����','��ʾ',MB_OK+MB_ICONINFORMATION);
  end;

end;

procedure TFrmBXXLR.rzbtbtnSaveClick(Sender: TObject);
begin
  case Self.Tag of
  1,2:begin
      with DM.ADOQuery1 do
      begin
       try
        Insert;
        FieldByName('Ʒ��').AsString:=Trim(RzEdit1.Text);
        FieldByName('����Ʒ��').AsString:=cxLookupComboBox1.Text;
        FieldByName('�������').AsString:=Trim(RzMemo1.Text);
        FieldByName('��ɴ��Դ').AsString:=Trim(RzMemo2.Text);
        FieldByName('γɴ��Դ').AsString:=Trim(RzMemo3.Text);
        Append;
        Application.MessageBox('����ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
        Close;
        SQL.Clear;
        SQL.Add('select * from ����Ϣ�� where Ʒ��=:pm');
        Parameters.ParamByName('pm').Value:=RzEdit1.Text;
       except
         begin
          Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
         end;
         Self.Close;
       end;
      end;
    end;
  3:begin
     try
      with DM.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update ����Ϣ�� set Ʒ��=:pm,����Ʒ��=:sspz,�������=:gg,��ɴ��Դ=:jsly,γɴ��Դ=:wsly where ���=:bh ');
        Parameters.ParamByName('pm').Value:=RzEdit1.Text;
        Parameters.ParamByName('sspz').Value:=cxLookupComboBox1.Text;
        Parameters.ParamByName('gg').Value:=Trim(RzMemo1.Text);
        Parameters.ParamByName('jsly').Value:=Trim(RzMemo2.Text);
        Parameters.ParamByName('wsly').Value:=Trim(RzMemo3.Text);
        Parameters.ParamByName('bh').Value:=xgbh;
        Prepared;
        ExecSQL;
        SQL.Clear;
        SQL.Add('select * from ����Ϣ�� order by Ʒ��');
        Open;
      end;
      Application.MessageBox('���³ɹ���','��ʾ',MB_OK+MB_ICONINFORMATION);
     except
       begin
        Application.MessageBox('����ʧ�ܣ���˲�ԭ��','��ʾ',MB_OK+MB_ICONERROR);
       end;
       Self.Close;
     end;
    end;
  end;
end;

procedure TFrmBXXLR.rzbtbtnExitClick(Sender: TObject);
begin
  Self.Close;
end;

end.
