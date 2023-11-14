TARGET = toy_project
CC = gcc
CFLAGS = -I$(SYSTEM) -I$(UI) -I$(WEB_SERVER)
SRC_DIR = .
SYSTEM = $(SRC_DIR)/system
UI = $(SRC_DIR)/ui
WEB_SERVER = $(SRC_DIR)/web_server

SRCS = $(SRC_DIR)/main.c $(SYSTEM)/system_server.c $(UI)/gui.c $(UI)/input.c $(WEB_SERVER)/web_server.c
OBJS = $(SRCS:.c=.o)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

clean:
	rm -rf $(OBJS) $(TARGET)

.PHONY: clean

