CC=		x86_64-w64-mingw32-gcc
CFLAGS=		-Wall -Wextra -Os -ffreestanding
LDFLAGS=	-s -nostdlib
LDLIBS=		-lkernel32 -luser32

all: wiggle.exe

clean:
	rm -f wiggle.exe

wiggle.exe: wiggle.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o wiggle.exe wiggle.c $(LDLIBS)

.PHONY: all clean
