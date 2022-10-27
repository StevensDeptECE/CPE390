#include <iostream>

using namespace std;
int sumevery3(int a, int b) {
  int sum= 0;
  for (int i = a; i <= b; i += 3)
    sum += i;
  return sum;
}

int fact(int n) {
  int prod = 1;
  for (int i = 1; i <= n; i++)
    prod *= i;
  return prod;
}

int main() {
  cout << sumevery3(3,9) << '\n'; // 3 + 6 + 9=18
  cout << sumevery3(3,10) << '\n'; // 3 + 6 + 9=18
  cout << sumevery3(3,11) << '\n'; // 3 + 6 + 9=18
  cout << sumevery3(3,12) << '\n'; // 3 + 6 + 9=18
  cout << fact(5) << '\n'; // 1*2*3*4*5 = 120

}