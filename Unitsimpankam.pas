unit Unitsimpankam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, StdCtrls, frxExportPDF, frxDBSet, ExtCtrls,ShellAPI;

type
  TFormsimpanakam = class(TForm)
    pnl1: TPanel;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    frxpdfxprt1: TfrxPDFExport;
    btn1: TButton;
    pnl2: TPanel;
    frxprvw1: TfrxPreview;
    procedure frxrprt1BeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure DelFilesFrom(Directory, Filemask : string; DelSubDirs: Boolean);
     function waktu : string;
  end;

var
  Formsimpanakam: TFormsimpanakam;

implementation

uses
  Unit2, Unit1;

{$R *.dfm}

{ TForm3 }

procedure TFormsimpanakam.DelFilesFrom(Directory, Filemask: string;
  DelSubDirs: Boolean);
  var Sourcelst : string;
  FOS : TSHFileOpStruct;
begin
  FillChar(FOS, SizeOf(FOS),0);
  FOS.Wnd:=Application.MainForm.Handle;
  FOS.wFunc:=FO_DELETE;
  Sourcelst:=Directory+'\'+Filemask+#0;
  FOS.pFrom:=PChar(Sourcelst);
  if not DelSubDirs then
  FOS.fFlags:=FOS.fFlags or FOF_FILESONLY;
  FOS.fFlags:=FOS.fFlags or FOF_NOCONFIRMATION;
  SHFileOperation(FOS);
end;

function TFormsimpanakam.waktu: string;
var tgl : TDateTime;
begin
tgl:=Now();
Result:=FormatDateTime('yyyy', tgl);
end;

procedure TFormsimpanakam.frxrprt1BeforePrint(Sender: TfrxReportComponent);
var img:TfrxComponent;
begin
  try
    img:=frxrprt1.FindObject('Picture1');
    //TfrxPictureView(img).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
    //'gambar_scan\'+Form2.vrtltbl1.FieldValues['Image']);
    except
      ShowMessage('object tidak di temukan');
      end;
end;

procedure TFormsimpanakam.FormShow(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3');
frxrprt1.FileName:=ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3';
frxrprt1.ShowReport();
end;

procedure TFormsimpanakam.btn1Click(Sender: TObject);
var PDFku : TfrxCustomExportFilter;
namapdf,lokasihapus : string;
begin
  if asalscan = 0 then
  begin
    namapdf :=Formpin_kamar.edt1.Text+'-'+Formpin_kamar.edt2.Text+'-'+waktu+'Surat-masuk-kamar.pdf';
    PDFku:=TfrxCustomExportFilter(frxpdfxprt1);
    PDFku.ShowDialog := False;
    PDFku.FileName:= ExtractFilePath(Application.ExeName)+'\FilekamarPDF\'+namapdf;
    frxrprt1.PrepareReport(False);
    frxrprt1.Export(PDFku);
    Formpin_kamar.lbl8.Caption:=namapdf;
  end;
  Formscan_kamar.vrtltbl1.Clear;
  lokasihapus:=(ExtractFilePath(Application.ExeName)+'\Gambar_scan\');
  DelFilesFrom(lokasihapus,'*.*', FALSE);
  Close;
end;

end.
