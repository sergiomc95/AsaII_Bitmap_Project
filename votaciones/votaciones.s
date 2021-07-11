

	# Este programa representa recuento de votos de 4 partidos politicos, introducidos por el usuario.
	# Siendo 16 el numero maximo de votos por cada partido.
.data 
data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "VOTOS DEL PSOE:\n"
msg2:   .string "VOTOS DEL PP:\n"
msg3:   .string "VOTOS DE PODEMOS:\n"
msg4:   .string "VOTOS DE VOX: \n"

.eqv	RED   0x00FF0000
.eqv	GREEN   0x0000FF00
.eqv	BLUE   0x000000FF
.eqv	MAGENTA   0x00FF00FF

.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10
.eqv	PRINT_INT 1

.text

		
	li s1,RED	#COLOR partido 1
	li s2, BLUE     #COLOR partido 2
	li s3, MAGENTA	#COLOR partido 3
	li s4, GREEN	#COLOR partido 4
		
	# Partido 1	
	
	la a0, msg1
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Leeamos la puntuacion de primer partido en a0
	ecall
	

	
	mv a2, s1 	# Le paso el color del partido 1
	mv a1, a0	# a1 tiene la votacion
	
	la a0, data
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna

	
	# Partido 2
	mv s0, a0
		
	la a0, msg2
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Leeamos la puntuacion de primer partido en a0
	ecall
	
	
	mv a2, s2 	# Le paso el color del partido 2
	mv a1, a0
	mv a0, s0
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna

	
		# Partido 3
		
	mv s0, a0
	
	la a0, msg3
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Leeamos la puntuacion de primer partido en a0
	ecall
	
	
	mv a2, s3	# Le paso el color del partido 3
	mv a1, a0
	mv a0, s0
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna
	
		# Partido 4
	
	mv s0, a0	
	la a0, msg4
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Leeamos la puntuacion de primer partido en a0
	ecall
	
	
	mv a2, s4	# Le paso el color del partido 4
	mv a1, a0
	mv a0, s0
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna

	fin:	
	 li a7, EXIT
	ecall	


