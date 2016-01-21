unit Md4Fontbox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TMd4FontCombo = class(TComboBox)
  public
    constructor Create (AOwner: TComponent); override;
    procedure CreateWnd; override;
  published
    property Style default csDropDownList;
    property Items stored False;
  end;

procedure Register;

implementation

constructor TMd4FontCombo.Create (AOwner: TComponent);
begin
  inherited Create (AOwner);
  Style := csDropDownList;
end;

procedure TMd4FontCombo.CreateWnd;
begin
  inherited CreateWnd;
  Items.Assign (Screen.Fonts);
end;

procedure Register;
begin
  RegisterComponents('Md4', [TMd4FontCombo]);
end;

end.
