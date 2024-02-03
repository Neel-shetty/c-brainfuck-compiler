CC = gcc
CFLAGS = -Wall -Wextra

main: main.c
	$(CC) $^ -o $@ $(CFLAGS)

run: main
	./main

.PHONY: clean
clean:
	rm -f main

