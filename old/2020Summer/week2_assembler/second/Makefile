second: main.o f.o
	g++ main.o f.o -o second

main.o: main.cc
	g++ -O2 -c main.cc

f.o: f.s
	g++ -c f.s
