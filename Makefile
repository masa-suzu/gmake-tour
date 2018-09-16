HELLO = hello
GCC = gcc

$(HELLO): clean $(HELLO).c	
	$(GCC) $(HELLO).c -o $(HELLO)

clean:
	rm $(HELLO)

.PHONY: clean

