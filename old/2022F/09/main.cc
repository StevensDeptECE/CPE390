#include <iostream>
using namespace std;

double f(double a, double b);
double sum(double arr[], int len);
//double mean(double arr[], int len);

//               %rcx,   %rdx,       %xmm0
void sub(double arr[], int len, double v);

main() {
    cout << f(3.0, 4.0); // (a+b)*(a-b)

    double x[] = {1.0, 2, 3, 5.5}; //  101.1 
    cout << sum(x, 4) << '\n';  

    double y[] = {3.5, 2.8, 1.6, 2.0, 9.7};
    sub(y, 5, 1.0); // subtract 1 from each element
    //square(y, 5, 1.0); // square every element
    //cube(y, 5, 1.0); // cube every element
    //demean(y, 5, 1.0); // subtract average from each element

//    cout << mean(x, 4) << '\n';
}