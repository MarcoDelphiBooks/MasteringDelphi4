unit Md4Clock;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics,
  Controls, StdCtrls, ExtCtrls;

type
  TMd4Clock = class (TCustomLabel)
  private
    FTimer: TTimer;
    function GetActive: Boolean;
    procedure SetActive (Value: Boolean);
  protected
    procedure UpdateClock (Sender: TObject);
  public
    constructor Create (AOwner: TComponent); override;
  published
    property Align;
    property Alignment;
    property Color;
    property Font;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Transparent;
    property Visible;
    property Active: Boolean
      read GetActive write SetActive;
  end;

procedure Register;

implementation

constructor TMd4Clock.Create (AOwner: TComponent);
begin
  inherited Create (AOwner);
  // create the internal timer object
  FTimer := TTimer.Create (self);
  FTimer.OnTimer := UpdateClock;
  FTimer.Enabled := True;
end;

procedure TMd4Clock.UpdateClock (Sender: TObject);
begin
  // set the current time as caption
  Caption := TimeToStr (Time);
end;

function TMd4Clock.GetActive: Boolean;
begin
  // get the status of the timer
  Result := FTimer.Enabled;
end;

procedure TMd4Clock.SetActive (Value: Boolean);
begin
  // change the status of the timer
  FTimer.Enabled := Value;
end;

procedure Register;
begin
  RegisterComponents('Md4', [TMd4Clock]);
end;

end.
