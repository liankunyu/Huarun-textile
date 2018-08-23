unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzStatus, ExtCtrls, RzPanel, RzGroupBar, Menus, ImgList, jpeg,ActiveX,
  DB, ADODB, RzSplit, StdCtrls;   //ActiveX是后加的

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
    procedure LoadDll(dllname:PChar;fun:PChar);  //=====dll调用=====
  end;

var
  FrmMain: TFrmMain;

implementation
uses Login;

{$R *.dfm}

//=================================主窗体调用DLL文件===========================

procedure TFrmMain.LoadDll(dllname:PChar;fun:PChar);
  var
    alib:THandle;//句柄
    proc:procedure(Ahandle:THandle);stdcall;//过程
  begin
    alib:=LoadLibrary(dllname); //获取DLL文件
    if alib<32 then
      begin

      end;
    @proc:=GetProcAddress(alib,fun); //获取dll文件中输出函数的地址
    try
      proc(Handle); //显示
    finally
      FreeLibrary(alib);//释放
    end;
  end;

//==================后加的，在DLL中调用COM，必须先进行初始化，CoInitialize的参数一般为nil，最后记得 CoUninitialize，两个方法在ActiveX单元中==========

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

//===========================系统退出==========================
 
procedure TFrmMain.N40Click(Sender: TObject);
  begin
    Self.close;
  end;

//procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
{begin
  if
   Application.MessageBox('你确认要退出本系统吗？','提示',MB_ICONINFORMATION+MB_YESNO)=ID_YES
  then
  begin
   CanClose:=True;
  end
  else
   CanClose:=False;
end;  }



//================调用各窗体DLL文件================

//=============（智能配棉管理模块）=====

procedure TFrmMain.N19Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','apmfa');            //=====智能配棉管理   配棉方案
  end;

procedure TFrmMain.N15Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','aymjp');            //=====智能配棉管理  原棉接批
  end;

procedure TFrmMain.N7Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','asumt_3');        //=====智能配棉管理  智能配棉
  end;

procedure TFrmMain.N9Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','apmkc');           //=====智能配棉管理  配棉库存管理
  end;

procedure TFrmMain.N8Click(Sender: TObject);
  begin
    LoadDll('ZNPMGL.dll','apmxxgl');         //=====智能配棉管理  配棉信息管理
  end;


//=========（库存信息管理模块）===========

procedure TFrmMain.N32Click(Sender: TObject);
  begin
    LoadDll('KCGL.dll','aymrk');             //=====库存管理  原棉入库
  end;

procedure TFrmMain.N10Click(Sender: TObject);
  begin
    LoadDll('kcgl.dll','aymck');           //=====库存管理   原棉出库
  end;

procedure TFrmMain.N35Click(Sender: TObject);
  begin
    LoadDll('KCGL.dll','aymkc');            //=====库存管理  原棉库存信息
  end;


//============（基础信息管理）===========

procedure TFrmMain.N13Click(Sender: TObject);
begin
  LoadDll('Sys.dll','acnbh');         //=====基础信息管理  原棉厂内编号
end;

procedure TFrmMain.N12Click(Sender: TObject);
begin
  LoadDll('Sys.dll','apmfa');         //=====基础信息管理  配棉方案
end;

procedure TFrmMain.N14Click(Sender: TObject);
  begin
    LoadDll('Sys.dll','Department');        //=====基础信息管理  部门信息管理
  end;

procedure TFrmMain.N16Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','User');             //=====基础信息管理  员工信息管理
  end;


procedure TFrmMain.N11Click(Sender: TObject);
  begin
    LoadDll('Sys.dll','Doctor');           //=====基础信息管理   部门人员管理
  end;

//=========（查询信息管理模块）================

procedure TFrmMain.N3Click(Sender: TObject);
  begin
    LoadDll('CXGL.dll','apmcx');            //=====查询管理  配棉方案查询
  end;

procedure TFrmMain.N17Click(Sender: TObject);
  begin
      LoadDll('CXGL.dll','aymckcx');        //=====查询管理  原棉出库查询
  end;

procedure TFrmMain.N18Click(Sender: TObject);
  begin
     LoadDll('CXGL.dll','aymrkcx');        //=====查询管理  原棉入库查询
  end;

//==========(系统维护管理模块)=============


procedure TFrmMain.N55Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','Popedom');        //===系统维护管理    系统权限管理
  end;

procedure TFrmMain.N66Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','Password');        //===系统维护管理    系统密码管理
  end;

procedure TFrmMain.N67Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','BackUp');           //===系统维护管理   系统备份
  end;


procedure TFrmMain.N71Click(Sender: TObject);
  begin
    LoadDll('Soft.dll','Restore');          //===系统维护管理   系统还原
  end;






procedure TFrmMain.N49Click(Sender: TObject);      //=====原棉维护  原棉产地维护
begin
  LoadDll('YMWH.dll','AYMCDWH');
end;

procedure TFrmMain.N50Click(Sender: TObject);    //======原棉维护  原棉技术长度维护
begin
  LoadDll('YMWH.dll','AYmjscdwh');
end;

procedure TFrmMain.N51Click(Sender: TObject);
begin
  LoadDll('YMWH.dll','AYmlbwh');                 //====原棉维护  原棉类别维护
end;

procedure TFrmMain.N52Click(Sender: TObject);
begin
  LoadDll('YMWH.dll','AYmmrwh');                 //===原棉维护  原棉每日用量维护
end;

procedure TFrmMain.N56Click(Sender: TObject);
begin
  LoadDll('YMWH.dll','AYMYJHWH');                //=====原棉维护  原棉月计划维护
end;

procedure TFrmMain.RzGroup5Items4Click(Sender: TObject);
begin
LoadDll('Soft.dll','Log');               //===系统维护管理     系统日志管理
end;

end.

