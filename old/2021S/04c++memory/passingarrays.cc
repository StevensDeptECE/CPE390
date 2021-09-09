#include <iostream>
using namespace std;

void print(int a[], int length) { 
  for (int i = 0; i < length; i++) {
    cout << a[i] << " ";
  }
  cout << '\n';
 }

 void set(int a[], int length, int value) { 
   for (int i = 0; i < length; i++){
     a[i] = value;
   }
 }

 int main() {
   constexpr int SIZE = 10;
   int a[SIZE] = {9, 1, 2}; // 9 1 2 0 0 0 0 0 0 0 
   //a-1                    ?? 9 1 2 0 0 0 0 0 0 0 ??
   print(a, SIZE);
   print(a + 1, 3);

   int b[20] = {8, -2, 1, 3, 6};
   print(b, 20);

   set(a, SIZE, -2); // set every element of a to be -2
   print(a, SIZE);
 }
