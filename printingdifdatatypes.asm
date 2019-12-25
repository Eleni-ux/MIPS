.data
	string:  .asciiz "Hellow world\n"
	space: .asciiz "\n"
	number:  .word  23
	double: .double 9.06
	float: 	.float 23.09
	character: .byte 'm'
	doubleZero: .double 0.0
.text 
	#Print a string
	li $v0, 4
	la $a0, string
	syscall
	#print a number 
	li $v0, 1
	lw $a0, number
	syscall
	#space
	li $v0, 4
	la $a0, space
	syscall
	#print a character
	li $v0, 4
	la $a0, character
	syscall
	#space
	li $v0, 4
	la $a0, space
	syscall
	#print a float
	li $v0, 2
	lwc1 $f12, float
	syscall
	 #space
	li $v0, 4
	la $a0, space
	syscall
	#print double
	ldc1 $f2, double
	ldc1 $f0, doubleZero
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall