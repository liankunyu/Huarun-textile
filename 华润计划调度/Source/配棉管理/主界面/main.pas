unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzStatus, ExtCtrls, RzPanel, RzGroupBar, Menus, ImgList, jpeg,ActiveX,
  DB, ADODB, RzSplit, StdCtrls;   //ActiveX�Ǻ�ӵ�

type
  TFrmMain = class(TForm)
    img1: TImage;
    il1: TImageList;
    mm1: TMainMenu;
    N1: TMenuItem;
    N7: TMenuItem;
    N15: TMenuItem;
    N9: TMenuItem;
    N73: TMenuItem;
    N4: TMenuItem;
    N32: TMenuItem;
    N35: TMenuItem;
    N5: TMenuItem;
    N55: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N71: TMenuItem;
    N40: TMenuItem;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    RzGroup2: TRzGroup;
    RzStatusBar1: TRzStatusBar;
    rzstspn1: TRzStatusPane;
    RzStatusPane3: TRzStatusPane;
    rzstspn4: TRzStatusPane;
    rzstspn6: TRzStatusPane;
    RzClockStatus1: TRzClockStatus;
    RzSplitter1: TRzSplitter;
    N2: TMenuItem;
    N3: TMenuItem;
    RzGroup3: TRzGroup;
    RzGroup4: TRzGroup;
    RzGroup5: TRzGroup;
    N12: TMenuItem;
    N10: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N11: TMenuItem;
    RzStatusPane1: TRzStatusPane;
    RzStatusPane2: TRzStatusPane;
    procedure N40Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);    
    procedure N50Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure RzGroup5Items4Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N67Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadDll(dllname:PChar;fun:PChar);  //=====dll����=====
  end;

var
  FrmMain: TFrmMain;

implementation
uses Login;

{$R *.dfm}

//=================================���������DLL�ļ�===========================

procedure TFrmMain.LoadDll(dllname:PChar;fun:PChar);
  var
    alib:THandle;//���
    proc:procedure(Ahandle:THandle);stdcall;//����
  begin
    alib:=LoadLibrary(dllname); //��ȡDLL�ļ�
    if alib<32 then
      begin

      end;
    @proc:=GetProcAddress(alib,fun); //��ȡdll�ļ�����������ĵ�ַ
    try
      proc(Handle); //��ʾ
    finally
      FreeLibrary(alib);//�ͷ�
    end;
  end;

//==================��ӵģ���DLL�е���COM�������Ƚ��г�ʼ����CoInitialize�Ĳ���һ��Ϊnil�����ǵ� CoUninitialize������������ActiveX��Ԫ��==========

procedure TFrmMain.FormCreate(Sender: TObject);
  begin
   if not Assigned(FrmLogin) then
      begin
        FrmLogin:=TFrmLogin.Create(Self);
        FrmLogin.ShowModal;
      end
    else
      FrmLogin.ShowModal;
  end;

//===========================ϵͳ�˳�==========================
 
procedure TFrmMain.N40Click(Sender: TObject);
  begin
    Self.close;
  end;

//procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
{begin
  if
   Application.MessageBox('��ȷ��Ҫ�˳���ϵͳ��','��ʾ',MB_ICONINFORMATION+MB_YESNO)=ID_YES
  then
  begin
   CanClose:=True;
  end
  else
   CanClose:=False;
end;  }



//================���ø�����DLL�ļ�================

//=============���������޹���ģ�飩=====

procedure TFrmMain.N19Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','apmfa');            //=====�������޹���   ���޷���
  end;

procedure TFrmMain.N15Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','aymjp');            //=====�������޹���  ԭ�޽���
  end;

procedure TFrmMain.N7Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','asumt_3');        //=====�������޹���  ��������
  end;

procedure TFrmMain.N9Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','apmkc');           //=====�������޹���  ���޿�����
  end;

procedure TFrmMain.N8Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','apmxxgl');         //=====�������޹���  ������Ϣ����
  end;


//=========�������Ϣ����ģ�飩===========

procedure TFrmMain.N32Click(Sender: TObject);
  begin
    LoadDll('KCGL.dll','aymrk');             //=====������  ԭ�����
  end;

procedure TFrmMain.N10Click(Sender: TObject);
  begin
    LoadDll('kcgl.dll','aymck');           //=====������   ԭ�޳���
  end;

procedure TFrmMain.N35Click(Sender: TObject);
  begin
    LoadDll('KCGL.dll','aymkc');            //=====������  ԭ�޿����Ϣ
  end;


//============��������Ϣ����===========

procedure TFrmMain.N13Click(Sender: TObject);
begin
  LoadDll('Sys.dll','acnbh');         //=====������Ϣ����  ԭ�޳��ڱ��
end;

procedure TFrmMain.N12Click(Sender: TObject);
begin
  LoadDll('Sys.dll','apmfa');         //=====������Ϣ����  ���޷���
end;

procedure TFrmMain.N14Click(Sender: TObject);
  begin
    LoadDll('Sys.dll','Department');        //=====������Ϣ����  ������Ϣ����
  end;

procedure TFrmMain.N16Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','User');             //=====������Ϣ����  Ա����Ϣ����
  end;


procedure TFrmMain.N11Click(Sender: TObject);
  begin
    LoadDll('Sys.dll','Doctor');           //=====������Ϣ����   ������Ա����
  end;

//=========����ѯ��Ϣ����ģ�飩================

procedure TFrmMain.N3Click(Sender: TObject);
  begin
    LoadDll('CXGL.dll','apmcx');            //=====��ѯ����  ���޷�����ѯ
  end;

procedure TFrmMain.N17Click(Sender: TObject);
  begin
      LoadDll('CXGL.dll','aymckcx');        //=====��ѯ����  ԭ�޳����ѯ
  end;

procedure TFrmMain.N18Click(Sender: TObject);
  begin
     LoadDll('CXGL.dll','aymrkcx');        //=====��ѯ����  ԭ������ѯ
  end;

//==========(ϵͳά������ģ��)=============


procedure TFrmMain.N55Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','Popedom');        //===ϵͳά������    ϵͳȨ�޹���
  end;

procedure TFrmMain.N66Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','Password');        //===ϵͳά������    ϵͳ�������
  end;

procedure TFrmMain.N67Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','BackUp');           //===ϵͳά������   ϵͳ����
  end;


procedure TFrmMain.N71Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','Restore');          //===ϵͳά������   ϵͳ��ԭ
  end;






procedure TFrmMain.N49Click(Sender: TObject);      //=====ԭ��ά��  ԭ�޲���ά��
begin
  LoadDll('YMWH.dll','AYMCDWH');
end;

procedure TFrmMain.N50Click(Sender: TObject);    //======ԭ��ά��  ԭ�޼�������ά��
begin
  LoadDll('YMWH.dll','AYmjscdwh');
end;

procedure TFrmMain.N51Click(Sender: TObject);
begin
  LoadDll('YMWH.dll','AYmlbwh');                 //====ԭ��ά��  ԭ�����ά��
end;

procedure TFrmMain.N52Click(Sender: TObject);
begin
  LoadDll('YMWH.dll','AYmmrwh');                 //===ԭ��ά��  ԭ��ÿ������ά��
end;

procedure TFrmMain.N56Click(Sender: TObject);
begin
  LoadDll('YMWH.dll','AYMYJHWH');                //=====ԭ��ά��  ԭ���¼ƻ�ά��
end;

procedure TFrmMain.RzGroup5Items4Click(Sender: TObject);
begin
LoadDll('Soft.dll','Log');               //===ϵͳά������     ϵͳ��־����
end;

end.

