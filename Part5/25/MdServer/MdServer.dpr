program MdServer;

uses
  Forms,
  MdsForm in 'MdsForm.pas' {Form1},
  MdServer_TLB in 'MdServer_TLB.pas',
  MdsDm in 'MdsDm.pas' {MdDataModule: TDataModule} {MdDataModule: CoClass};

{$R *.RES}

{$R *.TLB}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
