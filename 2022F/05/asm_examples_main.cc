#include "asm_examples.hh"

int main() {
	uint64_t temp = add(3,4);
	cout << temp << '\n';
	temp = sub(6, 2);
	cout << temp << '\n';
	temp = prod(3,7);
	cout << temp << '\n';
	temp = max(3,4);
	cout << temp << '\n';
	return 0;
}
