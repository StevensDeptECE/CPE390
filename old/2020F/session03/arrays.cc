#include <iostream>
using namespace std;
int main() {
    int a;  //random
    int x[3]; // x[0]   x[1]   x[2]  all random by default
    float dosage;
    //x[3] = 99; // DON'T DO THIS!!! out of bounds

    cout << x[0] << ',' << x[1] << ',' << x[2] << '\n';

    int y[10] = {6}; //x[0] = 6 x[1] = 0 x[2] = 0 ...  x[9] =0
    int z[10] = {0}; // set all elements to zero
    int w[10000] = {0}; // this calls memset

    for (int i = 0; i < 10; i++)
      y[i] = i+1;
    
    int sum = 0;
    for(int i = 0; i<10; i++)
    {
        sum += y[i];
    }



}