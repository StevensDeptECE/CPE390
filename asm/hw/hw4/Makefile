CXX	:= g++ -std=c++11 -g -O2

all: hw4setup hw4 hw4inline

hw4: polymain.o eval.s
	$(CXX) polymain.cc eval.s -o hw4

# build the code with just C++ so you can see what the code should look like
# you can make your assembler code faster though
hw4setup: polymain.o Polynomial.o
	$(CXX) polymain.o Polynomial.o -o hw4setup

hw4inline: polymain.cc Polynomial.cc
	$(CXX) polymain.cc Polynomial.cc -o hw4inline

# Compile the main and generate assembler to look at
polymain.o: polymain.cc
	$(CXX) -c polymain.cc
	$(CXX) -S polymain.cc

Polynomial.o: Polynomial.cc
	$(CXX) -S Polynomial.cc
	$(CXX) -c Polynomial.cc   # compile only

# there is only one method in Polynomial that is not defined inline
# this is your job
eval.o: eval.s
	as eval.s

fastloop:
	g++ -g -O2 polymain.cc fastloopeval.s -o fastloop

#note: do not delete add.s, that's your source code!
#note: *.exe is deleted for window systems, on linux hw4 and hw4setup
clean:
	rm *.o *.exe hw4 hw4setup
