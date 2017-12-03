unit Uinput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TForm_pasien = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_pasien: TForm_pasien;

implementation

uses
  UDM;

{$R *.dfm}

procedure TForm_pasien.btn1Click(Sender: TObject);
begin
  zqry1.Append;
  zqry1.FieldByName('').AsString:=edt1.Text;
  zqry1.FieldByName('').AsString:=edt2.Text;
  zqry1.Post;
  edt1.Text:='';
  edt2.Text:='';
  edt1.SetFocus;
end;


procedure TForm_pasien.btn2Click(Sender: TObject);
begin
  edt1.Text:='';
  edt2.Text:='';
  Close;
end;

procedure TForm_pasien.btn3Click(Sender: TObject);
begin
 zqry1.Delete;
 zqry1.Cancel;
end;


end.
