OBJS	= shell.o
SOURCE	= shell.c
OUT	= sash
CC	 = cc
FLAGS	 = -g -c
LFLAGS	 = -lreadline
PREFIX  = local
DESTDIR = /usr/
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
	@rm -f sash $(OBJS)
