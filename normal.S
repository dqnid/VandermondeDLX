; Daniel Hera Quesada, Saturnino Benito Baez
	.data
; VARIABLES DE ENTRADA: NO MODIFICAR ORDEN (Se pueden modificar los valores)
lista1: .float 12, 1,15, 1,15,13, 1,14, 1,14,14, 1,13, 1,13,15, 1,12, 1,12
lista2: .float 2,22,25,25, 2, 2,23,24,24, 2, 2,24,23,23, 2, 2,25,22,22, 2
lista3: .float 3, 3,32, 3, 3, 3, 3,33, 3, 3, 3, 3,34, 3, 3, 3, 3,35, 3, 3
lista4: .float 4,45,45,42, 4, 4,44,44,43, 4, 4,43,43,44, 4, 4,42,42,45, 4
lista5: .float 55, 5,55, 5,52,54, 5,54, 5,53,53, 5,53, 5,54,52, 5,52, 5,55
tamano: .word 20
;;;;; VARIABLES DE SALIDA: NO MODIFICAR ORDEN
M: .float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0
checkM: .float 0.0
; Medias
a1: .float 0.0
a2: .float 0.0
a3: .float 0.0
a4: .float 0.0
a5: .float 0.0
checkA: .float 0.0
;;;;; FIN NO MODIFICAR ORDEN
f_00: .float 0.0
	
	.text
		
	.global	main
	
main:
	addi r1,r0,0
	lf f1, f_00
	addi r2,r0,4
	lw r3,tamano
	mult r2,r2,r3

bucle1:
	seq r3,r1,r2
	bnez r3,media1
	lf f2, lista1(r1)
	addf f1,f1,f2
	addi r1,r1,4
	j bucle1

media1:
	lf f3,tamano	
	cvti2f f4,f3
	divf f5,f1,f4
	sf a1,f5
	jal reset
	j bucle2

bucle2:
	seq r3,r1,r2
	bnez r3,media2
	lf f2, lista2(r1)
	addf f1,f1,f2
	addi r1,r1,4
	j bucle2

media2:
	lf f3,tamano
	cvti2f f4,f3
	divf f5,f1,f4
	sf a2,f5
	jal reset
	j bucle3

bucle3:
	seq r3,r1,r2
	bnez r3,media3
	lf f2, lista3(r1)
	addf f1,f1,f2
	addi r1,r1,4
	j bucle3

media3:
	lf f3,tamano
	cvti2f f4,f3
	divf f5,f1,f4
	sf a3,f5
	jal reset
	j bucle4
	
bucle4:
	seq r3,r1,r2
	bnez r3,media4
	lf f2, lista4(r1)
	addf f1,f1,f2
	addi r1,r1,4
	j bucle4

media4:
	lf f3,tamano
	cvti2f f4,f3
	divf f5,f1,f4
	sf a4,f5
	jal reset
	j bucle5
	
bucle5:
	seq r3,r1,r2
	bnez r3,media5
	lf f2, lista5(r1)
	addf f1,f1,f2
	addi r1,r1,4
	j bucle5

media5:
	lf f3,tamano
	cvti2f f4,f3
	divf f5,f1,f4
	sf a5,f5
	j calculaRegTemp
	
calculaRegTemp:
	lf f1, a1
	lf f2, a2
	lf f3, a3
	lf f4, a4
	lf f5, a5
	divf f6,f2,f5
	divf f7,f4,f5
	addf f6,f6,f7
	divf f7,f1,f5
	divf f8,f3,f5
	addf f7,f7,f8
	divf f6,f6,f7
	j calculaM

calculaM:
	addi r1,r0,0
	; Fila 1
	sf M(r1),f6
	addi r1,r1,4
	
	multf f7,f1,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f1,f1
	multf f7,f7,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f1,f1
	multf f7,f7,f1
	multf f7,f7,f6
	sf M(r1),f7
	addi r1,r1,4
	
	; Fila 2
	sf M(r1),f6
	addi r1,r1,4
		
	multf f7,f2,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f2,f2
	multf f7,f7,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f2,f2
	multf f7,f7,f2
	multf f7,f7,f6
	sf M(r1),f7
	addi r1,r1,4
	
	; Fila 3
	sf M(r1),f6
	addi r1,r1,4
		
	multf f7,f3,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f3,f3
	multf f7,f7,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f3,f3
	multf f7,f7,f3
	multf f7,f7,f6
	sf M(r1),f7
	addi r1,r1,4
	
	; Fila 4
	sf M(r1),f6
	addi r1,r1,4
		
	multf f7,f4,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f4,f4
	multf f7,f7,f6
	sf M(r1),f7
	addi r1,r1,4
	
	multf f7,f4,f4
	multf f7,f7,f4
	multf f7,f7,f6
	sf M(r1),f7
	
	j calculaCheckA
	
calculaCheckA:
	multf f7,f1,f2
	multf f8,f3,f4
	multf f7,f7,f8
	multf f7,f7,f5
	sf checkA,f7
	j calculaCheckM
	
calculaCheckM:
	addi r1,r0,0
	lf f8,f_00
	j bucleCheckM
	
bucleCheckM:
	seqi r2,r1,64
	bnez r2,guardaCheckM
	
	lf f9, M(r1)
	addf f8,f8,f9
	
	addi r1,r1,4
	j bucleCheckM
	
guardaCheckM:
	sf checkM,f8
	j fin

reset:
	addi r1,r0,0
	lf f1, f_00
	lf f6, f_00
	jr r31
	
fin:
	trap 0