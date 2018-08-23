unit popem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, ImgList, cxGraphics, StdCtrls,
  Mask, RzEdit, RzLabel, ComCtrls, RzTreeVw, Menus, ActnList,ADODB;

type
  TFrmPopem = class(TForm)
    rzpnlPopem: TRzPanel;
    rzpnlPopemFunc: TRzPanel;
    tvPopem: TRzTreeView;
    rzpnlInput: TRzPanel;
    lblPopemName: TRzLabel;
    rzdtPopemName: TRzEdit;
    btnSave: TRzToolButton;
    btnCancel: TRzToolButton;
    tvPopemFunc: TRzTreeView;
    PopupMenu1: TPopupMenu;
    mniSearch: TMenuItem;
    rzpnlBtns: TRzPanel;
    btnAdd: TRzToolButton;
    btnModify: TRzToolButton;
    btnDelete: TRzToolButton;
    lblRemind: TRzLabel;
    mniCancel: TMenuItem;
    il1: TImageList;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N22: TMenuItem;
    N29: TMenuItem;
    N37: TMenuItem;
    N3: TMenuItem;
    N26: TMenuItem;
    N25: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N13: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N48: TMenuItem;
    N14: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N47: TMenuItem;
    N32: TMenuItem;
    N20: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N60: TMenuItem;
    N7: TMenuItem;
    N16: TMenuItem;
    N40: TMenuItem;
    N34: TMenuItem;
    N41: TMenuItem;
    N17: TMenuItem;
    N51: TMenuItem;
    N12: TMenuItem;
    N30: TMenuItem;
    N9: TMenuItem;
    N15: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N46: TMenuItem;
    N1: TMenuItem;
    N23: TMenuItem;
    N33: TMenuItem;
    N24: TMenuItem;
    N11: TMenuItem;
    N10: TMenuItem;
    N50: TMenuItem;
    N49: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure mniSearchClick(Sender: TObject);
    procedure tvPopemFuncMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure GetMenuTree(RzTreeView: TRzTreeView);
  public
    { Public declarations }
  end;

var
  FrmPopem: TFrmPopem;
  node0,node1:TTreeNode; //定义权限列表的根节点和各权限节点
  ysbh:string;//获取权限修改前的编号
  act:string; //判断是增加权限还是修改权限
  procedure ppopem(AHandle:THandle);stdcall;

implementation

uses UDM;
{$R *.dfm}

procedure ppopem(AHandle:THandle);stdcall;
begin
  Application.Handle:=AHandle;
  FrmPopem:=TFrmPopem.Create(Application);
  try
    FrmPopem.ShowModal;
  finally
    TFrmPopem(FrmPopem).Free;
  end;
end;

procedure TFrmPopem.GetMenuTree(RzTreeView: TRzTreeView); //展开树
var
  i,j:Integer;
  Num:Integer;//记录各主菜单下不可访问的子菜单的数量
  Txt:string;
  Node0,Node1:TTreeNode;
begin
  with MainMenu1   do
  begin
    for i:=0 to Items.Count-3 do
    begin
        Num:=0;//重新归零
        Txt:=Items[i].Hint;//不能用caption
        if Items[i].Hint<>'' then
        begin
          Node0:=RzTreeView.Items.Add(nil,Txt);
          with DM.qryPopemFunc do
          begin
           Close;
           SQL.Clear;
           SQL.Add('select * from 权限功能表 where 权限名称=:qxmc and 主菜单名称=:zcdmc');
           Parameters.ParamByName('qxmc').Value:=tvPopem.Selected.Text;
           Parameters.ParamByName('zcdmc').Value:=Node0.Text;
           Open;
          end;
          if DM.qryPopemFunc.Eof then
          begin
            for j:=0 to Items[i].Count-1 do
            begin
              Txt:=Items[i].Items[j].Hint;
              if Items[i].Items[j].Hint<>'' then
              Node1:=RzTreeView.Items.AddChild(Node0,Txt);
            end;
          end
          else
          begin
            for j:=0 to Items[i].Count-1 do
            begin
              Txt:=Items[i].Items[j].Hint;
              if Items[i].Items[j].Hint<>'' then
              Node1:=RzTreeView.Items.AddChild(Node0,Txt);
              with DM.qryPopemFunc do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select * from 权限功能表 where 权限名称=:qxmc and 主菜单名称=:zcdmc and 副菜单名称=:fcdmc');
                Parameters.ParamByName('qxmc').Value:=tvPopem.Selected.Text;
                Parameters.ParamByName('zcdmc').Value:=Node0.Text;
                Parameters.ParamByName('fcdmc').Value:=Node1.Text;
                Open;
              end;
             if DM.qryPopemFunc.RecordCount<>0 then
             begin
               Node1.ImageIndex:=1;
               Num:=Num+1;
             end;
            end;
            if Num=Items[i].Count then
            begin
              Node0.ImageIndex:=1;
            end;
          end;
        end;
    end;
    RzTreeView.FullExpand;
  end;
