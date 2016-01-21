program WizardUI;

uses
  Forms,
  WizForm in 'WizForm.pas' {WizardForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TWizardForm, WizardForm);
  Application.Run;
end.
