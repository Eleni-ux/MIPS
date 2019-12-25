.data 
	num1: .asciiz  "Enter number1  "
	num2: .asciiz  "Enter number2"
	sum: .asciiz  "The sum of the numbers:  "
	
.text
	main:
		
		li $v0, 4
		la $a0, num1
		syscall
		li $v0, 5
		syscall
		move $t0, $v0
		li $v0, 4
		la $a0, num1
		syscall
		li $v0, 5
		syscall
		move $t1, $v0
		jal addNum
		li $v0, 4
		la $a0, sum
		syscall
		li $v0, 1
		add $a0, $zero, $v1
		syscall
		
		
		li $v0, 10
		syscall
	addNum:
		
		add $t2, $t0, $t1
		add $v1, $zero, $t2
		jr $ra
	
	