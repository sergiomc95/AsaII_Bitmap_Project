
# Este programa dibuja un Rectangulo especificando tama�o en pixeles de Base y Altura
.data 

data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "Introduzca la base del rectangulo:\n"
msg2:   .string "Introduzca la altura del rectangulo:\n"

.eqv	RED   0x00FF0000
.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10

.eqv	MAX 16

.text

		
	
	la a0, msg1
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Introducimos la base por teclado (1-16)
	ecall 
	
	mv s2, a0	# s2 tiene la base
	
	la a0, msg2
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Introducimos la altura por teclado (1-8)
	ecall
	
	li t0, 2	#Le restamos las dos bases

	
	sub a3, a0, t0	# a3 tiene la altura
	
	
	mv a2, s2	# a2 Contiene el ancho del rectangulo
	
	li a1,RED	#COLOR del Rectangulo
	la a0,data	#Puntero inicial
	
	jal pintar_base