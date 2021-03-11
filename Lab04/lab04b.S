.global lab04b
.global my_mul

lab04b:
	SUB SP, SP, #32
	STUR X1, [SP, #16] //saving register in X1
	STUR LR, [SP, #8] //saving the return
	STUR X0, [SP, #0] //saving the initialized values
	CBNZ X0, else //Branch if you're not equal to zero 
	
	//if (n == 0)
	MOVZ X0, #1 //returning 1
	ADD SP, SP, #32 //setting back the stack pointer
	B exit

else:
	//else
	SUB X0, X0, #1
	BL lab04b
	LDUR X1, [SP, #0] //Loading back what was saved
	BL my_mul
	LDUR LR, [SP,#8] //loading back what was saved
	LDUR X1, [SP,#16]
	ADD SP, SP, #32 //deleting the space on stack


exit:
	BR LR 
	

