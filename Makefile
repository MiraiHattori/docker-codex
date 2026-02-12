all: clean build

build:
	docker build -t continue-cli:latest .

clean:
	docker rm -f continue-cli:latest || true

run:
	docker run --rm -it -v "$PWD:/workspace:/workspace" -w /workspace continue-cli:latest
