object Form1: TForm1
  Left = 428
  Top = 147
  Width = 964
  Height = 530
  Caption = 'FPindaiDokter'
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
    Left = 8
    Top = 0
    Width = 449
    Height = 441
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 32
      Width = 36
      Height = 13
      Caption = 'No urut'
    end
    object Label2: TLabel
      Left = 48
      Top = 104
      Width = 42
      Height = 13
      Caption = 'No Surat'
    end
    object Label3: TLabel
      Left = 256
      Top = 32
      Width = 73
      Height = 13
      Caption = 'Tanggal Terima'
    end
    object Label4: TLabel
      Left = 256
      Top = 104
      Width = 40
      Height = 13
      Caption = 'Pengirim'
    end
    object Label5: TLabel
      Left = 256
      Top = 168
      Width = 62
      Height = 13
      Caption = 'Nama Berkas'
    end
    object Label6: TLabel
      Left = 48
      Top = 168
      Width = 53
      Height = 13
      Caption = 'Jenis Surat'
    end
    object Label7: TLabel
      Left = 48
      Top = 232
      Width = 67
      Height = 13
      Caption = 'Tanggal Surat'
    end
    object Label8: TLabel
      Left = 344
      Top = 288
      Width = 34
      Height = 13
      Caption = 'Label 8'
    end
    object Button4: TButton
      Left = 104
      Top = 336
      Width = 75
      Height = 25
      Caption = 'Pindai'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 240
      Top = 336
      Width = 75
      Height = 25
      Caption = 'Lihat'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 48
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 48
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 48
      Top = 192
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 256
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 256
      Top = 192
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object DateTimePicker1: TDateTimePicker
      Left = 48
      Top = 256
      Width = 186
      Height = 21
      Date = 43065.992232048610000000
      Time = 43065.992232048610000000
      TabOrder = 7
    end
    object DateTimePicker2: TDateTimePicker
      Left = 256
      Top = 56
      Width = 186
      Height = 21
      Date = 43065.992325370370000000
      Time = 43065.992325370370000000
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 456
    Top = 0
    Width = 449
    Height = 441
    TabOrder = 1
    object PdfViewer1: TPdfViewer
      Left = 0
      Top = 0
      Width = 449
      Height = 441
      About = 'Synactis PDF Viewer version 1.0'
      AutoOpen = True
      Copies = 1
      EndPage = 0
      FitMode = vmFit
      LayoutMode = lmDontCare
      PageMode = pmStandard
      ShowPrintDialog = True
      ShowScrollBars = True
      ShowToolBar = True
      ShrinkToMargins = True
      StartPage = 1
    end
  end
end
