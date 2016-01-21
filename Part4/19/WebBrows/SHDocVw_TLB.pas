unit SHDocVw_TLB;

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
// File generated on 6/23/98 10:25:27 AM from Type Library described below.

// ************************************************************************ //
// Type Lib: C:\WINDOWS\SYSTEM\SHDOCVW.DLL
// IID\LCID: {EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}\0
// Helpfile: 
// HelpString: Microsoft Internet Controls
// Version:    1.1
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
  LIBID_SHDocVw: TGUID = '{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}';
  IID_IWebBrowser: TGUID = '{EAB22AC1-30C1-11CF-A7EB-0000C05BAE0B}';
  DIID_DWebBrowserEvents: TGUID = '{EAB22AC2-30C1-11CF-A7EB-0000C05BAE0B}';
  IID_IWebBrowserApp: TGUID = '{0002DF05-0000-0000-C000-000000000046}';
  IID_IWebBrowser2: TGUID = '{D30C1661-CDAF-11D0-8A3E-00C04FC9E26E}';
  DIID_DWebBrowserEvents2: TGUID = '{34A715A0-6587-11D0-924A-0020AFC7AC4D}';
  CLASS_WebBrowser_V1: TGUID = '{EAB22AC3-30C1-11CF-A7EB-0000C05BAE0B}';
  CLASS_WebBrowser: TGUID = '{8856F961-340A-11D0-A96B-00C04FD705A2}';
  CLASS_InternetExplorer: TGUID = '{0002DF01-0000-0000-C000-000000000046}';
  IID_IFolderViewOC: TGUID = '{9BA05970-F6A8-11CF-A442-00A0C90A8F39}';
  DIID_DShellFolderViewEvents: TGUID = '{62112AA2-EBE4-11CF-A5FB-0020AFE7292D}';
  CLASS_ShellFolderViewOC: TGUID = '{9BA05971-F6A8-11CF-A442-00A0C90A8F39}';
  DIID_DShellWindowsEvents: TGUID = '{FE4106E0-399A-11D0-A48C-00A0C90A8F39}';
  IID_IShellWindows: TGUID = '{85CB6900-4D95-11CF-960C-0080C7F4EE85}';
  CLASS_ShellWindows: TGUID = '{9BA05972-F6A8-11CF-A442-00A0C90A8F39}';
  IID_IShellLinkDual: TGUID = '{88A05C00-F000-11CE-8350-444553540000}';
  CLASS_ShellLinkObject: TGUID = '{11219420-1768-11D1-95BE-00609797EA4F}';
  IID_FolderItemVerb: TGUID = '{08EC3E00-50B0-11CF-960C-0080C7F4EE85}';
  IID_FolderItemVerbs: TGUID = '{1F8352C0-50B0-11CF-960C-0080C7F4EE85}';
  IID_Folder: TGUID = '{BBCBDE60-C3FF-11CE-8350-444553540000}';
  IID_FolderItems: TGUID = '{744129E0-CBE5-11CE-8350-444553540000}';
  IID_FolderItem: TGUID = '{FAC32C80-CBE4-11CE-8350-444553540000}';
  IID_IShellFolderViewDual: TGUID = '{E7A1AF80-4D96-11CF-960C-0080C7F4EE85}';
  CLASS_ShellFolderView: TGUID = '{62112AA1-EBE4-11CF-A5FB-0020AFE7292D}';
  IID_IShellDispatch: TGUID = '{D8F015C0-C278-11CE-A49E-444553540000}';
  CLASS_Shell: TGUID = '{13709620-C279-11CE-A49E-444553540000}';
  CLASS_ShellDispatchInproc: TGUID = '{0A89A860-D7B1-11CE-8350-444553540000}';
  CLASS_WebViewFolderContents: TGUID = '{1820FED0-473E-11D0-A96C-00C04FD705A2}';
  IID_IShellUIHelper: TGUID = '{729FE2F8-1EA8-11D1-8F85-00C04FC2FBE1}';
  CLASS_ShellUIHelper: TGUID = '{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                  //
// *********************************************************************//
// CommandStateChangeConstants constants
type
  CommandStateChangeConstants = TOleEnum;
const
  CSC_UPDATECOMMANDS = $FFFFFFFF;
  CSC_NAVIGATEFORWARD = $00000001;
  CSC_NAVIGATEBACK = $00000002;

// OLECMDID constants
type
  OLECMDID = TOleEnum;
const
  OLECMDID_OPEN = $00000001;
  OLECMDID_NEW = $00000002;
  OLECMDID_SAVE = $00000003;
  OLECMDID_SAVEAS = $00000004;
  OLECMDID_SAVECOPYAS = $00000005;
  OLECMDID_PRINT = $00000006;
  OLECMDID_PRINTPREVIEW = $00000007;
  OLECMDID_PAGESETUP = $00000008;
  OLECMDID_SPELL = $00000009;
  OLECMDID_PROPERTIES = $0000000A;
  OLECMDID_CUT = $0000000B;
  OLECMDID_COPY = $0000000C;
  OLECMDID_PASTE = $0000000D;
  OLECMDID_PASTESPECIAL = $0000000E;
  OLECMDID_UNDO = $0000000F;
  OLECMDID_REDO = $00000010;
  OLECMDID_SELECTALL = $00000011;
  OLECMDID_CLEARSELECTION = $00000012;
  OLECMDID_ZOOM = $00000013;
  OLECMDID_GETZOOMRANGE = $00000014;
  OLECMDID_UPDATECOMMANDS = $00000015;
  OLECMDID_REFRESH = $00000016;
  OLECMDID_STOP = $00000017;
  OLECMDID_HIDETOOLBARS = $00000018;
  OLECMDID_SETPROGRESSMAX = $00000019;
  OLECMDID_SETPROGRESSPOS = $0000001A;
  OLECMDID_SETPROGRESSTEXT = $0000001B;
  OLECMDID_SETTITLE = $0000001C;
  OLECMDID_SETDOWNLOADSTATE = $0000001D;
  OLECMDID_STOPDOWNLOAD = $0000001E;
  OLECMDID_ONTOOLBARACTIVATED = $0000001F;
  OLECMDID_FIND = $00000020;
  OLECMDID_DELETE = $00000021;
  OLECMDID_HTTPEQUIV = $00000022;
  OLECMDID_HTTPEQUIV_DONE = $00000023;
  OLECMDID_ENABLE_INTERACTION = $00000024;
  OLECMDID_ONUNLOAD = $00000025;
  OLECMDID_PROPERTYBAG2 = $00000026;
  OLECMDID_PREREFRESH = $00000027;

// OLECMDF constants
type
  OLECMDF = TOleEnum;
const
  OLECMDF_SUPPORTED = $00000001;
  OLECMDF_ENABLED = $00000002;
  OLECMDF_LATCHED = $00000004;
  OLECMDF_NINCHED = $00000008;

// OLECMDEXECOPT constants
type
  OLECMDEXECOPT = TOleEnum;
const
  OLECMDEXECOPT_DODEFAULT = $00000000;
  OLECMDEXECOPT_PROMPTUSER = $00000001;
  OLECMDEXECOPT_DONTPROMPTUSER = $00000002;
  OLECMDEXECOPT_SHOWHELP = $00000003;

// tagREADYSTATE constants
type
  tagREADYSTATE = TOleEnum;
const
  READYSTATE_UNINITIALIZED = $00000000;
  READYSTATE_LOADING = $00000001;
  READYSTATE_LOADED = $00000002;
  READYSTATE_INTERACTIVE = $00000003;
  READYSTATE_COMPLETE = $00000004;

// ShellWindowTypeConstants constants
type
  ShellWindowTypeConstants = TOleEnum;
const
  SWC_EXPLORER = $00000000;
  SWC_BROWSER = $00000001;
  SWC_3RDPARTY = $00000002;
  SWC_CALLBACK = $00000004;

// ShellWindowFindWindowOptions constants
type
  ShellWindowFindWindowOptions = TOleEnum;
const
  SWFO_NEEDDISPATCH = $00000001;
  SWFO_INCLUDEPENDING = $00000002;
  SWFO_COOKIEPASSED = $00000004;

// ShellFolderViewOptions constants
type
  ShellFolderViewOptions = TOleEnum;
const
  SFVVO_SHOWALLOBJECTS = $00000001;
  SFVVO_SHOWEXTENSIONS = $00000002;
  SFVVO_SHOWCOMPCOLOR = $00000008;
  SFVVO_SHOWSYSFILES = $00000020;
  SFVVO_WIN95CLASSIC = $00000040;
  SFVVO_DOUBLECLICKINWEBVIEW = $00000080;
  SFVVO_DESKTOPHTML = $00000200;

// ShellSpecialFolderConstants constants
type
  ShellSpecialFolderConstants = TOleEnum;
const
  ssfDESKTOP = $00000000;
  ssfPROGRAMS = $00000002;
  ssfCONTROLS = $00000003;
  ssfPRINTERS = $00000004;
  ssfPERSONAL = $00000005;
  ssfFAVORITES = $00000006;
  ssfSTARTUP = $00000007;
  ssfRECENT = $00000008;
  ssfSENDTO = $00000009;
  ssfBITBUCKET = $0000000A;
  ssfSTARTMENU = $0000000B;
  ssfDESKTOPDIRECTORY = $00000010;
  ssfDRIVES = $00000011;
  ssfNETWORK = $00000012;
  ssfNETHOOD = $00000013;
  ssfFONTS = $00000014;
  ssfTEMPLATES = $00000015;

