#include <iostream>
using namespace std;

namespace stevens {
  int x;
}
int x; // this variable is global (visible from anywhere in the program)
// global variables have a LIFETIME for the entire program (before main even starts, this variable LIVES)
// global variables are assigned zero by default

void f() {
  cout << x;

  int x; // this variable is auto. Its scope is the function in which it is written
  cout << x; // we are printing the LOCAL variable x

  cout << ::x; // this is explicitly referring to the global variable x
  cout << stevens::x;
}

int main() {
  cout << x;
  x = 3; // assign the value 3 to the global variable
  cout << x;
  f();

}