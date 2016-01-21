program PanelBar;

uses
  Forms,
  PanelBF in 'PanelBF.pas' {ToolbarForm};

{$R *.RES}

begin
  Application.CreateForm(TToolbarForm, ToolbarForm);
  Application.Run;
end.

