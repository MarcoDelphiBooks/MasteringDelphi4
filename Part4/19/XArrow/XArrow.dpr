library XArrow;

uses
  ComServ,
  XArrow_TLB in 'XArrow_TLB.pas',
  XArrowImpl in 'XArrowImpl.pas' {Md4WArrowX: CoClass},
  XAPPage in 'Xappage.pas' {PropertyPage1: TPropertyPage};

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
