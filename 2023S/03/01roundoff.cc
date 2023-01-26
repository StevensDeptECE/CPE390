#include <iostream>
#include <iomanip>

using namespace std;
/*
   1/3 = 0.33333  10 is not evenly divisible by 3
   

001
010
011
100
101
110
111

  1.1
  1.01
  1.001
   1/10 = (1/5)(1/2)   5 and 2 are coprime
    
          .000110011
        1/16+1/32  +  1/256+1/512


*/
int main() {
    cout << setprecision(8);
  for (float i = 0; i <= 10; i+=0.1)
    cout << i << ' ';
    cout << '\n';

   float t1 = 70.001;
   float t2 = 70.002;
   float dt = t2 - t1; .0010 // subtractive

   long double x;

   // 1/1 + 1/2 + 1/3 + ... 1/100
   // 1/100 + 1/99 + 1/98 + .. 1/1

   // 1/1 + 1.0/2

#if 0
   for (int i = ...)
     1.0 / i
    
   for (float i = ...)
     1/ i

   for (float i = ...)
     1.0/ i



   mystery = 1/(1*1) + 1/(2*2) + 1/(3*3) + ... + infinity  ~1.64
   sqrt(mystery*6)
   
#endif

}