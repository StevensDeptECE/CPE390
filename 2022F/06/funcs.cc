#include <iostream>
void add_one(uint64_t x[]);

uint64_t copy(uint64_t a[], uint32_t len) {
	uint64_t arr[10];
	for (uint64_t i = 0; i < len; i++)
		arr[i] = a[i];
	add_one(arr);
	uint64_t sum = arr[0];
	for (uint64_t i = 1; i < len; i++)
		sum += arr[i];
	return sum;
}


void add_one(uint64_t x[]) {
	for (int i = 0; i < 10; i++)
		x[i] = x[i] + 1;
}

void multtable() {
	int m[12][12];
	for (int i = 1; i <= 12; i++)
		for (int j = 1; j <= 12; j++)
			m[i-1][j-1] = i*j;
}
