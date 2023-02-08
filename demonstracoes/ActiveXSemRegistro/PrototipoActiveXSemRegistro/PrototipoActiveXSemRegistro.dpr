program PrototipoActiveXSemRegistro;

{$R 'PrototipoActiveXSemRegistro.manifest.res' 'PrototipoActiveXSemRegistro.manifest.rc'}

uses
  Forms,
  uMain in 'uMain.pas' {Form1};
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Protótipo ActiveX sem Registro';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
