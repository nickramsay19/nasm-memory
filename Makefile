all: main

main: build/main.o build/asm.o
	gcc -arch x86_64 -o main build/main.o build/asm.o

build/asm.o: src/asm.s build
	nasm -f macho64 -o build/asm.o src/asm.s

build/main.o: src/main.c build
	gcc -o build/main.o -c src/main.c

build:
	mkdir build
