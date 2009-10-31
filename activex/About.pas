unit About;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, PDF417Barcode;

type
  TPDF417BarcodeAbout = class(TForm)
    NameLbl: TLabel;
    OkBtn: TButton;
    CopyrightLbl: TLabel;
    PDF417BarcodeVCL1: TPDF417BarcodeVCL;
  end;

procedure ShowPDF417BarcodeAbout;

implementation

{$R *.DFM}

procedure ShowPDF417BarcodeAbout;
begin
  with TPDF417BarcodeAbout.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

end.
