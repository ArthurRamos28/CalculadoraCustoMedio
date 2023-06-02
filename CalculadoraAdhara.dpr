program CalculadoraAdhara;

uses
  Vcl.Forms,
  uCalculadora in 'uCalculadora.pas' {frmCalculadora},
  uFormula in 'uFormula.pas',
  LibSistema in 'LibSistema.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
