program pdf417;

{$ifdef fpc}
	{$mode delphi}
{$endif}

{$apptype console}

uses
  SysUtils,
  pdf417lib in '..\..\src\pdf417lib.pas',
  pdf417libimp in '..\..\src\pdf417libimp.pas';

var
  p: pdf417param;
  f: TextFile;
  cols, k: Integer;
begin
  if ParamCount < 2 then
  begin
    Writeln('PDF417 barcode postscript generator'#10'Usage: pdf417 postscript_file_name barcode_text'#10);
    Exit;
  end;
  pdf417init(@p);
  p.text := PChar(ParamStr(2));
  p.options := PDF417_INVERT_BITMAP;
  paintCode(@p);
  if p.error <> 0 then
  begin
    pdf417free(@p);
    Exit;
  end;
  AssignFile(f, ParamStr(1));
  Rewrite(f);
  cols := p.bitColumns div 8 + 1;
  Write(f, '/Times findfont'#10'12 scalefont setfont'#10'100 80 moveto'#10'(A PDF417 example.)show'#10);
  Write(f, Format('stroke'#10'100 100 translate'#10'%g %g scale'#10, [p.bitColumns / 2.0, p.codeRows * 3 / 2.0]));
  Write(f, Format('%d %d 1 [%d 0 0 %d 0 %d]{<', [p.bitColumns, p.codeRows, p.bitColumns, -p.codeRows, p.codeRows]));
  for k := 0 to p.lenBits - 1 do
  begin
    if k mod cols = 0 then
      Write(f, #10);
    Write(f, Format('%.2x', [Integer(Ord(p.outBits[k]) and $ff)]));
  end;
  Write(f, #10'>}image'#10'showpage'#10);
  CloseFile(f);
  pdf417free(@p);
end.



