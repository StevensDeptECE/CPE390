all: hw1 Polynomial hypotcpp hypotasm polynomialopt.s polynomial.s benchmark

hw1: hw1.cc add.s
	g++ -g hw1.cc add.s -o hw1

Polynomial: Polynomial.cc hwPolymain.cc
	g++ -g Polynomial.cc hwPolymain.cc -o Polynomial

hypotcpp: hypotmain.cc hypot.cc
	g++ -g hypotmain.cc hypot.cc -o hypotcpp

hypotasm: hypotmain.cc fastdangeroushypot.s
	g++ -g hypotmain.cc fastdangeroushypot.s -o hypotasm

polynomialopt.s: Polynomial.cc
	g++ -S -O2 Polynomial.cc -o polynomialopt.s

polynomial.s: Polynomial.cc
	g++ -S Polynomial.cc -o polynomial.s

hypot.o: hypot.cc
	g++ -g -O2 -c hypot.cc

benchmark: benchmark.cc hypot.o
	g++ -g -O2 benchmark.cc hypot.o -o benchmark

hypotavx.o: hypot.cc
	g++ -g -O2 -march=skylake -c hypot.cc -o hypotavx.o

benchmarkavx: benchmark.cc hypot.o
	g++ -g -O2 -march=skylake benchmark.cc hypotavx.o -o benchmarkavx

clean:
	rm *.o hw1 Polynomial benchmark hypot
