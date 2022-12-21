CC = clang
TARGET = parser
OBJS = parser.o

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

%.o : %.c
	$(CC) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
