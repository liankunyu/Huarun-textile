unit UnitCommon;

interface
Uses
  Windows,Classes,Graphics, Controls,Forms,Dialogs,
  TypInfo;

Const   //记录设计时的屏幕分辨率
   OriWidth=1366;
   OriHeight=768;

  Function PropertyExists(
     const AObject   : TObject;
     const APropName : String
     ):Boolean;

  function GetObjectProperty(
     const AObject   : TObject;
     const APropName : string
     ):TObject;

Type

  TfdForm=Class(TForm)   //实现窗体屏幕分辨率的自动调整
  Private
    fScrResolutionRateW: Double;
    fScrResolutionRateH: Double;
    fIsFitDeviceDone: Boolean;
    procedure FitDeviceResolution;
  Protected
    Property IsFitDeviceDone:Boolean Read fIsFitDeviceDone;
    Property ScrResolutionRateH:Double Read fScrResolutionRateH;
    Property ScrResolutionRateW:Double Read fScrResolutionRateW;
  Public
    Constructor Create(AOwner: TComponent); Override;
  End;

implementation

 function PropertyExists(const AObject: TObject;const APropName:String):Boolean;
 //判断一个属性是否存在
 var
   PropInfo:PPropInfo;
 begin
   PropInfo:=GetPropInfo(AObject.ClassInfo,APropName);
   Result:=Assigned(PropInfo);
 end;

  function GetObjectProperty(
     const AObject   : TObject;
     const APropName : string
     ):TObject;
 var
   PropInfo:PPropInfo;
 begin
   Result  :=  nil;
   PropInfo:=GetPropInfo(AObject.ClassInfo,APropName);
   if Assigned(PropInfo) and
       (PropInfo^.PropType^.Kind = tkClass) then
     Result  :=  GetObjectProp(AObject,PropInfo);
 end;


constructor TfdForm.Create(AOwner: TComponent);
begin
  Inherited Create(AOwner);
  fScrResolutionRateH:=1;
  fScrResolutionRateW:=1;
  Try
    if Not fIsFitDeviceDone then
    Begin
      FitDeviceResolution;
      fIsFitDeviceDone:=True;
    End;
  Except
    fIsFitDeviceDone:=False;
  End;
end;

procedure TfdForm.FitDeviceResolution;
Var
  i:Integer;
  LocAnchors:Array of TAnchors;
  LocAlign:Array of TAlign;
  LocList:TList;
  LocFontSize:Integer;
  LocFont:TFont;
  LocCmp:TComponent;
  LocFontRate:Double;
begin
  LocList:=TList.Create;
  Try
    Try
      if (Screen.width<>OriWidth)OR(Screen.Height<>OriHeight) then
      begin
        Self.Scaled:=False;
        fScrResolutionRateH:=screen.height/OriHeight;
        fScrResolutionRateW:=screen.Width/OriWidth;
        if fScrResolutionRateH<fScrResolutionRateW then
          LocFontRate:=fScrResolutionRateH
        Else
          LocFontRate:=fScrResolutionRateW;
        For i:=Self.ComponentCount-1 Downto 0 Do
        Begin
          LocCmp:=Self.Components[i];
          If LocCmp Is TControl Then
            LocList.Add(LocCmp);
          If PropertyExists(LocCmp,'FONT') Then
          Begin
            LocFont:=TFont(GetObjectProperty(LocCmp,'FONT'));
            LocFontSize := Round(LocFontRate*LocFont.Size);
            LocFont.Size:=LocFontSize;
          End;
        End;
        SetLength(LocAnchors,LocList.Count);
        SetLength(LocAlign,LocList.Count);
        For i:=0 to LocList.Count-1 Do
          With TControl(LocList.Items[i]) Do
          Begin
            LocAnchors[i]:=Anchors;
            LocAlign[i]:=Align;
            Align:=alNone;
            Anchors:=[akLeft,akTop];
          End;
        Self.Top:=Round(Self.Top*fScrResolutionRateH);
        Self.Left:=Round(Self.Left*fScrResolutionRateW);
        Self.Height:=Round(Self.Height*fScrResolutionRateH);
        Self.Width:=Round(Self.Width*fScrResolutionRateW);
        Self.Font.size := Round(LocFontRate*Self.Font.size);
        For i:=LocList.Count-1 Downto 0 Do
        Begin
           With TControl(LocList.Items[i]) Do
           Begin
             Top:=Round(Top*fScrResolutionRateH);
             Left:=Round(Left*fScrResolutionRateW);
             Height:=Round(height*fScrResolutionRateH);
             Width:=Round(width*fScrResolutionRateW);
             Font.size := Round(LocFontRate*Font.size);
           End;
        End;
        For i:=0 to LocList.Count-1 Do
          TControl(LocList.Items[i]).Align:=LocAlign[i];
        For i:=0 to LocList.Count-1 Do
          TControl(LocList.Items[i]).Anchors:=LocAnchors[i];
      End;
    Except
      ShowMessage(LocCMP.Name);
    End;
  Finally
    LocList.Free;
  End;
end;


end.
 