# RISC-V Assembly & C Interop Refresh

A lightweight, containerized environment for practicing RISC-V (64-bit) assembly instructions, Linux system calls, and C-to-Assembly interoperability.

By leveraging **Docker** and **QEMU User-Mode**, this project eliminates the complex bare-metal boilerplate (stack setup, linker scripts, UART hardware addresses) so you can focus entirely on writing assembly logic.

---

## Prerequisites

Before running this project, ensure you have the following installed on your machine:

1. **[Docker Desktop](https://www.docker.com/products/docker-desktop/)** (Must be open and running)
2. **Make** (Pre-installed on macOS/Linux)

---

## Getting Started

### 1. Build the Development Environment

Build the custom Docker container containing the `gcc-riscv64-linux-gnu` cross-compiler and `qemu-riscv64` emulator. This step only needs to be run once:

```bash
make docker-build