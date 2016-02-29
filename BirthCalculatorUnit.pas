unit BirthCalculatorUnit;

interface

uses System.Classes, System.SysUtils, System.DateUtils;

type
  TBirthCalculator = class(TPersistent)
  private
    FBirthDate: TDate;
    function GetBirthDate: TDate;
    procedure SetBirthDate(const Value: TDate);
  public
    constructor Create(const BirthDate: TDate);
    property BirthDate: TDate read GetBirthDate write SetBirthDate;
    function Age: String;

  end;

implementation

{ TBirthCalculator }

function TBirthCalculator.Age: String;
begin
  case (YearsBetween(now,Getbirthdate) mod 10) of
  0: Result := inttostr(YearsBetween(now,Getbirthdate))+ ' лет';
  1: Result := inttostr(YearsBetween(now,Getbirthdate))+ ' год';
  2..4: Result := inttostr(YearsBetween(now,Getbirthdate))+ ' года';
  5..19: Result := inttostr(YearsBetween(now,Getbirthdate))+ ' лет';

  end;


  case (YearsBetween(now,Getbirthdate)) of
  11..19: Result := inttostr(YearsBetween(now,Getbirthdate))+ ' лет';
  end;

end;

constructor TBirthCalculator.Create(const BirthDate: TDate);
begin
  if BirthDate > Now then
    raise Exception.Create('Такой человек ещё не родился')
  else
    FBirthDate := BirthDate;
end;

function TBirthCalculator.GetBirthDate: TDate;
begin
  Result := FBirthDate;
end;

procedure TBirthCalculator.SetBirthDate(const Value: TDate);
begin
  if Value > Now then
    raise Exception.Create('Такой человек ещё не родился')
  else
    FBirthDate := Value;
end;

end.
