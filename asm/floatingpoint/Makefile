all: hypotcpp

hypotcpp: hypotmain.cc hypot.cc
	g++ -S -O2 hypotmain.cc hypot.cc 
	g++ -g -O2 hypotmain.cc hypot.cc -o hypotcpp
clean:
	rm *.o hypotcpp
