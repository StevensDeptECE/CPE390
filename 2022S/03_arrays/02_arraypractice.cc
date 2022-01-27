#include <iostream>
using namespace std;

void add_one(int a[], int size){

  for (int i=0; i < size; i++){
    a[i]+= 1; // a[i] = a[i] + 1;   a[i]++;    ++a[i]
  }
}




// return 1 integer value
int f(int x) { return x*x; }

// return nothing
void g(int count) {
  for (int i = 0; i < count; i++)
    cout << "yoho!";
}

//pass by reference (we have not covered this yet)
void rect2polar(double x, double y, double& r, double& theta) {}

int sumsquares(const int a[], int size){
  int sum = 0;
  for (int i = 0; i<size; i++) {
    sum += a[i] * a[i];
  }
  return sum;
}

void build_me_an_array(int a[], int len) {
  for (int i = 0; i < len; i++)
    a[i] = 0;
}

int* build_me_an_array(int size) {
  int* p = new int[size]; // allocate me a chunk of memory (size*sizeof(int) = 4*size)
  for (int i = 0; i < len; i++)
    p[i] = 0;
  return p;
}

int main() {
  int x = 3;
  int y = x++; // first y = x, then x++
  int z = ++x; // first add one to x THEN z = x;
 // x = 5  y = 3  z = 5
  int a[10] = {9, 1, 6, 3, 5};
  int b[3] = {2, 3, 3};

  add_one(a, 10);
  add_one(b, 3);

  int s = sumsquares(a, 10);
  cout << s << '\n';

  int c[20];
  build_me_an_array(c, 20);


  int* myptr = build_me_an_array(100);



  delete [] myptr;
}