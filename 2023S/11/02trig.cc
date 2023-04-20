#include <iostream>
#include <cmath>
using namespace std;

/*
   1101 0101 0101 0111 0110 1010 10101
     11   10  10    10   10   11
           00000000000000111010101011
*/

double f1(double a) {
  return sqrt(a);  
}

double f2(double a) {
  return sin(a);  
}

double f3(double a) {
  return cos(a);  
}

double f4(double a) {
  return tan(a);  
}

double abs(double x, double y, double z) {
    return sqrt(x*x + y*y+ z*z);
}



int main() {
 double x;
 cin >> x;
 double y = f1(x); 
 cout << y << '\n';
 return 0;
}