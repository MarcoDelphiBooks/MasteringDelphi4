unit XArrow_TLB;

// ************************************************************************ //
// WARNING                                                                  //
// -------                                                                  //
// The types declared in this file were generated from data read from a     //
// Type Library. If this type library is explicitly or indirectly (via      //
// another type library referring to this type library) re-imported, or the //
// 'Refresh' command of the Type Library Editor activated while editing the //
// Type Library, the contents of this file will be regenerated and all      //
// manual modifications will be lost.                                       //
// ************************************************************************ //

// PASTLWTR : $Revision:   1.11.1.63  $
// File generated on 6/23/98 7:03:47 PM from Type Library described below.

// ************************************************************************ //
// Type Lib: C:\md4code\Part4\19\XArrow\XArrow.tlb
// IID\LCID: {5551EB00-0AC6-11D2-B9F1-004845400FAA}\0
// Helpfile: 
// HelpString: XArrow Library
// Version:    1.0
// ************************************************************************ //

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:      //
//   Type Libraries     : LIBID_xxxx                                    //
//   CoClasses          : CLASS_xxxx                                    //
//   DISPInterfaces     : DIID_xxxx                                     //
//   Non-DISP interfaces: IID_xxxx                                      //
// *********************************************************************//
const
  LIBID_XArrow: TGUID = '{5551EB00-0AC6-11D2-B9F1-004845400FAA}';
  IID_IMd4WArrowX: TGUID = '{5551EB23-0AC6-11D2-B9F1-004845400FAA}';
  DIID_IMd4WArrowXEvents: TGUID = '{5551EB25-0AC6-11D2-B9F1-004845400FAA}';
  CLASS_Md4WArrowX: TGUID = '{5551EB27-0AC6-11D2-B9F1-004845400FAA}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                  //
// *********************************************************************//
// TxMd4WArrowDir constants
type
  TxMd4WArrowDir = TOleEnum;
const
  adUp = $00000000;
  adLeft = $00000001;
  adDown = $00000002;
  adRight = $00000003;

// TxMouseButton constants
type
  TxMouseButton = TOleEnum;
const
  mbLeft = $00000000;
  mbRight = $00000001;
  mbMiddle = $00000002;

// TxAlignment constants
type
  TxAlignment = TOleEnum;
const
  taLeftJustify = $00000000;
  taRightJustify = $00000001;
  taCenter = $00000002;

// TxBiDiMode constants
type
  TxBiDiMode = TOleEnum;
const
  bdLeftToRight = $00000000;
  bdRightToLeft = $00000001;
  bdRightToLeftNoAlign = $00000002;
  bdRightToLeftReadingOnly = $00000003;

type

// *********************************************************************//
// Forward declaration of interfaces defined in Type Library            //
// *********************************************************************//
  IMd4WArrowX = interface;
  IMd4WArrowXDisp = dispinterface;
  IMd4WArrowXEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                     //
// (NOTE: Here we map each CoClass to its Default Interface)            //
// *********************************************************************//
  Md4WArrowX = IMd4WArrowX;


