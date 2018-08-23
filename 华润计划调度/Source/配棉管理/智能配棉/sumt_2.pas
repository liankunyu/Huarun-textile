unit sumt_2;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls,sumt_1, ExtCtrls, RzPanel, RzButton;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    jgxs: TMemo;
    RzPanel2: TRzPanel;
    RzBitBtn3: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  procedure sjxs_1;
  procedure sjxs_2;
  Procedure sump;
  procedure xran;
  procedure powell;
  procedure dfpbfg;
  procedure rvalul;
  procedure linmin;
  procedure functi;
  procedure grapen;
  procedure differ;
  function rmd() : real;
  function abc1(n:integer;a,b:sumt_1.arr1):real;
  function abc2(ii,n:integer;H:sumt_1.arr2;a:sumt_1.arr1):real;

implementation

uses sumt_fgh,sumt_3;

{$R *.DFM}

procedure TForm2.FormCreate(Sender: TObject);
begin
   Form2.Left :=50;
   Form2.Top  :=50;
end;



procedure sump;  
var i,k,temp:integer;xx,yy,pen0:real;
    x0:arr1;
    label Here;
begin
  with form1.sumt do
  begin
    ffx;ggx;
    ffxx0:=fx;
    temp:=0;
    for k:=1 to kg do if gx[k]>=0.0 then begin xran; break; end;
    if (R<=0.0) then Rvalul; functi;
    for i:=1 to n do x0[i]:=x[i];
    with form2.jgxs.lines do
    begin
      add('                                                              ');
      add('二、智能配棉计算过程');
      add('===============================================================================');
      add('                                                              ');
      add('    进行  配棉比例最优化计算   。  。  。  。  。  。  ');
      add('                                                              ');
    repeat
      for i:=1 to n do x0[i]:=x[i];
      pen0:=pen;
      if kcheck=0 then powell
                  else dfpbfg;
      ITE:=ITE+KTE;
      r:=r*cr;
      IRC:=IRC+1;
      for i:=1 to n do
      begin
        xx:=abs(x0[i]-x[i]); yy:=abs(x[i])*eps+eps;
        if xx>yy then  begin temp:=1; break ;end
                 else  temp:=0;
      end;
    until (abs(pen-pen0) <= eps*abs(pen)+eps) or (temp=0);
  end;
  end;
end;

function rmd() : real;
var
   rm35,rm36,rm37 :real;
begin
  with form1.sumt do
  begin
    rm35:=exp(35.0*ln(2.0));
    rm36:=2.0*rm35;
    rm37:=2.0*rm36;
    rm:=5.0*rm;
    if rm>=rm37 then rm:=rm-rm37;
    if rm>=rm36 then rm:=rm-rm36;
    if rm>=rm35 then rm:=rm-rm35;
    rmd:=rm/rm35;
  end;
end;

function ppp(aa,bb:real) : real;
var cc:real;
begin
 cc:=bb*ln(aa);
 ppp:=exp(cc);
end;

procedure xran;
var ii,temp1,kk:integer;qq:real;
begin
  with form1.sumt do
  begin
    with form2.jgxs.lines do
    begin
      Add('  -----------------------------------------------------------------------------');
      add('    #####           进行初始数据匹配     #####');
      Add('  -----------------------------------------------------------------------------');
      add('    <<<<<    初始数据不可行，寻找可行配棉比例    >>>>>');
      Add('  -----------------------------------------------------------------------------');

    end;

    repeat
      temp1:=0;
      ggx;
      for ii:=1 to kg do
      begin
        if (gx[ii]>=0) then
        begin  for kk:=1 to n do
               begin  qq:=rmd();  x[kk]:=bl[kk]+qq*(bu[kk]-bl[kk]); end;
               temp1:=1;
               break;
        end;
      end;
    until temp1=0;

    with form2.jgxs.lines do
    begin
      add('    #####    找到可行的配棉比例，准备进行优化计算      #####  ');
      Add('  -----------------------------------------------------------------------------');

    end;

  end;
end;

