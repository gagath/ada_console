DEMO_EXEC = demo
DEMO_MAIN = demo.ali
DEMO_OBJS = demo.o console.o

.PHONY: clean mrproper

all: $(DEMO_EXEC)

$(DEMO_EXEC): $(DEMO_OBJS)
	gnatbind $(DEMO_MAIN)
	gnatlink $(DEMO_MAIN) -o $(DEMO_EXEC)

%.o: %.adb
	gcc -c $<

clean:
	rm -f *.ali
	rm -f *.o

mrproper: clean
	rm -f $(DEMO_EXEC)
