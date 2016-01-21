library FirstCom;

uses
  ComServ,
  NumIntf in 'NumIntf.pas',
  NumServ in 'NumServ.pas',
  Firstcom_TLB in 'Firstcom_TLB.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.RES}

begin
end.
