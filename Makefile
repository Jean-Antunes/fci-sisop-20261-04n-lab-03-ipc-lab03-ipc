CC = gcc
CFLAGS = -Wall -Wextra -std=c11
LDFLAGS_SHM = -lrt

TARGETS = ex1 ex2 ex3

all: $(TARGETS)

ex1: ex1_pipe.c
	$(CC) $(CFLAGS) -o $@ $<

ex2: ex2_fifo.c
	$(CC) $(CFLAGS) -o $@ $<

ex3: ex3_sinais.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(TARGETS)
	rm -f /tmp/lab03_fifo

gabarito:
	$(MAKE) -C gabarito/

.PHONY: all clean gabarito
