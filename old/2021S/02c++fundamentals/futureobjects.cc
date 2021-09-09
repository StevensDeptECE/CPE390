class  Stock {
  private:
    string sym;
    uint32_t price;
    uint32_t x : 3; // 3 bits of a 32-bit number
    uint32_t y : 5; // 5 bits of a 32-bit number
}


int main() {
  cout << 1.0 / 0.0 << '\n';
  cout << -1.0 / 0.0 << '\n';
  cout << 0.0 / 0.0 << '\n';
  cout << sqrt(1.0/0.0);
  cout << sin(1.0/0.0);
}