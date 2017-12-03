object IObat: TIObat
  Left = 212
  Top = 308
  Width = 928
  Height = 480
  Caption = 'IObat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 176
    Top = 24
    Width = 144
    Height = 21
    Caption = 'DATA INPUT OBAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 136
    Top = 64
    Width = 54
    Height = 13
    Caption = 'Nama Obat'
  end
  object lbl3: TLabel
    Left = 136
    Top = 96
    Width = 52
    Height = 13
    Caption = 'Dosis Obat'
  end
  object Edit1: TEdit
    Left = 240
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 240
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 128
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 216
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 304
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 4
  end
  object dbgrd1: TDBGrid
    Left = 96
    Top = 184
    Width = 320
    Height = 120
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
