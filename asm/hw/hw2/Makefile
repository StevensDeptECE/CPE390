DEBUG	:= -g	# if you don't want to be able to debug, add # before -g
OPT	:= -O2	# optimization is on by default, we don't need to see horrible C code

# the compiler we are using is g++, but this lets you switch
# we are using the c++11 standard.  You can eliminate this if the version of g++
# is new enough, it is now the default in g++ 7.3
CXX	:= g++ -std=c++11 $(DEBUG) $(OPT)

all: hw2setup hw2

# build the code with just C++ so you can see what the code should look like
# you can make your assembler code faster though
hw2setup: hw2.o cppadd128.o
	$(CXX) hw2.o cppadd128.o -o hw2setup

# this is the homework, to take a C++ program and write an assembler function
hw2:  hw2.o add128.s
	$(CXX) hw2.o add.o -o hw2  #link the two .o files together into a program

# Compile the main.  In order to remove lots of junk code
# we use -O2 to optimize.  Look at the calling code and try to
# understand what is happening in main.
hw2.o: hw2.cc
	$(CXX) -c hw2.cc   # compile only
	$(CXX) -S hw2.cc   # generate assembler hw1.s for you to read

cppadd128.o: cppadd128.cc
	$(CXX) -c cppadd128.cc   # compile only
	$(CXX) -S cppadd128.cc   # generate the assembler to look at

add128.o: add128.s
	as add128.s	# run the assembler and generate the .o file

#note: do not delete add.s, that's your source code!
#note: deleting *.exe below is under windows.  On linux you must delete hw2 and hw2setup
clean:
	rm cppadd128.s *.o *.exe hw2 hw2setup

