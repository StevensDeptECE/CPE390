all: advanced asm_examples

advanced: advanced.cc advanced_main.cc
	g++ -std=c++20 -g -O2 advanced.cc -I ../../lib advanced_main.cc -o $@

asm_examples: asm_examples.cc asm_examples_main.cc
	g++ -g -O2 asm_examples.cc asm_examples_main.cc -o $@

clean:
	rm *.o *.exe
