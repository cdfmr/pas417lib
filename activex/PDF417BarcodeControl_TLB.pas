unit PDF417BarcodeControl_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 2009-6-15 17:03:44 from Type Library described below.

// ************************************************************************  //
// Type Lib: F:\pdf417lib\activex\PDF417.tlb (1)
// LIBID: {9DF97FE1-3F60-4ED7-AC4F-7265352D404B}
// LCID: 0
// Helpfile: 
// HelpString: PDF417BarcodeControl Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PDF417BarcodeControlMajorVersion = 1;
  PDF417BarcodeControlMinorVersion = 0;

  LIBID_PDF417BarcodeControl: TGUID = '{9DF97FE1-3F60-4ED7-AC4F-7265352D404B}';

  IID_IPDF417Barcode: TGUID = '{C1B42831-0530-48F5-814B-C3EB8388E796}';
  DIID_IPDF417BarcodeEvents: TGUID = '{66610659-C019-4DF5-8D8F-3A27E9A1E190}';
  CLASS_PDF417Barcode: TGUID = '{8E6F43E0-D9C5-4BD7-BC5F-9C1F98D6C3FD}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPDF417Barcode = interface;
  IPDF417BarcodeDisp = dispinterface;
  IPDF417BarcodeEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  PDF417Barcode = IPDF417Barcode;


// *********************************************************************//
// Interface: IPDF417Barcode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C1B42831-0530-48F5-814B-C3EB8388E796}
// *********************************************************************//
  IPDF417Barcode = interface(IDispatch)
    ['{C1B42831-0530-48F5-814B-C3EB8388E796}']
    procedure SaveToFile(const AFileName: WideString); safecall;
    function DrawTo(DC: LongWord; X: Integer; Y: Integer; Zoom: Integer; AutoZoom: WordBool): WordBool; safecall;
    function Get_BarcodeWidth: Integer; safecall;
    procedure Set_BarcodeWidth(Value: Integer); safecall;
    function Get_BarcodeHeight: Integer; safecall;
    procedure Set_BarcodeHeight(Value: Integer); safecall;
    function Get_Lines: WideString; safecall;
    procedure Set_Lines(const Value: WideString); safecall;
    function Get_ErrorLevel: Integer; safecall;
    procedure Set_ErrorLevel(Value: Integer); safecall;
    function Get_AutoSize: WordBool; safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    function Get_AutoErrorLevel: WordBool; safecall;
    procedure Set_AutoErrorLevel(Value: WordBool); safecall;
    function Get_DrawWithFixedColumn: WordBool; safecall;
    procedure Set_DrawWithFixedColumn(Value: WordBool); safecall;
    function Get_DrawWithFixedRow: WordBool; safecall;
    procedure Set_DrawWithFixedRow(Value: WordBool); safecall;
    function Get_FixedColumn: Integer; safecall;
    procedure Set_FixedColumn(Value: Integer); safecall;
    function Get_FixedRow: Integer; safecall;
    procedure Set_FixedRow(Value: Integer); safecall;
    function Get_LineHeight: Integer; safecall;
    procedure Set_LineHeight(Value: Integer); safecall;
    function Get_DotSize: Integer; safecall;
    procedure Set_DotSize(Value: Integer); safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    procedure InitiateAction; safecall;
    function IsRightToLeft: WordBool; safecall;
    function UseRightToLeftReading: WordBool; safecall;
    function UseRightToLeftScrollBar: WordBool; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    procedure SetSubComponent(IsSubComponent: WordBool); safecall;
    procedure AboutBox; safecall;
    property BarcodeWidth: Integer read Get_BarcodeWidth write Set_BarcodeWidth;
    property BarcodeHeight: Integer read Get_BarcodeHeight write Set_BarcodeHeight;
    property Lines: WideString read Get_Lines write Set_Lines;
    property ErrorLevel: Integer read Get_ErrorLevel write Set_ErrorLevel;
    property AutoSize: WordBool read Get_AutoSize write Set_AutoSize;
    property AutoErrorLevel: WordBool read Get_AutoErrorLevel write Set_AutoErrorLevel;
    property DrawWithFixedColumn: WordBool read Get_DrawWithFixedColumn write Set_DrawWithFixedColumn;
    property DrawWithFixedRow: WordBool read Get_DrawWithFixedRow write Set_DrawWithFixedRow;
    property FixedColumn: Integer read Get_FixedColumn write Set_FixedColumn;
    property FixedRow: Integer read Get_FixedRow write Set_FixedRow;
    property LineHeight: Integer read Get_LineHeight write Set_LineHeight;
    property DotSize: Integer read Get_DotSize write Set_DotSize;
    property DoubleBuffered: WordBool read Get_DoubleBuffered write Set_DoubleBuffered;
    property AlignDisabled: WordBool read Get_AlignDisabled;
    property VisibleDockClientCount: Integer read Get_VisibleDockClientCount;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;

