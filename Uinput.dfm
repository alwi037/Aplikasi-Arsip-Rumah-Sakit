object Form_pasien: TForm_pasien
  Left = 192
  Top = 167
  Width = 928
  Height = 480
  Caption = 'Form_pasien'
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
    Left = 280
    Top = 24
    Width = 147
    Height = 19
    Caption = 'Data Input Pasien'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 232
    Top = 64
    Width = 71
    Height = 13
    Caption = 'Nama Pasien : '
  end
  object lbl3: TLabel
    Left = 231
    Top = 96
    Width = 108
    Height = 13
    Caption = 'Nama Jenis Penyakit : '
  end
  object edt1: TEdit
    Left = 352
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 352
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 208
    Top = 168
    Width = 320
    Height = 120
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 248
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 360
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 464
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Hapus'
    TabOrder = 5
    OnClick = btn3Click
  end
  object zqry1: TZQuery
    Connection = DataModule5.con1
    SQL.Strings = (
      'select*from tb_pasien')
    Params = <>
    Left = 592
    Top = 56
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 640
    Top = 48
  end
end
