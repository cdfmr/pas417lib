program VCLDemo;

uses
  Forms,
  MainForm in 'MainForm.pas' {Form1},
  pdf417libimp in '..\..\src\pdf417libimp.pas',
  pdf417lib in '..\..\src\pdf417lib.pas',
  PDF417Barcode in '..\..\vcl\PDF417Barcode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
