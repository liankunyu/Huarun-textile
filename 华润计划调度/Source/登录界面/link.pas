unit link;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls, RzPanel,IniFiles;

type
  TFrmLink = class(TForm)
    RzPanel1: TRzPanel;
    lblServerAddress: TRzLabel;
    lblServerName: TRzLabel;
    edtServerAddress: TRzEdit;
    edtServerName: TRzEdit;
    btnConfirm: TRzBitBtn;
    btnCancel: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLink: TFrmLink;
  iFile :TiniFile;
  path:string;

implementation
uses login, UDM;

{$R *.dfm}

procedure TFrmLink.FormShow(Sender: TObject);
begin
  iFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'data.ini');
  try
    edtServerAddress.Text:=iFile.ReadString('System','Data Source','');
    edtServerName.Text:=iFile.ReadString('System','Initial Catalog','');
  finally
    iFile.Free;
  end;
end;

procedure TFrmLink.btnConfirmClick(Sender: TObject);
begin
  if (Trim(edtServerAddress.Text)<>'') and (Trim(edtServerName.Text)<>'') then
  begin
    path:=('Provider=SQLOLEDB.1;Password=sa;User ID=sa;Persist Security Info=True;Initial Catalog='+quotedstr(trim(edtServerName.Text))+';Data Source='+quotedstr(trim(edtServerAddress.Text))+'');
    DM.con1.Connected:=False;
    DM.con1.ConnectionString:=path;
    try
      DM.con1.Connected:=True;
      Application.MessageBox('数据库连接成功！','提示',MB_OK+MB_ICONINFORMATION);
      DM.con1.Tag:=1;
      iFile:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'data.ini');
      iFile.WriteString('System','Data Source',trim(edtServerAddress.Text));
      iFile.WriteString('System','Initial Catalog',trim(edtServerName.Text));
      Self.Close;
    except
      Application.MessageBox('数据库连接失败,请核查！','提示',MB_OK+MB_ICONERROR);
      DM.con1.Tag:=0;
      edtServerAddress.SetFocus;
      Exit;
    end;
  end
  else
  begin
      Application.MessageBox('请输入数据库连接信息！','提示',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrmLink.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

end.
