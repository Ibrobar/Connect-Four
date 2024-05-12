
drawcheck:
	li $t8, -4
	lw $t9, myArray1($t8)
	beq $t9, 0, stopdrawcheck
	lw $t9, myArray2($t8)
	beq $t9, 0, stopdrawcheck
	lw $t9, myArray3($t8)
	beq $t9, 0, stopdrawcheck
	lw $t9, myArray4($t8)
	beq $t9, 0, stopdrawcheck
	lw $t9, myArray5($t8)
	beq $t9, 0, stopdrawcheck
	lw $t9, myArray6($t8)
	beq $t9, 0, stopdrawcheck
	lw $t9, myArray7($t8)
	beq $t9, 0, stopdrawcheck
	j drawprint
	
stopdrawcheck:
	j drawReturn
	
drawprint:
	la $a0, draw
	li $v0, 4
	syscall
	li $v0, 10
	syscall