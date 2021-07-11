	# ESTE PROGRAMA PINTA EL NUMERO DE PIXELES SOLICITADOS (1-128 PIXELES)
.data 

data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "Introduzca el numero de pixeles a pintar (1-128):\n"

.eqv	GREEN   0x0000FF00
.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10

.text
	li a1,GREEN	#asignar color
			
	la a0, msg1
	li a7, PRINT_STRING	#Mensaje
	ecall
		
	li a7, READ_INT		# Numero introducido por el usuario
	ecall
	
	mv s2, a0	#Tenemos en s2 el numero de pixeles introducidos
	
	la a0,data	# Puntero inicial
	li t1, 0	# Contador
	
bucle_pintar:	
	beq s2, t1, fin
	
	sw a1, 0(a0)	# pinta el primer cuadrado

	addi a0,a0,4	# Avanzamos la posicion
	
	addi t1, t1, 1
	
	b bucle_pintar
fin:	
	 li a7, EXIT
	ecall	
	