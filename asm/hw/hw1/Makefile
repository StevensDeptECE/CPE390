DEBUG	:= -g	# if you don't want to be able to debug, add # before -g
OPT	:= -O2	# optimization is on by default, we don't need to see horrible C code

# the compiler we are using is g++, but this lets you switch
# we are using the c++11 standard.  You can eliminate this if the version of g++
# is new enough, it is now the default in g++ 7.3
CXX	:= g++ -std=c++11 $(DEBUG) $(OPT)

all: hw1setup hw1 

# build the code with just C++ so you can see what the code should look like
# you can make your assembler code faster though
hw1setup: hw1.o cppadd.o
	$(CXX) hw1.o cppadd.o -o hw1setup

# this is the homework, to take a C++ program and write an assembler function
hw1:  hw1.o add.o
	$(CXX) hw1.o add.o -o hw1  #link the two .o files together into a program

# Compile the main.  In order to remove lots of junk code
# we use -O2 to optimize.  Look at the calling code and try to
# understand what is happening in main.
hw1.o: hw1.cc
	$(CXX) -c hw1.cc   # compile only
	$(CXX) -S hw1.cc   # generate assembler hw1.s for you to read

cppadd.o: cppadd.cc
	$(CXX) -c cppadd.cc   # compile only

add.o: add.s
	as add.s	# run the assembler and generate the .o file

#note: do not delete add.s, that's your source code!
#note: *.exe is deleted for window systems, on linux hw1 and hw1setup
clean:
	rm cppadd.s *.o *.exe hw1 hw1setup
