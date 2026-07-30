FROM ubuntu:24.04

# Install RISC-V cross compiler and QEMU emulator once
RUN apt-get update -qq && \
    apt-get install -y -qq gcc-riscv64-linux-gnu qemu-user && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work