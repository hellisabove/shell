OBJS	= shell.o
SOURCE	= shell.c
HEADER	= 
OUT	= ss
CC	 = gcc
FLAGS	 = -g -c
LFLAGS	 = -lreadline

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

shell.o: shell.c
	$(CC) $(FLAGS) shell.c 

install: all
	cp ss /usr/local/bin

clean:
	rm -f $(OBJS) $(OUT)
