HELLO = hello
GCC = gcc
FLAGS = -I include
vpath %.c src
vpath %.h include

build: $(HELLO).c	
	$(GCC) $< $(FLAGS) -o $@

clean:
	rm -f $(HELLO)

debug: $(HELLO).c $(HELLO)
	@echo "debug:" $(HELLO).c $(HELLO)
	@echo "    @:" $@
	@echo "    %:" $%
	@echo "    <:" $<
	@echo "    ?:" $?
	@echo "    ^:" $^
	@echo "    +:" $+
	@echo "    *:" $*

.PHONY: clean

