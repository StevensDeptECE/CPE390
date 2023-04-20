#include <cmath>
#include <iostream>
#include <iomanip>
#include <numbers> // only c++20

using namespace std;

int main() {
    double a = 1 / 2; // a=0.0
    double b = 3 / 4 + 5 / 4 + 7 / 4 + 9/4; // b=4.0
    double sum = 0;
    for (int i = 0; i < 10; i++)
      sum += 0.1;

      // 101.011010101010101110011100101010
      // 1/2 = 0.5
      // 1/3 = 0.3333333333333   10

      // 1/10 = 1/2 * 1/5

      // 1.0 + epsilon > 1.0
      // 10000.0 + eps2 
        //float = 8 digits 1.2345678
        // double = 15     1.234567890123456

    bool c = sum == 1.0;
    cout << c << '\n';
    /*
        a + b == b + a commutivity holds
        a + b + c != a + (b+c) associativity DOES NOT HOLD
    */
}