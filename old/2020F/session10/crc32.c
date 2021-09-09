#include <iostream>
using namespace std;

uint32_t	crc32(const uint8_t *buf, size_t size){
	uint32_t crc = ~0U; // 0xFFFFFFFF
	while (size-- > 0) {
		//		crc = crc32_tab[(crc ^ *p++) & 0xFF] ^ (crc >> 8);
	}
	return crc ^ ~0U;
}


int main() {
	cout << sizeof(size_t) << '\n';
}
