object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PDF417 - VCL Demo'
  ClientHeight = 439
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 104
    Height = 13
    Caption = 'Enter text to encode:'
    FocusControl = memoTextToEncode
  end
  object Label2: TLabel
    Left = 8
    Top = 264
    Width = 39
    Height = 13
    Caption = 'Results:'
  end
  object PDF417BarcodeVCL1: TPDF417BarcodeVCL
    Left = 8
    Top = 283
    Width = 627
    Height = 117
    Lines.Strings = (
      'PDF417 BARCODE')
    AutoSize = False
  end
  object Label3: TLabel
    Left = 448
    Top = 24
    Width = 53
    Height = 13
    Caption = 'Error level:'
  end
  object Label4: TLabel
    Left = 448
    Top = 85
    Width = 42
    Height = 13
    Caption = 'Dot size:'
  end
  object Label5: TLabel
    Left = 448
    Top = 149
    Width = 56
    Height = 13
    Caption = 'Line height:'
  end
  object Label6: TLabel
    Left = 448
    Top = 210
    Width = 44
    Height = 13
    Caption = 'Columns:'
  end
  object memoTextToEncode: TMemo
    Left = 9
    Top = 24
    Width = 433
    Height = 234
    ScrollBars = ssBoth
    TabOrder = 0
    OnChange = memoTextToEncodeChange
  end
  object Button1: TButton
    Left = 423
    Top = 406
    Width = 131
    Height = 25
    Caption = 'Copy to clipboard'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 406
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = Button2Click
  end
  object TrackBar1: TTrackBar
    Left = 448
    Top = 43
    Width = 191
    Height = 45
    Enabled = False
    Max = 8
    Position = 1
    TabOrder = 3
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 448
    Top = 104
    Width = 187
    Height = 45
    Max = 5
    Min = 1
    Position = 1
    TabOrder = 4
    OnChange = TrackBar2Change
  end
  object TrackBar3: TTrackBar
    Left = 448
    Top = 168
    Width = 187
    Height = 45
    Max = 5
    Min = 1
    Position = 1
    TabOrder = 5
    OnChange = TrackBar3Change
  end
  object TrackBar4: TTrackBar
    Left = 448
    Top = 232
    Width = 187
    Height = 45
    Enabled = False
    Max = 5
    Position = 1
    TabOrder = 6
    OnChange = TrackBar4Change
  end
  object CheckBox1: TCheckBox
    Left = 507
    Top = 23
    Width = 97
    Height = 17
    Caption = 'Auto'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 507
    Top = 209
    Width = 97
    Height = 17
    Caption = 'Auto'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = CheckBox2Click
  end
end