procedure rvalul;
var i:integer;pin:real;
begin
  with form1.sumt do begin
    ffx;   ggx;
    pin:=0.0;
    for i:=1 to kg do pin:=pin+1.0/abs(gx[i]);
    R:=abs(fx/pin);
  end;
end;

procedure functi;
var i:integer;  pin,pex:real;
begin
  with form1.sumt do
  begin
    NPE:=NPE+1;
    ffx;  ggx;  hhx;
    pin:=0.0;  pex:=0.0;
    if kg>0 then for i:=1 to kg do pin:=pin+1.0/gx[i];
    if kh>0 then for i:=1 to kh do pex:=pex+hx[i]*hx[i];
    pen:=fx-R*pin+pex/sqrt(R);
  end;
end;

procedure grapen;
var i,k:integer;  din,dex,dfu:real;
begin
  with form1.sumt do
  begin
    differ;
    for i:=1 to n do
    begin
      din:=0.0; dex:=0.0; dfu:=dfdx[i];
      for k:=1 to kg do din:=din-dgdx[i,k]/(gx[k]*gx[k]);
      for k:=1 to kh do dex:=dex+2.0*dhdx[i,k]*hx[k];
      dpdx[i]:=dfu+r*din+dex/sqrt(R);
    end;
  end;
end;

procedure differ;
var i,k:integer;dj,xi:real;
begin
  with form1.sumt do
  begin
    ffx;  ggx;  hhx;
    for i:=1 to n do
    begin
      dj:=1e-6*abs(x[i]);
      if dj>abs(fx) then dj:=abs(fx);
      for k:=1 to kg do if dj>abs(gx[k]) then dj:=abs(gx[k]);
      for k:=1 to kh do if dj>abs(hx[k]) then dj:=abs(hx[k]);
      if dj<1e-5 then dj:=1e-5;
      xi:=x[i];x[i]:=xi+dj;ffx;ggx;hhx;
      dfdx[i]:=fx;
      for k:=1 to kg do dgdx[i,k]:=gx[k];
      for k:=1 to kh do dhdx[i,k]:=hx[k];
      x[i]:=xi-dj;ffx;ggx;hhx;
      dfdx[i]:=(dfdx[i]-fx)/(2.0*dj);
      for k:=1 to kg do dgdx[i,k]:=(dgdx[i,k]-gx[k])/(2.0*dj);
      for k:=1 to kh do dhdx[i,k]:=(dhdx[i,k]-hx[k])/(2.0*dj);
      x[i]:=xi;
    end;
  end;
end;

procedure linmin;
var i,k,ch,temp1:integer;
    T1,T2,T3,T4,TH,FF1,FF2,FF3,FF4,C1,C2:real;
    xx:arr1;
    label Here1;
