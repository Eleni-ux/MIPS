.data 
   num1: .word 10
   num2: .word 19
   addtwonum: .asciiz "Add two numbers \n"
   subtract: .asciiz "\nSubtract num1 from num1 \n"
   multiplytwonum: .asciiz "\nMultiply two numbers\n"
   divide: .asciiz "\n Divide num2 by num1\n"
   newline: .asciiz "\n"
.text
	#Load the first number to t0 
	lw $t0, num1
	#Load the second number to t1
	lw $t1, num2
	# t2 = t1 + t0
	li $v0, 4
	la $a0, addtwonum
	syscall
	add $t2, $t1, $t0
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	li $v0, 4
	la $a0, subtract
	syscall
	sub $t3, $t1, $t0
	li $v0, 1
	add $a0, $zero, $t3
	syscall
	li $v0, 4
	la $a0, multiplytwonum
	syscall
	li $v0, 1
	mul $t4, $t1, $t0
	add $a0, $zero, $t4
	syscall
	li $v0, 4
	la $a0, divide
	syscall
	div $t5, $t1, $t0
	li $v0, 1
	add $a0, $zero, $t5
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	#multiply 8 by 2
	addi $t0, $zero, 8
	sll $t2, $t0, 1
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	#divide 8 by 2
	li $v0, 4
	la $a0, newline
	syscall
	addi $t0, $zero, 8
	srl $t2, $t0, 1
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	
	