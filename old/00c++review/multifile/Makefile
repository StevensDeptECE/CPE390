#
# comment goes here...
#
myprog: a.o b.o
	g++ a.o b.o -o myprog

a.o: a.cc
	g++ -c a.cc

b.o: b.cc
	g++ -c b.cc

clean:
	rm *.o a.out myprog
