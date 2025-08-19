program DemoNFCe;

uses
  Forms,
  UnitDemonstracao in 'UnitDemonstracao.pas' {Form1},
  UnitCancelamento in 'UnitCancelamento.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
