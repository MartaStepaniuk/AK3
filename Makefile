CC=g++
CFLAGS=-c -Wall
all: lab3 mylib.a
lab3: lab3.o mylib.a
	$(CC) lab3.o mylib.a
notification.o: notification.cpp notification.h
	$(CC) $(CFLAGS) notification.cpp
lab3.o: lab3.cpp
	$(CC) $(CFLAGS) lab3.cpp
mylib.a: notification.o
	ar -rcs mylib.a notification.o
clean:
	rm -rf *.o lab3