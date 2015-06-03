tetris:tetris.o Mino.o MinoL.o MinoT.o genMino.o
	g++ -o tetris tetris.o Mino.o MinoL.o MinoT.o genMino.o

tetris.o:tetris.cpp genMino.h
	g++ -c tetris.cpp

Mino.o:Mino.cpp Mino.h
	g++ -c Mino.cpp

MinoL.o:MinoL.cpp MinoL.h Mino.h
	g++ -c MinoL.cpp

MinoT.o:MinoT.cpp MinoT.h Mino.h
	g++ -c MinoT.cpp

genMino.o:genMino.cpp genMino.h Mino.h MinoL.h MinoT.h
	g++ -c genMino.cpp