begin
  with form1.sumt do
  begin
    ILI:=ILI+1;
    temp1:=0;
    T1:=0.0; TH:=T0; T2:=T0; FF1:=pen;
    for i:=1 to n do xx[i]:=x[i];
    repeat
      for i:=1 to n do x[i]:=xx[i]+T2*S[i];
      ggx;
      for k:=1 to kg do
        if gx[k]>0.0 then  begin  temp1:=1;T2:=0.5*T2;break; end
                     else temp1:=0;
    until temp1=0;
    functi;  FF2:=pen;
    if FF2>FF1 then
    begin
        TH:=-TH;
        T3:=T1; FF3:=FF1;    T1:=T2; FF1:=FF2;   T2:=T3; FF2:=FF3;
    end;
    T3:=T2+TH;
    repeat
      for i:=1 to n do x[i]:=xx[i]+T3*S[i];
      ggx;
      for k:=1 to kg do
        if gx[k]>0.0 then
         begin temp1:=1;T3:=T3-0.5*(T3-T2);
           if (abs(T3-T2)<=1e-7) then
            begin
              for i:=1 to n do x[i]:=xx[i]+T2*S[i];pen:=FF2; goto here1;
            end;
            break;
         end else temp1:=0;
    until temp1=0;
    functi;FF3:=pen;
    while ff2>ff3 do begin
      TH:=TH+TH;   T1:=T2; FF1:=FF2;  T2:=T3; FF2:=FF3;   T3:=T2+TH;
    repeat
      for i:=1 to n do x[i]:=xx[i]+T3*S[i];
      ggx;
      for k:=1 to kg do
        if gx[k]>0.0 then
        begin
          temp1:=1;T3:=T3-0.5*(T3-T2);
          if (abs(T3-T2)<=1e-7) then
          begin
            for i:=1 to n do x[i]:=xx[i]+T2*S[i];
            pen:=FF2;
            goto here1;
          end;
          break;
        end
        else temp1:=0;
      until temp1=0;
      functi;   FF3:=pen;
    end;
    repeat
      C1:=(FF3-FF1)/(T3-T1);
      if (abs(T2-T3)<=1e-7) then
      begin
         for i:=1 to n do x[i]:=xx[i]+T2*S[i];
         pen:=FF2;
         goto here1;
      end;
      C2:=((FF2-FF1)/(T2-T1)-C1)/(T2-T3);
      if (abs(C2)<=1e-7) then
      begin
        for i:=1 to n do x[i]:=xx[i]+T2*S[i];
        pen:=FF2;
        goto here1;
      end;
      T4:=0.5*(T1+T3-C1/C2);
      if ((T4-T1)*(T3-T4)<=0.0) then
      for i:=1 to n do
      begin
        x[i]:=xx[i]+T2*S[i];
        pen:=FF2;
        goto here1;
      end;
      for i:=1 to n do x[i]:=xx[i]+T4*S[i];
      functi;   FF4:=pen;
      begin
        ch:=0;
        if((T4-T2)*TH >0.0) and(FF2>FF4) then ch:=1;
        if((T4-T2)*TH >0.0) and(FF2<=FF4)then ch:=2;
        if((T4-T2)*TH<=0.0) and(FF2>FF4) then ch:=3;
        if((T4-T2)*TH<=0.0) and(FF2<=FF4)then ch:=4;
        case ch of
          1: begin T1:=T2;FF1:=FF2;T2:=T4;FF2:=FF4; end;
          2: begin T3:=T4;FF3:=FF4;                 end;
          3: begin T3:=T2;FF3:=FF2;T2:=T4;FF2:=FF4; end;
          4: begin T1:=T4;FF1:=FF4;                 end;
        end;
      end;
      until (abs(FF2-FF4)<(eps*abs(FF2)+eps))or
            (abs(T2-T1)<=1e-7) or (abs(T2-T3)<=1e-7);
      if(FF4<FF2) then
        for i:=1 to n do begin x[i]:=xx[i]+T4*S[i]; pen:=FF4; end
      else
        for i:=1 to n do begin x[i]:=xx[i]+T2*S[i]; pen:=FF2; end;
      here1:
    end;
end;

procedure powell;
var i,j,k,idf,n1,i1,temp1:integer;
    af,bf,F,F1,F2,F3,dfm,df,sum:real;
    x1,x2,x3,y:arr1;
    aaa,bbb,cc1,ddd:real;