// *********************************************************************//
// Interface: IMd4WArrowX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5551EB23-0AC6-11D2-B9F1-004845400FAA}
// *********************************************************************//
  IMd4WArrowX = interface(IDispatch)
    ['{5551EB23-0AC6-11D2-B9F1-004845400FAA}']
    function Get_Direction: TxMd4WArrowDir; safecall;
    procedure Set_Direction(Value: TxMd4WArrowDir); safecall;
    function Get_ArrowHeight: Integer; safecall;
    procedure Set_ArrowHeight(Value: Integer); safecall;
    function Get_Filled: WordBool; safecall;
    procedure Set_Filled(Value: WordBool); safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    procedure FlipChildren(AllLevels: WordBool); safecall;
    function DrawTextBiDiModeFlags(Flags: Integer): Integer; safecall;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function GetControlsAlignment: TxAlignment; safecall;
    procedure InitiateAction; safecall;
    function IsRightToLeft: WordBool; safecall;
    function UseRightToLeftAlignment: WordBool; safecall;
    function UseRightToLeftReading: WordBool; safecall;
    function UseRightToLeftScrollBar: WordBool; safecall;
    function Get_BiDiMode: TxBiDiMode; safecall;
    procedure Set_BiDiMode(Value: TxBiDiMode); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_Cursor: Smallint; safecall;
    procedure Set_Cursor(Value: Smallint); safecall;
    function ClassNameIs(const Name: WideString): WordBool; safecall;
    function Get_FillColor: Integer; safecall;
    procedure Set_FillColor(Value: Integer); safecall;
    function Get_PenColor: Integer; safecall;
    procedure Set_PenColor(Value: Integer); safecall;
    property Direction: TxMd4WArrowDir read Get_Direction write Set_Direction;
    property ArrowHeight: Integer read Get_ArrowHeight write Set_ArrowHeight;
    property Filled: WordBool read Get_Filled write Set_Filled;
    property DoubleBuffered: WordBool read Get_DoubleBuffered write Set_DoubleBuffered;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property BiDiMode: TxBiDiMode read Get_BiDiMode write Set_BiDiMode;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Cursor: Smallint read Get_Cursor write Set_Cursor;
    property FillColor: Integer read Get_FillColor write Set_FillColor;
    property PenColor: Integer read Get_PenColor write Set_PenColor;
  end;

// *********************************************************************//
// DispIntf:  IMd4WArrowXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5551EB23-0AC6-11D2-B9F1-004845400FAA}
// *********************************************************************//
  IMd4WArrowXDisp = dispinterface
    ['{5551EB23-0AC6-11D2-B9F1-004845400FAA}']
    property Direction: TxMd4WArrowDir dispid 1;
    property ArrowHeight: Integer dispid 2;
    property Filled: WordBool dispid 3;
    property DoubleBuffered: WordBool dispid 6;
    procedure FlipChildren(AllLevels: WordBool); dispid 7;
    function DrawTextBiDiModeFlags(Flags: Integer): Integer; dispid 10;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; dispid 11;
    property Enabled: WordBool dispid -514;
    function GetControlsAlignment: TxAlignment; dispid 12;
    procedure InitiateAction; dispid 14;
    function IsRightToLeft: WordBool; dispid 15;
    function UseRightToLeftAlignment: WordBool; dispid 20;
    function UseRightToLeftReading: WordBool; dispid 21;
    function UseRightToLeftScrollBar: WordBool; dispid 22;
    property BiDiMode: TxBiDiMode dispid 23;
    property Visible: WordBool dispid 24;
    property Cursor: Smallint dispid 25;
    function ClassNameIs(const Name: WideString): WordBool; dispid 29;
    property FillColor: Integer dispid 4;
    property PenColor: Integer dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IMd4WArrowXEvents
// Flags:     (4096) Dispatchable
// GUID:      {5551EB25-0AC6-11D2-B9F1-004845400FAA}
// *********************************************************************//
  IMd4WArrowXEvents = dispinterface
    ['{5551EB25-0AC6-11D2-B9F1-004845400FAA}']
    procedure OnClick; dispid 1;
    procedure OnArrowDblClick; dispid 8;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TMd4WArrowX
