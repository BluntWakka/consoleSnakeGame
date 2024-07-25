CFLAGS=-g -Wall -Wextra -Wwrite-strings
LFLAGS=-g

snakeGame: snakeGame.o snakeGameFuncs.o
	g++ ${LFLAGS} -o snakeGame snakeGame.o snakeGameFuncs.o
snakeGame.o: syscalls.h snakeGame.cpp snakeGameFuncs.h
	g++ ${CFLAGS} -c snakeGame.cpp
snakeGameFuncs.o: snakeGameFuncs.cpp syscalls.h snakeGameFuncs.h
	g++ ${CFLAGS} -c snakeGameFuncs.cpp
clean:
	rm -f *.o
	rm -f snakeGame