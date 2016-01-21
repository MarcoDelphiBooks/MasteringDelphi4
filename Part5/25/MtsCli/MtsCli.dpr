program MtsCli;

uses
  Forms,
  MtsCliF in 'MtsCliF.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