type

// *********************************************************************//
// Forward declaration of interfaces defined in Type Library            //
// *********************************************************************//
  IWebBrowser = interface;
  IWebBrowserDisp = dispinterface;
  DWebBrowserEvents = dispinterface;
  IWebBrowserApp = interface;
  IWebBrowserAppDisp = dispinterface;
  IWebBrowser2 = interface;
  IWebBrowser2Disp = dispinterface;
  DWebBrowserEvents2 = dispinterface;
  IFolderViewOC = interface;
  IFolderViewOCDisp = dispinterface;
  DShellFolderViewEvents = dispinterface;
  DShellWindowsEvents = dispinterface;
  IShellWindows = interface;
  IShellWindowsDisp = dispinterface;
  IShellLinkDual = interface;
  IShellLinkDualDisp = dispinterface;
  FolderItemVerb = interface;
  FolderItemVerbDisp = dispinterface;
  FolderItemVerbs = interface;
  FolderItemVerbsDisp = dispinterface;
  Folder = interface;
  FolderDisp = dispinterface;
  FolderItems = interface;
  FolderItemsDisp = dispinterface;
  FolderItem = interface;
  FolderItemDisp = dispinterface;
  IShellFolderViewDual = interface;
  IShellFolderViewDualDisp = dispinterface;
  IShellDispatch = interface;
  IShellDispatchDisp = dispinterface;
  IShellUIHelper = interface;
  IShellUIHelperDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                     //
// (NOTE: Here we map each CoClass to its Default Interface)            //
// *********************************************************************//
  WebBrowser_V1 = IWebBrowser;
  WebBrowser = IWebBrowser2;
  InternetExplorer = IWebBrowser2;
  ShellFolderViewOC = IFolderViewOC;
  ShellWindows = IShellWindows;
  ShellLinkObject = IShellLinkDual;
  ShellFolderView = IShellFolderViewDual;
  Shell = IShellDispatch;
  ShellDispatchInproc = IUnknown;
  WebViewFolderContents = IShellFolderViewDual;
  ShellUIHelper = IShellUIHelper;


