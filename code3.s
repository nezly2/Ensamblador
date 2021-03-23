.text
.global code3	//do while(n<0)
.type code3 function

code3:
MOV r3,#6		//n
//SUB r3,r3,#1
MOV r4,#4
//SUB r4,r4,#2

do:
ADD	r3,r3,#1
NOP
B While

While:
CMP r4,r3		// r3 se compara con r4
BGT do			// Si r3 < r4, GT toma en cuenta el signo
B endWhile
NOP

endWhile:
BX LR

//r3=1 - r4=5//

//r3=5 - r4=5//

//r3=-1 - r4=-2//
