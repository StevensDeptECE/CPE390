#include <iostream>
#include <time.h>

using namespace std;

#if 0
void readOneMemoryLocation(const int x[], int n) {
    int temp;
    for(int i = 0; i<n; i++){
      temp = x[0];
    }
}

void readEntireArray(const int x[], int n) {
    int temp;
    for(int i=0; i<=n; i++){
      temp=x[i];
    }
}
#endif
void readOneMemoryLocation(const int x[], int n);
void readEntireArray(const int x[], int n); // HW: You have to write this one

uint32_t sumEntireArray(const int x[], int n) {
    uint32_t sum = 0;
    for(int i = 0; i < n; i++){
        sum += x[i];
    }
    return sum;
}

uint32_t multEntireArray(const int x[], int n) {
    uint32_t sum = 1;
    for(int i = 0; i < n; i++){
        sum *= x[i];
    }
    return sum;
}

uint32_t count(int n); // HW: you have to write this

// how fast is multiply?
uint32_t multiply(int x, int n) {
    uint32_t prod = 1;
    for(int i = 0; i < n; i++){
        prod = prod * x;
    }
    return prod;
}

uint32_t add(int x, int n); // HW: You write this

#if 0
// how fast is add? The compiler is optimizing and giving us
// unreasonably good results
uint32_t add(int x, int n) {
    uint32_t sum = 0;
    for(int i = 0; i < n; i++){
        sum += x;
    }
		// sum = x * n;
    return sum;
}
#endif

uint32_t nonSequentialMemory(int x[], int size) {
	uint32_t sum = 0;
	for (int j = 0; j < 32; j++)
		for (int i = j; i < size; i += 32)
			sum += x[i];
  return sum;	
}


// how fast is it to write memory
void writeArray(int x[], int len) {
  for (int i = 0; i < len; i++)
		x[i] = i;
}

int main() {
// probably exceeds stack size  int a[1000000];
  const uint32_t size = 50000000;
  int* p = new int[size];
	for (int i = 0; i < size; i++)
		p[i] = 17+i;
  cout << p << '\n';

  clock_t t0 = clock();  
  readOneMemoryLocation(p, size);
  clock_t t1 = clock();  
  cout << "Read One Memory Location elapsed t=" << (t1-t0) << '\n';

  t0 = clock();
  readEntireArray(p, size);
  t1 = clock();
  cout << "Read Entire Array elapsed t=" << (t1-t0) << '\n';
  uint32_t s;

  t0 = clock();
  s = multEntireArray(p, size);
  t1 = clock();
  cout << "first time: mult Entire array elapsed t=" << (t1-t0) << '\n';
  cout << s << '\n';

	
	t0 = clock();
  writeArray(p, size);
  t1 = clock();
  cout << "write Entire Array elapsed t=" << (t1-t0) << '\n';

	t0 = clock();
  writeArray(p, size);
  t1 = clock();
  cout << "write Entire Array elapsed t=" << (t1-t0) << '\n';

	
  t0 = clock();
  s = multEntireArray(p, size);
  t1 = clock();
  cout << "mult Entire array elapsed t=" << (t1-t0) << '\n';
  cout << s << '\n';
	
	t0 = clock();
  s = sumEntireArray(p, size);
  t1 = clock();
  cout << "sum Entire array elapsed t=" << (t1-t0) << '\n';
  cout << s << '\n';

	t0 = clock();
  s = multEntireArray(p, size);
  t1 = clock();
  cout << "mult Entire array elapsed t=" << (t1-t0) << '\n';
  cout << s << '\n';
	
	t0 = clock();
  s = sumEntireArray(p, size);
  t1 = clock();
  cout << "sum Entire array elapsed t=" << (t1-t0) << '\n';
  cout << s << '\n';

  t0 = clock();
  s = multiply(13, size);
  t1 = clock();
  cout << "multiply t=" << (t1-t0) << '\n';
  cout << s << '\n';

  t0 = clock();
	//HW: Uncomment this when you write it in assembler
	//  s = add(13, size);
  t1 = clock();
  cout << "add t=" << (t1-t0) << '\n';
  cout << s << '\n';

  t0 = clock();
	s = nonSequentialMemory(p, size);
  t1 = clock();
  cout << "nonsequential sum t=" << (t1-t0) << '\n';
  cout << s << '\n';

	
}