// *********************************************************************//
// Declaration of structures, unions and aliases.                       //
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IWebBrowser
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EAB22AC1-30C1-11CF-A7EB-0000C05BAE0B}
// *********************************************************************//
  IWebBrowser = interface(IDispatch)
    ['{EAB22AC1-30C1-11CF-A7EB-0000C05BAE0B}']
    procedure GoBack; safecall;
    procedure GoForward; safecall;
    procedure GoHome; safecall;
    procedure GoSearch; safecall;
    procedure Navigate(const URL: WideString; var Flags: OleVariant; 
                       var TargetFrameName: OleVariant; var PostData: OleVariant; 
                       var Headers: OleVariant); safecall;
    procedure Refresh; safecall;
    procedure Refresh2(var Level: OleVariant); safecall;
    procedure Stop; safecall;
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Container: IDispatch; safecall;
    function Get_Document: IDispatch; safecall;
    function Get_TopLevelContainer: WordBool; safecall;
    function Get_Type_: WideString; safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pl: Integer); safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(pl: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(pl: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(pl: Integer); safecall;
    function Get_LocationName: WideString; safecall;
    function Get_LocationURL: WideString; safecall;
    function Get_Busy: WordBool; safecall;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
    property Container: IDispatch read Get_Container;
    property Document: IDispatch read Get_Document;
    property TopLevelContainer: WordBool read Get_TopLevelContainer;
    property Type_: WideString read Get_Type_;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property LocationName: WideString read Get_LocationName;
    property LocationURL: WideString read Get_LocationURL;
    property Busy: WordBool read Get_Busy;
  end;

// *********************************************************************//
// DispIntf:  IWebBrowserDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EAB22AC1-30C1-11CF-A7EB-0000C05BAE0B}
// *********************************************************************//
  IWebBrowserDisp = dispinterface
    ['{EAB22AC1-30C1-11CF-A7EB-0000C05BAE0B}']
    procedure GoBack; dispid 100;
    procedure GoForward; dispid 101;
    procedure GoHome; dispid 102;
    procedure GoSearch; dispid 103;
    procedure Navigate(const URL: WideString; var Flags: OleVariant; 
                       var TargetFrameName: OleVariant; var PostData: OleVariant; 
                       var Headers: OleVariant); dispid 104;
    procedure Refresh; dispid -550;
    procedure Refresh2(var Level: OleVariant); dispid 105;
    procedure Stop; dispid 106;
    property Application_: IDispatch readonly dispid 200;
    property Parent: IDispatch readonly dispid 201;
    property Container: IDispatch readonly dispid 202;
    property Document: IDispatch readonly dispid 203;
    property TopLevelContainer: WordBool readonly dispid 204;
    property Type_: WideString readonly dispid 205;
    property Left: Integer dispid 206;
    property Top: Integer dispid 207;
    property Width: Integer dispid 208;
    property Height: Integer dispid 209;
    property LocationName: WideString readonly dispid 210;
    property LocationURL: WideString readonly dispid 211;
    property Busy: WordBool readonly dispid 212;
  end;

// *********************************************************************//
// DispIntf:  DWebBrowserEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {EAB22AC2-30C1-11CF-A7EB-0000C05BAE0B}
// *********************************************************************//
  DWebBrowserEvents = dispinterface
    ['{EAB22AC2-30C1-11CF-A7EB-0000C05BAE0B}']
    procedure BeforeNavigate(const URL: WideString; Flags: Integer; 
                             const TargetFrameName: WideString; var PostData: OleVariant; 
                             const Headers: WideString; var Cancel: WordBool); dispid 100;
    procedure NavigateComplete(const URL: WideString); dispid 101;
    procedure StatusTextChange(const Text: WideString); dispid 102;
    procedure ProgressChange(Progress: Integer; ProgressMax: Integer); dispid 108;
    procedure DownloadComplete; dispid 104;
    procedure CommandStateChange(Command: Integer; Enable: WordBool); dispid 105;
    procedure DownloadBegin; dispid 106;
    procedure NewWindow(const URL: WideString; Flags: Integer; const TargetFrameName: WideString; 
                        var PostData: OleVariant; const Headers: WideString; var Processed: WordBool); dispid 107;
    procedure TitleChange(const Text: WideString); dispid 113;
    procedure FrameBeforeNavigate(const URL: WideString; Flags: Integer; 
                                  const TargetFrameName: WideString; var PostData: OleVariant; 
                                  const Headers: WideString; var Cancel: WordBool); dispid 200;
    procedure FrameNavigateComplete(const URL: WideString); dispid 201;
    procedure FrameNewWindow(const URL: WideString; Flags: Integer; 
                             const TargetFrameName: WideString; var PostData: OleVariant; 
                             const Headers: WideString; var Processed: WordBool); dispid 204;
    procedure Quit(var Cancel: WordBool); dispid 103;
    procedure WindowMove; dispid 109;
    procedure WindowResize; dispid 110;
    procedure WindowActivate; dispid 111;
    procedure PropertyChange(const Property_: WideString); dispid 112;
  end;

// *********************************************************************//
// Interface: IWebBrowserApp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002DF05-0000-0000-C000-000000000046}
// *********************************************************************//
  IWebBrowserApp = interface(IWebBrowser)
    ['{0002DF05-0000-0000-C000-000000000046}']
    procedure Quit; safecall;
    procedure ClientToWindow(var pcx: SYSINT; var pcy: SYSINT); safecall;
    procedure PutProperty(const Property_: WideString; vtValue: OleVariant); safecall;
    function GetProperty(const Property_: WideString): OleVariant; safecall;
    function Get_Name: WideString; safecall;
    function Get_HWND: Integer; safecall;
    function Get_FullName: WideString; safecall;
    function Get_Path: WideString; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pBool: WordBool); safecall;
    function Get_StatusBar: WordBool; safecall;
    procedure Set_StatusBar(pBool: WordBool); safecall;
    function Get_StatusText: WideString; safecall;
    procedure Set_StatusText(const StatusText: WideString); safecall;
    function Get_ToolBar: SYSINT; safecall;
    procedure Set_ToolBar(Value: SYSINT); safecall;
    function Get_MenuBar: WordBool; safecall;
    procedure Set_MenuBar(Value: WordBool); safecall;
    function Get_FullScreen: WordBool; safecall;
    procedure Set_FullScreen(pbFullScreen: WordBool); safecall;
    property Name: WideString read Get_Name;
    property HWND: Integer read Get_HWND;
    property FullName: WideString read Get_FullName;
    property Path: WideString read Get_Path;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property StatusBar: WordBool read Get_StatusBar write Set_StatusBar;
    property StatusText: WideString read Get_StatusText write Set_StatusText;
    property ToolBar: SYSINT read Get_ToolBar write Set_ToolBar;
    property MenuBar: WordBool read Get_MenuBar write Set_MenuBar;
    property FullScreen: WordBool read Get_FullScreen write Set_FullScreen;
  end;

// *********************************************************************//
// DispIntf:  IWebBrowserAppDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0002DF05-0000-0000-C000-000000000046}
// *********************************************************************//
  IWebBrowserAppDisp = dispinterface
    ['{0002DF05-0000-0000-C000-000000000046}']
    procedure Quit; dispid 300;
    procedure ClientToWindow(var pcx: SYSINT; var pcy: SYSINT); dispid 301;
    procedure PutProperty(const Property_: WideString; vtValue: OleVariant); dispid 302;
    function GetProperty(const Property_: WideString): OleVariant; dispid 303;
    property Name: WideString readonly dispid 0;
    property HWND: Integer readonly dispid -515;
    property FullName: WideString readonly dispid 400;
    property Path: WideString readonly dispid 401;
    property Visible: WordBool dispid 402;
    property StatusBar: WordBool dispid 403;
    property StatusText: WideString dispid 404;
    property ToolBar: SYSINT dispid 405;
    property MenuBar: WordBool dispid 406;
    property FullScreen: WordBool dispid 407;
    procedure GoBack; dispid 100;
    procedure GoForward; dispid 101;
    procedure GoHome; dispid 102;
    procedure GoSearch; dispid 103;
    procedure Navigate(const URL: WideString; var Flags: OleVariant; 
                       var TargetFrameName: OleVariant; var PostData: OleVariant; 
                       var Headers: OleVariant); dispid 104;
    procedure Refresh; dispid -550;
    procedure Refresh2(var Level: OleVariant); dispid 105;
    procedure Stop; dispid 106;
    property Application_: IDispatch readonly dispid 200;
    property Parent: IDispatch readonly dispid 201;
    property Container: IDispatch readonly dispid 202;
    property Document: IDispatch readonly dispid 203;
    property TopLevelContainer: WordBool readonly dispid 204;
    property Type_: WideString readonly dispid 205;
    property Left: Integer dispid 206;
    property Top: Integer dispid 207;
    property Width: Integer dispid 208;
    property Height: Integer dispid 209;
    property LocationName: WideString readonly dispid 210;
    property LocationURL: WideString readonly dispid 211;
    property Busy: WordBool readonly dispid 212;
  end;

// *********************************************************************//
// Interface: IWebBrowser2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D30C1661-CDAF-11D0-8A3E-00C04FC9E26E}
// *********************************************************************//
  IWebBrowser2 = interface(IWebBrowserApp)
    ['{D30C1661-CDAF-11D0-8A3E-00C04FC9E26E}']
    procedure Navigate2(var URL: OleVariant; var Flags: OleVariant; 
                        var TargetFrameName: OleVariant; var PostData: OleVariant; 
                        var Headers: OleVariant); safecall;
    function QueryStatusWB(cmdID: OLECMDID): OLECMDF; safecall;
    procedure ExecWB(cmdID: OLECMDID; cmdexecopt: OLECMDEXECOPT; var pvaIn: OleVariant; 
                     var pvaOut: OleVariant); safecall;
    procedure ShowBrowserBar(var pvaClsid: OleVariant; var pvarShow: OleVariant; 
                             var pvarSize: OleVariant); safecall;
    function Get_ReadyState: tagREADYSTATE; safecall;
    function Get_Offline: WordBool; safecall;
    procedure Set_Offline(pbOffline: WordBool); safecall;
    function Get_Silent: WordBool; safecall;
    procedure Set_Silent(pbSilent: WordBool); safecall;
    function Get_RegisterAsBrowser: WordBool; safecall;
    procedure Set_RegisterAsBrowser(pbRegister: WordBool); safecall;
    function Get_RegisterAsDropTarget: WordBool; safecall;
    procedure Set_RegisterAsDropTarget(pbRegister: WordBool); safecall;
    function Get_TheaterMode: WordBool; safecall;
    procedure Set_TheaterMode(pbRegister: WordBool); safecall;
    function Get_AddressBar: WordBool; safecall;
    procedure Set_AddressBar(Value: WordBool); safecall;
    function Get_Resizable: WordBool; safecall;
    procedure Set_Resizable(Value: WordBool); safecall;
    property ReadyState: tagREADYSTATE read Get_ReadyState;
    property Offline: WordBool read Get_Offline write Set_Offline;
    property Silent: WordBool read Get_Silent write Set_Silent;
    property RegisterAsBrowser: WordBool read Get_RegisterAsBrowser write Set_RegisterAsBrowser;
    property RegisterAsDropTarget: WordBool read Get_RegisterAsDropTarget write Set_RegisterAsDropTarget;
    property TheaterMode: WordBool read Get_TheaterMode write Set_TheaterMode;
    property AddressBar: WordBool read Get_AddressBar write Set_AddressBar;
    property Resizable: WordBool read Get_Resizable write Set_Resizable;
  end;

// *********************************************************************//
// DispIntf:  IWebBrowser2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D30C1661-CDAF-11D0-8A3E-00C04FC9E26E}
// *********************************************************************//
  IWebBrowser2Disp = dispinterface
    ['{D30C1661-CDAF-11D0-8A3E-00C04FC9E26E}']
    procedure Navigate2(var URL: OleVariant; var Flags: OleVariant; 
                        var TargetFrameName: OleVariant; var PostData: OleVariant; 
                        var Headers: OleVariant); dispid 500;
    function QueryStatusWB(cmdID: OLECMDID): OLECMDF; dispid 501;
    procedure ExecWB(cmdID: OLECMDID; cmdexecopt: OLECMDEXECOPT; var pvaIn: OleVariant; 
                     var pvaOut: OleVariant); dispid 502;
    procedure ShowBrowserBar(var pvaClsid: OleVariant; var pvarShow: OleVariant; 
                             var pvarSize: OleVariant); dispid 503;
    property ReadyState: tagREADYSTATE readonly dispid -525;
    property Offline: WordBool dispid 550;
    property Silent: WordBool dispid 551;
    property RegisterAsBrowser: WordBool dispid 552;
    property RegisterAsDropTarget: WordBool dispid 553;
    property TheaterMode: WordBool dispid 554;
    property AddressBar: WordBool dispid 555;
    property Resizable: WordBool dispid 556;
    procedure Quit; dispid 300;
    procedure ClientToWindow(var pcx: SYSINT; var pcy: SYSINT); dispid 301;
    procedure PutProperty(const Property_: WideString; vtValue: OleVariant); dispid 302;
    function GetProperty(const Property_: WideString): OleVariant; dispid 303;
    property Name: WideString readonly dispid 0;
    property HWND: Integer readonly dispid -515;
    property FullName: WideString readonly dispid 400;
    property Path: WideString readonly dispid 401;
    property Visible: WordBool dispid 402;
    property StatusBar: WordBool dispid 403;
    property StatusText: WideString dispid 404;
    property ToolBar: SYSINT dispid 405;
    property MenuBar: WordBool dispid 406;
    property FullScreen: WordBool dispid 407;
    procedure GoBack; dispid 100;
    procedure GoForward; dispid 101;
    procedure GoHome; dispid 102;
    procedure GoSearch; dispid 103;
    procedure Navigate(const URL: WideString; var Flags: OleVariant; 
                       var TargetFrameName: OleVariant; var PostData: OleVariant; 
                       var Headers: OleVariant); dispid 104;
    procedure Refresh; dispid -550;
    procedure Refresh2(var Level: OleVariant); dispid 105;
    procedure Stop; dispid 106;
    property Application_: IDispatch readonly dispid 200;
    property Parent: IDispatch readonly dispid 201;
    property Container: IDispatch readonly dispid 202;
    property Document: IDispatch readonly dispid 203;
    property TopLevelContainer: WordBool readonly dispid 204;
    property Type_: WideString readonly dispid 205;
    property Left: Integer dispid 206;
    property Top: Integer dispid 207;
    property Width: Integer dispid 208;
    property Height: Integer dispid 209;
    property LocationName: WideString readonly dispid 210;
    property LocationURL: WideString readonly dispid 211;
    property Busy: WordBool readonly dispid 212;
  end;

// *********************************************************************//
// DispIntf:  DWebBrowserEvents2
// Flags:     (4112) Hidden Dispatchable
// GUID:      {34A715A0-6587-11D0-924A-0020AFC7AC4D}
// *********************************************************************//
  DWebBrowserEvents2 = dispinterface
    ['{34A715A0-6587-11D0-924A-0020AFC7AC4D}']
    procedure StatusTextChange(const Text: WideString); dispid 102;
    procedure ProgressChange(Progress: Integer; ProgressMax: Integer); dispid 108;
    procedure CommandStateChange(Command: Integer; Enable: WordBool); dispid 105;
    procedure DownloadBegin; dispid 106;
    procedure DownloadComplete; dispid 104;
    procedure TitleChange(const Text: WideString); dispid 113;
    procedure PropertyChange(const szProperty: WideString); dispid 112;
    procedure BeforeNavigate2(const pDisp: IDispatch; var URL: OleVariant; var Flags: OleVariant; 
                              var TargetFrameName: OleVariant; var PostData: OleVariant; 
                              var Headers: OleVariant; var Cancel: WordBool); dispid 250;
    procedure NewWindow2(var ppDisp: IDispatch; var Cancel: WordBool); dispid 251;
    procedure NavigateComplete2(const pDisp: IDispatch; var URL: OleVariant); dispid 252;
    procedure DocumentComplete(const pDisp: IDispatch; var URL: OleVariant); dispid 259;
    procedure OnQuit; dispid 253;
    procedure OnVisible(Visible: WordBool); dispid 254;
    procedure OnToolBar(ToolBar: WordBool); dispid 255;
    procedure OnMenuBar(MenuBar: WordBool); dispid 256;
    procedure OnStatusBar(StatusBar: WordBool); dispid 257;
    procedure OnFullScreen(FullScreen: WordBool); dispid 258;
    procedure OnTheaterMode(TheaterMode: WordBool); dispid 260;
  end;

// *********************************************************************//
// Interface: IFolderViewOC
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9BA05970-F6A8-11CF-A442-00A0C90A8F39}
// *********************************************************************//
  IFolderViewOC = interface(IDispatch)
    ['{9BA05970-F6A8-11CF-A442-00A0C90A8F39}']
    procedure SetFolderView(const pDisp: IDispatch); safecall;
  end;

