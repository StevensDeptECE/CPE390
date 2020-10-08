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

	int b = 7;
  
  g(&b); //pass by pointer
  g(&b); //pass by pointer
  
  h(b); //pass by reference
  h(b);

}
