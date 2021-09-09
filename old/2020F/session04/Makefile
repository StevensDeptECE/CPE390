cpptoassem: cpptoassem.o main.o
	g++ cpptoassem.o main.o -o cpptoassem

cpptoassem.o: cpptoassem.cc
	g++ -O2 -c cpptoassem.cc


main.o: main.cc
	g++ -O2 -c $<