// *********************************************************************//
// DispIntf:  IFolderViewOCDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9BA05970-F6A8-11CF-A442-00A0C90A8F39}
// *********************************************************************//
  IFolderViewOCDisp = dispinterface
    ['{9BA05970-F6A8-11CF-A442-00A0C90A8F39}']
    procedure SetFolderView(const pDisp: IDispatch); dispid 1610743808;
  end;

// *********************************************************************//
// DispIntf:  DShellFolderViewEvents
// Flags:     (4096) Dispatchable
// GUID:      {62112AA2-EBE4-11CF-A5FB-0020AFE7292D}
// *********************************************************************//
  DShellFolderViewEvents = dispinterface
    ['{62112AA2-EBE4-11CF-A5FB-0020AFE7292D}']
    procedure SelectionChanged; dispid 200;
  end;

// *********************************************************************//
// DispIntf:  DShellWindowsEvents
// Flags:     (4096) Dispatchable
// GUID:      {FE4106E0-399A-11D0-A48C-00A0C90A8F39}
// *********************************************************************//
  DShellWindowsEvents = dispinterface
    ['{FE4106E0-399A-11D0-A48C-00A0C90A8F39}']
    procedure WindowRegistered(lCookie: Integer); dispid 200;
    procedure WindowRevoked(lCookie: Integer); dispid 201;
  end;

// *********************************************************************//
// Interface: IShellWindows
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85CB6900-4D95-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  IShellWindows = interface(IDispatch)
    ['{85CB6900-4D95-11CF-960C-0080C7F4EE85}']
    function Get_Count: Integer; safecall;
    function Item(index: OleVariant): IDispatch; safecall;
    function _NewEnum: IUnknown; safecall;
    procedure Register(const pid: IDispatch; HWND: Integer; swClass: SYSINT; out plCookie: Integer); safecall;
    procedure RegisterPending(lThreadId: Integer; var pvarloc: OleVariant; 
                              var pvarlocRoot: OleVariant; swClass: SYSINT; out plCookie: Integer); safecall;
    procedure Revoke(lCookie: Integer); safecall;
    procedure OnNavigate(lCookie: Integer; var pvarloc: OleVariant); safecall;
    procedure OnActivated(lCookie: Integer; fActive: WordBool); safecall;
    function FindWindow(var pvarloc: OleVariant; var pvarlocRoot: OleVariant; swClass: SYSINT; 
                        out pHWND: Integer; swfwOptions: SYSINT): IDispatch; safecall;
    procedure OnCreated(lCookie: Integer; const punk: IUnknown); safecall;
    procedure ProcessAttachDetach(fAttach: WordBool); safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IShellWindowsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85CB6900-4D95-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  IShellWindowsDisp = dispinterface
    ['{85CB6900-4D95-11CF-960C-0080C7F4EE85}']
    property Count: Integer readonly dispid 1610743808;
    function Item(index: OleVariant): IDispatch; dispid 0;
    function _NewEnum: IUnknown; dispid -4;
    procedure Register(const pid: IDispatch; HWND: Integer; swClass: SYSINT; out plCookie: Integer); dispid 1610743811;
    procedure RegisterPending(lThreadId: Integer; var pvarloc: OleVariant; 
                              var pvarlocRoot: OleVariant; swClass: SYSINT; out plCookie: Integer); dispid 1610743812;
    procedure Revoke(lCookie: Integer); dispid 1610743813;
    procedure OnNavigate(lCookie: Integer; var pvarloc: OleVariant); dispid 1610743814;
    procedure OnActivated(lCookie: Integer; fActive: WordBool); dispid 1610743815;
    function FindWindow(var pvarloc: OleVariant; var pvarlocRoot: OleVariant; swClass: SYSINT; 
                        out pHWND: Integer; swfwOptions: SYSINT): IDispatch; dispid 1610743816;
    procedure OnCreated(lCookie: Integer; const punk: IUnknown); dispid 1610743817;
    procedure ProcessAttachDetach(fAttach: WordBool); dispid 1610743818;
  end;

// *********************************************************************//
// Interface: IShellLinkDual
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {88A05C00-F000-11CE-8350-444553540000}
// *********************************************************************//
  IShellLinkDual = interface(IDispatch)
    ['{88A05C00-F000-11CE-8350-444553540000}']
    function Get_Path: WideString; safecall;
    procedure Set_Path(const pbs: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pbs: WideString); safecall;
    function Get_WorkingDirectory: WideString; safecall;
    procedure Set_WorkingDirectory(const pbs: WideString); safecall;
    function Get_Arguments: WideString; safecall;
    procedure Set_Arguments(const pbs: WideString); safecall;
    function Get_Hotkey: SYSINT; safecall;
    procedure Set_Hotkey(piHK: SYSINT); safecall;
    function Get_ShowCommand: SYSINT; safecall;
    procedure Set_ShowCommand(piShowCommand: SYSINT); safecall;
    procedure Resolve(fFlags: SYSINT); safecall;
    function GetIconLocation(out pbs: WideString): SYSINT; safecall;
    procedure SetIconLocation(const bs: WideString; iIcon: SYSINT); safecall;
    procedure Save(vWhere: OleVariant); safecall;
    property Path: WideString read Get_Path write Set_Path;
    property Description: WideString read Get_Description write Set_Description;
    property WorkingDirectory: WideString read Get_WorkingDirectory write Set_WorkingDirectory;
    property Arguments: WideString read Get_Arguments write Set_Arguments;
    property Hotkey: SYSINT read Get_Hotkey write Set_Hotkey;
    property ShowCommand: SYSINT read Get_ShowCommand write Set_ShowCommand;
  end;

// *********************************************************************//
// DispIntf:  IShellLinkDualDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {88A05C00-F000-11CE-8350-444553540000}
// *********************************************************************//
  IShellLinkDualDisp = dispinterface
    ['{88A05C00-F000-11CE-8350-444553540000}']
    property Path: WideString dispid 1610743808;
    property Description: WideString dispid 1610743810;
    property WorkingDirectory: WideString dispid 1610743812;
    property Arguments: WideString dispid 1610743814;
    property Hotkey: SYSINT dispid 1610743816;
    property ShowCommand: SYSINT dispid 1610743818;
    procedure Resolve(fFlags: SYSINT); dispid 1610743820;
    function GetIconLocation(out pbs: WideString): SYSINT; dispid 1610743821;
    procedure SetIconLocation(const bs: WideString; iIcon: SYSINT); dispid 1610743822;
    procedure Save(vWhere: OleVariant); dispid 1610743823;
  end;

// *********************************************************************//
// Interface: FolderItemVerb
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08EC3E00-50B0-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  FolderItemVerb = interface(IDispatch)
    ['{08EC3E00-50B0-11CF-960C-0080C7F4EE85}']
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Name: WideString; safecall;
    procedure DoIt; safecall;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  FolderItemVerbDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {08EC3E00-50B0-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  FolderItemVerbDisp = dispinterface
    ['{08EC3E00-50B0-11CF-960C-0080C7F4EE85}']
    property Application_: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Name: WideString readonly dispid 0;
    procedure DoIt; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: FolderItemVerbs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F8352C0-50B0-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  FolderItemVerbs = interface(IDispatch)
    ['{1F8352C0-50B0-11CF-960C-0080C7F4EE85}']
    function Get_Count: Integer; safecall;
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Item(index: OleVariant): FolderItemVerb; safecall;
    function _NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FolderItemVerbsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F8352C0-50B0-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  FolderItemVerbsDisp = dispinterface
    ['{1F8352C0-50B0-11CF-960C-0080C7F4EE85}']
    property Count: Integer readonly dispid 1610743808;
    property Application_: IDispatch readonly dispid 1610743809;
    property Parent: IDispatch readonly dispid 1610743810;
    function Item(index: OleVariant): FolderItemVerb; dispid 1610743811;
    function _NewEnum: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: Folder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BBCBDE60-C3FF-11CE-8350-444553540000}
// *********************************************************************//
  Folder = interface(IDispatch)
    ['{BBCBDE60-C3FF-11CE-8350-444553540000}']
    function Get_Title: WideString; safecall;
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_ParentFolder: Folder; safecall;
    function Items: FolderItems; safecall;
    function ParseName(const bName: WideString): FolderItem; safecall;
    procedure NewFolder(const bName: WideString; vOptions: OleVariant); safecall;
    procedure MoveHere(vItem: OleVariant; vOptions: OleVariant); safecall;
    procedure CopyHere(vItem: OleVariant; vOptions: OleVariant); safecall;
    function GetDetailsOf(vItem: OleVariant; iColumn: SYSINT): WideString; safecall;
    property Title: WideString read Get_Title;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
    property ParentFolder: Folder read Get_ParentFolder;
  end;

