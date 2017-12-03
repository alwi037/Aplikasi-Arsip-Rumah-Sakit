unit UScanDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, MemDS, VirtualTable,
  DelphiTwain, jpeg, ShellAPI ;

type
  TForm2 = class(TForm)
    DelphiTwain1: TDelphiTwain;
    Panel1: TPanel;
    Panel2: TPanel;
    VirtualTable1: TVirtualTable;
    DataSource1: TDataSource;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DelphiTwain1TwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function NamaGambar : string;
  end;

var
  Form2: TForm2;
  JPGku : TJPEGImage;
  asalScan : Integer;

implementation

uses USaveDokter, UPindaiDokter;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if VirtualTable1.IsEmpty then
ShowMessage('Data Masih Kosong') else
Close;
Form3.showmodal;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  sourceIndex : Integer;
  source : TTwainSource;
begin
  DelphiTwain1.LibraryLoaded := True;
  DelphiTwain1.SourceManagerLoaded := True;
  sourceIndex := DelphiTwain1.SelectSource();

  if(sourceIndex <> -1) then
  begin
    source := DelphiTwain1.Source[sourceIndex];
    source.Loaded := True;
    source.Enabled := True;
  end;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if VirtualTable1.IsEmpty then
ShowMessage('Data Kosong') else
VirtualTable1.Delete;
end;

procedure TForm2.DelphiTwain1TwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  var Lokasi, Gambar : string;
begin
Image1.Picture.Assign(Image);
Cancel := True;
Gambar := NamaGambar;
Lokasi := ExtractFilePath(Application.ExeName)+'\HGambar\';
JPGku := TJPEGImage.Create;
JPGku.Assign(Image1.Picture.Bitmap);
JPGku.Free;
VirtualTable1.Append;
VirtualTable1['Image'] := Gambar;
VirtualTable1.Post;
end;

function TForm2.NamaGambar: string;
begin

end;

end.
