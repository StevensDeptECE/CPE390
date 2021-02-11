//hw3: passing arrays to functions

void init(int arr[], int len, int val) {


}


int main() {
  const int A_SIZE=10;
  int a[A_SIZE];
  init(a, A_SIZE, -3); // your function should set every element of a to -3
  a[4] = 92;
  constexpr int B_SIZE = 12;
  int b[B_SIZE];
  init(b, B_SIZE, 5); // your function should set every element of b to 5
  //MEAN should return double
  cout << mean(a, A_SIZE); // Remember, just because it's integers doesn't mean the answer is (1+2+3+4)/4 = 2.5

  /* ideas for future homework
   compute the sum of an array
   compute the average of an array
   compute the product
   reverse the values in an array
  */
}