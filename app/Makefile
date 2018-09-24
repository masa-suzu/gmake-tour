SHELL = /bin/bash

HELLO = hello
GCC = gcc
FLAGS = -I include
QUIET = @
vpath %.c src
vpath %.h include

build: $(HELLO).c ## build app by gcc
	$(GCC) $< $(FLAGS) -o $@

clean: ## clean binary
	rm -f $(HELLO)

debug: $(HELLO).c $(HELLO) ## debug
	$(QUIET) echo "debug:" $(HELLO).c $(HELLO)
	$(QUIET) echo "    @:" $@
	$(QUIET) echo "    %:" $%
	$(QUIET) echo "    <:" $<
	$(QUIET) echo "    ?:" $?
	$(QUIET) echo "    ^:" $^
	$(QUIET) echo "    +:" $+
	$(QUIET) echo "    *:" $*

help: ## print help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

.PHONY: clean help

