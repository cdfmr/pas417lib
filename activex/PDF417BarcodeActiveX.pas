unit PDF417BarcodeActiveX;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, Controls, Graphics, Menus, Forms, StdCtrls,
  ComServ, StdVCL, AXCtrls, PDF417BarcodeControl_TLB, PDF417Barcode;

type
  TPDF417Barcode = class(TActiveXControl, IPDF417Barcode)
  private
    { Private declarations }
    FDelphiControl: TPDF417BarcodeVCL;
    FEvents: IPDF417BarcodeEvents;
  protected
    { Protected declarations }
    procedure DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage); override;
    procedure EventSinkChanged(const EventSink: IUnknown); override;
    procedure InitializeControl; override;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; safecall;
    function DrawTo(DC: LongWord; X, Y, Zoom: Integer;
      AutoZoom: WordBool): WordBool; safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_AutoErrorLevel: WordBool; safecall;
    function Get_AutoSize: WordBool; safecall;
    function Get_BarcodeHeight: Integer; safecall;
    function Get_BarcodeWidth: Integer; safecall;
    function Get_DotSize: Integer; safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    function Get_DrawWithFixedColumn: WordBool; safecall;
    function Get_DrawWithFixedRow: WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_ErrorLevel: Integer; safecall;
    function Get_FixedColumn: Integer; safecall;
    function Get_FixedRow: Integer; safecall;
    function Get_LineHeight: Integer; safecall;
    function Get_Lines: WideString; safecall;
    function Get_Visible: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    function IsRightToLeft: WordBool; safecall;
    function UseRightToLeftReading: WordBool; safecall;
    function UseRightToLeftScrollBar: WordBool; safecall;
    procedure AboutBox; safecall;
    procedure InitiateAction; safecall;
    procedure SaveToFile(const AFileName: WideString); safecall;
    procedure Set_AutoErrorLevel(Value: WordBool); safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    procedure Set_BarcodeHeight(Value: Integer); safecall;
    procedure Set_BarcodeWidth(Value: Integer); safecall;
    procedure Set_DotSize(Value: Integer); safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    procedure Set_DrawWithFixedColumn(Value: WordBool); safecall;
    procedure Set_DrawWithFixedRow(Value: WordBool); safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    procedure Set_ErrorLevel(Value: Integer); safecall;
    procedure Set_FixedColumn(Value: Integer); safecall;
    procedure Set_FixedRow(Value: Integer); safecall;
    procedure Set_LineHeight(Value: Integer); safecall;
    procedure Set_Lines(const Value: WideString); safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    procedure SetSubComponent(IsSubComponent: WordBool); safecall;
  end;

implementation

uses ComObj, About;

{ TPDF417Barcode }

procedure TPDF417Barcode.DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage);
begin
  {TODO: Define property pages here.  Property pages are defined by calling
    DefinePropertyPage with the class id of the page.  For example,
      DefinePropertyPage(Class_PDF417BarcodePage); }
end;

procedure TPDF417Barcode.EventSinkChanged(const EventSink: IUnknown);
begin
  FEvents := EventSink as IPDF417BarcodeEvents;
end;

procedure TPDF417Barcode.InitializeControl;
begin
  FDelphiControl := Control as TPDF417BarcodeVCL;
end;

function TPDF417Barcode.DrawTextBiDiModeFlagsReadingOnly: Integer;
begin
  Result := FDelphiControl.DrawTextBiDiModeFlagsReadingOnly;
end;

function TPDF417Barcode.DrawTo(DC: LongWord; X, Y, Zoom: Integer;
  AutoZoom: WordBool): WordBool;
begin
  Result := FDelphiControl.DrawTo(DC, X, Y, Zoom, AutoZoom);
end;

function TPDF417Barcode.Get_AlignDisabled: WordBool;
begin
  Result := FDelphiControl.AlignDisabled;
end;

function TPDF417Barcode.Get_AutoErrorLevel: WordBool;
begin
  Result := FDelphiControl.AutoErrorLevel;
end;

function TPDF417Barcode.Get_AutoSize: WordBool;
begin
  Result := FDelphiControl.AutoSize;
end;

function TPDF417Barcode.Get_BarcodeHeight: Integer;
begin
  Result := FDelphiControl.BarcodeHeight;
end;

function TPDF417Barcode.Get_BarcodeWidth: Integer;
begin
  Result := FDelphiControl.BarcodeWidth;
end;

function TPDF417Barcode.Get_DotSize: Integer;
begin
  Result := FDelphiControl.DotSize;
end;

function TPDF417Barcode.Get_DoubleBuffered: WordBool;
begin
  Result := FDelphiControl.DoubleBuffered;
end;

