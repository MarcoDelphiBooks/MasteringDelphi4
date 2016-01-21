unit ChildF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TChildForm = class(TForm)
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure MouseActiv (var Msg: TMessage);
      message wm_MouseActivate;
    procedure NcActiv (var Msg: TMessage);
      message wm_NcActivate;
  end;

var
  ChildForm: TChildForm;

implementation

uses MainF;

{$R *.DFM}

{ TChildForm }

procedure TChildForm.MouseActiv (var Msg: TMessage);
begin
  inherited;
  // reset active form
  if Assigned (MainForm.ActiveForm) then
    SendMessage (MainForm.ActiveForm.Handle, wm_NcActivate, 0, 0);
  SendMessage (Handle, wm_NcActivate, 1, 0);
end;

procedure TChildForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  // if destroying the active form, set it to nil
  if MainForm.ActiveForm = self then
    MainForm.ActiveForm := nil;
end;

procedure TChildForm.NcActiv(var Msg: TMessage);
begin
  inherited;
  if Msg.wParam <> 0 then
  begin
    MainForm.ActiveForm := self;
    Memo1.SetFocus;
    BringToFront;
  end;
end;

end.
