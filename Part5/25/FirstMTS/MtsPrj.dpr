library MtsPrj;

uses
  ComServ,
  MtsPrj_TLB in 'MtsPrj_TLB.pas',
  MtsRm in 'MtsRm.pas' {FirstMTS: TMtsDataModule} {FirstMTS: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
