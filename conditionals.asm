.data
	num1: .word 8
	num2: .word 9
	
	
.text 
	main:
		lw $t0, num1
		lw $t1, num2
		#If the numbers are not  equal add
		bne $t0, $t1, addNum
		#If the numbers are equal 
		beq $t0, $t1, subNum
		li $v0, 10
		syscall
		
	addNum:
		add $t2, $t0, $t1
		li $v0, 1
		add $a0, $t2, 0
		syscall
	subNum:
		sub $t2, $t0, $t1
		li $v0, 1
		add $a0, $t2, 0
		syscall
		
	