CC= gcc
CFLAGS= -g -Wall
LDFLAGS= $(SYSLDFLAGS) $(MYLDFLAGS)
LIBS=
SYSCFLAGS=
SYSLDFLAGS=
SYSLIBS=

ALL_O= hash.o test.o

all: test

test: $(ALL_O)
	$(CC) -o $@ $(LDFLAGS) $(ALL_O) $(LIBS)

hash.o: hash.c
test.o: test.c hash.h

clean:
	rm -f $(ALL_O) test
