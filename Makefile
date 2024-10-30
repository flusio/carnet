.DEFAULT_GOAL := help

# SERVER_DEST is defined in a `.env` file and follow this format: user@server.url:/path/to/website
include .env

.PHONY: boop
boop: ## Build the website with Boop! generator
	boop.py --development
	rsync -P -rvzc --delete ./_site/ $(LOCAL_DEST)

.PHONY: clean
clean: ## Clean site files
	rm -rf ./_site ./_cache

.PHONY: publish
publish: clean  ## Publish the website online (rsync)
	boop.py
	rsync -P -rvzc --delete ./_site/ $(SERVER_DEST)
	curl -d "hub.mode=publish&hub.topic=https://flus.fr/carnet/feeds/all.atom.xml" -X POST https://websub.flus.io/
	rm -rf ./_cache

.PHONY: open
open: boop  ## Open the built site in a web browser
	xdg-open http://localhost:8000/carnet/

.PHONY: tree
tree:  ## Display the structure of the website
	tree -I '_site|_cache' --dirsfirst -CA

.PHONY: help
help:
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
