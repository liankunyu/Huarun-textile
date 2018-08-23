unit UDia1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzLabel, ExtCtrls, jpeg;

type
  TFrmDia1 = class(TForm)
    Edit1: TEdit;
    RzLabel1: TRzLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDia1: TFrmDia1;

implementation
uses UDM;
{$R *.dfm}

procedure TFrmDia1.BitBtn1Click(Sender: TObject);
begin
  if Trim(Edit1.Text)<>'' then
    begin
      with DM.ATDepartment do
        begin
          Open;
          Edit;
          if Locate('部门名称',Edit1.Text,[]) then
            Application.MessageBox('部门名称不能重复，请输入其它名称！','提示',64)
          else
            begin
              Append;
              FieldByName('部门名称').AsString:=Trim(Edit1.Text);
              Post;
            end;
        end;
      Close;
    end;

end;

procedure TFrmDia1.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDia1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then        //按下回车键执行查询
    BitBtn1Click(self);
end;

procedure TFrmDia1.FormShow(Sender: TObject);
begin
  Edit1.Clear;
end;

end.
