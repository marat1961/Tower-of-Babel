#pragma once

// Fast random generator, compatible with Delphi
// implemented as a deterministic linear congruential generator
// with 134775813 as a and 1 as c.
class SRandom {
public:
    static int seed;
    static uint32_t Def() {
        seed = static_cast<uint32_t>(seed) * 0x08088405 + 1;
        return seed;
    }
    static void Seed(int v) {
        seed = v;
    }
    static double Dbl() {
        const double two2neg32 = ((1.0 / 0x10000) / 0x10000);  // 2^-32
        double f = Def();
        return f * two2neg32;
    }
    static int Int(const int range) {
        uint32_t t = Def();
        return (static_cast<uint64_t>(static_cast<uint64_t>(range))* static_cast<uint64_t>(t)) >> 32;
    }
};
