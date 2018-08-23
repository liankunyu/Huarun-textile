unit sumt_fgh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;
type
   arr3 = array[1..55]of real;
type
  TForm3 = class(TForm)

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Procedure ffx;
  Procedure ggx;
  Procedure hhx;

implementation

uses sumt_1, sumt_2, sumt_3;

{$R *.DFM}


procedure ffx;
var
  i : Integer;
begin
  with form1.sumt do
   begin
    fx:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    fx:=fx+Form4.cxGrid1DBTableView1.DataController.Values[i,2]*x[i+1];
    end;
end;

procedure ggx;
var
  i : Integer;
begin
  with form1.sumt do
  begin
    gx[1]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[1]:=gx[1]+Form4.cxGrid1DBTableView1.DataController.Values[i,3]*x[i+1];
    gx[1]:=gx[1]-form4.cxGridDBTableView1.DataController.Values[0,2];
    gx[2]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[2]:=gx[2]+Form4.cxGrid1DBTableView1.DataController.Values[i,4]*x[i+1];
    gx[2]:=gx[2]-form4.cxGridDBTableView1.DataController.Values[0,3];
    gx[3]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[3]:=gx[3]+Form4.cxGrid1DBTableView1.DataController.Values[i,5]*x[i+1];
    gx[3]:=gx[3]-form4.cxGridDBTableView1.DataController.Values[0,4];
    gx[4]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[4]:=gx[4]+Form4.cxGrid1DBTableView1.DataController.Values[i,6]*x[i+1];
    gx[4]:=gx[4]-form4.cxGridDBTableView1.DataController.Values[0,5];
    gx[5]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[5]:=gx[5]+Form4.cxGrid1DBTableView1.DataController.Values[i,7]*x[i+1];
    gx[5]:=gx[5]-form4.cxGridDBTableView1.DataController.Values[0,6];
    gx[6]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[6]:=gx[6]+Form4.cxGrid1DBTableView1.DataController.Values[i,8]*x[i+1];
    gx[6]:=gx[6]-form4.cxGridDBTableView1.DataController.Values[0,7];
    gx[7]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[7]:=gx[7]+Form4.cxGrid1DBTableView1.DataController.Values[i,9]*x[i+1];
    gx[7]:=gx[7]-form4.cxGridDBTableView1.DataController.Values[0,8];
    gx[8]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    gx[8]:=gx[8]+Form4.cxGrid1DBTableView1.DataController.Values[i,10]*x[i+1];
    gx[8]:=gx[8]-form4.cxGridDBTableView1.DataController.Values[0,9];
    for i:=1 to Form4.cxGrid1DBTableView1.DataController.GetRowCount do
    gx[8+i]:=-x[i];
  end;
end;

procedure hhx;
var
  i : Integer;
begin
 with form1.sumt do
 begin
    hx[1]:=0;
    for i :=0 to Form4.cxGrid1DBTableView1.DataController.GetRowCount-1 do
    hx[1]:=hx[1]+x[i+1];
    hx[1]:=hx[1]-1;
 end;
end;




end.


