.data
	array: .space 20  # allocate space to store 6 intager values  int array[] = new int[5]
	newLine: .asciiz " "
.text
	main:
		addi $t0, $zero, 0
		addi $t1, $zero, 5
		addi $t2, $zero, 0
		
		while:
			bgt $t0, $t1, exit
			add $s0, $zero, $t0
			sw $s0, array($t2)
			addi $t0, $t0, 1
			addi $t2, $t2, 4
			j while
			
		exit:
			
			jal print
			
		li $v0, 10
		syscall
		
	print:
		addi $t3, $zero, 0
		addi $t4, $zero, 5
		addi $t5, $zero, 0
		
		loop:
			beq $t3, $t4, done
			lw $t6, array($t5)
			li $v0, 4
			la $a0, newLine
			syscall
			li $v0, 1
			add $a0, $zero, $t6
			syscall
			addi $t3, $t3, 1
			addi $t5, $t5, 4
			j loop
		done:
		
			
			
				
		
		
		
		