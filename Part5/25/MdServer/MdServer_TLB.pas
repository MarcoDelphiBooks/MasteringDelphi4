unit MdServer_TLB;

{ This file contains pascal declarations imported from a type library.
  This file will be written during each import or refresh of the type
  library editor.  Changes to this file will be discarded during the
  refresh process. }

{ MdServer Library }
{ Version 1.0 }

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

const
  LIBID_MdServer: TGUID = '{C5DDE904-2214-11D1-98D0-444553540000}';

const

{ Component class GUIDs }
  Class_MdDataModule: TGUID = '{C5DDE906-2214-11D1-98D0-444553540000}';

type

{ Forward declarations: Interfaces }
  IMdDataModule = interface;
  IMdDataModuleDisp = dispinterface;

{ Forward declarations: CoClasses }
  MdDataModule = IMdDataModule;

{ Dispatch interface for MdDataModule Object }

  IMdDataModule = interface(IDataBroker)
    ['{C5DDE905-2214-11D1-98D0-444553540000}']
    function Get_TableCustomers: IProvider; safecall;
    function Get_TableOrders: IProvider; safecall;
    procedure GetBoth(out Customer, Order: OleVariant); safecall;
    property TableCustomers: IProvider read Get_TableCustomers;
    property TableOrders: IProvider read Get_TableOrders;
  end;

{ DispInterface declaration for Dual Interface IMdDataModule }

  IMdDataModuleDisp = dispinterface
    ['{C5DDE905-2214-11D1-98D0-444553540000}']
    function GetProviderNames: OleVariant; dispid 22929905;
    property TableCustomers: IProvider readonly dispid 1;
    property TableOrders: IProvider readonly dispid 2;
    procedure GetBoth(out Customer, Order: OleVariant); dispid 3;
  end;

{ MdDataModuleObject }

  CoMdDataModule = class
    class function Create: IMdDataModule;
    class function CreateRemote(const MachineName: string): IMdDataModule;
  end;



implementation

uses ComObj;

class function CoMdDataModule.Create: IMdDataModule;
begin
  Result := CreateComObject(Class_MdDataModule) as IMdDataModule;
end;

class function CoMdDataModule.CreateRemote(const MachineName: string): IMdDataModule;
begin
  Result := CreateRemoteComObject(MachineName, Class_MdDataModule) as IMdDataModule;
end;


end.
