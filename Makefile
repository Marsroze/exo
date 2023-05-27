CC = gcc
SRC = ./src
FLAGS =-o2

all : exo

exo: main.o shell.o loop.o
	$(CC) $(FLAGS) main.o shell.o loop.o -o exo

main.o: $(SRC)/main.c
	$(CC) $(FLAGS) -C $(SRC)/main.c

shell.o: $(SRC)/shell.c
	$(CC) $(FLAGS) -C $(SRC)/shell.c

loop.o: $(SRC)/loop.c
	$(CC) $(FLAGS) -C $(SRC)/loop.c
