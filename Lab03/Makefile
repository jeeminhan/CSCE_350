# ASS01 Example Makefile
#
# This makefile is intended for use with GNU make
# This example is intended to be built with Linaro bare-metal GCC

TARGET=Lab03
CC=gcc
LD=gcc

FLAGS=-g -O0

all: $(TARGET)

clean:
	rm *.o
	rm $(TARGET)

main.o: main.c
# Compile for best debug view (lowest optimization)
	$(CC) $(FLAGS) -c $^  -o $@

lab03c.o: lab03b.S
# Compile for best debug view (lowest optimization)
	$(CC) $(FLAGS) -c $^ -o $@

$(TARGET): main.o lab03b.o
	$(LD) main.o lab03b.o -o $@
