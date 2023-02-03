# Write a simple Assembly Language program to add +146 and -82. Place result in $10
.data
.text
.globl main
main:
li $8, 146 # Load immediate value 146 into register 8
li $9, -82 # Load immediate value -82 into register 9
add $10, $8, $9 # Add the values in registers 8 and 9, store result in register 10
# Printing the result in register 10
li $v0, 1 # System call code for print integer
move $a0, $10 # Move the value in register 10 to argument register 0
syscall
li $v0, 0
jr $ra
