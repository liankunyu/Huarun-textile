unit sumt_1; 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, StdCtrls, ExtCtrls;
type
   arr1=array[1..25]of real;
   arr2=array[1..25,1..25]of real;
   dcd = record
   n : integer;
   kg : integer;
   kh : integer;
   Kcheck : integer;
   Kcheck_Z : string[8];
   R00  : real;
   R    : real;
   Cr   : real;
   T0  : real;
   eps : real;
   x   : arr1;
   s   : arr1;
   direct: arr2;
   H  : arr2;
   dpdx: arr1;
   dfdx: arr1;
   dgdx: arr2;
   dhdx: arr2;
   dx  : arr1;
   dg  : arr1;
   Hdg : arr1;
   xcs: arr1;
   pen: real;
   fx : real;
   gx : arr1;
   hx : arr1;
   phi: real;
   bl : arr1;
   bu : arr1;
   f0 : real;
   dxtdg   : real;
   dgthdg  : real;
   ffxx0   : real;
   x00  :  arr1;
   rm   :  real;
   IRC,ITE,KTE,ILI,NPE,NFX : integer;
end;

type
  TForm1 = class(TForm)
  procedure FormCreate(Sender: TObject);
  procedure tcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sumt : dcd;
   end;

var
  Form1: TForm1;
 
implementation

uses  sumt_2,sumt_fgh,sumt_3;


{$R *.DFM}

 
procedure TForm1.FormCreate(Sender: TObject);
var i : integer;
begin
  form1.Left := 50;
  form1.top  := 50;
  with form1.sumt do
     begin
       n  :=-1;
       kg :=-1;
       kh :=-1;
       Kcheck := 0 ;
       R00:=-1.0;
       Cr:=0.0;
       T0:=0.0;
       for i:=1 to n do
         begin
           x[i]:=0.0;
           bl[i]:=0.0;
           bu[i]:=0.0;
         end;
   end;
  
end;


procedure TForm1.tcClick(Sender: TObject);
var    j : integer;
begin
  j := application.messagebox('您确认要取消这次设计计算吗？','警告',MB_YESNO);
  if j=IDYES then  begin form1.Close; {formfm.Close;} end;
  end;

 end.

