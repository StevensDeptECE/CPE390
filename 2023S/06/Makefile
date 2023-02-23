02: 02main.o 02funcs.o
	g++ 02main.o 02funcs.o -o 02

02main.o: 02main.cc
	g++ -O2 -c 02main.cc

02funcs.o: 02funcs.s
	g++ -c 02funcs.s

clean:
	rm 02main.o 02funcs.o 02.exe
