#include <iostream>

using namespace std;

uint32_t getBits(uint32_t val, uint32_t start, uint32_t len) {
	// 000000000000010101010111101010xxxx
	// 0000000000000000000000000000001111
	// 2 to the power len - 1
	return (val >> start) & ((1 << len)-1);
}

const char* opcodes[] =
	{
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 ""
	};
const char* conditioncodes[] =
	{
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 "",
	 ""
};

void disasm(uint32_t inst) {


	const char setflags[] = "";

	uint32_t opcode = TODO;
	uint32_t rd = TODO;
	uint32_t rn = getBits(inst, 16, 4);
	uint32_t rm = TODO;
	
	cout << opcodes[opcode] << conditioncode << setflags << "     r" <<
		rd << ", r" << rn << ", r" << rm << '\n';
}

//	sub  r0,  r1, #4 @ r1-4
//	rsb  r0,  r1, #4 @ 4-r1
