unit MainF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Childf, Menus;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    procedure New1Click(Sender: TObject);
  private
    { Private declarations }
    Counter: Integer;
  public
    ActiveForm: TChildForm;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.New1Click(Sender: TObject);
begin
  // disable the current active form, if any
  if Assigned (ActiveForm) then
    SendMessage (ActiveForm.Handle, wm_NcActivate, 0, 0);
  // increase the child window counter
  Inc (Counter);
  // create a new form and define it as child of the current form
  ActiveForm := TChildForm.Create (self);
  ActiveForm.Parent := self;
  // add the number to the caption, and move it slightly
  ActiveForm.Caption := ActiveForm.Caption + ' ' +
    IntToStr (Counter);
  ActiveForm.Left := (Counter * 30) mod 250;
  ActiveForm.Top := (Counter * 30) mod 150;
  // show the form, activate the memo and the child form
  ActiveForm.Show;
  SendMessage (ActiveForm.Handle, wm_NcActivate, 1, 0);
end;

end.
