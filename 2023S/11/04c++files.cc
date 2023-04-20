#include <iostream>
#include <fstream>

using namespace std;
int main() {
  cout << "hello";

  ofstream f("test.dat");
  f << "hello\n";

}