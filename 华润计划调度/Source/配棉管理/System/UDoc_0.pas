unit UDoc_0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzRadGrp, RzDBRGrp, StdCtrls, RzLabel,
  Buttons, DB, jpeg;

type
  TFrmDoc_0 = class(TForm)
    RzLabel1: TRzLabel;
    Edit1: TEdit;
    RzRadioGroup1: TRzRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDoc_0: TFrmDoc_0;

implementation
uses UDM;
{$R *.dfm}

procedure TFrmDoc_0.BitBtn1Click(Sender: TObject);
begin
  if Trim(Edit1.Text)='' then
    begin
      Application.MessageBox('����Ϊ�գ�','��ʾ',64);
      Abort;
    end;
  case RzRadioGroup1.ItemIndex of
    0:  begin
          with DM.AQDoctor1 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from Ա����Ϣ�� where Ա������ like :d');
              Parameters.ParamByName('d').Value:='%'+Trim(Edit1.Text)+'%';
              Open;
            end;
          if DM.AQDoctor1.Eof then
            Application.MessageBox('û�з��������ļ�¼��','��ʾ',64)
          else
            Close;
        end;
    1:  begin
          with DM.AQDoctor1 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from Ա����Ϣ�� where Ա������ like :d');
              Parameters.ParamByName('d').Value:='%'+Trim(Edit1.Text)+'%';
              Open;
            end;
          if DM.AQDoctor1.Eof then
            Application.MessageBox('û�з��������ļ�¼��','��ʾ',64)
          else
            Close;
          
        end;
    
  else
    Application.MessageBox('û�з��������ļ�¼��','��ʾ',64);
    Close;
  end;
end;

procedure TFrmDoc_0.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDoc_0.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    BitBtn1Click(self);
end;

procedure TFrmDoc_0.FormShow(Sender: TObject);
begin
  RzRadioGroup1.ItemIndex:=0;
  Edit1.Clear;
end;

end.