// *********************************************************************//
// DispIntf:  IPDF417BarcodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C1B42831-0530-48F5-814B-C3EB8388E796}
// *********************************************************************//
  IPDF417BarcodeDisp = dispinterface
    ['{C1B42831-0530-48F5-814B-C3EB8388E796}']
    procedure SaveToFile(const AFileName: WideString); dispid 201;
    function DrawTo(DC: LongWord; X: Integer; Y: Integer; Zoom: Integer; AutoZoom: WordBool): WordBool; dispid 202;
    property BarcodeWidth: Integer dispid 203;
    property BarcodeHeight: Integer dispid 204;
    property Lines: WideString dispid 205;
    property ErrorLevel: Integer dispid 206;
    property AutoSize: WordBool dispid 207;
    property AutoErrorLevel: WordBool dispid 208;
    property DrawWithFixedColumn: WordBool dispid 209;
    property DrawWithFixedRow: WordBool dispid 210;
    property FixedColumn: Integer dispid 211;
    property FixedRow: Integer dispid 212;
    property LineHeight: Integer dispid 213;
    property DotSize: Integer dispid 214;
    property DoubleBuffered: WordBool dispid 215;
    property AlignDisabled: WordBool readonly dispid 216;
    property VisibleDockClientCount: Integer readonly dispid 217;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; dispid 218;
    property Enabled: WordBool dispid -514;
    procedure InitiateAction; dispid 219;
    function IsRightToLeft: WordBool; dispid 220;
    function UseRightToLeftReading: WordBool; dispid 221;
    function UseRightToLeftScrollBar: WordBool; dispid 222;
    property Visible: WordBool dispid 223;
    procedure SetSubComponent(IsSubComponent: WordBool); dispid 224;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  IPDF417BarcodeEvents
// Flags:     (4096) Dispatchable
// GUID:      {66610659-C019-4DF5-8D8F-3A27E9A1E190}
// *********************************************************************//
  IPDF417BarcodeEvents = dispinterface
    ['{66610659-C019-4DF5-8D8F-3A27E9A1E190}']
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TPDF417Barcode
// Help String      : PDF417Barcode Control
// Default Interface: IPDF417Barcode
// Def. Intf. DISP? : No
// Event   Interface: IPDF417BarcodeEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TPDF417Barcode = class(TOleControl)
  private
    FIntf: IPDF417Barcode;
    function  GetControlInterface: IPDF417Barcode;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure SaveToFile(const AFileName: WideString);
    function DrawTo(DC: LongWord; X: Integer; Y: Integer; Zoom: Integer; AutoZoom: WordBool): WordBool;
    function DrawTextBiDiModeFlagsReadingOnly: Integer;
    procedure InitiateAction;
    function IsRightToLeft: WordBool;
    function UseRightToLeftReading: WordBool;
    function UseRightToLeftScrollBar: WordBool;
    procedure SetSubComponent(IsSubComponent: WordBool);
    procedure AboutBox;
    property  ControlInterface: IPDF417Barcode read GetControlInterface;
    property  DefaultInterface: IPDF417Barcode read GetControlInterface;
    property BarcodeWidth: Integer index 203 read GetIntegerProp write SetIntegerProp;
    property BarcodeHeight: Integer index 204 read GetIntegerProp write SetIntegerProp;
    property DoubleBuffered: WordBool index 215 read GetWordBoolProp write SetWordBoolProp;
    property AlignDisabled: WordBool index 216 read GetWordBoolProp;
    property VisibleDockClientCount: Integer index 217 read GetIntegerProp;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp;
    property Visible: WordBool index 223 read GetWordBoolProp write SetWordBoolProp;
  published
    property Anchors;
    property Lines: WideString index 205 read GetWideStringProp write SetWideStringProp stored False;
    property ErrorLevel: Integer index 206 read GetIntegerProp write SetIntegerProp stored False;
    property AutoSize: WordBool index 207 read GetWordBoolProp write SetWordBoolProp stored False;
    property AutoErrorLevel: WordBool index 208 read GetWordBoolProp write SetWordBoolProp stored False;
    property DrawWithFixedColumn: WordBool index 209 read GetWordBoolProp write SetWordBoolProp stored False;
    property DrawWithFixedRow: WordBool index 210 read GetWordBoolProp write SetWordBoolProp stored False;
    property FixedColumn: Integer index 211 read GetIntegerProp write SetIntegerProp stored False;
    property FixedRow: Integer index 212 read GetIntegerProp write SetIntegerProp stored False;
    property LineHeight: Integer index 213 read GetIntegerProp write SetIntegerProp stored False;
    property DotSize: Integer index 214 read GetIntegerProp write SetIntegerProp stored False;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TPDF417Barcode.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{8E6F43E0-D9C5-4BD7-BC5F-9C1F98D6C3FD}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$80040154*);
    Flags: $00000008;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TPDF417Barcode.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPDF417Barcode;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TPDF417Barcode.GetControlInterface: IPDF417Barcode;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPDF417Barcode.SaveToFile(const AFileName: WideString);
begin
  DefaultInterface.SaveToFile(AFileName);
end;

function TPDF417Barcode.DrawTo(DC: LongWord; X: Integer; Y: Integer; Zoom: Integer; 
                               AutoZoom: WordBool): WordBool;
begin
  Result := DefaultInterface.DrawTo(DC, X, Y, Zoom, AutoZoom);
end;

function TPDF417Barcode.DrawTextBiDiModeFlagsReadingOnly: Integer;
begin
  Result := DefaultInterface.DrawTextBiDiModeFlagsReadingOnly;
end;

procedure TPDF417Barcode.InitiateAction;
begin
  DefaultInterface.InitiateAction;
end;

function TPDF417Barcode.IsRightToLeft: WordBool;
begin
  Result := DefaultInterface.IsRightToLeft;
end;

function TPDF417Barcode.UseRightToLeftReading: WordBool;
begin
  Result := DefaultInterface.UseRightToLeftReading;
end;

function TPDF417Barcode.UseRightToLeftScrollBar: WordBool;
begin
  Result := DefaultInterface.UseRightToLeftScrollBar;
end;

procedure TPDF417Barcode.SetSubComponent(IsSubComponent: WordBool);
begin
  DefaultInterface.SetSubComponent(IsSubComponent);
end;

procedure TPDF417Barcode.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TPDF417Barcode]);
end;

end.