end;
procedure TFrmPopem.FormShow(Sender: TObject);
var
  i:Integer;  //窗体出现时权限出现树形结构
begin
  //tvPopemFun.Items.Clear;//将权限功能树形结构清除
  node0:=tvPopem.Items.Add(nil,'权限列表');
  node0.ImageIndex:=7;
  node0.SelectedIndex:=7;
  DM.qryPopem.Active:=True;
  if DM.qryPopem.RecordCount=0 then
    Exit;
  for i:=0 to DM.qryPopem.RecordCount-1 do
  begin
    node1:=tvPopem.Items.AddChild(node0,DM.qryPopem.Fields[1].AsString);
    node1.ImageIndex:=9;
    node1.SelectedIndex:=8;
    DM.qryPopem.Next;
  end;
  tvPopem.FullExpand;
end;

procedure TFrmPopem.btnSaveClick(Sender: TObject);
begin
 if Trim(rzdtPopemName.Text)='' then
 begin
   Application.MessageBox('请输入权限名称！','提示',MB_OK+MB_ICONINFORMATION);
 end
 else
 begin
  if act='insert' then
  begin
   try
    with DM.qryPopem do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from 权限描述表');
      Open;
      Edit;
      Insert;
      FieldByName('权限名称').AsString:=Trim(rzdtPopemName.Text);
      Refresh;
      Application.MessageBox('保存成功！','提示',MB_OK+MB_ICONINFORMATION);
      node1:=tvPopem.Items.AddChild(node0,Trim(rzdtPopemName.Text));
      node1.ImageIndex:=9;
      node1.SelectedIndex:=8;
    end;
   except
      Application.MessageBox('保存失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   btnAdd.Enabled:=True;
   btnModify.Enabled:=True;
   btnDelete.Enabled:=True;
   rzpnlInput.Enabled:=False;
   rzdtPopemName.Text:='';
  end;
  if act='modify' then
  begin
   try
    with DM.qryPopem  do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update 权限描述表 set 权限名称=:qxmc where 编号=:bh');
      Parameters.ParamByName('qxmc').Value:=Trim(rzdtPopemName.Text);
      Parameters.ParamByName('bh').Value:=ysbh;
      Prepared;
      ExecSQL;
      Application.MessageBox('更新成功！','提示',MB_OK+MB_ICONINFORMATION);
      tvPopem.Selected.Text:=Trim(rzdtPopemName.Text);
    end;
   except
      Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
   btnAdd.Enabled:=True;
   btnModify.Enabled:=True;
   btnDelete.Enabled:=True;
   rzpnlInput.Enabled:=False;
   rzdtPopemName.Text:='';
  end;
 end;
end;

procedure TFrmPopem.btnCancelClick(Sender: TObject);
begin
  rzdtPopemName.Text:='';
  btnAdd.Enabled:=True;
  btnModify.Enabled:=True;
  btnDelete.Enabled:=True;
  rzpnlInput.Enabled:=False;
end;

procedure TFrmPopem.btnDeleteClick(Sender: TObject);
begin
  if tvPopem.Selected=node0 then
  begin
    Application.MessageBox('请选择要删除的权限！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  if Application.MessageBox('确定删除该权限?','提示',MB_YESNO+MB_ICONINFORMATION)=ID_YES then
  begin
   try
    with DM.qryPopem do
    begin
      Close;
      SQL.Clear;
      SQL.Add('delete from 权限描述表 where 权限名称=:qxmc');
      Parameters.ParamByName('qxmc').Value:=tvPopem.Selected.Text;
      ExecSQL;
      Application.MessageBox('删除成功！','提示',MB_OK+MB_ICONINFORMATION);
      tvPopem.Selected.Delete;
    end;
   except
      Application.MessageBox('删除失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
   end;
  end;

end;

procedure TFrmPopem.btnAddClick(Sender: TObject);
begin
  btnAdd.Enabled:=False;
  btnModify.Enabled:=False;
  btnDelete.Enabled:=False;
  rzpnlInput.Enabled:=True;
  rzdtPopemName.SetFocus;
  act:='insert';
end;

procedure TFrmPopem.btnModifyClick(Sender: TObject);
begin
  if tvPopem.Selected=node0 then
  begin
    Application.MessageBox('请选择要修改的权限！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  with DM.qryPopemID do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from 权限描述表 where 权限名称=:qxmc');
    Parameters.ParamByName('qxmc').Value:=tvPopem.Selected.Text;
    Open;
  end;
  ysbh:=DM.qryPopemID.FieldByName('编号').Value;
  btnAdd.Enabled:=False;
  btnModify.Enabled:=False;
  btnDelete.Enabled:=False;
  rzpnlInput.Enabled:=True;
  rzdtPopemName.Text:=tvPopem.Selected.Text;
  rzdtPopemName.SetFocus;
  act:='modify';
end;

procedure TFrmPopem.mniSearchClick(Sender: TObject);
begin
  if tvPopem.Selected=nil then
  begin
    Exit;
  end;
  tvPopemFunc.Items.Clear;
  if tvPopem.Selected=node0 then
  begin
    Application.MessageBox('请选择要查看的权限！','提示',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;
  GetMenuTree(tvPopemFunc);
end;

procedure TFrmPopem.tvPopemFuncMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer); //按下鼠标发生的操作
var
  Node:TTreeNode;
  i:integer;
begin
  if button=mbLeft then
  begin
    Node:=tvPopemFunc.GetNodeAt(X,Y);
    if Node.Level=0 then
    begin
      if Node.ImageIndex=0 then  //假如节点为主菜单名称
      begin
        Node.SelectedIndex:=1;
        Node.ImageIndex:=1;
        for i:=0 to node.Count-1 do  //让相应的所有副菜单名称节点图标发生改变并在数据库中删除记录（数据库中存储的记录只是能访问的副菜单的记录）
        begin
          if node.Item[i].ImageIndex=0 then
          begin
            node.Item[i].ImageIndex:=1;
            try
             with DM.qryPopemFunc do
             begin
              Close;
              SQL.Clear;
              SQL.Add('select * from 权限功能表 order by 编号');
              Open;
              Edit;
              Insert;
              FieldByName('权限名称').AsString:=tvPopem.Selected.Text;
              FieldByName('主菜单名称').AsString:=Node.Text;
              FieldByName('副菜单名称').AsString:=node.Item[i].Text;
              Refresh;
             end;
            except
              Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
            end;
          end;
        end;
      end
      else
      begin
        Node.SelectedIndex:=0;
        Node.ImageIndex:=0;
        for i:=0 to node.Count-1 do        //让相应的所有副菜单名称节点图标发生改变并在数据库中增加记录（数据库中存储的记录只是能访问的副菜单的记录）
        begin
          node.Item[i].ImageIndex:=0;
            try
             with DM.qryPopemFunc do
             begin
              Close;
              SQL.Clear;
              SQL.Add('delete from 权限功能表 where 权限名称=:qxmc and 主菜单名称=:zcdmc and 副菜单名称=:fcdmc');
              Parameters.ParamByName('qxmc').Value:=tvPopem.Selected.Text;
              Parameters.ParamByName('zcdmc').Value:=Node.Text;
              Parameters.ParamByName('fcdmc').Value:=Node.Item[i].Text;
              ExecSQL;
             end;
            except
              Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
            end;
        end;
      end;
    end
    else            //假如节点为副菜单名称
    begin
      if Node.ImageIndex=0 then
      begin
        Node.SelectedIndex:=1;
        Node.ImageIndex:=1;
        try
          with DM.qryPopemFunc do          //在数据库中增加记录(同上)
           begin
            Close;
            SQL.Clear;
            SQL.Add('select * from 权限功能表 order by 编号');
            Open;
            Edit;
            Insert;
            FieldByName('权限名称').AsString:=tvPopem.Selected.Text;
            FieldByName('主菜单名称').AsString:=Node.Parent.Text;
            FieldByName('副菜单名称').AsString:=node.Text;
            Refresh;
           end;
           with DM.spUnVisibleNum do
           begin
            Close;
            procedureName:='proc_各主菜单下的子菜单不可见数量查询';
            Parameters.Refresh;
            with Parameters do
            begin
              ParamByName('@PopemName').Value:=tvPopem.Selected.Text;
              ParamByName('@MainMenuName').Value:=Node.Parent.Text;
              ParamByName('@Num').Value:=Node.Parent.Count;
              ParamByName('@state').Direction:=pdOutput;
            end;
            ExecProc;
           end;
           if DM.spUnVisibleNum.Parameters.ParamByName('@state').Value then
           begin
              node.Parent.ImageIndex:=1;
           end;
        except
            Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
        end;
      end
      else
      begin
        Node.SelectedIndex:=0;
        Node.ImageIndex:=0;
        if Node.Parent.ImageIndex=1 then
        begin
          Node.Parent.ImageIndex:=0;
        end;
        try
          with DM.qryPopemFunc do          //在数据库中删除相应的记录（同上）
           begin
            Close;
            SQL.Clear;
            SQL.Add('delete from 权限功能表 where 权限名称=:qxmc and 主菜单名称=:zcdmc and 副菜单名称=:fcdmc');
            Parameters.ParamByName('qxmc').Value:=tvPopem.Selected.Text;
            Parameters.ParamByName('zcdmc').Value:=Node.Parent.Text;
            Parameters.ParamByName('fcdmc').Value:=Node.Text;
            ExecSQL;
           end;
        except
            Application.MessageBox('更新失败，请核查原因！','提示',MB_OK+MB_ICONERROR);
        end;
      end;
    end;
  end;
end;

end.

