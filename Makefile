CFLAGS += -std=c99 -g -O3 -Wall #-Werror
LDFLAGS += -lmosquitto

# Uncomment this to print out debugging info.
CFLAGS += -DDEBUG

PROJECT=controller

all: ${PROJECT}

${PROJECT}:${PROJECT}.o
	cc -o ${PROJECT} ${PROJECT}.o ${LDFLAGS}

${PROJECT}.o:${PROJECT}.c
	cc ${CFLAGS} -c ${PROJECT}.c


clean:
	rm -rf *.o ${PROJECT}
