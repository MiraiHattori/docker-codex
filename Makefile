all: build clean run

build:
	docker build --pull --no-cache -t codex-cli:latest .

clean:
	docker rm -f codex-cli-latest || true

exec:
	docker exec -it codex-cli-latest /bin/bash

run:
	docker run --rm -it --network=host -v "$(shell pwd)/codex:/root/.codex" -v "$(shell pwd)/workspace:/workspace" -w /workspace --name codex-cli-latest codex-cli:latest
