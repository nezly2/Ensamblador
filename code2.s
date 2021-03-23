.text
.global code2 //while (n--)
.type code2 function

code2:
MOV r4,#0		//n
CMP r4,#0		//comparacion while
BHI while		// r4>0
BEQ endWhile 	// r4=0

while:
SUB r4,r4,#1
NOP
CMP r4, #0
BHI while		// r4>0
BEQ endWhile	// r4=0

endWhile:
SUB r4,r4,#1
BX LR
