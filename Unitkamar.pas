unit Unitkamar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TFormpin_kamar = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    pnlForm_Pindai_Kamar: TPanel;
    pnl2: TPanel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formpin_kamar: TFormpin_kamar;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFormpin_kamar.btn1Click(Sender: TObject);
begin
Formscan_kamar.ShowModal;
end;

end.
