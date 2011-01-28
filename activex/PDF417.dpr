library PDF417;

uses
  ComServ,
  PDF417BarcodeControl_TLB in 'PDF417BarcodeControl_TLB.pas',
  PDF417BarcodeActiveX in 'PDF417BarcodeActiveX.pas' {PDF417Barcode: CoClass},
  About in 'About.pas' {PDF417BarcodeAbout},
  pdf417lib in '..\src\pdf417lib.pas',
  pdf417libimp in '..\src\pdf417libimp.pas';

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