function TPDF417Barcode.Get_DrawWithFixedColumn: WordBool;
begin
  Result := FDelphiControl.DrawWithFixedColumn;
end;

function TPDF417Barcode.Get_DrawWithFixedRow: WordBool;
begin
  Result := FDelphiControl.DrawWithFixedRow;
end;

function TPDF417Barcode.Get_Enabled: WordBool;
begin
  Result := FDelphiControl.Enabled;
end;

function TPDF417Barcode.Get_ErrorLevel: Integer;
begin
  Result := FDelphiControl.ErrorLevel;
end;

function TPDF417Barcode.Get_FixedColumn: Integer;
begin
  Result := FDelphiControl.FixedColumn;
end;

function TPDF417Barcode.Get_FixedRow: Integer;
begin
  Result := FDelphiControl.FixedRow;
end;

function TPDF417Barcode.Get_LineHeight: Integer;
begin
  Result := FDelphiControl.LineHeight;
end;

function TPDF417Barcode.Get_Lines: WideString;
begin
  Result := WideString(FDelphiControl.Lines);
end;

function TPDF417Barcode.Get_Visible: WordBool;
begin
  Result := FDelphiControl.Visible;
end;

function TPDF417Barcode.Get_VisibleDockClientCount: Integer;
begin
  Result := FDelphiControl.VisibleDockClientCount;
end;

function TPDF417Barcode.IsRightToLeft: WordBool;
begin
  Result := FDelphiControl.IsRightToLeft;
end;

function TPDF417Barcode.UseRightToLeftReading: WordBool;
begin
  Result := FDelphiControl.UseRightToLeftReading;
end;

function TPDF417Barcode.UseRightToLeftScrollBar: WordBool;
begin
  Result := FDelphiControl.UseRightToLeftScrollBar;
end;

procedure TPDF417Barcode.AboutBox;
begin
  ShowPDF417BarcodeAbout;
end;

procedure TPDF417Barcode.InitiateAction;
begin
  FDelphiControl.InitiateAction;
end;

procedure TPDF417Barcode.SaveToFile(const AFileName: WideString);
begin
  FDelphiControl.SaveToFile(AFileName);
end;

procedure TPDF417Barcode.Set_AutoErrorLevel(Value: WordBool);
begin
  FDelphiControl.AutoErrorLevel := Value;
end;

procedure TPDF417Barcode.Set_AutoSize(Value: WordBool);
begin
  FDelphiControl.AutoSize := Value;
end;

procedure TPDF417Barcode.Set_BarcodeHeight(Value: Integer);
begin
  FDelphiControl.BarcodeHeight := Value;
end;

procedure TPDF417Barcode.Set_BarcodeWidth(Value: Integer);
begin
  FDelphiControl.BarcodeWidth := Value;
end;

procedure TPDF417Barcode.Set_DotSize(Value: Integer);
begin
  FDelphiControl.DotSize := Value;
end;

procedure TPDF417Barcode.Set_DoubleBuffered(Value: WordBool);
begin
  FDelphiControl.DoubleBuffered := Value;
end;

procedure TPDF417Barcode.Set_DrawWithFixedColumn(Value: WordBool);
begin
  FDelphiControl.DrawWithFixedColumn := Value;
end;

procedure TPDF417Barcode.Set_DrawWithFixedRow(Value: WordBool);
begin
  FDelphiControl.DrawWithFixedRow := Value;
end;

procedure TPDF417Barcode.Set_Enabled(Value: WordBool);
begin
  FDelphiControl.Enabled := Value;
end;

procedure TPDF417Barcode.Set_ErrorLevel(Value: Integer);
begin
  FDelphiControl.ErrorLevel := Value;
end;

procedure TPDF417Barcode.Set_FixedColumn(Value: Integer);
begin
  FDelphiControl.FixedColumn := Value;
end;

procedure TPDF417Barcode.Set_FixedRow(Value: Integer);
begin
  FDelphiControl.FixedRow := Value;
end;

procedure TPDF417Barcode.Set_LineHeight(Value: Integer);
begin
  FDelphiControl.LineHeight := Value;
end;

procedure TPDF417Barcode.Set_Lines(const Value: WideString);
begin
  FDelphiControl.Lines := String(Value);
end;

procedure TPDF417Barcode.Set_Visible(Value: WordBool);
begin
  FDelphiControl.Visible := Value;
end;

procedure TPDF417Barcode.SetSubComponent(IsSubComponent: WordBool);
begin
  FDelphiControl.SetSubComponent(IsSubComponent);
end;

initialization
  TActiveXControlFactory.Create(
    ComServer,
    TPDF417Barcode,
    TPDF417BarcodeVCL,
    Class_PDF417Barcode,
    1,
    '',
    0,
    tmApartment);
end.
