HELLO = hello
GCC = gcc

vpath %.c src

$(HELLO): $(HELLO).c	
	$(GCC) $< -o $@

clean:
	rm -f $(HELLO)

debug: $(HELLO).c $(HELLO)
	@echo @ $@
	@echo % $%
	@echo "<" $<
	@echo ? $?
	@echo ^ $^
	@echo + $+
	@echo * $*

.PHONY: clean

