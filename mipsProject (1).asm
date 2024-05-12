
#	This program works by taking seven arrays and outputting the first values in a line then a new line is made and then the second values of each array is output. 
#	Thus making the arrays the columns of the grid.
#
#
.data
	userprompt: 	  .asciiz "Please enter the column number you would like place your token in from 1-7(to exit type 8): "
	lessThan:      .asciiz "Please enter a number greater than 0\n"
	computerWin:	   .asciiz "Computer connect 4 Win!"
	userWin: 	   .asciiz "User connect 4 Win!"
	greaterThan:     .asciiz "Please enter a number less than 8\n"
	tryagain:      .asciiz "this column is full please enter another column that is empty \n"
	computerprompt: .asciiz "Computer randomly picked column: "
	draw:	.asciiz "Game has ended in a draw"
	random: .space 20

.globl myArray1
.globl myArray2
.globl myArray3
.globl myArray4
.globl myArray5
.globl myArray6
.globl myArray7

	myArray1: .word 0:32 #column 1
	myArray2: .word 0:32 #column 2
	myArray3: .word 0:32 #column 3
	myArray4: .word 0:32 #column 4
	myArray5: .word 0:32 #column 5
	myArray6: .word 0:32 #column 6
	myArray7: .word 0:32 #column 7
	
	newl: .asciiz "\n"
	space: .asciiz  "|"
.text

	li $t0, 0
	li $t1, 1 #this register is used to place a "1" for the users input (as the users token)
	li $t3, 2 #This register is used to place a "2" for the computers token
	li $t2, 0 
	li $t4, -4 #this is the array counter, it has to go up in multiples of 4
	li $t5, 0 #this is to check the users input on what column they would like to place
	li $t6, 0 #This register is used to check the value of the array in order to determin if a spot is empty.
	li $t7, 0 #This register is used for the comptuers random number generator, the number is placed here then put into if else statements to place in a column. 
	
	jal initializearraytozero #makes every value in the arrays into 0 so that the gameboard is all empty. 
	
#This outerloop asks if the user wants to quit the game after each round and initializes the counter for our arrays at the
#beginning
outerloop: 

	addi $a0,$zero, 0
	#the loop ends if the user enters '8'
	#beq $t5, 8, end_loop_1 #this makes the program jump to the end which has end loop 1
	
	
	li $t4, -4 #initializes the counter at the starting point which is -4 every time the loop is started again so that the grid is printed out correctly. 
	
	while:
	addi $a0,$zero, 0
	bge $t4, 20, exit #the arrays go from -4 to 16 including 16 so 20 has to be the last value otherwise the loop wont go through 16, when it gets to 20 the program stops printing and 
				#jumps to the exit label
	jal newspace		
	#this is just outputting the arrays	
	lw $t6, myArray1($t4) #takes the value of the array at the index $t4 and puts it into $t6 
	beq $t6, 0, store_1
	beq $t6, 1, storex1
	beq $t6, 2, storec1
			      #which is then moved to $a0 and outputted. then we output a space and move onto the next array. this applies to every array being output here. 
	callback1:
	jal newspace
	
	#Creating an array for each row
	
	lw $t6, myArray2($t4)
	beq $t6, 0, store_2
	beq $t6, 1, storex2
	beq $t6, 2, storec2
	
	callback2:
	jal newspace
	
	
	
	lw $t6, myArray3($t4)
	beq $t6, 0, store_3
	beq $t6, 1, storex3
	beq $t6, 2, storec3
	
	callback3:
	jal newspace
	
	
	
	
	lw $t6, myArray4($t4)
	beq $t6, 0, store_4
	beq $t6, 1, storex4
	beq $t6, 2, storec4
	
	callback4:
	jal newspace
	
		
	lw $t6, myArray5($t4)
	beq $t6, 0, store_5
	beq $t6, 1, storex5
	beq $t6, 2, storec5
	
	callback5:
	jal newspace
	
	
	
	lw $t6, myArray6($t4)
	beq $t6, 0, store_6
	beq $t6, 1, storex6
	beq $t6, 2, storec6
	
	callback6:
	jal newspace
	
	
	
	
	lw $t6, myArray7($t4)
	beq $t6, 0, store_7
	beq $t6, 1, storex7
	beq $t6, 2, storec7
	callback7:
	jal newspace
	
	#after everything is done outputting we add 4 to the index in order to go the next value in each array and we go to the next line to keep the grid shape
	addi $t4, $t4, 4
	
	jal newLine #jumps to the newLine function
	
	
	
	j while #jumps back the beginning of this loop which is called "while"
