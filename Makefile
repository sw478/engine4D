TARGET   = mSudoku
CC       = gcc
CCFLAGS  = -std=gnu99 -pedantic -Wall -Werror -ggdb3
LDFLAGS  = -lm
SOURCES  = $(wildcard *.c)
INCLUDES = $(wildcard *.h)
OBJECTS  = $(SOURCES:.c=.o)
SQLPATH  = $('C:/Program Files/MySQL/MySQL Server 8.0/lib/')

all:$(TARGET)

$(TARGET):$(OBJECTS)
	$(CC) -o $(TARGET) $(LDFLAGS) $(OBJECTS)

$(OBJECTS):$(SOURCES) $(INCLUDES)
	$(CC) -c $(CCFLAGS) $(SOURCES)

sql:
	gcc sqlTest.c libmysql.dll

clean:
	rm -f $(TARGET) $(OBJECTS)
