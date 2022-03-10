#include <iostream>
using namespace std;

template<size_t size>
class BoundsCheckedArray {
private:
  int data[size] = {0};
public:
  int operator [](int i) { 
    if (i >= size)
      throw "tantrum";
    return data[i];
  }
};


int main() {
  BoundsCheckedArray<4> b;
  cout << b[0] << '\n';
  cout << b[3] << '\n';
  cout << b[19] << '\n';


  for (double i = 0; i < 4; i++)
    cout << b[int(i)];

  int x[5] = {1, 2, 3};
  int a = 2;
  int y[5];
  for (int i = 0; i < 1000000; i++)
    cout << x[i] << ' ';
  cout << '\n';
  for (int i = 0; i < 10; i++)
    x[i] = 8;
  cout << "a=" << a << '\n';
  for (int i = 0; i < 10; i++)
    y[i] = 9;
  cout << "a=" << a << '\n';



  for (int i = 0; i < 10; i++)
    cout << x[i] << ' ';
  cout << '\n';


  for (int i = 0; i < 10; i++)
    cout << y[i] << ' ';
  cout << '\n';

}