## EJEMPLO 2: 


.data 

data:	.word 0x1001000
final:	.word 0x1001060

.text


setup: 


	la s0,data
	la s2, final
	li s1, 0xFF 	#COLOR AZUL
	li, a1, 10

		
	sw s1, 0(s0)		#PINTAMOS LA POSICION EN LA QUE NOS ENCONTREMOS
	
bucle_pintar:

	addi s0,s0,4
	
	sw s1, 0(s0) 


	
fin:	
	 li a7, 10
	ecall	
	