begin
  with form1.sumt do
  begin
    KTE:=0;
    temp1:=0;
    for i:=1 to n do
    begin
      for k:=1 to n do  direct[k,i]:=0.0;
      direct[i,i]:=1.0;
    end;

    repeat
      KTE:=KTE+1;
      F :=pen;  F1:=F;  F2:=F;
      for i:=1 to n do begin x1[i]:=x[i]; x2[i]:=x[i]; y[i]:=x[i];end;
      idf:=1;
      dfm:=0.0;

      for i:=1 to n do
      begin
        for k:=1 to n do S[k]:=direct[k,i];
        for j:=1 to n do x[j]:=x2[j];
        linmin;

        for j:=1 to n do x2[j]:=x[j];

        ggx;
        for j:=1 to kg do
          if gx[j]>0.0 then begin temp1:=1;break; end
                       else temp1:=0;

        F2:=pen;
        df:=F-F2;
        F:=F2;
        if(df>dfm) then begin dfm:=df;idf:=i;end;
      end;

      for i:=1 to n do begin x3[i]:=2.0*x2[i]-x1[i]; x[i]:=x3[i];end;

      ggx;
      for k:=1 to kg do
        if gx[k]>0.0 then begin temp1:=1;break;end
                     else temp1:=0;
      if temp1=0 then
      begin
        functi;
        F3:=pen;
        af:=(F1-2.0*F2+F3)*(F1-F2-dfm)*(F1-F2-dfm);
        bf:=0.5*dfm*(F1-F3)*(F1-F3);
        if (F3<F1)and(af<bf) then
        begin
          n1:=n-1;
          if(idf<>n) then
          begin
            for i:=idf to n1 do
            begin
              i1:=i+1;
              for k:=1 to n do direct[k,i]:=direct[k,i1];
            end;
          end;
          sum:=0.0;
          for k:=1 to n do
          begin
            direct[k,n]:=x3[k]-x1[k];
            sum:=sum+direct[k,n]*direct[k,n];
          end;
            sum:=1.0/sqrt(sum);
            for k:=1 to n do direct[k,n]:=direct[k,n]*sum;
            for k:=1 to n do s[k]:=direct[k,n];
            for i:=1 to n do x[i]:=x2[i];
            pen:=F2;
            linmin;
            for i:=1 to n do x2[i]:=x[i];

         end else
            if(F3<F2) then
            begin
              for i:=1 to n do x[i]:=x3[i];
              pen:=F3;
              f:=f3;
            end
            else
            begin
              for i:=1 to n do x[i]:=x2[i];
              pen:=F2;
              f:=f2;
            end;
          end else
          begin
            for i:=1 to n do x[i]:=x2[i];
            pen:=F2;
            f:=f2;
          end;
          ffx; ggx; hhx;
          for j:=1 to n do
            if gx[j]>0.0 then begin temp1:=1;break;end else temp1:=0;
          aaa:=abs(F-F1);
          bbb:=abs(F)*eps+eps;
          cc1:=0.0;
          ddd:=0.0;
          for i:=1 to kg do
          begin
            cc1:=sqrt(abs(x[i]*x[i]-y[i]*y[i]));
            ddd:=sqrt(x[i]*x[i]);
          end;
      until (aaa<=bbb) or (cc1<=ddd);
  end;
end;

procedure dfpbfg;   
var i,ii,k,ip:integer;F1, psi,a,sum:real;
  label Here;
begin
  with form1.sumt do
  begin
    KTE:=0;
    here:
    for i:=1 to n do
    begin
      for k:=1 to n do H[i,k]:=0.0;
      H[i,i]:=1.0;
    end;
    grapen; F0:=pen; ip:=1;
    repeat
      KTE:=KTE+1;
      if ip<>1 then
      begin
        for i:=1 to n do
        begin dx[i]:=x[i]-dx[i];dg[i]:=dpdx[i]-dg[i];end;
        if kcheck=1 then
        begin
          dxtdg:=abc1(n,dx,dg);
          for ii:=1 to n do hdg[ii]:=abc2(ii,n,H,dg);
          dgthdg:=abc1(n,dg,hdg);
          for i:=1 to n do for k:=1 to n do
          begin
            H[i,k]:=H[i,k]+dx[i]*dx[k]/dxtdg-hdg[i]*hdg[k]/dgthdg;
            if i<>k then H[k,i]:=H[i,k];
          end;
        end;
        if kcheck=2 then
        begin
          for ii:=1 to n do hdg[ii]:=abc2(ii,n,H,dg);
          dgthdg:=abc1(n,dg,hdg);
          dxtdg:=abc1(n,dx,dg);
          psi:=1.0+dgthdg/dxtdg;
          for i:=1 to n do
            for k:=1 to n do
            begin
              H[i,k]:=h[i,k]+((dx[i]*psi-hdg[i])*dx[k]-hdg[k]*dx[i])/dxtdg;
              if i<>k then h[k,i]:=h[i,k];
            end;
        end;
      end;
      ip:=0;
      F1:=pen;
      for i:=1 to n do begin dx[i]:=x[i]; dg[i]:=dpdx[i];end;
      for ii:=1 to n do s[ii]:=abc2(ii,n,H,dpdx);
      sum:=0.0;
      for i:=1 to n do sum:=sum+s[i]*s[i];
      sum:=1.0/sqrt(sum);
      a:=abc1(n,dpdx,s);
      if a>0.0 then a:=-1.0 else a:=1.0;
      for i:=1 to n do s[i]:=a*s[i]*sum;
      linmin;
      grapen;
      if pen>F0 then goto here;
    until (abs(pen-F1)<=eps*abs(pen)+eps);
  end;
