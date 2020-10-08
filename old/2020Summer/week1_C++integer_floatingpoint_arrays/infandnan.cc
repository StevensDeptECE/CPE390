#include <iostream>
#include <cmath>
using namespace std;

int main() {
  bool b = false;
  double x = 1.0 / 0.0;
  cout << x << '\n';
  cout << x + 1 << '\n';
  if (2*x > x) {
    cout << "yes!\n";
  } else {
    cout << "no\n";
  }
  double y = -1.0 / 0.0;
  cout << y << '\n';

  cout << (x == y) << '\n';

  cout << sqrt(x) << '\n';
  
  cout << sqrt(-x) << '\n'; // NaN

  cout << x + y << '\n';

  cout << 0.0/0.0 << '\n';
  cout << 0/0 << '\n';

  cout << x + y << '\n';

  cout << 0.0/0.0 << '\n';
  cout << 0/0 << '\n';
}