CC = gcc
CFLAGS = -Wall -Wextra

main: main.c
	$(CC) $^ -o $@ $(CFLAGS)
	# nasm -felf64 -g output.asm -o output.o && ld output.o -o output && ./output

.PHONY: clean
clean:
	rm -f main

