

	# ESTE PROGRAMA PINTA LAS PUNTUACIONES DE DOS EQUIPOS (128 PIXELES)
.data

data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "Introduzca la puntuaci�n del equipo 1:"
msg2:   .string "Introduzca la puntuaci�n del equipo 2:"




.eqv	RED   0x00FF0000
.eqv	GREEN   0x0000FF00
.eqv	BLUE   0x000000FF
.eqv	WHITE   0x00FFFFFF
.eqv	YELLOW   0x00FFFF00
.eqv	CYAN   0x0000FFFF
.eqv	MAGENTA   0x00FF00FF

.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10

.eqv  	MAX 16

.text


setup:

	# EQUIPO 1

	la s0,data

	li s1,RED	#asignar color 1
	li s4, YELLOW
	li s5, BLUE
	li s6, GREEN

	la a0, msg1
	li a7, PRINT_STRING
	ecall

	li a7, READ_INT
	ecall
	mv s2, a0    # S2 ES LA PUNTIACIUON 1

	li t1, 0

bucle_pintar1:

	beq s2, t1, avanzar

	sw s1, 0(s0)	# pinta el primer cuadrado

	addi s0,s0,4

	addi t1, t1, 1

	b bucle_pintar1

avanzar:

	li t1, 0

	li, t0, MAX
	sub s3, t0, s2



bucle_avanzar:

	beq t1, s3, fin_avanzar

	addi s0,s0,4

	addi t1, t1, 1

	b bucle_avanzar

fin_avanzar:

	la a0, msg2
	li a7, PRINT_STRING
	ecall

	li a7, READ_INT
	ecall

	mv s7, a0 	# S7 TIENE LA PUNTIUACION 2



	li t1, 0

	bucle_pintar2:

	beq s7, t1, fin

	sw s4, 0(s0)	# pinta el primer cuadrado

	addi s0,s0,4

	addi t1, t1, 1

	b bucle_pintar2




	fin:
	 li a7, EXIT
	ecall
