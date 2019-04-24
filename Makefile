CFLAGS += -std=c99 -g -O3 -Wall #-Werror
LDFLAGS += -lmosquitto

# Uncomment this to print out debugging info.
#CFLAGS += -DDEBUG

PROJECT=controller

all: ${PROJECT}
	cc ${CFLAGS} -o ${PROJECT} ${PROJECT}.c ${LDFLAGS}
#controller: Makefile 


clean:
	rm -rf *.o ${PROJECT}
