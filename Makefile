CC=pgf90
CFLAGS=-Mcuda -Minfo
OUTPUT=fdtd
SOURCES=fdtd.f90

all:
	${CC} -o ${OUTPUT} ${CFLAGS} ${SOURCES}
    
clean:
	rm ${OUTPUT} *.mod *.o *.s

run:
	pjsub run.sh
