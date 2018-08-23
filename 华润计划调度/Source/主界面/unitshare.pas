unit unitshare;

interface
uses
   Windows, Messages,Menus,RzGroupBar,ADODB;

//function AppHasRun(AppHandle: THandle): Boolean;//判断应用程序是否存在实例正在运行
function DynamicResolution(X,Y:word):Boolean; //调整屏幕分辨率的函数声明
function MenuAllShow(Mainmenu1:TMainMenu;RzGroupBar1:TRzGroupBar):Boolean;//所有菜单展示的函数声明
function ProrityDistribute(ADOQuery1:TADOQuery;qx:string;Mainmenu1:TMainMenu;RzGroupBar1:TRzGroupBar):Boolean;//权限功能分配函数声明

implementation


const
   MapFileName = '{CAF49BBB-AF40-4FDE-8757-51D5AEB5BBBF}';

{type
   //共享内存
   PShareMem = ^TShareMem;
   TShareMem = record
     AppHandle: THandle;   //保存程序的句柄
   end;

var
   hMapFile: THandle;
   PSMem: PShareMem;

function AppHasRun(AppHandle: THandle): Boolean;
var
   TopWindow: HWnd;
begin
   Result := False;
   if PSMem <> nil then
   begin
     if PSMem^.AppHandle <> 0 then
     begin
       SendMessage(PSMem^.AppHandle, WM_SYSCOMMAND, SC_RESTORE, 0);
       TopWindow := GetLastActivePopup(PSMem^.AppHandle);
       if (TopWindow <> 0) and (TopWindow <> PSMem^.AppHandle) and
         IsWindowVisible(TopWindow) and IsWindowEnabled(TopWindow) then
         SetForegroundWindow(TopWindow);
       Result := True;
     end
     else
       PSMem^.AppHandle := AppHandle;
   end;
end; }

function DynamicResolution(X,Y:word):Boolean;  //调整屏幕分辨率的函数定义
Var
    lpDevMode:TDeviceMode;
begin
    result:=EnumDisplaySettings(nil,0,lpDevMode);
    if result then
    begin
      lpDevMode.dmFields:=DM_PELSWIDTH or DM_PELSHEIGHT;
      lpDevMode.dmPelsWidth:=X;
      lpDevMode.dmPelsHeight:=Y;
      result:=ChangeDisplaySettings(lpDevMode,0)=DISP_CHANGE_SUCCESSFUL;
    end;
end;
function MenuAllShow(Mainmenu1:TMainMenu;RzGroupBar1:TRzGroupBar):Boolean;//所有菜单展示的函数定义
var
  i,j: Integer;
begin
  with MainMenu1 do
  begin
    for i:= 0 to Items.Count-3 do
    begin
        Items[i].Visible:=True;
        RzGroupBar1.Groups[i].Visible:=True;
        for j:= 0 to Items[i].Count-1 do
        begin
          Items[i].Items[j].Visible:=True;
          RzGroupBar1.Groups[i].Items[j].Visible:=True;
        end;
    end;
  end;
  Result:=True;
end;

function ProrityDistribute(ADOQuery1:TADOQuery;qx:string;Mainmenu1:TMainMenu;RzGroupBar1:TRzGroupBar):Boolean;//权限功能分配函数定义
 var
   i,j:Integer;
begin
  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 权限功能表 where 权限名称=:qxmc');
    Parameters.ParamByName('qxmc').Value:=qx;
    Open;
    if not Eof then
    begin
        with Mainmenu1 do
        begin
          for i:=0 to Items.Count-3 do
          begin
            with ADOQuery1 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from 权限功能表 where 权限名称=:qxmc and 主菜单名称=:zcdmc');
              Parameters.ParamByName('qxmc').Value:=qx;
              Parameters.ParamByName('zcdmc').Value:=Items[i].Hint;//需保证每个ITEM都要有HINT值
              Open;
            end;
            if  not ADOQuery1.Eof then
            begin
              if ADOQuery1.RecordCount=Items[i].Count then   //当副菜单全部不能访问的时候，主菜单变成不可见
              begin
                Items[i].Visible:=False;
                RzGroupBar1.Groups[i].Visible:=False;  //需保持rzgroupbar和mainmenu一致
              end
              else
              begin
               ADOQuery1.First;
               while not ADOQuery1.Eof  do           //当副菜单有一部分不可以访问的情况下，让相应的副菜单变成不可见
               begin
                 for j:=0 to Items[i].Count-1 do
                 begin
                  if Items[i].Items[j].Hint=ADOQuery1.FieldByName('副菜单名称').Value then
                  begin
                     Items[i].Items[j].Visible:=False;
                     RzGroupBar1.Groups[i].Items[j].Visible:=False;
                     Break;
                  end;
                 end;
                 ADOQuery1.Next; 
               end;
              end;
            end;
          end;
        end;
    end;
  end;
  Result:=True;
end;

{procedure CreateMapFile;
begin
   hMapFile := OpenFileMapping(FILE_MAP_ALL_ACCESS, False, PChar(MapFileName));
   if hMapFile = 0 then
   begin
     hMapFile := CreateFileMapping($FFFFFFFF, nil, PAGE_READWRITE, 0,
       SizeOf(TShareMem), MapFileName);
     PSMem := MapViewOfFile(hMapFile, FILE_MAP_WRITE or FILE_MAP_READ, 0, 0, 0);
     if PSMem = nil then
     begin
       CloseHandle(hMapFile);
       Exit;
     end;
     PSMem^.AppHandle := 0;
   end
   else begin
     PSMem := MapViewOfFile(hMapFile, FILE_MAP_WRITE or FILE_MAP_READ, 0, 0, 0);
     if PSMem = nil then
     begin
       CloseHandle(hMapFile);
     end
   end;
end;

procedure FreeMapFile;
begin
   UnMapViewOfFile(PSMem);
   CloseHandle(hMapFile);
end;

initialization
   CreateMapFile;

finalization
   FreeMapFile;}
end.
 