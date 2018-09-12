all: hw1addsetup hw1setup.s add.s hw1setupopt.s addopt.s 

# your job, should you choose  to accept it:
# write add.s
# compile the two together

hw1:  hw1.cc add.s
	g++ hw1.cc add.s -o hw1

hw1addsetup: hw1setup.cc add.cc
	g++ hw1setup.cc add.cc -o hw1addsetup

hw1setup.s: hw1setup.cc
	g++ -S hw1setup.cc  #compile to assembler unoptimized

add.s: add.cc
	g++ -S add.cc  #compile to assembler unoptimized


#optimized
hw1setupopt.s: hw1setup.cc
	g++ -S -O2 hw1setup.cc -o hw1setupopt.s

addopt.s: add.cc
	g++ -S -O2 add.cc -o addopt.s

clean:
	rm *.s *.o *.exe
