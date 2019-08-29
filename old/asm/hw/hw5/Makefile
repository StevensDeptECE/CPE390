hw5: hw5.cc Vec3d.s
	g++ -g -O2 -S hw5.cc
	g++ -g -O2 hw5.cc Vec3d.s -o hw5

hw5setup: hw5.cc hw5setup.cc
	g++ -O2 -S hw5.cc
	g++ -O2 -S hw5setup.cc
	g++ -g -O2 hw5.cc hw5setup.cc -o hw5setup

clean:
	rm *.exe
