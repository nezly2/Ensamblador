.text
.global code4	//unidad control
.type code4 function

code4:
//MOV r0, #7 	//numero1
//MOV r1, #5	//numero2
//MOV r2, #0	//ubCounter
CMP r1,r0	//compara r1 con r0
BHI menor	//Si r0<r1, contador ascendente
BEQ igual	//Si r0=r1, sumar r0+r1
BLO mayor	//Si r0>r1, contador descendente

menor:
ADD r2,r2,#1		//r2=r2+1  --> r2++
B salida

igual:
ADD r2,r0,r1		//r2=r0+r1
B salida

mayor:
SUB r2,r2,#1		//r2=r2-1  --> r2--
B salida

salida:
BX LR
