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

blt $v0, 21, invalid_input  # less than or equal to 20
    sw $v0, numbers($t1)      # Store number in t1

    addi $t1, $t1, 4          # next position in array
    bne $t1, 12, read_input   # 3 integers
