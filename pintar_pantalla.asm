

	# Programa que pinta la pantalla completa.
.data 

data:	.word 0x1001000    #PUNTO DE INICIO (Situado en la parte superior izquierda del display)

.eqv	YELLOW   0x00FFFF00

.eqv 	EXIT 10
.text
	la a0,data	# Cargamos en a0 la direccion del punto de inicio
	
	li a1,YELLOW	# Asignamos en a1 el color
	
	li, t0, 128	# Establecemos el numero Maximo de pixeles
	li t1, 0
	bucle:
	beq t0, t1, fin	
	sw a1, 0(a0)	# Dibujamos el primer pixel del display

	addi a0,a0,4	# Avanzamos al pixel siguiente
		
	addi t1, t1, 1
	b bucle
fin:	
	 li a7, EXIT
	ecall	
	
