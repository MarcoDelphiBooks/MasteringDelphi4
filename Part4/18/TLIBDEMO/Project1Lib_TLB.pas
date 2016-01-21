unit Project1Lib_TLB;

// ************************************************************************ //
// WARNING                                                                  //
// -------                                                                  //
// The types declared in this file were generated from data read from a     //
// Type Library. If this type library is explicitly or indirectly (via      //
// another type library referring to this type library) re-imported, or the //
// 'Refresh' command of the Type Library Editor activated while editing the //
// Type Library, the contents of this file will be regenerated and all      //
// manual modifications will be lost.                                       //
// ************************************************************************ //

// *********************************************************************//
// HelpString: Project1Lib Library
// Version:    1.0
// *********************************************************************//

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:      //
//   Type Libraries     : LIBID_xxxx                                    //
//   CoClasses          : CLSID_xxxx                                    //
//   DISPInterfaces     : DIID_xxxx                                     //
//   Non-DISP interfaces: IID_xxxx                                      //
// *********************************************************************//
const
  LIBID_Project1Lib: TGUID = '{89855B41-8EFE-11D0-98D0-444553540000}';
  IID_IFirstServer: TGUID = '{89855B42-8EFE-11D0-98D0-444553540000}';
  CLASS_FirstServer: TGUID = '{89855B43-8EFE-11D0-98D0-444553540000}';

// *********************************************************************//
// Forward declaration of interfaces defined in Type Library            //
// *********************************************************************//
type
  IFirstServer = interface;
  IFirstServerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                     //
// (NOTE: Here we map each CoClass to it's Default Interface            //
// *********************************************************************//
  FirstServer = IFirstServer;

  IFirstServer = interface(IDispatch)
    ['{89855B42-8EFE-11D0-98D0-444553540000}']
    procedure ChangeColor; safecall;
    function Get_Value: Integer; safecall;
    procedure Set_Value(Value: Integer); safecall;
    property Value: Integer read Get_Value write Set_Value;
  end;

// Dispinterface declaration for dual interface IFirstServer

  IFirstServerDisp = dispinterface
    ['{89855B42-8EFE-11D0-98D0-444553540000}']
    procedure ChangeColor; dispid 1;
    property Value: Integer dispid 2;
  end;

  CoFirstServer = class
    class function Create: IFirstServer;
    class function CreateRemote(const MachineName: string): IFirstServer;
  end;

implementation

uses ComObj;

class function CoFirstServer.Create: IFirstServer;
begin
  Result := CreateComObject(CLASS_FirstServer) as IFirstServer;
end;

class function CoFirstServer.CreateRemote(const MachineName: string): IFirstServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FirstServer) as IFirstServer;
end;

end.
