unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    OKButton: TButton;
    MainGroupBox: TGroupBox;
    BirthDateTimePicker: TDateTimePicker;
    ResultLabel: TLabel;
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses BirthCalculatorUnit;

{$R *.dfm}

procedure TMainForm.OKButtonClick(Sender: TObject);
var
  BDCalculator: TBirthCalculator;
begin
  BDCalculator := TBirthCalculator.Create(BirthDateTimePicker.Date);
  try
    ResultLabel.Caption := 'Возраст этого человека: ' + BDCalculator.Age;
  finally
    FreeAndNil(BDCalculator);
  end;
end;

end.
