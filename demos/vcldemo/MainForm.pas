unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PDF417Barcode, ComCtrls;

type
  TForm1 = class(TForm)
    memoTextToEncode: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    PDF417BarcodeVCL1: TPDF417BarcodeVCL;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label4: TLabel;
    Label5: TLabel;
    TrackBar3: TTrackBar;
    Label6: TLabel;
    TrackBar4: TTrackBar;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure memoTextToEncodeChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses clipbrd;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Clipboard.Assign(PDF417BarcodeVCL1.Bitmap);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  TrackBar1.Enabled := not CheckBox1.Checked;
  if CheckBox1.Checked then
    PDF417BarcodeVCL1.Options := PDF417BarcodeVCL1.Options + [poAutoErrorLevel]
  else
    PDF417BarcodeVCL1.Options := PDF417BarcodeVCL1.Options - [poAutoErrorLevel];
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  TrackBar4.Enabled := not CheckBox2.Checked;
  if not CheckBox2.Checked then
    PDF417BarcodeVCL1.Options := PDF417BarcodeVCL1.Options + [poFixedColumn]
  else
    PDF417BarcodeVCL1.Options := PDF417BarcodeVCL1.Options - [poFixedColumn];
end;

procedure TForm1.memoTextToEncodeChange(Sender: TObject);
begin
  PDF417BarcodeVCL1.Lines.Assign(memoTextToEncode.Lines);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  PDF417BarcodeVCL1.ErrorLevel := TrackBar1.Position;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  PDF417BarcodeVCL1.DotSize := TrackBar2.Position;
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
  PDF417BarcodeVCL1.LineHeight := TrackBar3.Position;
end;

procedure TForm1.TrackBar4Change(Sender: TObject);
begin
  PDF417BarcodeVCL1.FixedColumn := TrackBar4.Position;
end;

end.
