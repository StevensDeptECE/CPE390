callingconventions: callingconventions.o calls.o
	g++ -g -O2 callingconventions.o calls.o -o callingconventions

callingconventions.o: callingconventions.cc
	g++ -g -O2 -c callingconventions.cc
	g++ -g -O2 -S callingconventions.cc

calls.o: calls.cc
	g++ -g -O2 -c calls.cc
	g++ -g -O2 -S calls.cc
