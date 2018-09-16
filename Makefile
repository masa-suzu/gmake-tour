HELLO = hello
GCC = gcc

$(HELLO): clean $(HELLO).c	
	$(GCC) $(HELLO).c -o $(HELLO)

clean:
	rm $(HELLO)

debug: $(HELLO).c $(HELLO)
	@echo @ $@
	@echo % $%
	@echo "<" $<
	@echo ? $?
	@echo ^ $^
	@echo + $+
	@echo * $*

.PHONY: clean

