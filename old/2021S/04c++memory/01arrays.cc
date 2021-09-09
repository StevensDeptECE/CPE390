#include <iostream>
#include <cstdint>
using namespace std;
void f() {


}

double x [1000]; // initialized to zero by default

int main() {
  int a [10] = { 1,2,3,4,5,6,7,8,9 }; // last elements is 0
  //int SIZE = 50;
//  const int SIZE = 50;
  constexpr int SIZE = 50;
  uint64_t b[SIZE];
//  SIZE= 10000;

  cout << a[0];

  for (int i = 0; i< SIZE; i++){
    cout << b[i]<< " ";
  }

  cout << x[0];
  int n;
  cin >> n;
  int x[n];
  int*p = new int[n];



  delete [] p;
}

