# print help -
help: ## List available targets (this page)
	@awk 'BEGIN {FS = ":.*?## "} /^[0-9a-zA-Z_-]+:.*?## / {printf "\033[36m%-45s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

test:
	docker exec dojo /bin/sh -c '/fapi/links/dojo/vendor/bin/tester -C /fapi/links/dojo/tests'

composer-update: ## Run composer update
	docker run --rm --interactive --tty --volume "$$PWD:/app" --user "$$(id -u):$$(id -g)" --volume ~/.ssh:/root/.ssh  composer:2 composer update -W --ignore-platform-req=ext-intl --ignore-platform-req=ext-pcntl --ignore-platform-req=ext-soap --ignore-platform-req=ext-imap --ignore-platform-req=ext-sockets --ignore-platform-req=ext-gd --ignore-platform-req=ext-bcmath

composer-install: ## Run composer intall
	docker run --rm --interactive --tty --volume "$$PWD:/app" --user "$$(id -u):$$(id -g)" --volume ~/.ssh:/root/.ssh  composer:2 composer install --ignore-platform-req=ext-intl --ignore-platform-req=ext-pcntl --ignore-platform-req=ext-soap --ignore-platform-req=ext-imap --ignore-platform-req=ext-sockets --ignore-platform-req=ext-gd --ignore-platform-req=ext-bcmath

composer-require: ## Run composer require
	docker run --rm --interactive --tty --volume "$$PWD:/app" --user "$$(id -u):$$(id -g)" --volume ~/.ssh:/root/.ssh  composer:2 composer require $(filter-out $@,$(MAKECMDGOALS)) -W --ignore-platform-req=ext-intl --ignore-platform-req=ext-pcntl --ignore-platform-req=ext-soap --ignore-platform-req=ext-imap --ignore-platform-req=ext-sockets --ignore-platform-req=ext-gd --ignore-platform-req=ext-bcmath

composer-remove: ## Run composer remove
	docker run --rm --interactive --tty --volume "$$PWD:/app" --user "$$(id -u):$$(id -g)" --volume ~/.ssh:/root/.ssh  composer:2 composer remove $(filter-out $@,$(MAKECMDGOALS)) -W --ignore-platform-req=ext-intl --ignore-platform-req=ext-pcntl --ignore-platform-req=ext-soap --ignore-platform-req=ext-imap --ignore-platform-req=ext-sockets --ignore-platform-req=ext-gd --ignore-platform-req=ext-bcmath

composer-require-dev: ## Run composer require --dev
	docker run --rm --interactive --tty --volume "$$PWD:/app" --user "$$(id -u):$$(id -g)" --volume ~/.ssh:/root/.ssh  composer:2 composer require --dev $(filter-out $@,$(MAKECMDGOALS)) -W --ignore-platform-req=ext-intl --ignore-platform-req=ext-pcntl --ignore-platform-req=ext-soap --ignore-platform-req=ext-imap --ignore-platform-req=ext-sockets --ignore-platform-req=ext-gd --ignore-platform-req=ext-bcmath

composer-outdated: ## Run composer outdated only linked dependencies
	docker run --rm --interactive --tty --volume "$$PWD:/app" --user "$$(id -u):$$(id -g)" --volume ~/.ssh:/root/.ssh  composer:2 composer outdated -oD

composer-audit:
	docker run --rm --interactive --tty --volume "$$PWD:/app" --user "$$(id -u):$$(id -g)" --volume ~/.ssh:/root/.ssh  composer:2 composer audit

dc-up: ## Starts up docker container
	make -C .docker-dojo dc-up

dc-down: ## shuts down docker container
	make -C .docker-dojo dc-down

dc-restart: ## Restarts docker container
	make -C .docker-dojo dc-down
	make -C .docker-dojo dc-up
