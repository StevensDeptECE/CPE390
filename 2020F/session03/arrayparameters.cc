#include <iostream>
#include<cmath>

using namespace std;

void print(int a[], int len)
{
  for (int i = 0; i < len; i++)
    cout << a[i] << ' ';
  cout << '\n';
}
void readIn(int grades[], int len){
    for (int i=0; i<len;i++){
        cin>>grades[i];
    }
}

double average(const int a[], int len) { // const means "I promise to read only, not write"
  int sum = 0;
  for (int i = 0; i < len; i++)
    sum += a[i];
  return double(sum) / len;
}


double rms(const int arr[], int length){
  double sumsTotal = 0;
  for (int i = 0; i < length; i++){
    sumsTotal += arr[i] * arr[i];
  }
  return sqrt(sumsTotal);
}

void divBy(int a[], int length, double mean){
  for(int i = 0; i < length; i++){
    a[i] = a[i]/mean;     // 20 / 32 --> 0     52/2.5 --> 20ish?
  }
}

int main() {
  int x[] = {5, 4, 3}; // 3 elements
  int y[10] = { 6, 4, 1}; // the rest are zero
  print(x, 3);
  print(y, sizeof(y)/sizeof(int)   ); // pass in the pointer to the array, and the number of elements

  int grades[5]; //  10 20 20 30 32 112/5 = 22.xx
  readIn(grades, sizeof(grades)/sizeof(int));
  double mean = average(grades, sizeof(grades)/sizeof(int));
  cout << "average =" << mean << '\n';
  cout << rms(grades, 5) << '\n';// sqrt(10*10 + 20*20 + 20*20 + 30*30 + 32*32);
  divBy(grades, 5, mean); // 10/int(22) 20/int(22) 20/22 30/22 = 1  32/22 = 1 --> 0 0 0 1 1
  print(grades, 5);
}