#include <cstdint>

int f(int a) {
	uint32_t x = 2;
	uint64_t y = 6; //0110
	uint32_t arr[10] = {0};

	x = x + 9;
	y = y & 10; // 0b1010
	arr[3] = 22;
	int sum = 0;
	for (int i = 0; i < 10; i++)
		sum += arr[i];
	return x + y + sum;
}
