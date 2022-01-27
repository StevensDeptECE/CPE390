#include <iostream>
#include <fstream>

using namespace std;

int* readFromFile(const char filename[]) {
  ifstream f(filename);

  int len;
  f >> len;
  int* a = new int[len];
  for (int i = 0; i < len; i++)
    f >> a[i];

  return a;
}

int main() {
  int* p = readFromFile("test.dat");

  for (int i = 0; i < 8; i++)
    cout << p[i] << ' ';
  cout << '\n';

  delete [] p;
}