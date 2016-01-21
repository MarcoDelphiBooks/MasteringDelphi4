unit Corba1_TLB;

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
// File generated on 7/14/98 6:23:01 PM from Type Library described below.

// ************************************************************************ //
// Type Lib: C:\md4code\Part5\25\Corba1\Corba1.tlb
// IID\LCID: {4A0AD345-1B2C-11D2-B9F1-004845400FAA}\0
// Helpfile: 
// HelpString: Project1 Library
// Version:    1.0
// ************************************************************************ //

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL, SysUtils, CORBAObj, OrbPas, CorbaStd;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:      //
//   Type Libraries     : LIBID_xxxx                                    //
//   CoClasses          : CLASS_xxxx                                    //
//   DISPInterfaces     : DIID_xxxx                                     //
//   Non-DISP interfaces: IID_xxxx                                      //
// *********************************************************************//
const
  LIBID_Corba1: TGUID = '{4A0AD345-1B2C-11D2-B9F1-004845400FAA}';
  IID_IFirstCorba: TGUID = '{4A0AD346-1B2C-11D2-B9F1-004845400FAA}';
  CLASS_FirstCorba: TGUID = '{4A0AD348-1B2C-11D2-B9F1-004845400FAA}';
type

// *********************************************************************//
// Forward declaration of interfaces defined in Type Library            //
// *********************************************************************//
  IFirstCorba = interface;
  IFirstCorbaDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                     //
// (NOTE: Here we map each CoClass to its Default Interface)            //
// *********************************************************************//
  FirstCorba = IFirstCorba;


// *********************************************************************//
// Interface: IFirstCorba
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A0AD346-1B2C-11D2-B9F1-004845400FAA}
// *********************************************************************//
  IFirstCorba = interface(IDataBroker)
    ['{4A0AD346-1B2C-11D2-B9F1-004845400FAA}']
    function Get_Table1: IProvider; safecall;
    property Table1: IProvider read Get_Table1;
  end;

// *********************************************************************//
// DispIntf:  IFirstCorbaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A0AD346-1B2C-11D2-B9F1-004845400FAA}
// *********************************************************************//
  IFirstCorbaDisp = dispinterface
    ['{4A0AD346-1B2C-11D2-B9F1-004845400FAA}']
    property Table1: IProvider readonly dispid 1;
    function GetProviderNames: OleVariant; dispid 22929905;
  end;

  TFirstCorbaStub = class(TDataBrokerStub, IFirstCorba)
  public
    function Get_Table1: IProvider; safecall;
  end;

  TFirstCorbaSkeleton = class(TDataBrokerSkeleton)
  private
    FIntf: IFirstCorba;
  public
    constructor Create(const InstanceName: string; const Impl: IUnknown); override;
    procedure GetImplementation(out Impl: IUnknown); override; stdcall;
  published
    procedure Get_Table1(const InBuf: IMarshalInBuffer; Cookie: Pointer);
  end;

  CoFirstCorba = class
    class function Create: IFirstCorba;
    class function CreateRemote(const MachineName: string): IFirstCorba;
  end;

  TFirstCorbaCorbaFactory = class
    class function CreateInstance(const InstanceName: string): IFirstCorba;
  end;

implementation

uses ComObj;

{ TFirstCorbaStub }

function TFirstCorbaStub.Get_Table1: IProvider;
var
  OutBuf: IMarshalOutBuffer;
  InBuf: IMarshalInBuffer;
begin
  FStub.CreateRequest('Get_Table1', True, OutBuf);
  FStub.Invoke(OutBuf, InBuf);
  Result := UnmarshalObject(InBuf, IProvider) as IProvider;
end;

{ TFirstCorbaSkeleton }

constructor TFirstCorbaSkeleton.Create(const InstanceName: string; const Impl: IUnknown);
begin
  inherited;
  inherited InitSkeleton('FirstCorba', InstanceName, '', tmMultiThreaded, True);
  FIntf := Impl as IFirstCorba;
end;

procedure TFirstCorbaSkeleton.GetImplementation(out Impl: IUnknown);
begin
  Impl := FIntf;
end;

procedure TFirstCorbaSkeleton.Get_Table1(const InBuf: IMarshalInBuffer; Cookie: Pointer);
var
  OutBuf: IMarshalOutBuffer;
  Retval: IProvider;
begin
  Retval := FIntf.Get_Table1;
  FSkeleton.GetReplyBuffer(Cookie, OutBuf);
  MarshalObject(OutBuf, IProvider, Retval);
end;

class function CoFirstCorba.Create: IFirstCorba;
begin
  Result := CreateComObject(CLASS_FirstCorba) as IFirstCorba;
end;

class function CoFirstCorba.CreateRemote(const MachineName: string): IFirstCorba;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FirstCorba) as IFirstCorba;
end;

class function TFirstCorbaCorbaFactory.CreateInstance(const InstanceName: string): IFirstCorba;
begin
  Result := CorbaFactoryCreateStub('IDL:Corba1/FirstCorbaFactory:1.0', 'FirstCorba',
    InstanceName, '', IFirstCorba) as IFirstCorba;
end;

initialization
  CorbaStubManager.RegisterStub(IFirstCorba, TFirstCorbaStub);
  CorbaInterfaceIDManager.RegisterInterface(IFirstCorba, 'IDL:FirstCorba:1.0');
  CorbaSkeletonManager.RegisterSkeleton(IFirstCorba, TFirstCorbaSkeleton);

end.
