program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  IPerawat in 'IPerawat.pas' {newIperawat},
  newperawat in 'newperawat.pas' {Perawat},
  newPperawat in 'newPperawat.pas' {PPerawat},
  newSperawat in 'newSperawat.pas' {SPerawat};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TnewIperawat, newIperawat);
  Application.CreateForm(TPerawat, Perawat);
  Application.CreateForm(TPPerawat, PPerawat);
  Application.CreateForm(TSPerawat, SPerawat);
  Application.Run;
end.
