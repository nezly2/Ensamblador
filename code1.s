.text
.global code1 //for (i, i<sum, i++){i+=1}
.type code1 function

code1:
MOV r5,#4		//i
MOV r6,#2		//sum

condicion:
CMP r6,r5		//comparar sum con i
BHI for			//sum>i
BLS endfor		//sum<=i

for:
NOP
ADD r5,r5,#1	//i+=1;
ADD r5,r5,#1	//i++;
B condicion

endfor:
BX LR
