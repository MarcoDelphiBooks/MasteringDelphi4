program threaddbaccess;

uses
  Forms,
  formDbthread in 'formDbthread.pas' {Form1},
  threadedmodule in 'threadedmodule.pas' {DataModule2: TDataModule},
  dbthreadclass in 'dbthreadclass.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
