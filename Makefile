all: spitest

clean:
	rm -f spitest *.o

spitest: spidevc.o spitest.o
	cc -g spidevc.o spitest.o -o spitest

.c.o:
	cc -c -g $< -o $@