// *********************************************************************//
// DispIntf:  FolderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BBCBDE60-C3FF-11CE-8350-444553540000}
// *********************************************************************//
  FolderDisp = dispinterface
    ['{BBCBDE60-C3FF-11CE-8350-444553540000}']
    property Title: WideString readonly dispid 0;
    property Application_: IDispatch readonly dispid 1610743809;
    property Parent: IDispatch readonly dispid 1610743810;
    property ParentFolder: Folder readonly dispid 1610743811;
    function Items: FolderItems; dispid 1610743812;
    function ParseName(const bName: WideString): FolderItem; dispid 1610743813;
    procedure NewFolder(const bName: WideString; vOptions: OleVariant); dispid 1610743814;
    procedure MoveHere(vItem: OleVariant; vOptions: OleVariant); dispid 1610743815;
    procedure CopyHere(vItem: OleVariant; vOptions: OleVariant); dispid 1610743816;
    function GetDetailsOf(vItem: OleVariant; iColumn: SYSINT): WideString; dispid 1610743817;
  end;

// *********************************************************************//
// Interface: FolderItems
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {744129E0-CBE5-11CE-8350-444553540000}
// *********************************************************************//
  FolderItems = interface(IDispatch)
    ['{744129E0-CBE5-11CE-8350-444553540000}']
    function Get_Count: Integer; safecall;
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Item(index: OleVariant): FolderItem; safecall;
    function _NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FolderItemsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {744129E0-CBE5-11CE-8350-444553540000}
// *********************************************************************//
  FolderItemsDisp = dispinterface
    ['{744129E0-CBE5-11CE-8350-444553540000}']
    property Count: Integer readonly dispid 1610743808;
    property Application_: IDispatch readonly dispid 1610743809;
    property Parent: IDispatch readonly dispid 1610743810;
    function Item(index: OleVariant): FolderItem; dispid 1610743811;
    function _NewEnum: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: FolderItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FAC32C80-CBE4-11CE-8350-444553540000}
// *********************************************************************//
  FolderItem = interface(IDispatch)
    ['{FAC32C80-CBE4-11CE-8350-444553540000}']
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pbs: WideString); safecall;
    function Get_Path: WideString; safecall;
    function Get_GetLink: IDispatch; safecall;
    function Get_GetFolder: IDispatch; safecall;
    function Get_IsLink: WordBool; safecall;
    function Get_IsFolder: WordBool; safecall;
    function Get_IsFileSystem: WordBool; safecall;
    function Get_IsBrowsable: WordBool; safecall;
    function Get_ModifyDate: TDateTime; safecall;
    procedure Set_ModifyDate(pdt: TDateTime); safecall;
    function Get_Size: Integer; safecall;
    function Get_Type_: WideString; safecall;
    function Verbs: FolderItemVerbs; safecall;
    procedure InvokeVerb(vVerb: OleVariant); safecall;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
    property Name: WideString read Get_Name write Set_Name;
    property Path: WideString read Get_Path;
    property GetLink: IDispatch read Get_GetLink;
    property GetFolder: IDispatch read Get_GetFolder;
    property IsLink: WordBool read Get_IsLink;
    property IsFolder: WordBool read Get_IsFolder;
    property IsFileSystem: WordBool read Get_IsFileSystem;
    property IsBrowsable: WordBool read Get_IsBrowsable;
    property ModifyDate: TDateTime read Get_ModifyDate write Set_ModifyDate;
    property Size: Integer read Get_Size;
    property Type_: WideString read Get_Type_;
  end;

// *********************************************************************//
// DispIntf:  FolderItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FAC32C80-CBE4-11CE-8350-444553540000}
// *********************************************************************//
  FolderItemDisp = dispinterface
    ['{FAC32C80-CBE4-11CE-8350-444553540000}']
    property Application_: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Name: WideString dispid 0;
    property Path: WideString readonly dispid 1610743812;
    property GetLink: IDispatch readonly dispid 1610743813;
    property GetFolder: IDispatch readonly dispid 1610743814;
    property IsLink: WordBool readonly dispid 1610743815;
    property IsFolder: WordBool readonly dispid 1610743816;
    property IsFileSystem: WordBool readonly dispid 1610743817;
    property IsBrowsable: WordBool readonly dispid 1610743818;
    property ModifyDate: TDateTime dispid 1610743819;
    property Size: Integer readonly dispid 1610743821;
    property Type_: WideString readonly dispid 1610743822;
    function Verbs: FolderItemVerbs; dispid 1610743823;
    procedure InvokeVerb(vVerb: OleVariant); dispid 1610743824;
  end;

// *********************************************************************//
// Interface: IShellFolderViewDual
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E7A1AF80-4D96-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  IShellFolderViewDual = interface(IDispatch)
    ['{E7A1AF80-4D96-11CF-960C-0080C7F4EE85}']
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Folder: Folder; safecall;
    function SelectedItems: FolderItems; safecall;
    function Get_FocusedItem: FolderItem; safecall;
    procedure SelectItem(var pvfi: OleVariant; dwFlags: SYSINT); safecall;
    function PopupItemMenu(const pfi: FolderItem; vx: OleVariant; vy: OleVariant): WideString; safecall;
    function Get_Script: IDispatch; safecall;
    function Get_ViewOptions: Integer; safecall;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
    property Folder: Folder read Get_Folder;
    property FocusedItem: FolderItem read Get_FocusedItem;
    property Script: IDispatch read Get_Script;
    property ViewOptions: Integer read Get_ViewOptions;
  end;

// *********************************************************************//
// DispIntf:  IShellFolderViewDualDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E7A1AF80-4D96-11CF-960C-0080C7F4EE85}
// *********************************************************************//
  IShellFolderViewDualDisp = dispinterface
    ['{E7A1AF80-4D96-11CF-960C-0080C7F4EE85}']
    property Application_: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Folder: Folder readonly dispid 1610743810;
    function SelectedItems: FolderItems; dispid 1610743811;
    property FocusedItem: FolderItem readonly dispid 1610743812;
    procedure SelectItem(var pvfi: OleVariant; dwFlags: SYSINT); dispid 1610743813;
    function PopupItemMenu(const pfi: FolderItem; vx: OleVariant; vy: OleVariant): WideString; dispid 1610743814;
    property Script: IDispatch readonly dispid 1610743815;
    property ViewOptions: Integer readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IShellDispatch
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D8F015C0-C278-11CE-A49E-444553540000}
// *********************************************************************//
  IShellDispatch = interface(IDispatch)
    ['{D8F015C0-C278-11CE-A49E-444553540000}']
    function Get_Application_: IDispatch; safecall;
    function Get_Parent: IDispatch; safecall;
    function NameSpace(vDir: OleVariant): Folder; safecall;
    function BrowseForFolder(HWND: Integer; const Title: WideString; Options: Integer; 
                             RootFolder: OleVariant): Folder; safecall;
    function Windows: IDispatch; safecall;
    procedure Open(vDir: OleVariant); safecall;
    procedure Explore(vDir: OleVariant); safecall;
    procedure MinimizeAll; safecall;
    procedure UndoMinimizeALL; safecall;
    procedure FileRun; safecall;
    procedure CascadeWindows; safecall;
    procedure TileVertically; safecall;
    procedure TileHorizontally; safecall;
    procedure ShutdownWindows; safecall;
    procedure Suspend; safecall;
    procedure EjectPC; safecall;
    procedure SetTime; safecall;
    procedure TrayProperties; safecall;
    procedure Help; safecall;
    procedure FindFiles; safecall;
    procedure FindComputer; safecall;
    procedure RefreshMenu; safecall;
    procedure ControlPanelItem(const szDir: WideString); safecall;
    property Application_: IDispatch read Get_Application_;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  IShellDispatchDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D8F015C0-C278-11CE-A49E-444553540000}
// *********************************************************************//
  IShellDispatchDisp = dispinterface
    ['{D8F015C0-C278-11CE-A49E-444553540000}']
    property Application_: IDispatch readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    function NameSpace(vDir: OleVariant): Folder; dispid 1610743810;
    function BrowseForFolder(HWND: Integer; const Title: WideString; Options: Integer; 
                             RootFolder: OleVariant): Folder; dispid 1610743811;
    function Windows: IDispatch; dispid 1610743812;
    procedure Open(vDir: OleVariant); dispid 1610743813;
    procedure Explore(vDir: OleVariant); dispid 1610743814;
    procedure MinimizeAll; dispid 1610743815;
    procedure UndoMinimizeALL; dispid 1610743816;
    procedure FileRun; dispid 1610743817;
    procedure CascadeWindows; dispid 1610743818;
    procedure TileVertically; dispid 1610743819;
    procedure TileHorizontally; dispid 1610743820;
    procedure ShutdownWindows; dispid 1610743821;
    procedure Suspend; dispid 1610743822;
    procedure EjectPC; dispid 1610743823;
    procedure SetTime; dispid 1610743824;
    procedure TrayProperties; dispid 1610743825;
    procedure Help; dispid 1610743826;
    procedure FindFiles; dispid 1610743827;
    procedure FindComputer; dispid 1610743828;
    procedure RefreshMenu; dispid 1610743829;
    procedure ControlPanelItem(const szDir: WideString); dispid 1610743830;
  end;

