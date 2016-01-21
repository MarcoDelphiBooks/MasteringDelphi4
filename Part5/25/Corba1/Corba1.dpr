program Corba1;

uses
  Forms,
  CorbaF in 'CorbaF.pas' {Form1},
  Corba1_TLB in 'Corba1_TLB.pas',
  CorbaDM in 'CorbaDM.pas' {FirstCorba: TCorbaDataModule} {FirstCorba: CoClass};

{$R *.TLB} {CORBA}

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
