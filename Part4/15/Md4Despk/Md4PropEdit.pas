unit Md4PropEdit;

interface

uses
  DsgnIntf;

type
  TMd4IntListProperty = class (TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
  end;

procedure Register;

implementation

uses
  SysUtils, Md4IlpeForm, Md4TabList, Forms, Controls;

function TMd4IntListProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog, paReadOnly];
end;

procedure TMd4IntListProperty.Edit;
var
  PEForm: TIntListPEForm;
  Tabs: TMd4TabbedList;
  I: Integer;
begin
  PEForm := TIntListPEForm.Create (Application);
  try
    Tabs := GetComponent (0) as TMd4TabbedList;
    for I := Low (TMd4TabsArray) to High (TMd4TabsArray) do
      PEForm.Memo1.Lines.Add (IntToStr (Tabs.TabStops [I]));
    if PEForm.ShowModal = mrOK then
    begin
      for I := Low (TMd4TabsArray) to High (TMd4TabsArray) do
        Tabs.TabStops [I] := StrToIntDef (PEForm.Memo1.Lines [I], 0);
      Designer.Modified;
    end;
  finally
    PEForm.Free;
  end;
end;

procedure Register;
begin
  RegisterPropertyEditor (TypeInfo (string),
    TMd4TabbedList, 'TabsString', TMd4IntListProperty);
end;

end.

