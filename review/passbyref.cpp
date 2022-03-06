#include <iostream>
using namespace std;

                                      // pass mean by reference (use a pointer)
void stats(const double x[], int size, double& mean, double& min, double& max){
  double sum = x[0];
  double localmin = x[0];
  max = x[0];
  for(int i = 1; i < size; i++){
    sum += x[i];
    if(x[i] < localmin){
      localmin = x[i];
    }
    else
      if (x[i] > max) max = x[i];
  }
  mean = sum / size;
  min = localmin;
}


void stats2(const double x[], int size, double* mean, double* min, double* max){
  double sum = x[0];
  double localmin = x[0];
  double localmax = x[0];
  for(int i = 1; i < size; i++){
    sum += x[i];
    if(x[i] < localmin){
      localmin = x[i];
    }
    else
      if (x[i] > localmax) localmax = x[i];
  }
  *mean = sum / size;
  *max = localmax;
  *min = localmin; 
}


int main() {
  int a;

    // &a = pointer to location of a
  const double x[] = {1, 2, 3, 4, 9};
  double mean, min, max;
  // new C++ way (pass by reference) this is on the test
  stats(x, sizeof(x)/sizeof(double), mean, min, max);

//old C code NOT on the test
  stats2(x, sizeof(x)/sizeof(double), &mean, &min, &max);

}