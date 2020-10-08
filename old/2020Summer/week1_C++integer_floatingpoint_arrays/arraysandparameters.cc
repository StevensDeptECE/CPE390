#include <iostream>
#include <cmath>
using namespace std;

double f(double x) {
  x = 4;
  return x*x;
}

/*
  declare a variable to  hold the sum
  count from 0 to len-1
  add up each element  a[ whateveryourvariableis ]
  return your answer
*/

double mean(double a[], int len) {
double sum=0;
for(int i=0;i<len;i++){
  sum+=a[i];
}
return sum/len;
}


/*
  variance = sum (square(xi - mean)) / number of elements
  standarddev = sqrt(var)
*/
double var(double a[], int len) {
  double m = mean(a, len);
  double variance = 0;
  for(int i = 0; i< len; i++){
    variance+= (pow((a[i] - m), 2)); // internally: (a[i] - m)*(a[i] - m)
  }
  return variance/len;
}


void stats(double a[], int len, double& m, double & v) {
  v = var(a, len);
  m = mean(a, len);
}

int main() {
  double z = 2.0;
  cout << f(z) << '\n';
  double x[] = {6, 5, 4, 1};
  double y[10] = {6, 5, 4, 2};
  cout << "mean(x)=" << mean(x, sizeof(x)/sizeof(double) ) << '\n';
  cout << "mean(y)=" << mean(y, sizeof(y)/sizeof(double) ) << '\n';

  double v = var(x, sizeof(x)/sizeof(double));
  cout << "var(x)=" << v << '\n';

  double m2, v2;
  stats(x, sizeof(x)/sizeof(double), m2, v2);
  cout << "m=" << m2 <<  " v=" << v2 << '\n';
}