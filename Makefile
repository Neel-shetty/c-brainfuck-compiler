CC = gcc
CFLAGS = -Wall -Wextra

bfc: bfc.c
	$(CC) $^ -o $@ $(CFLAGS)

.PHONY: clean
clean:
	rm -f bfc

