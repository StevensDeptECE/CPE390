sum1ton: main.cc sum1ton.s
	g++ main.cc sum1ton.s -o sum1ton


funcs:	02callingfunctions.o 02funcs.o
	g++ 02callingfunctions.o 02funcs.o -o funcs

02callingfunctions.o: 02callingfunctions.cc
	g++ -g -c 02callingfunctions.cc

02funcs.o: 02funcs.s
	g++ -c 02funcs.s
