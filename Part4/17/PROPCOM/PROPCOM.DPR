library PropCom;

uses
  ComServ,
  NumIntf in 'NumIntf.pas',
  NumServ in 'NumServ.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.RES}
  
end.
