
# SUBRUTINA PARA PINTAR LA BASE DEL RECTANGULO

	# Recibe por a0 la base del rectangulo
	
	.globl pintar_base

	.text
	

pintar_base:

	li t1, 0
	
	mv t2, a0	#Le pasamos a t2 la base
bucle_pintar:	

	beq t2, t1, salir
	
	sw s1, 0(s0)

	addi s0,s0,4
	
	addi t1, t1, 1
	
	b bucle_pintar
	

salir:

	mv a0, t2
ret