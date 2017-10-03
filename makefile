allbn.o: allbn.asm
	nasm -felf -g allbn.asm
ltc: ltc.cpp allbn.o CompOperNew.cpp
	g++ -g -o ltc ltc.cpp
algs: algs.l
	./ltc algs.l