#This while loop creates the board before we move onto conditions and user inputs	

	exit:	#when the loop is done it jumps down here to the outer loop
	
	j Array1CheckR1 #here is where you make the jump to the win condition
	wreturn:
	j drawcheck
	drawReturn:
	jal insertifelseuser #jumps to the users input which is a bunch of if else statements to check the values to make sure the placement is in an empty spot.
	return:
	jal insertifelsecomputer #the same thing as user input only difference is it does not get the value of the column number with input from the keyboard but through rng. 
	creturn:
	
	j outerloop #begins the entire loop again (outerloop)
	
insertifelsecomputer:
	cerrorloop: #loops back here if the computer picks a column that is full so that it can re pick a column. 
	addi $a1, $t1, 8 #picks a number from 1-7 (doesnt include 8) I used $t1 only because it already has the value '1'
	li $v0, 42	#42 is the rng in mips for register $v0
	syscall
	addi $t7, $a0, 0 #moved the random number to $t7 to go into the if else statements: 
	
	li $t4, 16 #start the index at the last value in the arrays to check bottom up instead of up to down. 
	beq $t7, 1, cloop1
	beq $t7, 2, cloop2
	beq $t7, 3, cloop3
	beq $t7, 4, cloop4
	beq $t7, 5, cloop5
	beq $t7, 6, cloop6
	beq $t7, 7, cloop7
	#if the random number is any of these numbers then the program jumps to the needed array loop to tell the array to place the number 2 in the proper spot. 
	cloop1:
		beq $t4, -8, cerror #if the loop keeps going without finding an empty spot it will jump to the error which will start the loop again to pick another random number
	
			lw $t6, myArray1($t4) #puts the value at the index address -> array(index) into $t6 
			beq $t6, 0, cinsert1  #the only values the addresses will hold is 0, 1, or 2 we only want to insert if the value is 0 because that represents a blank spot
					      # if the value in the array is 0 then we jump to the insert function for this specific array 
			sub $t4, $t4, 4	      #this line subtracts the array index by 1, as previously mentioned it has to go by multiples of 4
		j cloop1 #if none of the above statements match it goes back to the beginning of the loop to try again. 
			#this applies to all the loops below:
	
	
	cloop2:
		beq $t4, -8, cerror
	
			lw $t6, myArray2($t4)
			beq $t6, 0, cinsert2
			sub $t4, $t4, 4
		j cloop2
	
	cloop3:
		beq $t4, -8, cerror
	
			lw $t6, myArray3($t4)
			beq $t6, 0, cinsert3
			sub $t4, $t4, 4
		j cloop3
	
	cloop4:
		beq $t4, -8, cerror
	
			lw $t6, myArray4($t4)
			beq $t6, 0, cinsert4
			sub $t4, $t4, 4
		j cloop4
	
	cloop5:
		beq $t4, -8, cerror
	
			lw $t6, myArray5($t4)
			beq $t6, 0, cinsert5
			sub $t4, $t4, 4
		j cloop5
	
	cloop6:
		beq $t4, -8, cerror
	
			lw $t6, myArray6($t4)
			beq $t6, 0, cinsert6
			sub $t4, $t4, 4
		j cloop6
	
	cloop7:
		beq $t4, -8, cerror
	
			lw $t6, myArray7($t4)
			beq $t6, 0, cinsert7
			sub $t4, $t4, 4
		j cloop7
	
	

cinsert1: 
	sw $t3, myArray1($t4) #loads the number 2 into the address of the array at index $t4 then jumps back to the loop above to print out the entire grid. 
	jal computerInput     #just prints out the column the computer picked for the end user to see. 
	b cendall	      #jumps to 'cendall'
cinsert2: 
	sw $t3, myArray2($t4)
	jal computerInput
	b cendall
cinsert3: 
	sw $t3, myArray3($t4)
	jal computerInput
	b cendall
cinsert4: 
	sw $t3, myArray4($t4)
	jal computerInput
	b cendall
cinsert5: 
	sw $t3, myArray5($t4)
	jal computerInput
	b cendall
cinsert6: 
	sw $t3, myArray6($t4)
	jal computerInput 
	b cendall
cinsert7: 
	sw $t3, myArray7($t4)
	jal computerInput
	b cendall
cerror:
	j cerrorloop
cendall:	
	
	j creturn #jumps to the outer loop
	

#------------------------------------------------------------

