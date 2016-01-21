unit XArrowImpl;

interface

uses
  Windows, ActiveX, Classes, Controls, Graphics, Menus, Forms, StdCtrls,
  ComServ, StdVCL, AXCtrls, XArrow_TLB, Md4WArrow;

type
  TMd4WArrowX = class(TActiveXControl, IMd4WArrowX)
  private
    { Private declarations }
    FDelphiControl: TMd4WArrow;
    FEvents: IMd4WArrowXEvents;
    procedure ArrowDblClickEvent(Sender: TObject);
    procedure ClickEvent(Sender: TObject);
  protected
    { Protected declarations }
    procedure DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage); override;
    procedure EventSinkChanged(const EventSink: IUnknown); override;
    procedure InitializeControl; override;
    function ClassNameIs(const Name: WideString): WordBool; safecall;
    function DrawTextBiDiModeFlags(Flags: Integer): Integer; safecall;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; safecall;
    function Get_ArrowHeight: Integer; safecall;
    function Get_BiDiMode: TxBiDiMode; safecall;
    function Get_Cursor: Smallint; safecall;
    function Get_Direction: TxMd4WArrowDir; safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_Filled: WordBool; safecall;
    function Get_Visible: WordBool; safecall;
    function GetControlsAlignment: TxAlignment; safecall;
    function IsRightToLeft: WordBool; safecall;
    function UseRightToLeftAlignment: WordBool; safecall;
    function UseRightToLeftReading: WordBool; safecall;
    function UseRightToLeftScrollBar: WordBool; safecall;
    procedure FlipChildren(AllLevels: WordBool); safecall;
    procedure InitiateAction; safecall;
    procedure Set_ArrowHeight(Value: Integer); safecall;
    procedure Set_BiDiMode(Value: TxBiDiMode); safecall;
    procedure Set_Cursor(Value: Smallint); safecall;
    procedure Set_Direction(Value: TxMd4WArrowDir); safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    procedure Set_Filled(Value: WordBool); safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_FillColor: Integer; safecall;
    procedure Set_FillColor(Value: Integer); safecall;
    function Get_PenColor: Integer; safecall;
    procedure Set_PenColor(Value: Integer); safecall;
  end;

implementation

uses
  ComObj, XAPPage;

{ TMd4WArrowX }

procedure TMd4WArrowX.DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage);
begin
  DefinePropertyPage(Class_PropertyPage1);
end;

procedure TMd4WArrowX.EventSinkChanged(const EventSink: IUnknown);
begin
  FEvents := EventSink as IMd4WArrowXEvents;
end;

procedure TMd4WArrowX.InitializeControl;
begin
  FDelphiControl := Control as TMd4WArrow;
  FDelphiControl.OnArrowDblClick := ArrowDblClickEvent;
  FDelphiControl.OnClick := ClickEvent;
end;

function TMd4WArrowX.ClassNameIs(const Name: WideString): WordBool;
begin
  Result := FDelphiControl.ClassNameIs(Name);
end;

function TMd4WArrowX.DrawTextBiDiModeFlags(Flags: Integer): Integer;
begin
  Result := FDelphiControl.DrawTextBiDiModeFlags(Flags);
end;

function TMd4WArrowX.DrawTextBiDiModeFlagsReadingOnly: Integer;
begin
  Result := FDelphiControl.DrawTextBiDiModeFlagsReadingOnly;
end;

function TMd4WArrowX.Get_ArrowHeight: Integer;
begin
  Result := FDelphiControl.ArrowHeight;
end;

function TMd4WArrowX.Get_BiDiMode: TxBiDiMode;
begin
  Result := Ord(FDelphiControl.BiDiMode);
end;

function TMd4WArrowX.Get_Cursor: Smallint;
begin
  Result := Smallint(FDelphiControl.Cursor);
end;

function TMd4WArrowX.Get_Direction: TxMd4WArrowDir;
begin
  Result := Ord(FDelphiControl.Direction);
end;

function TMd4WArrowX.Get_DoubleBuffered: WordBool;
begin
  Result := FDelphiControl.DoubleBuffered;
end;

function TMd4WArrowX.Get_Enabled: WordBool;
begin
  Result := FDelphiControl.Enabled;
end;

function TMd4WArrowX.Get_Filled: WordBool;
begin
  Result := FDelphiControl.Filled;
end;

function TMd4WArrowX.Get_Visible: WordBool;
begin
  Result := FDelphiControl.Visible;
end;

function TMd4WArrowX.GetControlsAlignment: TxAlignment;
begin
 Result := TxAlignment(FDelphiControl.GetControlsAlignment);
end;

function TMd4WArrowX.IsRightToLeft: WordBool;
begin
  Result := FDelphiControl.IsRightToLeft;
end;

function TMd4WArrowX.UseRightToLeftAlignment: WordBool;
begin
  Result := FDelphiControl.UseRightToLeftAlignment;
end;

function TMd4WArrowX.UseRightToLeftReading: WordBool;
begin
  Result := FDelphiControl.UseRightToLeftReading;
end;

function TMd4WArrowX.UseRightToLeftScrollBar: WordBool;
begin
  Result := FDelphiControl.UseRightToLeftScrollBar;
end;

procedure TMd4WArrowX.FlipChildren(AllLevels: WordBool);
begin
  FDelphiControl.FlipChildren(AllLevels);
end;

procedure TMd4WArrowX.InitiateAction;
begin
  FDelphiControl.InitiateAction;
end;

procedure TMd4WArrowX.Set_ArrowHeight(Value: Integer);
begin
  FDelphiControl.ArrowHeight := Value;
end;

procedure TMd4WArrowX.Set_BiDiMode(Value: TxBiDiMode);
begin
  FDelphiControl.BiDiMode := TBiDiMode(Value);
end;

procedure TMd4WArrowX.Set_Cursor(Value: Smallint);
begin
  FDelphiControl.Cursor := TCursor(Value);
end;

procedure TMd4WArrowX.Set_Direction(Value: TxMd4WArrowDir);
begin
  FDelphiControl.Direction := TMd4WArrowDir(Value);
end;

procedure TMd4WArrowX.Set_DoubleBuffered(Value: WordBool);
begin
  FDelphiControl.DoubleBuffered := Value;
end;

procedure TMd4WArrowX.Set_Enabled(Value: WordBool);
begin
  FDelphiControl.Enabled := Value;
end;

procedure TMd4WArrowX.Set_Filled(Value: WordBool);
begin
  FDelphiControl.Filled := Value;
end;

procedure TMd4WArrowX.Set_Visible(Value: WordBool);
begin
  FDelphiControl.Visible := Value;
end;

procedure TMd4WArrowX.ArrowDblClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnArrowDblClick;
end;

procedure TMd4WArrowX.ClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnClick;
end;

function TMd4WArrowX.Get_FillColor: Integer;
begin
  Result := ColorToRGB (FDelphiControl.Brush.Color);
end;

procedure TMd4WArrowX.Set_FillColor(Value: Integer);
begin
  FDelphiControl.Brush.Color := Value;
end;

function TMd4WArrowX.Get_PenColor: Integer;
begin
  Result := ColorToRGB (FDelphiControl.Pen.Color);
end;

procedure TMd4WArrowX.Set_PenColor(Value: Integer);
begin
  FDelphiControl.Pen.Color := Value;
end;

initialization
  TActiveXControlFactory.Create(
    ComServer,
    TMd4WArrowX,
    TMd4WArrow,
    Class_Md4WArrowX,
    4,
    '{5551EB2E-0AC6-11D2-B9F1-004845400FAA}',
    0,
    tmApartment);
end.
