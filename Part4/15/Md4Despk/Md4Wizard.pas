unit Md4Wizard;

interface

uses
  ExptIntf, Windows;

type
  TMd4Expert = class (TIExpert)
  public
    function GetStyle: TExpertStyle; override;
    function GetName: string; override;
    function GetAuthor: string; override;
    function GetComment: string; override;
    function GetPage: string; override;
    function GetGlyph: HICON; override;
    function GetState: TExpertState; override;
    function GetIDString: string; override;
    function GetMenuText: string; override;
    procedure Execute; override;
  end;

procedure Register;

implementation

uses
  Dialogs, ToolIntf, SysUtils;

function TMd4Expert.GetStyle: TExpertStyle;
begin
  // show up in the Help menu
  Result := esStandard;
end;

function TMd4Expert.GetName: String;
begin
  // official name
  Result := 'MDWizard'
end;

function TMd4Expert.GetAuthor: string;
begin
  Result := 'Marco Cantù';
end;

function TMd4Expert.GetComment: String;
begin
  Result := 'Mastering Delphi Wizard';
end;

function TMd4Expert.GetPage: string;
begin
  Result := '';
end;

function TMd4Expert.GetGlyph: HICON;
begin
  Result := 0;
end;

function TMd4Expert.GetState: TExpertState;
begin
  // always enabled, never checked
  Result := [esEnabled];
end;

function TMd4Expert.GetIDString: String;
begin
  // must be unique
  Result := 'MarcoCantu.MDWizard'
end;

function TMd4Expert.GetMenuText: String;
begin
  // the text of the menu item
  Result := '&Mastering Delphi Wizard...'
end;

procedure TMd4Expert.Execute;
begin
  // the actual code, showing some internal information
  MessageDlg (
    'Mastering Delphi Wizard'#13#13 +

    'Current project: '#13 +
    ToolServices.GetProjectName + #13 +
    '(units: ' + IntToStr (ToolServices.GetUnitCount) +
    ', forms: ' + IntToStr (ToolServices.GetFormCount) + ')'#13#13 +

    'Current file: '#13 +
    ToolServices.GetCurrentFile + #13#13 +

    'Delphi information in the registry is under:'#13 +
    ToolServices.GetBaseRegistryKey,
    mtInformation, [mbOK], 0);
end;

procedure Register;
begin
  RegisterLibraryExpert (TMd4Expert.Create);
end;

end.
