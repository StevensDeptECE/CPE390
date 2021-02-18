#include <iostream>

using namespace std;

int main() {
  int a;

  a = 5;
  cout << a << '\n';
  cout << &a << '\n'; // pointer  &a means "the address of a"
  a = a + 4;
  int b[100] = {3}; // b[0] = 3 b[1] = 0, b[2] = 0... b[99] = 0

  cout << b << '\n'; // b is a pointer to where the array is located
  cout << &b[0] << '\n'; // b is a pointer to where the array is located
  cout << &b << '\n';
  cout << b[0] << '\n';

  cout << &b[1] << '\n';
  cout << b + 1 << '\n';
  cout << b[1] << '\n';


  int* p; // p is a pointer to int  (or declaring an int which is (*p) 
  // if p is a pointer, *p is what it points to

  p = &a; // p is now pointing to a
  *p = 6;
  // a just changed
  cout << a << '\n';

//  scanf("%d", &b[5]);

}