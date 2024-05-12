Array1CheckR1:
		
		li $t4, -4
		
		
		lw $s2, myArray1($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		#If first condition index contains zero, go to next check
		beq $s2, 0, Array1CheckR2
		
		bne $s2, $s3, Array1CheckR2
		bne $s3, $s4, Array1CheckR2
		bne $s4, $s5, Array1CheckR2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array1CheckR2:
	
		li $t4, 0
		
		
		lw $s2, myArray1($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array1CheckR3
		
		bne $s2, $s3, Array1CheckR3
		bne $s3, $s4, Array1CheckR3
		bne $s4, $s5, Array1CheckR3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array1CheckR3:
		
		li $t4, 4
		
		
		lw $s2, myArray1($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
	
		beq $s2, 0, Array2CheckR1
		
		bne $s2, $s3, Array2CheckR1
		bne $s3, $s4, Array2CheckR1
		bne $s4, $s5, Array2CheckR1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt


Array2CheckR1:
		
		li $t4, -4
		
		
		lw $s2, myArray2($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray5($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array2CheckR2
		
		bne $s2, $s3, Array2CheckR2
		bne $s3, $s4, Array2CheckR2
		bne $s4, $s5, Array2CheckR2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array2CheckR2:
	
		li $t4, 0
		
		
		lw $s2, myArray2($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray5($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array2CheckR3
		
		bne $s2, $s3, Array2CheckR3
		bne $s3, $s4, Array2CheckR3
		bne $s4, $s5, Array2CheckR3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
	
Array2CheckR3:
	
		li $t4, 4
		
		
		lw $s2, myArray2($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray5($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array3CheckR1
		
		bne $s2, $s3, Array3CheckR1
		bne $s3, $s4, Array3CheckR1
		bne $s4, $s5, Array3CheckR1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array3CheckR1:
		
		li $t4, -4
		
		
		lw $s2, myArray3($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray6($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array3CheckR2
		
		bne $s2, $s3, Array3CheckR2
		bne $s3, $s4, Array3CheckR2
		bne $s4, $s5, Array3CheckR2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
	
Array3CheckR2:
		
		li $t4, 0
		
		
		lw $s2, myArray3($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray6($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array3CheckR3
		
		bne $s2, $s3, Array3CheckR3
		bne $s3, $s4, Array3CheckR3
		bne $s4, $s5, Array3CheckR3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
	
Array3CheckR3:
		
		li $t4, 4
		
		
		lw $s2, myArray3($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray6($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array4CheckR1
		
		bne $s2, $s3, Array4CheckR1
		bne $s3, $s4, Array4CheckR1
		bne $s4, $s5, Array4CheckR1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

Array4CheckR1:
	
		li $t4, -4
		
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray7($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array4CheckR2
		
		bne $s2, $s3, Array4CheckR2
		bne $s3, $s4, Array4CheckR2
		bne $s4, $s5, Array4CheckR2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
	
Array4CheckR2:
	
		li $t4, 0
		
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray7($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array4CheckR3
		
		bne $s2, $s3, Array4CheckR3
		bne $s3, $s4, Array4CheckR3
		bne $s4, $s5, Array4CheckR3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
	
Array4CheckR3:
	
		li $t4, 4
		
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray7($t4)
		addi $t4, $t4, 4  
		
		#beq $s2, 0, Array7CheckL1
		
		bne $s2, $s3, Array7CheckL1
		bne $s3, $s4, Array7CheckL1
		bne $s4, $s5, Array7CheckL1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array7CheckL1:

		li $t4, -4
		
		lw $s2, myArray7($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array7CheckL2
		
		bne $s2, $s3, Array7CheckL2
		bne $s3, $s4, Array7CheckL2
		bne $s4, $s5, Array7CheckL2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

Array7CheckL2:

		li $t4, 0
		
		lw $s2, myArray7($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array7CheckL3
		
		bne $s2, $s3, Array7CheckL3
		bne $s3, $s4, Array7CheckL3
		bne $s4, $s5, Array7CheckL3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array7CheckL3:
		li $t4, 4
		
		lw $s2, myArray7($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array6CheckL1
		
		bne $s2, $s3, Array6CheckL1
		bne $s3, $s4, Array6CheckL1
		bne $s4, $s5, Array6CheckL1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array6CheckL1:

		li $t4, -4
		
		lw $s2, myArray6($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray3($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array6CheckL2
		
		bne $s2, $s3, Array6CheckL2
		bne $s3, $s4, Array6CheckL2
		bne $s4, $s5, Array6CheckL2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt	
		
Array6CheckL2:

		li $t4, 0
		
		lw $s2, myArray6($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray3($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array6CheckL3
		
		bne $s2, $s3, Array6CheckL3
		bne $s3, $s4, Array6CheckL3
		bne $s4, $s5, Array6CheckL3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt	
		
Array6CheckL3:

		li $t4, 4
		
		lw $s2, myArray6($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray3($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array5CheckL1
		
		bne $s2, $s3, Array5CheckL1
		bne $s3, $s4, Array5CheckL1
		bne $s4, $s5, Array5CheckL1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
Array5CheckL1:
		li $t4, -4
		
		lw $s2, myArray5($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray2($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array5CheckL2
		
		bne $s2, $s3, Array5CheckL2
		bne $s3, $s4, Array5CheckL2
		bne $s4, $s5, Array5CheckL2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt	

Array5CheckL2:

		li $t4, 0
		
		lw $s2, myArray5($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray2($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array5CheckL3
		
		bne $s2, $s3, Array5CheckL3
		bne $s3, $s4, Array5CheckL3
		bne $s4, $s5, Array5CheckL3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt	

Array5CheckL3:

		li $t4, 4
		
		lw $s2, myArray5($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray2($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array4CheckL1
		
		bne $s2, $s3, Array4CheckL1
		bne $s3, $s4, Array4CheckL1
		bne $s4, $s5, Array4CheckL1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

Array4CheckL1:	

		li $t4, -4
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray1($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array4CheckL2
		
		bne $s2, $s3, Array4CheckL2
		bne $s3, $s4, Array4CheckL2
		bne $s4, $s5, Array4CheckL2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

Array4CheckL2:

		li $t4, 0
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray1($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, Array4CheckL3
		
		bne $s2, $s3, Array4CheckL3
		bne $s3, $s4, Array4CheckL3
		bne $s4, $s5, Array4CheckL3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

Array4CheckL3:

		li $t4, 4
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray1($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, RowWin0_1
		
		bne $s2, $s3, RowWin0_1
		bne $s3, $s4, RowWin0_1
		bne $s4, $s5, RowWin0_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin0_1:

		li $t4, -4
		
		lw $s2, myArray1($t4)
		
		lw $s3, myArray2($t4)
		
		lw $s4, myArray3($t4)
		
		lw $s5, myArray4($t4)  
		
		beq $s2, 0, RowWin0_2
		
		bne $s2, $s3, RowWin0_2
		bne $s3, $s4, RowWin0_2
		bne $s4, $s5, RowWin0_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin0_2:
		li $t4, -4
		
		lw $s2, myArray2($t4)
		
		lw $s3, myArray3($t4)
		
		lw $s4, myArray4($t4)
		
		lw $s5, myArray5($t4)  
		
		beq $s2, 0, RowWin0_3
		
		bne $s2, $s3, RowWin0_3
		bne $s3, $s4, RowWin0_3
		bne $s4, $s5, RowWin0_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin0_3:
		li $t4, -4
		
		lw $s2, myArray3($t4)
		
		lw $s3, myArray4($t4)
		
		lw $s4, myArray5($t4)
		
		lw $s5, myArray6($t4)  
		
		beq $s2, 0, RowWin0_4
		
		bne $s2, $s3, RowWin0_4
		bne $s3, $s4, RowWin0_4
		bne $s4, $s5, RowWin0_4
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin0_4:
		li $t4, -4
		
		lw $s2, myArray4($t4)
		
		lw $s3, myArray5($t4)
		
		lw $s4, myArray6($t4)
		
		lw $s5, myArray7($t4)  
		
		beq $s2, 0, RowWin1_1
		
		bne $s2, $s3, RowWin1_1
		bne $s3, $s4, RowWin1_1
		bne $s4, $s5, RowWin1_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
RowWin1_1:

		li $t4, 0
		
		lw $s2, myArray1($t4)
		
		lw $s3, myArray2($t4)
		
		lw $s4, myArray3($t4)
		
		lw $s5, myArray4($t4)  
		
		beq $s2, 0, RowWin1_2
		
		bne $s2, $s3, RowWin1_2
		bne $s3, $s4, RowWin1_2
		bne $s4, $s5, RowWin1_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin1_2:
		li $t4, 0
		
		lw $s2, myArray2($t4)
		
		lw $s3, myArray3($t4)
		
		lw $s4, myArray4($t4)
		
		lw $s5, myArray5($t4)  
		
		beq $s2, 0, RowWin1_3
		
		bne $s2, $s3, RowWin1_3
		bne $s3, $s4, RowWin1_3
		bne $s4, $s5, RowWin1_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin1_3:
		li $t4, 0
		
		lw $s2, myArray3($t4)
		
		lw $s3, myArray4($t4)
		
		lw $s4, myArray5($t4)
		
		lw $s5, myArray6($t4)  
		
		beq $s2, 0, RowWin1_4
		
		bne $s2, $s3, RowWin1_4
		bne $s3, $s4, RowWin1_4
		bne $s4, $s5, RowWin1_4
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin1_4:
		li $t4, 0
		
		lw $s2, myArray4($t4)
		
		lw $s3, myArray5($t4)
		
		lw $s4, myArray6($t4)
		
		lw $s5, myArray7($t4)  
		
		beq $s2, 0, RowWin2_1
		
		bne $s2, $s3, RowWin2_1
		bne $s3, $s4, RowWin2_1
		bne $s4, $s5, RowWin2_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
RowWin2_1:

		li $t4, 4
		
		lw $s2, myArray1($t4)
		
		lw $s3, myArray2($t4)
		
		lw $s4, myArray3($t4)
		
		lw $s5, myArray4($t4)  
		
		beq $s2, 0, RowWin2_2
		
		bne $s2, $s3, RowWin2_2
		bne $s3, $s4, RowWin2_2
		bne $s4, $s5, RowWin2_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin2_2:
		li $t4, 4
		
		lw $s2, myArray2($t4)
		
		lw $s3, myArray3($t4)
		
		lw $s4, myArray4($t4)
		
		lw $s5, myArray5($t4)  
		
		beq $s2, 0, RowWin2_3
		
		bne $s2, $s3, RowWin2_3
		bne $s3, $s4, RowWin2_3
		bne $s4, $s5, RowWin2_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin2_3:
		li $t4, 4
		
		lw $s2, myArray3($t4)
		
		lw $s3, myArray4($t4)
		
		lw $s4, myArray5($t4)
		
		lw $s5, myArray6($t4)  
		
		beq $s2, 0, RowWin2_4
		
		bne $s2, $s3, RowWin2_4
		bne $s3, $s4, RowWin2_4
		bne $s4, $s5, RowWin2_4
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin2_4:
		li $t4, 4
		
		lw $s2, myArray4($t4)
		
		lw $s3, myArray5($t4)
		
		lw $s4, myArray6($t4)
		
		lw $s5, myArray7($t4)  
		
		beq $s2, 0, RowWin3_1
		
		bne $s2, $s3, RowWin3_1
		bne $s3, $s4, RowWin3_1
		bne $s4, $s5, RowWin3_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
RowWin3_1:

		li $t4, 8
		
		lw $s2, myArray1($t4)
		
		lw $s3, myArray2($t4)
		
		lw $s4, myArray3($t4)
		
		lw $s5, myArray4($t4)  
		
		beq $s2, 0, RowWin3_2
		
		bne $s2, $s3, RowWin3_2
		bne $s3, $s4, RowWin3_2
		bne $s4, $s5, RowWin3_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin3_2:
		li $t4, 8
		
		lw $s2, myArray2($t4)
		
		lw $s3, myArray3($t4)
		
		lw $s4, myArray4($t4)
		
		lw $s5, myArray5($t4)  
		
		beq $s2, 0, RowWin3_3
		
		bne $s2, $s3, RowWin3_3
		bne $s3, $s4, RowWin3_3
		bne $s4, $s5, RowWin3_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin3_3:
		li $t4, 8
		
		lw $s2, myArray3($t4)
		
		lw $s3, myArray4($t4)
		
		lw $s4, myArray5($t4)
		
		lw $s5, myArray6($t4)  
		
		beq $s2, 0, RowWin3_4
		
		bne $s2, $s3, RowWin3_4
		bne $s3, $s4, RowWin3_4
		bne $s4, $s5, RowWin3_4
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin3_4:
		li $t4, 8
		
		lw $s2, myArray4($t4)
		
		lw $s3, myArray5($t4)
		
		lw $s4, myArray6($t4)
		
		lw $s5, myArray7($t4)  
		
		beq $s2, 0, RowWin4_1
		
		bne $s2, $s3, RowWin4_1
		bne $s3, $s4, RowWin4_1
		bne $s4, $s5, RowWin4_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
RowWin4_1:

		li $t4, 12
		
		lw $s2, myArray1($t4)
		
		lw $s3, myArray2($t4)
		
		lw $s4, myArray3($t4)
		
		lw $s5, myArray4($t4)  
		
		beq $s2, 0, RowWin4_2
		
		bne $s2, $s3, RowWin4_2
		bne $s3, $s4, RowWin4_2
		bne $s4, $s5, RowWin4_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin4_2:
		li $t4, 12
		
		lw $s2, myArray2($t4)
		
		lw $s3, myArray3($t4)
		
		lw $s4, myArray4($t4)
		
		lw $s5, myArray5($t4)  
		
		beq $s2, 0, RowWin4_3
		
		bne $s2, $s3, RowWin4_3
		bne $s3, $s4, RowWin4_3
		bne $s4, $s5, RowWin4_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin4_3:
		li $t4, 12
		
		lw $s2, myArray3($t4)
		
		lw $s3, myArray4($t4)
		
		lw $s4, myArray5($t4)
		
		lw $s5, myArray6($t4)  
		
		beq $s2, 0, RowWin4_4
		
		bne $s2, $s3, RowWin4_4
		bne $s3, $s4, RowWin4_4
		bne $s4, $s5, RowWin4_4
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin4_4:
		li $t4, 12
		
		lw $s2, myArray4($t4)
		
		lw $s3, myArray5($t4)
		
		lw $s4, myArray6($t4)
		
		lw $s5, myArray7($t4)  
		
		beq $s2, 0, RowWin5_1
		
		bne $s2, $s3, RowWin5_1
		bne $s3, $s4, RowWin5_1
		bne $s4, $s5, RowWin5_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
RowWin5_1:

		li $t4, 16
		
		lw $s2, myArray1($t4)
		
		lw $s3, myArray2($t4)
		
		lw $s4, myArray3($t4)
		
		lw $s5, myArray4($t4)  
		
		beq $s2, 0, RowWin5_2
		
		bne $s2, $s3, RowWin5_2
		bne $s3, $s4, RowWin5_2
		bne $s4, $s5, RowWin5_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin5_2:
		li $t4, 16
		
		lw $s2, myArray2($t4)
		
		lw $s3, myArray3($t4)
		
		lw $s4, myArray4($t4)
		
		lw $s5, myArray5($t4)  
		
		beq $s2, 0, RowWin5_3
		
		bne $s2, $s3, RowWin5_3
		bne $s3, $s4, RowWin5_3
		bne $s4, $s5, RowWin5_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin5_3:
		li $t4, 16
		
		lw $s2, myArray3($t4)
		
		lw $s3, myArray4($t4)
		
		lw $s4, myArray5($t4)
		
		lw $s5, myArray6($t4)  
		
		beq $s2, 0, RowWin5_4
		
		bne $s2, $s3, RowWin5_4
		bne $s3, $s4, RowWin5_4
		bne $s4, $s5, RowWin5_4
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

RowWin5_4:
		li $t4, 16
		
		lw $s2, myArray4($t4)
		
		lw $s3, myArray5($t4)
		
		lw $s4, myArray6($t4)
		
		lw $s5, myArray7($t4)  
		
		beq $s2, 0, ColumnWin0_1
		
		bne $s2, $s3, ColumnWin0_1
		bne $s3, $s4, ColumnWin0_1
		bne $s4, $s5, ColumnWin0_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
ColumnWin0_1:

		li $t4, -4
		
		lw $s2, myArray1($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray1($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray1($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray1($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin0_2
		
		bne $s2, $s3, ColumnWin0_2
		bne $s3, $s4, ColumnWin0_2
		bne $s4, $s5, ColumnWin0_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin0_2:

		li $t4, 0
		
		lw $s2, myArray1($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray1($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray1($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray1($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin0_3
		
		bne $s2, $s3, ColumnWin0_3
		bne $s3, $s4, ColumnWin0_3
		bne $s4, $s5, ColumnWin0_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin0_3:

		li $t4, 4
		
		lw $s2, myArray1($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray1($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray1($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray1($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin1_1
		
		bne $s2, $s3, ColumnWin1_1
		bne $s3, $s4, ColumnWin1_1
		bne $s4, $s5, ColumnWin1_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin1_1:

		li $t4, -4
		
		lw $s2, myArray2($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray2($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin1_2
		
		bne $s2, $s3, ColumnWin1_2
		bne $s3, $s4, ColumnWin1_2
		bne $s4, $s5, ColumnWin1_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin1_2:

		li $t4, 0
		
		lw $s2, myArray2($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray2($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin1_3
		
		bne $s2, $s3, ColumnWin1_3
		bne $s3, $s4, ColumnWin1_3
		bne $s4, $s5, ColumnWin1_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin1_3:

		li $t4, 4
		
		lw $s2, myArray2($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray2($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray2($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin2_1
		
		bne $s2, $s3, ColumnWin2_1
		bne $s3, $s4, ColumnWin2_1
		bne $s4, $s5, ColumnWin2_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
ColumnWin2_1:

		li $t4, -4
		
		lw $s2, myArray3($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray3($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin2_2
		
		bne $s2, $s3, ColumnWin2_2
		bne $s3, $s4, ColumnWin2_2
		bne $s4, $s5, ColumnWin2_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin2_2:

		li $t4, 0
		
		lw $s2, myArray3($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray3($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin2_3
		
		bne $s2, $s3, ColumnWin2_3
		bne $s3, $s4, ColumnWin2_3
		bne $s4, $s5, ColumnWin2_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin2_3:

		li $t4, 4
		
		lw $s2, myArray3($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray3($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray3($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin3_1
		
		bne $s2, $s3, ColumnWin3_1
		bne $s3, $s4, ColumnWin3_1
		bne $s4, $s5, ColumnWin3_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
ColumnWin3_1:

		li $t4, -4
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin3_2
		
		bne $s2, $s3, ColumnWin3_2
		bne $s3, $s4, ColumnWin3_2
		bne $s4, $s5, ColumnWin3_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin3_2:

		li $t4, 0
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin3_3
		
		bne $s2, $s3, ColumnWin3_3
		bne $s3, $s4, ColumnWin3_3
		bne $s4, $s5, ColumnWin3_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin3_3:

		li $t4, 4
		
		lw $s2, myArray4($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray4($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray4($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin4_1
		
		bne $s2, $s3, ColumnWin4_1
		bne $s3, $s4, ColumnWin4_1
		bne $s4, $s5, ColumnWin4_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
ColumnWin4_1:

		li $t4, -4
		
		lw $s2, myArray5($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray5($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin4_2
		
		bne $s2, $s3, ColumnWin4_2
		bne $s3, $s4, ColumnWin4_2
		bne $s4, $s5, ColumnWin4_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin4_2:

		li $t4, 0
		
		lw $s2, myArray5($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray5($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin4_3
		
		bne $s2, $s3, ColumnWin4_3
		bne $s3, $s4, ColumnWin4_3
		bne $s4, $s5, ColumnWin4_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin4_3:

		li $t4, 4
		
		lw $s2, myArray5($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray5($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray5($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin5_1
		
		bne $s2, $s3, ColumnWin5_1
		bne $s3, $s4, ColumnWin5_1
		bne $s4, $s5, ColumnWin5_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
		
ColumnWin5_1:

		li $t4, -4
		
		lw $s2, myArray6($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray6($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin5_2
		
		bne $s2, $s3, ColumnWin5_2
		bne $s3, $s4, ColumnWin5_2
		bne $s4, $s5, ColumnWin5_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin5_2:

		li $t4, 0
		
		lw $s2, myArray6($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray6($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin5_3
		
		bne $s2, $s3, ColumnWin5_3
		bne $s3, $s4, ColumnWin5_3
		bne $s4, $s5, ColumnWin5_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin5_3:

		li $t4, 4
		
		lw $s2, myArray6($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray6($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray6($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin6_1
		
		bne $s2, $s3, ColumnWin6_1
		bne $s3, $s4, ColumnWin6_1
		bne $s4, $s5, ColumnWin6_1
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin6_1:

		li $t4, -4
		
		lw $s2, myArray7($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray7($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray7($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray7($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin6_2
		
		bne $s2, $s3, ColumnWin6_2
		bne $s3, $s4, ColumnWin6_2
		bne $s4, $s5, ColumnWin6_2
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin6_2:

		li $t4, 0
		
		lw $s2, myArray7($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray7($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray7($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray7($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, ColumnWin6_3
		
		bne $s2, $s3, ColumnWin6_3
		bne $s3, $s4, ColumnWin6_3
		bne $s4, $s5, ColumnWin6_3
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt

ColumnWin6_3:

		li $t4, 4
		
		lw $s2, myArray7($t4)
		addi $t4, $t4, 4
		
		lw $s3, myArray7($t4)
		addi $t4, $t4, 4 
		
		lw $s4, myArray7($t4)
		addi $t4, $t4, 4 
		
		lw $s5, myArray7($t4)
		addi $t4, $t4, 4  
		
		beq $s2, 0, wreturn
		
		bne $s2, $s3, wreturn
		bne $s3, $s4, wreturn
		bne $s4, $s5, wreturn
		
		beq $s2, 1, UserWinPrompt
		beq $s2, 2, ComputerWinPrompt
