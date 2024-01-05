.DEFAULT_GOAL := run
.PHONY = format vet build run

format:
	go fmt ./...

vet: format
	go vet ./...

build: vet
	go build

run: build
	./rss_aggregator
