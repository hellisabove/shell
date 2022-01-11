OBJS	= shell.o
SOURCE	= shell.c
HEADER	= 
OUT	= sash
CC	 = gcc
FLAGS	 = -g -c
LFLAGS	 = -lreadline

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

shell.o: shell.c
	$(CC) $(FLAGS) shell.c 

install: all
	@echo installing executable file to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f sash ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/sash
	@chmod u+s ${DESTDIR}${PREFIX}/bin/sash
	@echo "/usr/local/bin/sash" >> /etc/shells

clean:
	@echo cleaning
	@rm -f sh $(OBJS)
