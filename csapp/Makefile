INCLUDE=~/dev/public_res/csapp
LDPATH=$(INCLUDE)
CC=gcc -I$(INCLUDE) 
SOURCES=$(wildcard *.c)
OBJS=$(patsubst %.c,%.o,$(SOURCES))

%.o:%.c
	$(CC) $*.c -Wall -c -o $*.o
	#-c的意思是不进行链接

all:$(OBJS)
	$(CC) $(OBJS) $(LDPATH)/csapp.o -lpthread -o main
	#为了把csapp.c不要重复编译，且不用放在本目录下,用-c选项编译好后放在根目录里链接使用
	#gcc -c csapp.c

clean:
	 rm *.o main
