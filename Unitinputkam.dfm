object Form4: TForm4
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Formkamar'
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
    Left = 232
    Top = 32
    Width = 68
    Height = 13
    Caption = 'INPUT KAMAR'
  end
  object Label2: TLabel
    Left = 184
    Top = 96
    Width = 25
    Height = 13
    Caption = 'Kelas'
  end
  object Label3: TLabel
    Left = 184
    Top = 144
    Width = 60
    Height = 13
    Caption = 'Nama Kamar'
  end
  object Edit1: TEdit
    Left = 376
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 376
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object btn1: TButton
    Left = 200
    Top = 256
    Width = 75
    Height = 25
    Caption = 'SIMPAN '
    TabOrder = 2
  end
  object btn2: TButton
    Left = 352
    Top = 256
    Width = 75
    Height = 25
    Caption = 'BATAL '
    TabOrder = 3
  end
  object btn3: TButton
    Left = 504
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 296
    Width = 320
    Height = 120
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object zqry1: TZQuery
    SQL.Strings = (
      'select*from tb_kamar')
    Params = <>
    Left = 624
    Top = 136
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 696
    Top = 160
  end
end
