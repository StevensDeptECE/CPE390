#include <iostream>

using namespace std;

int a[10]; // global

int main() {
  int x[10]; // auto variables (on the stack) are not initialized by default

  cout << x << '\n';
  for (int i = 0; i < 10; i++)
    cout << x[i] << ' ';
  cout << '\n';

  int y[10] = {3}; //  y[0] = 3 y[1] = 0 y[2] = 0 ...  y[9] = 0

  cout << y << '\n';
  for (int i = 0; i < 10; i++)
    cout << y[i] << ' ';
  cout << '\n';

  //global variables in C/C++ are initialized

  cout << a << '\n';
  for (int i = 0; i < 10; i++)
    cout << a[i] << ' ';
  cout << '\n';

}