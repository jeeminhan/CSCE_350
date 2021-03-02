.section .text
.globl lab03b

lab03b:
	MOVZ X1, #10	//setting the register to 10
	ADRP X0, UIN    //getting initial value of UIN
	ADD X0, X0, :lo12:UIN
	LDUR X2, [X0, #0] //loading UIN into register X2

loop:
	CBZ X1, finish	//branch to finish if loop=0 meaning it finishes 
	SUB X2, X2, #1  //subtracting 1 from UIN
	SUB X1, X1, #1	//subtracting 1 from the for loop
	B loop

finish:
	BR X30 //branch back to caller

.section .data

UIN:
.4byte 35 //initial value is sum of the digits in UIN 728005562i 
