#Print 3+2
.data
.text
.globl main

main:
# Do the addition
li $t0, 3
li $t1, 2

add $a0, $t0, $t1 # Now we can add the values in $t0

li $v0, 1
syscall
li $v0, 0
jr $ra
