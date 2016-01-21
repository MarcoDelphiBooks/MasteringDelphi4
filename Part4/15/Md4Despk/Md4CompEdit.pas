unit Md4CompEdit;

interface

uses
  DsgnIntf;

type
  TMd4TabListEditor = class (TComponentEditor)
    function GetVerbCount: Integer; override;
    function GetVerb(Index: Integer): string; override;
    procedure ExecuteVerb(Index: Integer); override;
    procedure Edit; override;
  end;

procedure Register;

implementation

uses
  SysUtils, Dialogs, Md4TabList, StdCtrls;

function TMd4TabListEditor.GetVerbCount: Integer;
begin
  Result := 3;
end;

function TMd4TabListEditor.GetVerb (Index: Integer): string;
begin
  case Index of
    0: Result := 'Md4TabbedList (©Cantù)';
    1: Result := '&About this component...';
    2: Result := '&Reset Tabs';
  end;
end;

procedure TMd4TabListEditor.ExecuteVerb (Index: Integer);
var
  I: Integer;
begin
  case Index of
    0..1: MessageDlg (
      'This is a simple component editor'#13 +
      'built by Marco Cantù'#13 +
      'for the book "Mastering Delphi 4"',
      mtInformation, [mbOK], 0);
    2: begin
      with Component as TMd4TabbedList do
        for I := Low (TMd4TabsArray) to High (TMd4TabsArray) do
          TabStops [I] := I * 100;
      // data has changed
      Designer.Modified;
    end;
  end;
end;

procedure TMd4TabListEditor.Edit;
begin
  // produce a beep and show the about box
  Beep;
  ExecuteVerb (0);
end;

procedure Register;
begin
  RegisterComponentEditor (
    TMd4TabbedList, TMd4TabListEditor);
end;

end.
 