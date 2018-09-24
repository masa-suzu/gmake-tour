SHELL = /bin/bash
QUIET = @

apps := app

.PHONY: all $(apps)

all: $(apps)

$(apps):
	$(MAKE) -C $@

help: ## print help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

