program HelpProj;

uses
  Forms,
  HelpForm in 'HelpForm.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.HelpFile := 'C:\md4code\Part5\22\HelpProj\Helpproj.hlp';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
