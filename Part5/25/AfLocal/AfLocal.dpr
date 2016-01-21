library AfLocal;

uses
  ComServ,
  AfLocal_TLB in 'AfLocal_TLB.pas',
  Local in 'Local.pas' {ActiveLocalData: TActiveForm} {ActiveLocalData: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

{$E ocx}

begin
end.
