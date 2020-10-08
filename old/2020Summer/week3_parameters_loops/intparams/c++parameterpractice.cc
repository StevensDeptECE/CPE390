#include <iostream>
using namespace std;
//        r0
void g(int x){
  cout << x << endl;
}


//       r0,    r1
int g(int a, int b) { 
  return a + b ;          //  add r0,r0,r1
}                         //  bx  lr

//            d0        d1
double g(double a, double b) { return a + b; }

int main () {
  g(5);

  int z = g(3,4);
  cout << z << '\n';

  double out = g(2.5, 3.2);
  cout << out << '\n';

  out = g(int(2.5), 2);  
  cout << out << '\n';
}

