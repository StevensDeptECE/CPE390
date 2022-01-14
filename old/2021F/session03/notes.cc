/*
after class, not required for tests...


arrays and pointers are equivalent
*/

void  f(int a[]) {
  // a cannot point anywhere else
}

void g(int* a) {
  a = something else
}

void h(int* const a) { // this is EXACTLY the same as the array!
}

int main() {
  int a;
  int *p = &a; // p points to a

  int x[] = {1, 2, 3, 4}; // x is a pointer to a block of memory
  uint64_t big[]  = {1234567890123456ULL, };
		     
  f(x);
  g(x);
}}
