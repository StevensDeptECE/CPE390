DEBUG	:= -g
speedtests: speedtests.o testfuncs.o funcs.o
	g++ $(DEBUG) speedtests.o testfuncs.o funcs.o -o speedtests

speedtests.o: speedtests.cc
	g++ -O2 -c speedtests.cc

testfuncs.o: testfuncs.cc
	g++ -O2 -c testfuncs.cc

funcs.o: funcs.cc
	g++ -O2 -c funcs.cc
