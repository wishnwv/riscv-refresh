PWD := $(shell pwd)
DOCKER_RUN := docker run --rm -v "$(PWD)":/work riscv-dev bash -c

.PHONY: all clean build-docker run-hello run-c-interop

all: run-hello run-c-interop

# Build the local Docker image
docker-build:
	docker build -t riscv-dev .

build-dir:
	@mkdir -p build

run-hello: build-dir
	@echo "--- Running Standalone Assembly ---"
	@$(DOCKER_RUN) "riscv64-linux-gnu-gcc -nostdlib -static src/01_basics/hello.s -o build/hello && qemu-riscv64 build/hello"

run-c-interop: build-dir
	@echo "--- Running C + Assembly Interop ---"
	@$(DOCKER_RUN) "riscv64-linux-gnu-gcc -static src/02_c_interop/main.c src/02_c_interop/math_ops.s -o build/c_interop && qemu-riscv64 build/c_interop"

clean:
	rm -rf build