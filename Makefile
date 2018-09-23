HELLO = hello
GCC = gcc
FLAGS = -I include
vpath %.c src
vpath %.h include

build: $(HELLO).c ## build app by gcc
	$(GCC) $< $(FLAGS) -o $@

clean: ## clean binary
	rm -f $(HELLO)

debug: $(HELLO).c $(HELLO) ## debug
	@echo "debug:" $(HELLO).c $(HELLO)
	@echo "    @:" $@
	@echo "    %:" $%
	@echo "    <:" $<
	@echo "    ?:" $?
	@echo "    ^:" $^
	@echo "    +:" $+
	@echo "    *:" $*

help: ## print help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

.PHONY: clean help

