#include <iostream>
using namespace std;
void f(int x) { // pass by value
    cout << x << '\n';
    x = 99;
}

void g(int& x) { //pass by reference (we have a pointer to where the parameter lives)
   cout << x << '\n';
   x = 22;
}

void h(int* x) { // x is a pointer to where the number lives
    cout << x << '\n';
    cout << *x << '\n'; // *x is what the pointer is pointing to (dereference)
    *x = 33;
}

//pass by value (make a copy)
//pass by reference
int main() {
    int a = 3;
    f(a); // f is pass by value
    cout << a << '\n'; // what is the value of a?
    f(a);
    g(a); // g is pass by reference it is completely unobvious that this changes a.
    g(a); // the only way to know is to look at the function prototype of g
    h(&a); // pass the ADDRESS of a (a pointer) to the function
    h(&a); // pass the ADDRESS of a (a pointer) to the function
}