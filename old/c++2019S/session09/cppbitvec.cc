#include <iostream>
using namespace std;

void set(uint32_t bits[], int pos) {
	bits[ pos / 32 ] = bits[pos/32] | 1 << (pos % 32);
}

void clear(uint32_t bits[], int pos) {

}

void toggle(uint32_t bits[], int pos) {

}
