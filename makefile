SHELL := bash

.DEFAULT_GOAL := build

.PHONY: build rebuild clear

build:
	@docker-compose up -d --build

rebuild:
	@docker-compose down -v
	@sudo rm -Rf ./web/node_modules
	@sudo rm -Rf ./app/tmp
	@docker-compose up -d --build

clear:
	@docker-compose down -v
	@sudo rm -Rf ./web/node_modules
	@sudo rm -Rf ./app/tmp
