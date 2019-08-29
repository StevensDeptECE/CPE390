DEBUG	:=	-g
OPT	:=	-O2
CXX	:= g++ -std=c++11 $(DEBUG) $(OPT)

benchmark: benchmark.o cppbenchmarktests.o
	$(CXX) benchmark.o cppbenchmarktests.o -o benchmark

cppbenchmarktests.o: cppbenchmarktests.cc
	$(CXX) -c cppbenchmarktests.cc

asmbenchmarktests.o: asmbenchmarktests.s
	as asmbenchmarktests.s

benchmark.o: benchmark.cc benchmark.hh
	$(CXX) -c benchmark.cc
