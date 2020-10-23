unit uRandom;

interface

type

{$Region 'TRandom: random number generator for UInt32'}

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

{$Region 'TRandom64: random number generator for Int64'}

  // Donald E. Knut, The art of computer progamming,
  // Volume 2, Seminumerical Algorothms.
  // Implemented as a deterministic linear congruential generator
  // with 6364136223846793005 as a and 1442695040888963407 as c
  //
  // Hastily sketched. Not tested!
  // Perhaps for everything to work correctly,
  // we need to implement multiplication of 64-bit numbers.

  TRandom64 = record
  class var
    seed: Int64;
  private
    class function Def: Int64; static;
  public
    class function Dbl: Double; static;
    class function Int: Int64; static;
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

{$Region 'TRandom64'}

class function TRandom64.Def: Int64;
begin
  Result := seed * 6364136223846793005 + 1442695040888963407;
  seed := Result;
end;

class function TRandom64.Dbl: Double;
const
  two2neg32: Double = (1.0 / $10000) / $10000;  // 2^ - 32
var
  d: Double;
begin
  d := Int64(Def);
  Result := d * two2neg32;
end;

class function TRandom64.Int: Int64;
begin
  Result := Def;
end;

{$EndRegion}

end.
