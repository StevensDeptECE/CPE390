all: stackexample

stackexample: main.cc f.cc g.cc
	g++ -g -O2 -c main.cc
	g++ -O2 -c f.cc
	g++ -O2 -c g.cc

	g++ -g main.o f.o g.o -o stackexample