insertifelseuser:
errorloop:
	li $t6, 0
	jal userInput #this gets the users input then does the same thing as the computerinput if else statements.------------------------
	li $t4, 16
	ble $t5, 0, lessThanPrompt
	bge $t5, 9, GreaterThanPrompt
	beq $t5, 8, end_loop_1 #this makes the program jump to the end which has end loop 1	
	beq $t5, 1, loop1
	beq $t5, 2, loop2
	beq $t5, 3, loop3
	beq $t5, 4, loop4
	beq $t5, 5, loop5
	beq $t5, 6, loop6
	beq $t5, 7, loop7
	loop1:
		beq $t4, -8, error
	
			lw $t6, myArray1($t4)
			beq $t6, 0, insert1
			sub $t4, $t4, 4
		j loop1
	
	
	loop2:
		beq $t4, -8, error
	
			lw $t6, myArray2($t4)
			beq $t6, 0, insert2
			sub $t4, $t4, 4
		j loop2
	
	loop3:
		beq $t4, -8, error
	
			lw $t6, myArray3($t4)
			beq $t6, 0, insert3
			sub $t4, $t4, 4
		j loop3
	
	loop4:
		beq $t4, -8, error
	
			lw $t6, myArray4($t4)
			beq $t6, 0, insert4
			sub $t4, $t4, 4
		j loop4
	
	loop5:
		beq $t4, -8, error
	
			lw $t6, myArray5($t4)
			beq $t6, 0, insert5
			sub $t4, $t4, 4
		j loop5
	
	loop6:
		beq $t4, -8, error
	
			lw $t6, myArray6($t4)
			beq $t6, 0, insert6
			sub $t4, $t4, 4
		j loop6
	
	loop7:
		beq $t4, -8, error
	
			lw $t6, myArray7($t4)
			beq $t6, 0, insert7
			sub $t4, $t4, 4
		j loop7
	
	

insert1: 
	sw $t1, myArray1($t4)
	b endall
insert2: 
	sw $t1, myArray2($t4)
	b endall
insert3: 
	sw $t1, myArray3($t4)
	b endall
insert4: 
	sw $t1, myArray4($t4)
	b endall
insert5: 
	sw $t1, myArray5($t4)
	b endall
insert6: 
	sw $t1, myArray6($t4)
	b endall
insert7: 
	sw $t1, myArray7($t4)
	b endall
error: 
	li $v0, 4
	la $a0, tryagain
	syscall
	
	j errorloop

endall:	
	
	j return

#------------------------------------ functions: 
newLine:
	addi $v0, $zero, 0
	addi $a0, $zero, 0
	li $v0, 4
	la $a0, newl
	syscall
	jr $ra
newspace:
	addi $v0, $zero, 0
	addi $a0, $zero, 0
	la $a0, space
	li $v0, 4
	syscall
	jr $ra
userInput:
	li $t5, 0
	la $a0, userprompt
	li $v0, 4
	syscall
	li $v0, 5
	syscall
#store result in register
	move $t5, $v0
 	jr $ra
lessThanPrompt:
	li $t5, 0
	la $a0, lessThan
	li $v0, 4
	syscall
	
	j exit
GreaterThanPrompt:
	li $t5, 0
	la $a0, greaterThan
	li $v0, 4
	syscall
	
	j exit
computerInput:
	la $a0, computerprompt
	li $v0, 4
	syscall
	li $a0, 0
	move $a0, $t7
	li $v0, 1
	syscall
	jal newLine
	j cendall

ComputerWinPrompt:
	la $a0, computerWin
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall
	

UserWinPrompt:
	li $v0, 4
	la $a0, userWin
	syscall
	
	li $v0, 10
	syscall


initializearraytozero: # a loop that stores a 0 in all the values for the arrays. 
li $t4, -4
zeroloop:
	beq $t4, 20, zeroloopend
	
	addi $s0, $zero, 0
	
	sw $s0, myArray1($t4)
		
	sw $s0, myArray2($t4)
		
	sw $s0, myArray3($t4)
	
	sw $s0, myArray4($t4)
	
	sw $s0, myArray5($t4)
	
	sw $s0, myArray6($t4)
	
	sw $s0, myArray7($t4)
	
	addi $t4, $t4, 4	
j zeroloop
zeroloopend:
	jr $ra
	
store_1:
	li $s1, '_'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback1
storex1:
	li $s1, 'X'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback1
storec1:
	li $s1, 'O'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback1
store_2:
	li $s1, '_'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback2
storex2:
	li $s1, 'X'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback2
storec2:
	li $s1, 'O'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback2
store_3:
	li $s1, '_'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback3
storex3:
	li $s1, 'X'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback3
storec3:
	li $s1, 'O'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback3
	
store_4:
	li $s1, '_'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback4
storex4:
	li $s1, 'X'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback4
storec4:	
	li $s1, 'O'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback4
store_5:
	li $s1, '_'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback5
storex5:
	li $s1, 'X'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback5
storec5:
	li $s1, 'O'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback5
store_6:
	li $s1, '_'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback6
storex6:
	li $s1, 'X'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback6
storec6:
	li $s1, 'O'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback6
store_7:
	li $s1, '_'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback7
storex7:
	li $s1, 'X'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback7
storec7:
	li $s1, 'O'
	li $v0, 11
	addi $a0, $s1, 0
	syscall
	j callback7
end_loop_1: #ends the loop and the game completely. 

	li $v0, 10
	syscall

.include "WinCondition.asm"
.include "DrawCondition.asm"
