#pragma once

class BigNum {
private:
  uint64_t a, b; // 128 bit implementation
public:
  BigNum(uint64_t v);
  friend BigNum operator +(const BigNum& a, const BigNum& b);
  friend BigNum operator -(const BigNum& a, const BigNum& b);
  friend BigNum operator *(const BigNum& a, const BigNum& b);
  friend BigNum operator /(const BigNum& a, const BigNum& b);
  friend BigNum operator %(const BigNum& a, const BigNum& b);
  friend BigNum operator -(const BigNum& a);
  friend std::ostream(std::ostream& s, const BigNum b);
};
