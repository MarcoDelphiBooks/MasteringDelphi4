unit MtsPrj_TLB;

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
// File generated on 7/14/98 5:41:07 PM from Type Library described below.

// ************************************************************************ //
// Type Lib: C:\md4code\Part5\25\FirstMTS\MtsPrj.tlb
// IID\LCID: {4A0AD2F5-1B2C-11D2-B9F1-004845400FAA}\0
// Helpfile: 
// HelpString: Project1 Library
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
  LIBID_MtsPrj: TGUID = '{4A0AD2F5-1B2C-11D2-B9F1-004845400FAA}';
  IID_IFirstMTS: TGUID = '{4A0AD2F6-1B2C-11D2-B9F1-004845400FAA}';
  CLASS_FirstMTS: TGUID = '{4A0AD2F8-1B2C-11D2-B9F1-004845400FAA}';
type

// *********************************************************************//
// Forward declaration of interfaces defined in Type Library            //
// *********************************************************************//
  IFirstMTS = interface;
  IFirstMTSDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                     //
// (NOTE: Here we map each CoClass to its Default Interface)            //
// *********************************************************************//
  FirstMTS = IFirstMTS;


// *********************************************************************//
// Interface: IFirstMTS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A0AD2F6-1B2C-11D2-B9F1-004845400FAA}
// *********************************************************************//
  IFirstMTS = interface(IDataBroker)
    ['{4A0AD2F6-1B2C-11D2-B9F1-004845400FAA}']
    procedure Hello; safecall;
    function Get_Table1: IProvider; safecall;
    property Table1: IProvider read Get_Table1;
  end;

// *********************************************************************//
// DispIntf:  IFirstMTSDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A0AD2F6-1B2C-11D2-B9F1-004845400FAA}
// *********************************************************************//
  IFirstMTSDisp = dispinterface
    ['{4A0AD2F6-1B2C-11D2-B9F1-004845400FAA}']
    procedure Hello; dispid 1;
    property Table1: IProvider readonly dispid 2;
    function GetProviderNames: OleVariant; dispid 22929905;
  end;

  CoFirstMTS = class
    class function Create: IFirstMTS;
    class function CreateRemote(const MachineName: string): IFirstMTS;
  end;

implementation

uses ComObj;

class function CoFirstMTS.Create: IFirstMTS;
begin
  Result := CreateComObject(CLASS_FirstMTS) as IFirstMTS;
end;

class function CoFirstMTS.CreateRemote(const MachineName: string): IFirstMTS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FirstMTS) as IFirstMTS;
end;

end.