// *********************************************************************//
// Interface: IShellUIHelper
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {729FE2F8-1EA8-11D1-8F85-00C04FC2FBE1}
// *********************************************************************//
  IShellUIHelper = interface(IDispatch)
    ['{729FE2F8-1EA8-11D1-8F85-00C04FC2FBE1}']
    procedure ResetFirstBootMode; safecall;
    procedure ResetSafeMode; safecall;
    procedure RefreshOfflineDesktop; safecall;
    procedure AddFavorite(const URL: WideString; var Title: OleVariant); safecall;
    procedure AddChannel(const URL: WideString); safecall;
    procedure AddDesktopComponent(const URL: WideString; const Type_: WideString; 
                                  var Left: OleVariant; var Top: OleVariant; var Width: OleVariant; 
                                  var Height: OleVariant); safecall;
    function IsSubscribed(const URL: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IShellUIHelperDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {729FE2F8-1EA8-11D1-8F85-00C04FC2FBE1}
// *********************************************************************//
  IShellUIHelperDisp = dispinterface
    ['{729FE2F8-1EA8-11D1-8F85-00C04FC2FBE1}']
    procedure ResetFirstBootMode; dispid 1;
    procedure ResetSafeMode; dispid 2;
    procedure RefreshOfflineDesktop; dispid 3;
    procedure AddFavorite(const URL: WideString; var Title: OleVariant); dispid 4;
    procedure AddChannel(const URL: WideString); dispid 5;
    procedure AddDesktopComponent(const URL: WideString; const Type_: WideString; 
                                  var Left: OleVariant; var Top: OleVariant; var Width: OleVariant; 
                                  var Height: OleVariant); dispid 6;
    function IsSubscribed(const URL: WideString): WordBool; dispid 7;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TWebBrowser_V1
// Help String      : WebBrowser Control
// Default Interface: IWebBrowser
// Def. Intf. DISP? : No
// Event   Interface: DWebBrowserEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TWebBrowser_V1BeforeNavigate = procedure(Sender: TObject; const URL: WideString; Flags: Integer; 
                                                            const TargetFrameName: WideString; 
                                                            var PostData: OleVariant; 
                                                            const Headers: WideString; 
                                                            var Cancel: WordBool) of object;
  TWebBrowser_V1NavigateComplete = procedure(Sender: TObject; const URL: WideString) of object;
  TWebBrowser_V1StatusTextChange = procedure(Sender: TObject; const Text: WideString) of object;
  TWebBrowser_V1ProgressChange = procedure(Sender: TObject; Progress: Integer; ProgressMax: Integer) of object;
  TWebBrowser_V1CommandStateChange = procedure(Sender: TObject; Command: Integer; Enable: WordBool) of object;
  TWebBrowser_V1NewWindow = procedure(Sender: TObject; const URL: WideString; Flags: Integer; 
                                                       const TargetFrameName: WideString; 
                                                       var PostData: OleVariant; 
                                                       const Headers: WideString; 
                                                       var Processed: WordBool) of object;
  TWebBrowser_V1TitleChange = procedure(Sender: TObject; const Text: WideString) of object;
  TWebBrowser_V1FrameBeforeNavigate = procedure(Sender: TObject; const URL: WideString; 
                                                                 Flags: Integer; 
                                                                 const TargetFrameName: WideString; 
                                                                 var PostData: OleVariant; 
                                                                 const Headers: WideString; 
                                                                 var Cancel: WordBool) of object;
  TWebBrowser_V1FrameNavigateComplete = procedure(Sender: TObject; const URL: WideString) of object;
  TWebBrowser_V1FrameNewWindow = procedure(Sender: TObject; const URL: WideString; Flags: Integer; 
                                                            const TargetFrameName: WideString; 
                                                            var PostData: OleVariant; 
                                                            const Headers: WideString; 
                                                            var Processed: WordBool) of object;
  TWebBrowser_V1Quit = procedure(Sender: TObject; var Cancel: WordBool) of object;
  TWebBrowser_V1PropertyChange = procedure(Sender: TObject; const Property_: WideString) of object;

  TWebBrowser_V1 = class(TOleControl)
  private
    FOnBeforeNavigate: TWebBrowser_V1BeforeNavigate;
    FOnNavigateComplete: TWebBrowser_V1NavigateComplete;
    FOnStatusTextChange: TWebBrowser_V1StatusTextChange;
    FOnProgressChange: TWebBrowser_V1ProgressChange;
    FOnDownloadComplete: TNotifyEvent;
    FOnCommandStateChange: TWebBrowser_V1CommandStateChange;
    FOnDownloadBegin: TNotifyEvent;
    FOnNewWindow: TWebBrowser_V1NewWindow;
    FOnTitleChange: TWebBrowser_V1TitleChange;
    FOnFrameBeforeNavigate: TWebBrowser_V1FrameBeforeNavigate;
    FOnFrameNavigateComplete: TWebBrowser_V1FrameNavigateComplete;
    FOnFrameNewWindow: TWebBrowser_V1FrameNewWindow;
    FOnQuit: TWebBrowser_V1Quit;
    FOnWindowMove: TNotifyEvent;
    FOnWindowResize: TNotifyEvent;
    FOnWindowActivate: TNotifyEvent;
    FOnPropertyChange: TWebBrowser_V1PropertyChange;
    FIntf: IWebBrowser;
    function  GetControlInterface: IWebBrowser;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure GoBack;
    procedure GoForward;
    procedure GoHome;
    procedure GoSearch;
    procedure Navigate(const URL: WideString; var Flags: OleVariant; 
                       var TargetFrameName: OleVariant; var PostData: OleVariant; 
                       var Headers: OleVariant);
    procedure Refresh;
    procedure Refresh2(var Level: OleVariant);
    procedure Stop;
    property  ControlInterface: IWebBrowser read GetControlInterface;
    property Application_: IDispatch index 200 read GetIDispatchProp;
    property Parent: IDispatch index 201 read GetIDispatchProp;
    property Container: IDispatch index 202 read GetIDispatchProp;
    property Document: IDispatch index 203 read GetIDispatchProp;
    property TopLevelContainer: WordBool index 204 read GetWordBoolProp;
    property Type_: WideString index 205 read GetWideStringProp;
    property LocationName: WideString index 210 read GetWideStringProp;
    property LocationURL: WideString index 211 read GetWideStringProp;
    property Busy: WordBool index 212 read GetWordBoolProp;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property OnBeforeNavigate: TWebBrowser_V1BeforeNavigate read FOnBeforeNavigate write FOnBeforeNavigate;
    property OnNavigateComplete: TWebBrowser_V1NavigateComplete read FOnNavigateComplete write FOnNavigateComplete;
    property OnStatusTextChange: TWebBrowser_V1StatusTextChange read FOnStatusTextChange write FOnStatusTextChange;
    property OnProgressChange: TWebBrowser_V1ProgressChange read FOnProgressChange write FOnProgressChange;
    property OnDownloadComplete: TNotifyEvent read FOnDownloadComplete write FOnDownloadComplete;
    property OnCommandStateChange: TWebBrowser_V1CommandStateChange read FOnCommandStateChange write FOnCommandStateChange;
    property OnDownloadBegin: TNotifyEvent read FOnDownloadBegin write FOnDownloadBegin;
    property OnNewWindow: TWebBrowser_V1NewWindow read FOnNewWindow write FOnNewWindow;
    property OnTitleChange: TWebBrowser_V1TitleChange read FOnTitleChange write FOnTitleChange;
    property OnFrameBeforeNavigate: TWebBrowser_V1FrameBeforeNavigate read FOnFrameBeforeNavigate write FOnFrameBeforeNavigate;
    property OnFrameNavigateComplete: TWebBrowser_V1FrameNavigateComplete read FOnFrameNavigateComplete write FOnFrameNavigateComplete;
    property OnFrameNewWindow: TWebBrowser_V1FrameNewWindow read FOnFrameNewWindow write FOnFrameNewWindow;
    property OnQuit: TWebBrowser_V1Quit read FOnQuit write FOnQuit;
    property OnWindowMove: TNotifyEvent read FOnWindowMove write FOnWindowMove;
    property OnWindowResize: TNotifyEvent read FOnWindowResize write FOnWindowResize;
    property OnWindowActivate: TNotifyEvent read FOnWindowActivate write FOnWindowActivate;
    property OnPropertyChange: TWebBrowser_V1PropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TWebBrowser
