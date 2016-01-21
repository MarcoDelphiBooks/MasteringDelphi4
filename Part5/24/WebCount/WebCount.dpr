program WebCount;

{$APPTYPE CONSOLE}

uses
  HTTPApp,
  CGIApp,
  CountWm in 'CountWm.pas' {WebModule1: TWebModule};

begin
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
