unit UDia2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, Buttons, Mask, DBCtrls, ExtCtrls, jpeg;

type
  TFrmDia2 = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    RzLabel1: TRzLabel;
    DBEdit1: TDBEdit;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDia2: TFrmDia2;

implementation
uses UDM;
{$R *.dfm}

procedure TFrmDia2.BitBtn1Click(Sender: TObject);
begin
  if Trim(DBEdit1.Text)<>'' then
    begin
      with DM.ATDepartment do
        begin
          Edit;
          FieldByName('部门名称').AsString:=Trim(DBEdit1.Text);
          Post;
        end;
      Close;
    end;

end;

procedure TFrmDia2.BitBtn2Click(Sender: TObject);
begin

  Close;
end;

procedure TFrmDia2.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then        //按下回车键执行
    BitBtn1Click(self);
end;

end.
