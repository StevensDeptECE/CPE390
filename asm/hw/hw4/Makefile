DEBUG	:= -g	# if you don't want to be able to debug, add # before -g
OPT	:= -O2	# optimization is on by default, we don't need to see horrible C code

# the compiler we are using is g++, but this lets you switch
# we are using the c++11 standard.  You can eliminate this if the version of g++
# is new enough, it is now the default in g++ 7.3
CXX	:= g++ -std=c++11 $(DEBUG) $(OPT)

all: hw4setup hw4 

# build the code with just C++ so you can see what the code should look like
# you can make your assembler code faster though
hw4setup: polymain.o Polynomial.o
	$(CXX) polymain.o Polynomial.o -o hw4setup

# Your homework is to write eval.s to work just like C++
hw4:  polymain.o eval.s
	$(CXX) hw4.o eval.o -o hw4  #link the two .o files together into a program

# Compile the main and generate assembler to look at
polymain.o: polymain.cc
	$(CXX) -c polymain.cc
	$(CXX) -S polymain.cc

Polynomial.o: Polynomial.cc
	$(CXX) -c Polynomial.cc   # compile only

# there is only one method in Polynomial that is not defined inline
# this is your job
eval.o: eval.s
	as eval.s

#note: do not delete add.s, that's your source code!
#note: *.exe is deleted for window systems, on linux hw4 and hw4setup
clean:
	rm cppadd.s *.o *.exe hw4 hw4setup
