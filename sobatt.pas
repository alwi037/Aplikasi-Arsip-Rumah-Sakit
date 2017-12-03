unit sobatt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, StdCtrls, ExtCtrls, frxDBSet, frxExportDBF, ShellAPI;

type
  TSObat = class(TForm)
    pnl1: TPanel;
    btn1: TButton;
    pnl2: TPanel;
    frxPreview1: TfrxPreview;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    frxdbdtst2: TfrxDBDataset;
    procedure frxrprt1BeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DelFilesForm(Directory, Filemask : string; DelSubDirs: Boolean);
    function waktu : string;
  end;

var
  SObat: TSObat;

implementation

uses
  Unit2, Unit1;

{$R *.dfm}

procedure TSObat.DelFilesForm(Directory, Filemask: string;
  DelSubDirs: Boolean);
  var Sourcelst : string;
  FOS : TSHFileOpStruct;
begin
  FillChar(FOS, SizeOf(FOS),0);
  FOS.Wnd := Application.MainForm.Handle;
  FOS.wFunc := FO_DELETE;
  Sourcelst := Directory+'\'+Filemask+#0;
  FOS.pFrom := PChar(Sourcelst);
  if not DelSubDirs then
  FOS.fFlags := FOS.fFlags or FOF_FILEsONLY;
  FOS.fFlags := FOS.fFlags or FOF_NOCONFIRMATION ;
  SHFileOperation(FOS);

end;

function TSObat.waktu: string;
var tgl : TDateTime;
begin
  tgl:=Now();
  Result:= FormatDateTime('yyyy', tgl);
end;

procedure TSObat.frxrprt1BeforePrint(Sender: TfrxReportComponent);
var img:TfrxComponent;
begin
  try
    img:=frxrprt1.FindObject('Picture1');
//    TfrxPictureView(img).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
//    'Gambar_scan\'+Form2.VirtualTable1.FieldValues['Image']);
    except
      ShowMessage('Objek Tidak Ditemukan');
end;
end;
procedure TSObat.FormShow(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3');
frxrprt1.FileName:=ExtractFilePath(Application.ExeName)+'PreveiwScanPdf.fr3';
frxrprt1.ShowReport();
end;

procedure TSObat.btn1Click(Sender: TObject);
var PDFku:TfrxCustomExportFilter;
namapdf,lokasihapus : string;
begin
  if asalscan = 0 then
  begin
    namapdf := Form1.Edt1.Text+'-'+Form1.Edt2.Text+'-'+waktu+'Surat-masuk.pdf';
    PDFku:= TfrxCustomExportFilter(frxdbdtst2);
    PDFku.ShowDialog :=False;
    PDFku.FileName := ExtractFilePath(Application.ExeName)+'\FilePDF\'+namapdf;
    frxrprt1.PrepareReport(False);
    frxrprt1.export(PDFku);
    Form1.lbl8.caption :=namapdf;
  end;
  form2.VirtualTable1.clear;
  lokasihapus :=(ExtractFilePath(Application.Exename)+'\Gambar_scan\');
  DelFilesForm(lokasihapus, '*.*', False);
  close;

end;

end.
