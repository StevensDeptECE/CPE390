#include<iostream>
#include "benchmark.hh"
#include "benchmarktests.hh"

int main() {
	uint32_t n = 100;
	clockBench("empty ", n, empty);
	clockBench("Sum 1 to ", n, sum1Ton);
	clockBench("Sum div ", n, sumDiv);
	clockBench("Sum div ", n, sumDiv2);
	//	clockBench("Division in loop", n, divisions);
	//	clockBench("2 Divisions in loop", n, divisions2);
	//	clockBench("3 Divisions in loop", n, divisions2);

	clockBench("empty2 ", n, empty2);
	clockBench("readMem ", n, readMem);
	clockBench("writeMem ", n, writeMem);
	clockBench("readWriteMem ", n, readWriteMem);
	clockBench("writeReadMem ", n, writeReadMem);
}