// Help String      : WebBrowser Control
// Default Interface: IWebBrowser2
// Def. Intf. DISP? : No
// Event   Interface: DWebBrowserEvents2
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TWebBrowserStatusTextChange = procedure(Sender: TObject; const Text: WideString) of object;
  TWebBrowserProgressChange = procedure(Sender: TObject; Progress: Integer; ProgressMax: Integer) of object;
  TWebBrowserCommandStateChange = procedure(Sender: TObject; Command: Integer; Enable: WordBool) of object;
  TWebBrowserTitleChange = procedure(Sender: TObject; const Text: WideString) of object;
  TWebBrowserPropertyChange = procedure(Sender: TObject; const szProperty: WideString) of object;
  TWebBrowserBeforeNavigate2 = procedure(Sender: TObject; const pDisp: IDispatch; 
                                                          var URL: OleVariant; 
                                                          var Flags: OleVariant; 
                                                          var TargetFrameName: OleVariant; 
                                                          var PostData: OleVariant; 
                                                          var Headers: OleVariant; 
                                                          var Cancel: WordBool) of object;
  TWebBrowserNewWindow2 = procedure(Sender: TObject; var ppDisp: IDispatch; var Cancel: WordBool) of object;
  TWebBrowserNavigateComplete2 = procedure(Sender: TObject; const pDisp: IDispatch; 
                                                            var URL: OleVariant) of object;
  TWebBrowserDocumentComplete = procedure(Sender: TObject; const pDisp: IDispatch; 
                                                           var URL: OleVariant) of object;
  TWebBrowserOnVisible = procedure(Sender: TObject; Visible: WordBool) of object;
  TWebBrowserOnToolBar = procedure(Sender: TObject; ToolBar: WordBool) of object;
  TWebBrowserOnMenuBar = procedure(Sender: TObject; MenuBar: WordBool) of object;
  TWebBrowserOnStatusBar = procedure(Sender: TObject; StatusBar: WordBool) of object;
  TWebBrowserOnFullScreen = procedure(Sender: TObject; FullScreen: WordBool) of object;
  TWebBrowserOnTheaterMode = procedure(Sender: TObject; TheaterMode: WordBool) of object;

  TWebBrowser = class(TOleControl)
  private
    FOnStatusTextChange: TWebBrowserStatusTextChange;
    FOnProgressChange: TWebBrowserProgressChange;
    FOnCommandStateChange: TWebBrowserCommandStateChange;
    FOnDownloadBegin: TNotifyEvent;
    FOnDownloadComplete: TNotifyEvent;
    FOnTitleChange: TWebBrowserTitleChange;
    FOnPropertyChange: TWebBrowserPropertyChange;
    FOnBeforeNavigate2: TWebBrowserBeforeNavigate2;
    FOnNewWindow2: TWebBrowserNewWindow2;
    FOnNavigateComplete2: TWebBrowserNavigateComplete2;
    FOnDocumentComplete: TWebBrowserDocumentComplete;
    FOnQuit: TNotifyEvent;
    FOnVisible: TWebBrowserOnVisible;
    FOnToolBar: TWebBrowserOnToolBar;
    FOnMenuBar: TWebBrowserOnMenuBar;
    FOnStatusBar: TWebBrowserOnStatusBar;
    FOnFullScreen: TWebBrowserOnFullScreen;
    FOnTheaterMode: TWebBrowserOnTheaterMode;
    FIntf: IWebBrowser2;
    function  GetControlInterface: IWebBrowser2;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure GoBack;
    procedure GoForward;
    procedure GoHome;
    procedure GoSearch;
    procedure Navigate(const URL: WideString; var Flags: OleVariant; 
                       var TargetFrameName: OleVariant; var PostData: OleVariant; 
                       var Headers: OleVariant);
    procedure Refresh;
    procedure Refresh2(var Level: OleVariant);
    procedure Stop;
    procedure Quit;
    procedure ClientToWindow(var pcx: SYSINT; var pcy: SYSINT);
    procedure PutProperty(const Property_: WideString; vtValue: OleVariant);
    function GetProperty(const Property_: WideString; out pvtValue: OleVariant): OleVariant;
    procedure Navigate2(var URL: OleVariant; var Flags: OleVariant; 
                        var TargetFrameName: OleVariant; var PostData: OleVariant; 
                        var Headers: OleVariant);
    function QueryStatusWB(cmdID: OLECMDID; out pcmdf: OLECMDF): OLECMDF;
    procedure ExecWB(cmdID: OLECMDID; cmdexecopt: OLECMDEXECOPT; var pvaIn: OleVariant; 
                     var pvaOut: OleVariant);
    procedure ShowBrowserBar(var pvaClsid: OleVariant; var pvarShow: OleVariant; 
                             var pvarSize: OleVariant);
    property  ControlInterface: IWebBrowser2 read GetControlInterface;
    property Application_: IDispatch index 200 read GetIDispatchProp;
    property Parent: IDispatch index 201 read GetIDispatchProp;
    property Container: IDispatch index 202 read GetIDispatchProp;
    property Document: IDispatch index 203 read GetIDispatchProp;
    property TopLevelContainer: WordBool index 204 read GetWordBoolProp;
    property Type_: WideString index 205 read GetWideStringProp;
    property LocationName: WideString index 210 read GetWideStringProp;
    property LocationURL: WideString index 211 read GetWideStringProp;
    property Busy: WordBool index 212 read GetWordBoolProp;
    property Name: WideString index 0 read GetWideStringProp;
    property HWND: Integer index -515 read GetIntegerProp;
    property FullName: WideString index 400 read GetWideStringProp;
    property Path: WideString index 401 read GetWideStringProp;
    property ReadyState: TOleEnum index -525 read GetTOleEnumProp;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property Visible: WordBool index 402 read GetWordBoolProp write SetWordBoolProp stored False;
    property StatusBar: WordBool index 403 read GetWordBoolProp write SetWordBoolProp stored False;
    property StatusText: WideString index 404 read GetWideStringProp write SetWideStringProp stored False;
    property ToolBar: Integer index 405 read GetIntegerProp write SetIntegerProp stored False;
    property MenuBar: WordBool index 406 read GetWordBoolProp write SetWordBoolProp stored False;
    property FullScreen: WordBool index 407 read GetWordBoolProp write SetWordBoolProp stored False;
    property Offline: WordBool index 550 read GetWordBoolProp write SetWordBoolProp stored False;
    property Silent: WordBool index 551 read GetWordBoolProp write SetWordBoolProp stored False;
    property RegisterAsBrowser: WordBool index 552 read GetWordBoolProp write SetWordBoolProp stored False;
    property RegisterAsDropTarget: WordBool index 553 read GetWordBoolProp write SetWordBoolProp stored False;
    property TheaterMode: WordBool index 554 read GetWordBoolProp write SetWordBoolProp stored False;
    property AddressBar: WordBool index 555 read GetWordBoolProp write SetWordBoolProp stored False;
    property Resizable: WordBool index 556 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnStatusTextChange: TWebBrowserStatusTextChange read FOnStatusTextChange write FOnStatusTextChange;
    property OnProgressChange: TWebBrowserProgressChange read FOnProgressChange write FOnProgressChange;
    property OnCommandStateChange: TWebBrowserCommandStateChange read FOnCommandStateChange write FOnCommandStateChange;
    property OnDownloadBegin: TNotifyEvent read FOnDownloadBegin write FOnDownloadBegin;
    property OnDownloadComplete: TNotifyEvent read FOnDownloadComplete write FOnDownloadComplete;
    property OnTitleChange: TWebBrowserTitleChange read FOnTitleChange write FOnTitleChange;
    property OnPropertyChange: TWebBrowserPropertyChange read FOnPropertyChange write FOnPropertyChange;
    property OnBeforeNavigate2: TWebBrowserBeforeNavigate2 read FOnBeforeNavigate2 write FOnBeforeNavigate2;
    property OnNewWindow2: TWebBrowserNewWindow2 read FOnNewWindow2 write FOnNewWindow2;
    property OnNavigateComplete2: TWebBrowserNavigateComplete2 read FOnNavigateComplete2 write FOnNavigateComplete2;
    property OnDocumentComplete: TWebBrowserDocumentComplete read FOnDocumentComplete write FOnDocumentComplete;
    property OnQuit: TNotifyEvent read FOnQuit write FOnQuit;
    property OnVisible: TWebBrowserOnVisible read FOnVisible write FOnVisible;
    property OnToolBar: TWebBrowserOnToolBar read FOnToolBar write FOnToolBar;
    property OnMenuBar: TWebBrowserOnMenuBar read FOnMenuBar write FOnMenuBar;
    property OnStatusBar: TWebBrowserOnStatusBar read FOnStatusBar write FOnStatusBar;
    property OnFullScreen: TWebBrowserOnFullScreen read FOnFullScreen write FOnFullScreen;
    property OnTheaterMode: TWebBrowserOnTheaterMode read FOnTheaterMode write FOnTheaterMode;
  end;

  CoInternetExplorer = class
    class function Create: IWebBrowser2;
    class function CreateRemote(const MachineName: string): IWebBrowser2;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TShellFolderViewOC
// Help String      : Shell Folder View Events Router.
// Default Interface: IFolderViewOC
// Def. Intf. DISP? : No
// Event   Interface: DShellFolderViewEvents
// TypeFlags        : (18) CanCreate Hidden
// *********************************************************************//
  TShellFolderViewOC = class(TOleControl)
  private
    FOnSelectionChanged: TNotifyEvent;
    FIntf: IFolderViewOC;
    function  GetControlInterface: IFolderViewOC;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure SetFolderView(const pDisp: IDispatch);
    property  ControlInterface: IFolderViewOC read GetControlInterface;
  published
    property OnSelectionChanged: TNotifyEvent read FOnSelectionChanged write FOnSelectionChanged;
  end;

  CoShellWindows = class
    class function Create: IShellWindows;
    class function CreateRemote(const MachineName: string): IShellWindows;
  end;

  CoShellLinkObject = class
    class function Create: IShellLinkDual;
    class function CreateRemote(const MachineName: string): IShellLinkDual;
  end;

  CoShellFolderView = class
    class function Create: IShellFolderViewDual;
    class function CreateRemote(const MachineName: string): IShellFolderViewDual;
  end;

  CoShell = class
    class function Create: IShellDispatch;
    class function CreateRemote(const MachineName: string): IShellDispatch;
  end;

  CoShellDispatchInproc = class
    class function Create: IUnknown;
    class function CreateRemote(const MachineName: string): IUnknown;
  end;

  CoWebViewFolderContents = class
    class function Create: IShellFolderViewDual;
    class function CreateRemote(const MachineName: string): IShellFolderViewDual;
  end;

  CoShellUIHelper = class
    class function Create: IShellUIHelper;
    class function CreateRemote(const MachineName: string): IShellUIHelper;
  end;

