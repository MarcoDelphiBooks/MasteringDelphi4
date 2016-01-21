program AppServ1;

uses
  Forms,
  ServForm in 'ServForm.pas' {Form1},
  AppServ1_TLB in 'AppServ1_TLB.pas',
  FirstRM in 'FirstRM.pas' {MdFirstRM: TDataModule} {MdFirstRM: CoClass};

{$R *.RES}

{$R *.TLB}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
