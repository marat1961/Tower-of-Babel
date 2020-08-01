unit uRandom;

interface

type

{$Region 'TRandom: random number generator'}

  // implemented as a deterministic linear congruential generator
  // with 134775813 as a and 1 as c.
  TRandom = record
  class var
    seed: Integer;
  private
    class function Def: UInt32; static;
  public
    class function Dbl: Double; static;
    class function Int(const range: Integer): Integer; static;
  end;

{$EndRegion}

implementation

{$Region 'TRandom'}

class function TRandom.Def: UInt32;
begin
  Result := UInt32(seed) * $08088405 + 1;
  seed := Result;
end;

class function TRandom.Dbl: Double;
const
  two2neg32: Double = (1.0 / $10000) / $10000;  // 2^ - 32
var
  d: Double;
begin
  d := Int64(Def);
  Result := d * two2neg32;
end;

class function TRandom.Int(const range: Integer): Integer;
var
  t: UInt32;
begin
  t := Def;
  Result := (UInt64(UInt32(range)) * UInt64(t)) shr 32;
end;

{$EndRegion}

end.