// Help String      : Md4WArrowX Control
// Default Interface: IMd4WArrowX
// Def. Intf. DISP? : No
// Event   Interface: IMd4WArrowXEvents
// TypeFlags        : (38) CanCreate Licensed Control
// *********************************************************************//
  TMd4WArrowX = class(TOleControl)
  private
    FOnClick: TNotifyEvent;
    FOnArrowDblClick: TNotifyEvent;
    FIntf: IMd4WArrowX;
    function  GetControlInterface: IMd4WArrowX;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure FlipChildren(AllLevels: WordBool);
    function DrawTextBiDiModeFlags(Flags: Integer; out Value: Integer): Integer;
    function DrawTextBiDiModeFlagsReadingOnly(out Value: Integer): Integer;
    function GetControlsAlignment(out Value: TxAlignment): TxAlignment;
    procedure InitiateAction;
    function IsRightToLeft(out Value: WordBool): WordBool;
    function UseRightToLeftAlignment(out Value: WordBool): WordBool;
    function UseRightToLeftReading(out Value: WordBool): WordBool;
    function UseRightToLeftScrollBar(out Value: WordBool): WordBool;
    function ClassNameIs(const Name: WideString; out Value: WordBool): WordBool;
    property  ControlInterface: IMd4WArrowX read GetControlInterface;
    property DoubleBuffered: WordBool index 6 read GetWordBoolProp write SetWordBoolProp;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp;
    property BiDiMode: TOleEnum index 23 read GetTOleEnumProp write SetTOleEnumProp;
    property Visible: WordBool index 24 read GetWordBoolProp write SetWordBoolProp;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property Direction: TOleEnum index 1 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property ArrowHeight: Integer index 2 read GetIntegerProp write SetIntegerProp stored False;
    property Filled: WordBool index 3 read GetWordBoolProp write SetWordBoolProp stored False;
    property Cursor: Smallint index 25 read GetSmallintProp write SetSmallintProp stored False;
    property FillColor: Integer index 4 read GetIntegerProp write SetIntegerProp stored False;
    property PenColor: Integer index 5 read GetIntegerProp write SetIntegerProp stored False;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    property OnArrowDblClick: TNotifyEvent read FOnArrowDblClick write FOnArrowDblClick;
  end;

procedure Register;

implementation

uses ComObj;

procedure TMd4WArrowX.InitControlData;
const
  CEventDispIDs: array [0..1] of DWORD = (
    $00000001, $00000008);
  CLicenseKey: array[0..38] of Word = ( $007B, $0035, $0035, $0035, $0031, $0045, $0042, $0032, $0045, $002D, $0030
    , $0041, $0043, $0036, $002D, $0031, $0031, $0044, $0032, $002D, $0042
    , $0039, $0046, $0031, $002D, $0030, $0030, $0034, $0038, $0034, $0035
    , $0034, $0030, $0030, $0046, $0041, $0041, $007D, $0000);
  CControlData: TControlData = (
    ClassID: '{5551EB27-0AC6-11D2-B9F1-004845400FAA}';
    EventIID: '{5551EB25-0AC6-11D2-B9F1-004845400FAA}';
    EventCount: 2;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000008;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TMd4WArrowX.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IMd4WArrowX;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TMd4WArrowX.GetControlInterface: IMd4WArrowX;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TMd4WArrowX.FlipChildren(AllLevels: WordBool);
begin
  ControlInterface.FlipChildren(AllLevels);
end;

function TMd4WArrowX.DrawTextBiDiModeFlags(Flags: Integer; out Value: Integer): Integer;
begin
  Result := ControlInterface.DrawTextBiDiModeFlags(Flags);
end;

function TMd4WArrowX.DrawTextBiDiModeFlagsReadingOnly(out Value: Integer): Integer;
begin
  Result := ControlInterface.DrawTextBiDiModeFlagsReadingOnly;
end;

function TMd4WArrowX.GetControlsAlignment(out Value: TxAlignment): TxAlignment;
begin
  Result := ControlInterface.GetControlsAlignment;
end;

procedure TMd4WArrowX.InitiateAction;
begin
  ControlInterface.InitiateAction;
end;

function TMd4WArrowX.IsRightToLeft(out Value: WordBool): WordBool;
begin
  Result := ControlInterface.IsRightToLeft;
end;

function TMd4WArrowX.UseRightToLeftAlignment(out Value: WordBool): WordBool;
begin
  Result := ControlInterface.UseRightToLeftAlignment;
end;

function TMd4WArrowX.UseRightToLeftReading(out Value: WordBool): WordBool;
begin
  Result := ControlInterface.UseRightToLeftReading;
end;

function TMd4WArrowX.UseRightToLeftScrollBar(out Value: WordBool): WordBool;
begin
  Result := ControlInterface.UseRightToLeftScrollBar;
end;

function TMd4WArrowX.ClassNameIs(const Name: WideString; out Value: WordBool): WordBool;
begin
  Result := ControlInterface.ClassNameIs(Name);
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TMd4WArrowX]);
end;

end.
