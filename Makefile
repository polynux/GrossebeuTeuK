CC ?= gcc
CFLAGS ?= $(shell pkg-config --cflags gtk4)
LIBS ?= $(shell pkg-config --libs gtk4)

SOURCE = main.c
TARGET = $(SOURCE:.c=)

all: hello

hello: $(SOURCE)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE) $(LIBS)

clean:
	rm -f $(TARGET)
