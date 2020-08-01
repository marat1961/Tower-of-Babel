program RandomProject;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uRandom in 'uRandom.pas';

  procedure Test;
  var i, d: Integer;
  begin
    for i := 0 to 9 do
    begin
      d := TRandom.Int(2000);
      Writeln('i = ', i, ' d = ', d);
    end;
  end;

begin
  try
    Test;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
