#include <iostream>
using namespace std;

void f(int num){
    num++;
    cout<<num<<endl;
}
void g(int *x) { 
  cout << *x << endl;
  cout << x << endl;
  (*x)++;
}

void h(int &x) {
  cout << x << endl;
  x++;
}

int main() {
  int a = 5;
  f(a);
  
  g(&a); //pass by pointer
  g(&a); //pass by pointer
  
  h(a); //pass by reference
  h(a);

}