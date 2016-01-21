program Usecol;

uses
  Forms,
  UseColF in 'UseColF.pas' {Form1},
  IsNoLib in 'IsNoLib.pas';

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
