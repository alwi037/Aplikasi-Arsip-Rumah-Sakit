object Form2: TForm2
  Left = 314
  Top = 186
  Width = 981
  Height = 485
  Caption = 'FScanDok'
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
    Left = 0
    Top = 0
    Width = 361
    Height = 441
    TabOrder = 0
    object Button1: TButton
      Left = 56
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Pilih'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 144
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Scan'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 232
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = Button3Click
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 40
      Width = 320
      Height = 120
      DataSource = DataSource1
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 360
    Top = 0
    Width = 553
    Height = 441
    TabOrder = 1
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 553
      Height = 441
    end
  end
  object DelphiTwain1: TDelphiTwain
    OnTwainAcquire = DelphiTwain1TwainAcquire
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
    Left = 544
    Top = 8
  end
  object VirtualTable1: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    Active = True
    FieldDefs = <
      item
        Name = 'Image'
        DataType = ftString
        Size = 20
      end>
    Left = 480
    Top = 8
    Data = {030001000500496D6167650100140000000000000000000000}
  end
  object DataSource1: TDataSource
    DataSet = VirtualTable1
    Left = 424
    Top = 8
  end
end
