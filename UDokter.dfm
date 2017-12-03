object Form4: TForm4
  Left = 192
  Top = 167
  Width = 928
  Height = 480
  Caption = 'FDokter'
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
    Left = 96
    Top = 24
    Width = 46
    Height = 13
    Caption = 'ID Dokter'
  end
  object Label2: TLabel
    Left = 96
    Top = 56
    Width = 62
    Height = 13
    Caption = 'Nama Dokter'
  end
  object Label5: TLabel
    Left = 96
    Top = 88
    Width = 40
    Height = 13
    Caption = 'Spesialis'
  end
  object Edit1: TEdit
    Left = 208
    Top = 24
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 208
    Top = 56
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 208
    Top = 88
    Width = 177
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 144
    Width = 617
    Height = 153
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 416
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 592
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 504
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
  end
end
