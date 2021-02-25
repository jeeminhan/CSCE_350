.section .text
.globl lab02d

lab02d:
	ADRP X3, myvalue
	ADD X3,X3, :lo12:myvalue
	ADD X2, X0, #1000
	STUR X2, [X3, 0]
	ADD X0, X3, XZR
	BR X30

.section	.data

myvalue:
.byte 8
