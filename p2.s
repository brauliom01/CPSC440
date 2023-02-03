#Write a simple Assembly Language program to put a Hexadecimal 
#immediate in Register $8, then OR it with a different immediate value. Place the result in $9

.data
.text
.globl main
main:
li $8, 0xA # Load the hexadecimal value 0xA into register $8
li $9, 3	# Load the value 3 into register $9
or $9, $8, $9 # OR the values in registers $8 and $9, and store the result in $9
move $v0, $9
li $v0, 1
syscall
li $v0, 0
jr $ra
