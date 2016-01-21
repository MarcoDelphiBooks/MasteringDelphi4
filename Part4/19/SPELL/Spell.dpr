program Spell;

uses
  Forms,
  SpellF in 'SpellF.pas' {NotesForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TNotesForm, NotesForm);
  Application.Run;
end.

