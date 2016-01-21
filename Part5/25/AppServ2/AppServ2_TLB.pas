unit AppServ2_TLB;

{ This file contains pascal declarations imported from a type library.
  This file will be written during each import or refresh of the type
  library editor.  Changes to this file will be discarded during the
  refresh process. }

{ AppServ2 Library }
{ Version 1.0 }

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

const
  LIBID_AppServ2: TGUID = '{C5DDE901-2214-11D1-98D0-444553540000}';

const

{ Component class GUIDs }
  Class_RdmCount: TGUID = '{C5DDE903-2214-11D1-98D0-444553540000}';

type

{ Forward declarations: Interfaces }
  IRdmCount = interface;
  IRdmCountDisp = dispinterface;

{ Forward declarations: CoClasses }
  RdmCount = IRdmCount;

{ Dispatch interface for RdmCount Object }

  IRdmCount = interface(IDataBroker)
    ['{C5DDE902-2214-11D1-98D0-444553540000}']
    function Get_Table1: IProvider; safecall;
    property Table1: IProvider read Get_Table1;
  end;

{ DispInterface declaration for Dual Interface IRdmCount }

  IRdmCountDisp = dispinterface
    ['{C5DDE902-2214-11D1-98D0-444553540000}']
    function GetProviderNames: OleVariant; dispid 22929905;
    property Table1: IProvider readonly dispid 1;
  end;

{ RdmCountObject }

  CoRdmCount = class
    class function Create: IRdmCount;
    class function CreateRemote(const MachineName: string): IRdmCount;
  end;



implementation

uses ComObj;

class function CoRdmCount.Create: IRdmCount;
begin
  Result := CreateComObject(Class_RdmCount) as IRdmCount;
end;

class function CoRdmCount.CreateRemote(const MachineName: string): IRdmCount;
begin
  Result := CreateRemoteComObject(MachineName, Class_RdmCount) as IRdmCount;
end;


end.
