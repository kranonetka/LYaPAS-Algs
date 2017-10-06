allbn.o: allbn.asm
	nasm -felf -g allbn.asm
ltc: ltc.cpp allbn.o CompOperNew.cpp
	g++ -g -o ltc ltc.cpp
algs: ltc algs.l
	./ltc algs.l
	rm algs.s
