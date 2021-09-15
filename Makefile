# the compiler: gcc for C program, define as g++ for C++
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

# the build target executable:
TARGET = raidix

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

install: $(TARGET)
	mkdir -p $(DESTDIR)/usr/bin
	install -m 0755 $(TARGET) $(DESTDIR)/usr/bin/$(TARGET)
clean:
	$(RM) $(TARGET)