end;

function abc1(n:integer;a,b:arr1):real;
var i:integer;
    atb:real;
begin
   atb:=0.0;
   for i:=1 to n do atb:=atb+a[i]*b[i];
   abc1:=atb;
end;

function abc2(ii,n:integer;H:arr2;A:arr1):real;
var j:integer;ha:real;
begin
   ha:=0.0;
   for j:=1 to n do ha:=ha+H[ii,j]*A[j];
   abc2:=ha;
end;


procedure sjxs_1;
var
   ii : integer;
   jg:array[1..400] of string;
begin
  with form1.sumt do
  begin
    jg[1]:=floattostr(n);
    jg[2]:=floattostr(kg);
    jg[3]:=floattostr(kh);
    jg[4]:=floattostr(R);
    jg[5]:=floattostr(Cr);
    jg[6]:=floattostr(T0);
    jg[7]:=floattostr(EPS);
  with form2.jgxs.lines do
  begin
    clear;
    add('                                                                              ');
    add('                安 徽 华 润（合 肥）有 限 公 司 智 能 配 棉 系 统  ');
    add('               ===================================================             ');
     add('                                                                            ');
    add('                               ---- 合肥工业大学制造业信息化生产力促进中心 ');
    add('                                                                               ');
    add('一、原始数据 ');
    add('===============================================================================');
    add('                                                                               ');
    Add('    参加配棉的原棉队数 ： '+jg[1]+'队');
    Add('  -----------------------------------------------------------------------------');
    Add('    各配棉百分比初始数据 : ');
    for ii := 1 to n do Add(#9+#9+#9+'配棉['+inttostr(ii)+']百分比='+floattostr(x[ii]));
    Add('  -----------------------------------------------------------------------------');
    Add('    各配棉百分比下限 :');
    for ii := 1 to n do Add(#9+#9+#9+'配棉['+inttostr(ii)+']百分比下限='+floattostr(BL[ii])+'%');
    Add('  -----------------------------------------------------------------------------');
    Add('    各配棉百分比上限 :');
    for ii := 1 to n do Add(#9+#9+#9+'配棉['+inttostr(ii)+']百分比上限='+floattostr(BU[ii]*100)+'%');
    Add('  -----------------------------------------------------------------------------');
    Add('    初始配棉总价= '+floattostr(FX)+ '元');
    end;
   end;
end;

procedure sjxs_2;
var
   ii : integer;
   jg:array[1..400] of string;
begin
  with form1.sumt do
  begin
    jg[1]:=inttostr(IRC);
    jg[2]:=inttostr(ITE);
    jg[3]:=inttostr(ILI);
    jg[4]:=inttostr(NPE);
    jg[5]:=inttostr(NFX);
  with form2.jgxs.lines do
  begin
    add('三、智能配棉优化计算结果');
    add('===============================================================================');
    add('                                                                               ');
    Add('    智能配棉 各原棉最优百分比 :');
    for ii := 1 to n do Add(#9+#9+#9+#9+'配棉['+inttostr(ii)+']最优百分比= '+formatfloat('0.0000',X[ii]*100)+'%');
    for ii := 1 to n do Form4.rzStringGrid1.Cells[ii,1]:=formatfloat('0.0000',X[ii]*100)+'%';
    Add('  -----------------------------------------------------------------------------');
    add('                                                              ');
    Add('    智能配棉 最优配棉总价格 ： '+floattostr(FX)+ '万元');
    add('                                                              ');
    add('  -----------------------------------------------------------------------------');
    Add('                                                              --- 配棉结束 --- ');
  end;
end;
end;

procedure TForm2.RzBitBtn3Click(Sender: TObject);
begin
  Self.Close;
end;

end.




