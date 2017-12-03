object Formscan: TFormscan
  Left = 205
  Top = 196
  Width = 928
  Height = 480
  Caption = 'Formscan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 441
    Caption = 'pnl1'
    TabOrder = 0
    object dbgrd1: TDBGrid
      Left = 16
      Top = 21
      Width = 320
      Height = 120
      DataSource = ds1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object btn1: TButton
      Left = 40
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Pilih'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 144
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Scan'
      TabOrder = 2
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 256
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 3
      OnClick = btn3Click
    end
  end
  object pnl2: TPanel
    Left = 360
    Top = 0
    Width = 377
    Height = 441
    Caption = 'pnl2'
    TabOrder = 1
    object img1: TImage
      Left = 16
      Top = 16
      Width = 337
      Height = 361
    end
  end
  object dlphtwn1: TDelphiTwain
    OnTwainAcquire = dlphtwn1TwainAcquire
    TransferMode = ttmMemory
    SourceCount = 0
    Info.MajorVersion = 1
    Info.MinorVersion = 0
    Info.Language = tlUserLocale
    Info.CountryCode = 1
    Info.Groups = [tgControl, tgImage]
    Info.VersionInfo = 'Application name'
    Info.Manufacturer = 'Application manufacturer'
    Info.ProductFamily = 'App product family'
    Info.ProductName = 'App product name'
    LibraryLoaded = False
    SourceManagerLoaded = False
    Left = 536
    Top = 32
  end
  object ds1: TDataSource
    DataSet = vrtltbl1
    Left = 392
    Top = 24
  end
  object vrtltbl1: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    Active = True
    FieldDefs = <
      item
        Name = 'Image'
        DataType = ftString
        Size = 20
      end>
    Left = 456
    Top = 24
    Data = {030001000500496D6167650100140000000000000000000000}
  end
end
