BIN_DIR=../bin
PROGRAM=$(BIN_DIR)/mergesort-co

CC=g++-13
CFLAGS=-O3 -fopenmp
LDFLAGS=-fopenmp

all: ${BIN_DIR} $(PROGRAM) 

$(PROGRAM): mergesort.cpp
	$(CC) $(CFLAGS) $(VERBOSE) -o $@ $^ $(LDFLAGS)

$(BIN_DIR): 
	mkdir $@

clean:
	rm -rf $(PROGRAM) *.o

wipe: clean
	rm -rf *.out *.err