procedure Register;

implementation

uses ComObj;

procedure TWebBrowser_V1.InitControlData;
const
  CEventDispIDs: array [0..16] of DWORD = (
    $00000064, $00000065, $00000066, $0000006C, $00000068, $00000069,
    $0000006A, $0000006B, $00000071, $000000C8, $000000C9, $000000CC,
    $00000067, $0000006D, $0000006E, $0000006F, $00000070);
  CControlData: TControlData = (
    ClassID: '{EAB22AC3-30C1-11CF-A7EB-0000C05BAE0B}';
    EventIID: '{EAB22AC2-30C1-11CF-A7EB-0000C05BAE0B}';
    EventCount: 17;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TWebBrowser_V1.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IWebBrowser;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TWebBrowser_V1.GetControlInterface: IWebBrowser;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TWebBrowser_V1.GoBack;
begin
  ControlInterface.GoBack;
end;

procedure TWebBrowser_V1.GoForward;
begin
  ControlInterface.GoForward;
end;

procedure TWebBrowser_V1.GoHome;
begin
  ControlInterface.GoHome;
end;

procedure TWebBrowser_V1.GoSearch;
begin
  ControlInterface.GoSearch;
end;

procedure TWebBrowser_V1.Navigate(const URL: WideString; var Flags: OleVariant; 
                                  var TargetFrameName: OleVariant; var PostData: OleVariant; 
                                  var Headers: OleVariant);
begin
  ControlInterface.Navigate(URL, Flags, TargetFrameName, PostData, Headers);
end;

procedure TWebBrowser_V1.Refresh;
begin
  ControlInterface.Refresh;
end;

procedure TWebBrowser_V1.Refresh2(var Level: OleVariant);
begin
  ControlInterface.Refresh2(Level);
end;

procedure TWebBrowser_V1.Stop;
begin
  ControlInterface.Stop;
end;

procedure TWebBrowser.InitControlData;
const
  CEventDispIDs: array [0..17] of DWORD = (
    $00000066, $0000006C, $00000069, $0000006A, $00000068, $00000071,
    $00000070, $000000FA, $000000FB, $000000FC, $00000103, $000000FD,
    $000000FE, $000000FF, $00000100, $00000101, $00000102, $00000104);
  CControlData: TControlData = (
    ClassID: '{8856F961-340A-11D0-A96B-00C04FD705A2}';
    EventIID: '{34A715A0-6587-11D0-924A-0020AFC7AC4D}';
    EventCount: 18;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TWebBrowser.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IWebBrowser2;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TWebBrowser.GetControlInterface: IWebBrowser2;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TWebBrowser.GoBack;
begin
  ControlInterface.GoBack;
end;

procedure TWebBrowser.GoForward;
begin
  ControlInterface.GoForward;
end;

procedure TWebBrowser.GoHome;
begin
  ControlInterface.GoHome;
end;

procedure TWebBrowser.GoSearch;
begin
  ControlInterface.GoSearch;
end;

procedure TWebBrowser.Navigate(const URL: WideString; var Flags: OleVariant; 
                               var TargetFrameName: OleVariant; var PostData: OleVariant; 
                               var Headers: OleVariant);
begin
  ControlInterface.Navigate(URL, Flags, TargetFrameName, PostData, Headers);
end;

procedure TWebBrowser.Refresh;
begin
  ControlInterface.Refresh;
end;

procedure TWebBrowser.Refresh2(var Level: OleVariant);
begin
  ControlInterface.Refresh2(Level);
end;

procedure TWebBrowser.Stop;
begin
  ControlInterface.Stop;
end;

procedure TWebBrowser.Quit;
begin
  ControlInterface.Quit;
end;

procedure TWebBrowser.ClientToWindow(var pcx: SYSINT; var pcy: SYSINT);
begin
  ControlInterface.ClientToWindow(pcx, pcy);
end;

procedure TWebBrowser.PutProperty(const Property_: WideString; vtValue: OleVariant);
begin
  ControlInterface.PutProperty(Property_, vtValue);
end;

function TWebBrowser.GetProperty(const Property_: WideString; out pvtValue: OleVariant): OleVariant;
begin
  Result := ControlInterface.GetProperty(Property_);
end;

procedure TWebBrowser.Navigate2(var URL: OleVariant; var Flags: OleVariant; 
                                var TargetFrameName: OleVariant; var PostData: OleVariant; 
                                var Headers: OleVariant);
begin
  ControlInterface.Navigate2(URL, Flags, TargetFrameName, PostData, Headers);
end;

function TWebBrowser.QueryStatusWB(cmdID: OLECMDID; out pcmdf: OLECMDF): OLECMDF;
begin
  Result := ControlInterface.QueryStatusWB(cmdID);
end;

procedure TWebBrowser.ExecWB(cmdID: OLECMDID; cmdexecopt: OLECMDEXECOPT; var pvaIn: OleVariant; 
                             var pvaOut: OleVariant);
begin
  ControlInterface.ExecWB(cmdID, cmdexecopt, pvaIn, pvaOut);
end;

procedure TWebBrowser.ShowBrowserBar(var pvaClsid: OleVariant; var pvarShow: OleVariant; 
                                     var pvarSize: OleVariant);
begin
  ControlInterface.ShowBrowserBar(pvaClsid, pvarShow, pvarSize);
end;

class function CoInternetExplorer.Create: IWebBrowser2;
begin
  Result := CreateComObject(CLASS_InternetExplorer) as IWebBrowser2;
end;

class function CoInternetExplorer.CreateRemote(const MachineName: string): IWebBrowser2;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_InternetExplorer) as IWebBrowser2;
end;

procedure TShellFolderViewOC.InitControlData;
const
  CEventDispIDs: array [0..0] of DWORD = (
    $000000C8);
  CControlData: TControlData = (
    ClassID: '{9BA05971-F6A8-11CF-A442-00A0C90A8F39}';
    EventIID: '{62112AA2-EBE4-11CF-A5FB-0020AFE7292D}';
    EventCount: 1;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TShellFolderViewOC.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IFolderViewOC;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TShellFolderViewOC.GetControlInterface: IFolderViewOC;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TShellFolderViewOC.SetFolderView(const pDisp: IDispatch);
begin
  ControlInterface.SetFolderView(pDisp);
end;

class function CoShellWindows.Create: IShellWindows;
begin
  Result := CreateComObject(CLASS_ShellWindows) as IShellWindows;
end;

class function CoShellWindows.CreateRemote(const MachineName: string): IShellWindows;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ShellWindows) as IShellWindows;
end;

class function CoShellLinkObject.Create: IShellLinkDual;
begin
  Result := CreateComObject(CLASS_ShellLinkObject) as IShellLinkDual;
end;

class function CoShellLinkObject.CreateRemote(const MachineName: string): IShellLinkDual;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ShellLinkObject) as IShellLinkDual;
end;

class function CoShellFolderView.Create: IShellFolderViewDual;
begin
  Result := CreateComObject(CLASS_ShellFolderView) as IShellFolderViewDual;
end;

class function CoShellFolderView.CreateRemote(const MachineName: string): IShellFolderViewDual;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ShellFolderView) as IShellFolderViewDual;
end;

class function CoShell.Create: IShellDispatch;
begin
  Result := CreateComObject(CLASS_Shell) as IShellDispatch;
end;

class function CoShell.CreateRemote(const MachineName: string): IShellDispatch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Shell) as IShellDispatch;
end;

class function CoShellDispatchInproc.Create: IUnknown;
begin
  Result := CreateComObject(CLASS_ShellDispatchInproc) as IUnknown;
end;

class function CoShellDispatchInproc.CreateRemote(const MachineName: string): IUnknown;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ShellDispatchInproc) as IUnknown;
end;

class function CoWebViewFolderContents.Create: IShellFolderViewDual;
begin
  Result := CreateComObject(CLASS_WebViewFolderContents) as IShellFolderViewDual;
end;

class function CoWebViewFolderContents.CreateRemote(const MachineName: string): IShellFolderViewDual;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WebViewFolderContents) as IShellFolderViewDual;
end;

class function CoShellUIHelper.Create: IShellUIHelper;
begin
  Result := CreateComObject(CLASS_ShellUIHelper) as IShellUIHelper;
end;

class function CoShellUIHelper.CreateRemote(const MachineName: string): IShellUIHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ShellUIHelper) as IShellUIHelper;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TWebBrowser_V1, TWebBrowser, TShellFolderViewOC]);
end;

end.
