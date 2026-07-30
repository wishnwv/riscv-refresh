.global _start

.text
_start:
    # write(stdout, msg, len)
    li a0, 1           # stdout
    la a1, msg         # message address
    li a2, 28          # length of "Hello from RISC-V Assembly!\n"
    li a7, 64          # sys_write
    ecall

    # exit(0)
    li a0, 0           # exit code 0
    li a7, 93          # sys_exit
    ecall

.data
msg:
    .ascii "Hello from RISC-V Assembly!\n"
    