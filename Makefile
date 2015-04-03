.PHONY: all build run

all: build

build:
	docker build --tag=${USER}/prestodb .

run:
	docker run -p 8080:8080 -i -t ${USER}/prestodb