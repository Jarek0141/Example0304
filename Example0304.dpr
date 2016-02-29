program Example0304;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  BirthCalculatorUnit in 'BirthCalculatorUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
