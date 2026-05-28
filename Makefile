all: danger

danger: build clean run-danger

safe: build clean run-safe

build:
	docker build --pull --no-cache -t codex-cli:latest .

clean:
	docker rm -f codex-cli-latest || true

exec:
	docker exec -it codex-cli-latest /bin/bash

run-danger:
	docker run --rm -it --network=host -v "$(shell pwd)/codex:/root/.codex" -v "$(shell pwd)/..:/workspace" -w /workspace --name codex-cli-latest --entrypoint codex codex-cli:latest resume --last --dangerously-bypass-approvals-and-sandbox
run-safe:
	docker run --rm -it --network=host -v "$(shell pwd)/codex:/root/.codex" -v "$(shell pwd)/..:/workspace" -w /workspace --name codex-cli-latest --entrypoint codex codex-cli:latest resume --last
