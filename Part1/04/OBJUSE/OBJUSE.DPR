program Objuse;

uses
  Forms,
  ObjUseF in 'ObjUseF.pas' {Form1},
  Dates in 'DATES.PAS';

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
