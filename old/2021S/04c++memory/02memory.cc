#include <iostream>
#include <fstream>
using namespace std;
/*
  SIZE OF A POINTER IS 8 bytes on my pc Why? you can address 2 to 64 = 4.2billion squared 16 quadrillion bytes

  If a pointer is 32 bits (4 bytes)
  2 to 32 = 4Gb (4.2 billion memory locations)

  on a modern 64 bit CPU, we want to address more RAM. I have 32Gb


*/
void print(const int arr[], int len) {
  for(int i = 0; i < len; i++){
    cout << arr[i]<< " ";
  }
// ERROR:  arr[0] = 19;  Readonly (const) not allowed
  cout << sizeof(arr) << '\n';
}

void printFloat(const float arr[], int len) {
  for(int i = 0; i < len; i++)
    cout << arr[i]<< " ";
}
int main() {
  int a[10] = {5, 268, 100, 256, 1024, 65536};
  printFloat((float*)a, 10);
  cout << '\n';

  ofstream file("test.bin", ios::binary);
  file.write((char*)a, sizeof(a));
  double b[10] = {2.5, 3.5};
  print((int*)b, 10);
  cout << '\n';
  cout << "sizeof(a)=" << sizeof(a) << '\n';
  cout << "sizeof(b)=" << sizeof(b) << '\n';
  cout << b[10]; // out of bounds, good luck! ERROR!
  print(a, sizeof(a)/sizeof(int));

  int c[18] = {9, -2, 4, 5};
  print(c, sizeof(c)/sizeof(int));

}