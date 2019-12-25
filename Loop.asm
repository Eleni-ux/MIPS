.data
	
	done: .asciiz "The loop is done"
	newLine: .ascii "\n"
.text
	main:
		addi $t0, $zero, 0 # i = 0
		addi $t1, $zero, 10
		
		#While loop that prints out numbers from 1 to 10
		while:
			bgt $t0, $t1, exit # if i > 10 exit the loop
			jal sum
			addi $t0, $t0, 1 # i = i + 1
			li $v0, 4
			la $a0, newLine
			syscall
			li $v0, 1
			add $a0, $t0, 0
			syscall
			j while
		
		
		
		exit:
			li $v0, 4
			la $a0, newLine
			syscall
			li $v0, 1
			add $a0, $zero, $t4
			syscall
			li $v0, 4
			la $a0, newLine
			syscall
			li $v0, 4
			la $a0, done
			syscall
			
	 	li $v0, 10
		syscall
			
	sum:
		#add numbers from 0 to 10
		add $t4, $t4, $t0
		jr $ra
		
		
		
