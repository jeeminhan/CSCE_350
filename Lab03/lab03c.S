.section .text
.globl lab03c

lab03c:
	ADRP X3, UIN //Loading UIN
	ADD X3,X3, :lo12:UIN
	LDUR X0, [X3, #0] //in register X0 is UIN
	ADRP X1, my_array //Loading my_array 
	ADD X1, X1, :lo12:my_array 
	MOVZ X2, #10	//setting the register to 10

loop:
	CBZ X2, finish	//branch to finish if loop = 0 meaning it finishes
	STUR X0, [X1, #0] //store UIN into my_array
	ADD X1, X1, #4  //going up a WORD in my_array by adding 4 (Address is byte encoded)
	ADD X0, X0, #1  //adding 1 to UIN
	SUB X2, X2, #1	//subtracting 1 from the for loop
	
	B loop

finish:
	BR X30

.section .data
UIN: .4byte 7

my_array: .space 40  //allocating 10 word size bytes (10*4)

