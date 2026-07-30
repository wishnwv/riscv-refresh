.globl multiply_add
.type multiply_add, @function

multiply_add:
    mul a0, a0, a1     # a0 = a * b
    add a0, a0, a2     # a0 = a0 + c
    ret                # return in a0
    