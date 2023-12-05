.data
    prompt_u: .asciiz "Enter an integer greater than 20: "
    error_msg:  .asciiz "Illegal Number!\n"
    gcdNote: .asciiz "The GCD of L, M, and N is: "
    num: .space 12 # space for three integers

.text
    .globl main

main:
    # Read and validate L, M, N
    li $t1, 0                #count

read_input:
    li $v0, 4                 # printing string
    la $a0, prompt_u           
    syscall

    li $v0, 5                 # read int
    syscall
