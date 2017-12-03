object Form1: TForm1
  Left = 216
  Top = 261
  Width = 928
  Height = 480
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 16
    Width = 409
    Height = 57
    TabOrder = 0
    object Label1: TLabel
      Left = 112
      Top = 8
      Width = 171
      Height = 33
      Caption = 'RUMAH SAKIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 24
    Top = 80
    Width = 409
    Height = 217
    TabOrder = 1
    object Label2: TLabel
      Left = 80
      Top = 16
      Width = 47
      Height = 21
      Caption = 'INPUT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 16
      Width = 55
      Height = 21
      Caption = 'PINDAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 64
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Dokter'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 64
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Pasien'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 64
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Perawat'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 64
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Ruangan'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 64
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Obat'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 256
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Dokter'
      TabOrder = 5
    end
    object Button7: TButton
      Left = 256
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Pasien'
      TabOrder = 6
    end
    object btn1: TButton
      Left = 256
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Perawat'
      TabOrder = 7
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 256
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Ruangan'
      TabOrder = 8
    end
    object btn3: TButton
      Left = 256
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Obat'
      TabOrder = 9
    end
  end
end
