unit iobatt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TIObat = class(TForm)
    lbl1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    dbgrd1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IObat: TIObat;

implementation

{$R *.dfm}

end.
