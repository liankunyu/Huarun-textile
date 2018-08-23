unit Crypt;
interface
uses
  Classes, SysUtils;

  function Encrypt(Pass_W:AnsiString):AnsiString;
  function Decrypt(Pass_E:AnsiString):AnsiString;

const PW_Code : array[1..6]of byte = (1, 5, 2, 0, 8, 8);  //��Կ����
var   iCrypt  : integer;


implementation
function Encrypt(Pass_W:String):String;   //��������ԭ���ַ���
var  {*****�������㺯�� *****}
    sStr : string;
    iNum : integer;
begin
    //�˼����㷨ֻ���ַ�����ǰ��λ����������
    sStr := Pass_W;  
    if Length(Pass_W) > 6 then  //��Ҫ���ܵ��ַ��������Ƿ����6�ж�
      iCrypt :=  6
    else
      iCrypt :=  Length(Pass_W);
    for iNum:=1 to iCrypt do
      sStr[iNum] := Char(Byte(sStr[iNum]) xor PW_Code[iNum]);  //������������Կ���л�����
    Encrypt := sStr;  //���ؼ��ܺ���ַ���
end;

function Decrypt(Pass_E:String):String;   //����ӹ��ܵ��ַ���
var  {*****�������㺯�� *****}
    sStr : string;
    iNum : integer;
begin
    //�˽����㷨ֻ���ַ�����ǰ��λ����������
    sStr := Pass_E;  
    if Length(Pass_E) > 6 then  //��Ҫ���ܵ��ַ��������Ƿ����6�ж�
      iCrypt :=  6 
    else
      iCrypt :=  Length(Pass_E);
    for iNum := 1 to iCrypt do
      sStr[iNum] := Char(Byte(sStr[iNum]) xor PW_Code[iNum]);  //������������Կ���л�����
    Decrypt := sStr;  //���ؼ��ܺ���ַ���
end;
end.
