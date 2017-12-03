unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button6: TButton;
    Button7: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses newPperawat, IPerawat;

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
newiperawat.showmodal;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
pperawat.showmodal;
end;

end.
