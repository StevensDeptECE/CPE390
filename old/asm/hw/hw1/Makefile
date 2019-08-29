CXX	:=	g++ --std=c++11 -g -O2
all: hw1setup hw1

# build the code with just C++ so you can see what the code should look like
# you can make your assembler code faster though
hw1setup: hw1.cc cppadd.cc
	 $(CXX) hw1.cc cppadd.c -o hw1setup

hw1:  hw1.cc add.s
	$(CXX) hw1.cc add.s -o hw1  #link the two .o files together into a program
