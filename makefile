#Macros

CC = g++
CFLAGS = -Wall 



scheduler : main.o course.o timeInterval.o dtime.o daysOfWeek.o
	$(CC) $(CFLAGS) main.o course.o timeInterval.o dtime.o daysOfWeek.o -o scheduler
main.o : main.cpp main.h course.h timeInterval.h dtime.h daysOfWeek.h
	$(CC) $(CFLAGS) -c main.cpp 
course.o : course.cpp course.h timeInterval.h dtime.h daysOfWeek.h
	$(CC) $(CFLAGS) -c course.cpp
timeInterval.o : timeInterval.cpp course.h timeInterval.h dtime.h daysOfWeek.h
	$(CC) $(CFLAGS) -c timeInterval.cpp
dtime.o : dtime.cpp
	$(CC) $(CFLAGS) -c dtime.cpp course.h timeInterval.h dtime.h daysOfWeek.h
daysOfWeek.o : daysOfWeek.cpp course.h timeInterval.h dtime.h daysOfWeek.h
	$(CC) $(CFLAGS) -c daysOfWeek.cpp


