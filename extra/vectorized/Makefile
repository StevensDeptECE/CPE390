addvec:	addvec.cc
	g++ -O2 -mavx2 $<

sumsqdiff: sumsqdiff.cc sumsqdiffmain.cc
	g++ -c -O3 -g -mavx2 sumsqdiff.cc
	g++ -c -O3 -g -mavx2 sumsqdiffmain.cc
	g++ -g  -mavx2 sumsqdiff.o sumsqdiffmain.o -o sumsqdiff
