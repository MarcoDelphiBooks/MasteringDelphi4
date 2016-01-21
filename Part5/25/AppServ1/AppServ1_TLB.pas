unit AppServ1_TLB;

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

// PASTLWTR : $Revision:   1.11.1.63  $
// File generated on 7/14/98 3:34:47 PM from Type Library described below.

// ************************************************************************ //
// Type Lib: C:\md4code\Part5\25\AppServ1\AppServ1.tlb
// IID\LCID: {AE857760-2114-11D1-98D0-444553540000}\0
// Helpfile: 
// HelpString: AppServ1 Library
// Version:    1.0
// ************************************************************************ //

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:      //
//   Type Libraries     : LIBID_xxxx                                    //
//   CoClasses          : CLASS_xxxx                                    //
//   DISPInterfaces     : DIID_xxxx                                     //
//   Non-DISP interfaces: IID_xxxx                                      //
// *********************************************************************//
const
  LIBID_AppServ1: TGUID = '{AE857760-2114-11D1-98D0-444553540000}';
  IID_IMdFirstRM: TGUID = '{AE857761-2114-11D1-98D0-444553540000}';
  CLASS_MdFirstRM: TGUID = '{AE857762-2114-11D1-98D0-444553540000}';
type

// *********************************************************************//
// Forward declaration of interfaces defined in Type Library            //
// *********************************************************************//
  IMdFirstRM = interface;
  IMdFirstRMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                     //
// (NOTE: Here we map each CoClass to its Default Interface)            //
// *********************************************************************//
  MdFirstRM = IMdFirstRM;


// *********************************************************************//
// Interface: IMdFirstRM
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AE857761-2114-11D1-98D0-444553540000}
// *********************************************************************//
  IMdFirstRM = interface(IDataBroker)
    ['{AE857761-2114-11D1-98D0-444553540000}']
    function Get_Table1: IProvider; safecall;
    property Table1: IProvider read Get_Table1;
  end;

// *********************************************************************//
// DispIntf:  IMdFirstRMDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AE857761-2114-11D1-98D0-444553540000}
// *********************************************************************//
  IMdFirstRMDisp = dispinterface
    ['{AE857761-2114-11D1-98D0-444553540000}']
    property Table1: IProvider readonly dispid 1;
    function GetProviderNames: OleVariant; dispid 22929905;
  end;

  CoMdFirstRM = class
    class function Create: IMdFirstRM;
    class function CreateRemote(const MachineName: string): IMdFirstRM;
  end;

implementation

uses ComObj;

class function CoMdFirstRM.Create: IMdFirstRM;
begin
  Result := CreateComObject(CLASS_MdFirstRM) as IMdFirstRM;
end;

class function CoMdFirstRM.CreateRemote(const MachineName: string): IMdFirstRM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MdFirstRM) as IMdFirstRM;
end;

end.
