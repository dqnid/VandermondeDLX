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
	lw r3,tamano
	seq r4,r3,r0
	bnez r4,fin
	
	lf f3,tamano	
	cvti2f f0,f3
	
	addi r17,r0,20
	seq r4,r3,r17
	bnez r4,veinte
	
	addi r17,r0,5
	seq r4,r3,r17
	bnez r4,cinco
	
	addi r17,r0,10
	seq r4,r3,r17
	bnez r4,diez
	
	j quince

cinco:
	lf f10, lista5
	addf f5,f5,f10
	lf f10, lista5+0x04
	addf f5,f5,f10
	lf f10, lista5+0x08
	addf f5,f5,f10
	lf f10, lista5+0x0C
	addf f5,f5,f10
	lf f10, lista5+0x10
	addf f5,f5,f10
	divf f5,f5,f0
	sf a5,f5
	
	lf f7, lista2
	addf f2,f2,f7
	lf f7, lista2+0x04
	addf f2,f2,f7
	lf f7, lista2+0x08
	addf f2,f2,f7
	lf f7, lista2+0x0C
	addf f2,f2,f7
	lf f7, lista2+0x10
	addf f2,f2,f7
	divf f2,f2,f0
	sf a2,f2
	
	multf f21,f2,f5
	
	lf f9, lista4
	addf f4,f4,f9
	lf f9, lista4+0x04
	addf f4,f4,f9
	lf f9, lista4+0x08
	addf f4,f4,f9
	lf f9, lista4+0x0C
	addf f4,f4,f9
	lf f9, lista4+0x10
	addf f4,f4,f9
	divf f4,f4,f0
	sf a4,f4
	
	addf f20,f2,f4
	multf f21,f21,f4
	
	lf f6, lista1
	addf f1,f1,f6
	lf f6, lista1+0x04
	addf f1,f1,f6
	lf f6, lista1+0x08
	addf f1,f1,f6
	lf f6, lista1+0x0C
	addf f1,f1,f6
	lf f6, lista1+0x10
	addf f1,f1,f6
	divf f1,f1,f0
	sf a1,f1
	
	multf f21,f21,f1
	
	lf f8, lista3
	addf f3,f3,f8
	lf f8, lista3+0x04
	addf f3,f3,f8	
	lf f8, lista3+0x08
	addf f3,f3,f8
	lf f8, lista3+0x0C
	addf f3,f3,f8
	lf f8, lista3+0x10
	addf f3,f3,f8
	divf f3,f3,f0
	sf a3,f3
	
	addf f23,f1,f3
	divf f20,f20,f23
	
	j calculaM

diez:
	lf f10, lista5
	addf f5,f5,f10
	lf f10, lista5+0x04
	addf f5,f5,f10
	lf f10, lista5+0x08
	addf f5,f5,f10
	lf f10, lista5+0x0C
	addf f5,f5,f10
	lf f10, lista5+0x10
	addf f5,f5,f10
	lf f10, lista5+0x14
	addf f5,f5,f10
	lf f10, lista5+0x18
	addf f5,f5,f10
	lf f10, lista5+0x1C
	addf f5,f5,f10
	lf f10, lista5+0x20
	addf f5,f5,f10
	lf f10, lista5+0x24
	addf f5,f5,f10
	divf f5,f5,f0
	sf a5,f5
	
	lf f7, lista2
	addf f2,f2,f7
	lf f7, lista2+0x04
	addf f2,f2,f7
	lf f7, lista2+0x08
	addf f2,f2,f7
	lf f7, lista2+0x0C
	addf f2,f2,f7
	lf f7, lista2+0x10
	addf f2,f2,f7
	lf f7, lista2+0x14
	addf f2,f2,f7
	lf f7, lista2+0x18
	addf f2,f2,f7
	lf f7, lista2+0x1C
	addf f2,f2,f7
	lf f7, lista2+0x20
	addf f2,f2,f7
	lf f7, lista2+0x24
	addf f2,f2,f7
	divf f2,f2,f0
	sf a2,f2
	
	multf f21,f2,f5
	
	lf f9, lista4
	addf f4,f4,f9
	lf f9, lista4+0x04
	addf f4,f4,f9
	lf f9, lista4+0x08
	addf f4,f4,f9
	lf f9, lista4+0x0C
	addf f4,f4,f9
	lf f9, lista4+0x10
	addf f4,f4,f9
	lf f9, lista4+0x14
	addf f4,f4,f9
	lf f9, lista4+0x18
	addf f4,f4,f9
	lf f9, lista4+0x1C
	addf f4,f4,f9
	lf f9, lista4+0x20
	addf f4,f4,f9
	lf f9, lista4+0x24
	addf f4,f4,f9
	divf f4,f4,f0
	sf a4,f4
	
	addf f20,f2,f4
	multf f21,f21,f4
	
	lf f6, lista1
	addf f1,f1,f6
	lf f6, lista1+0x04
	addf f1,f1,f6
	lf f6, lista1+0x08
	addf f1,f1,f6
	lf f6, lista1+0x0C
	addf f1,f1,f6
	lf f6, lista1+0x10
	addf f1,f1,f6
	lf f6, lista1+0x14
	addf f1,f1,f6
	lf f6, lista1+0x18
	addf f1,f1,f6
	lf f6, lista1+0x1C
	addf f1,f1,f6
	lf f6, lista1+0x20
	addf f1,f1,f6
	lf f6, lista1+0x24
	addf f1,f1,f6
	divf f1,f1,f0
	sf a1,f1
	
	multf f21,f21,f1
	
	lf f8, lista3
	addf f3,f3,f8
	lf f8, lista3+0x04
	addf f3,f3,f8	
	lf f8, lista3+0x08
	addf f3,f3,f8
	lf f8, lista3+0x0C
	addf f3,f3,f8
	lf f8, lista3+0x10
	addf f3,f3,f8
	lf f8, lista3+0x14
	addf f3,f3,f8
	lf f8, lista3+0x18
	addf f3,f3,f8	
	lf f8, lista3+0x1C
	addf f3,f3,f8
	lf f8, lista3+0x20
	addf f3,f3,f8
	lf f8, lista3+0x24
	addf f3,f3,f8
	divf f3,f3,f0
	sf a3,f3
	
	addf f23,f1,f3
	divf f20,f20,f23
	
	j calculaM

quince:
	lf f10, lista5
	addf f5,f5,f10
	lf f10, lista5+0x04
	addf f5,f5,f10
	lf f10, lista5+0x08
	addf f5,f5,f10
	lf f10, lista5+0x0C
	addf f5,f5,f10
	lf f10, lista5+0x10
	addf f5,f5,f10
	lf f10, lista5+0x14
	addf f5,f5,f10
	lf f10, lista5+0x18
	addf f5,f5,f10
	lf f10, lista5+0x1C
	addf f5,f5,f10
	lf f10, lista5+0x20
	addf f5,f5,f10
	lf f10, lista5+0x24
	addf f5,f5,f10
	lf f10, lista5+0x28
	addf f5,f5,f10
	lf f10, lista5+0x2C
	addf f5,f5,f10
	lf f10, lista5+0x30
	addf f5,f5,f10
	lf f10, lista5+0x34
	addf f5,f5,f10
	lf f10, lista5+0x38
	addf f5,f5,f10
	divf f5,f5,f0
	sf a5,f5
	
	lf f7, lista2
	addf f2,f2,f7
	lf f7, lista2+0x04
	addf f2,f2,f7
	lf f7, lista2+0x08
	addf f2,f2,f7
	lf f7, lista2+0x0C
	addf f2,f2,f7
	lf f7, lista2+0x10
	addf f2,f2,f7
	lf f7, lista2+0x14
	addf f2,f2,f7
	lf f7, lista2+0x18
	addf f2,f2,f7
	lf f7, lista2+0x1C
	addf f2,f2,f7
	lf f7, lista2+0x20
	addf f2,f2,f7
	lf f7, lista2+0x24
	addf f2,f2,f7
	lf f7, lista2+0x28
	addf f2,f2,f7
	lf f7, lista2+0x2C
	addf f2,f2,f7
	lf f7, lista2+0x30
	addf f2,f2,f7
	lf f7, lista2+0x34
	addf f2,f2,f7
	lf f7, lista2+0x38
	addf f2,f2,f7
	divf f2,f2,f0
	sf a2,f2
	
	multf f21,f2,f5
	
	lf f9, lista4
	addf f4,f4,f9
	lf f9, lista4+0x04
	addf f4,f4,f9
	lf f9, lista4+0x08
	addf f4,f4,f9
	lf f9, lista4+0x0C
	addf f4,f4,f9
	lf f9, lista4+0x10
	addf f4,f4,f9
	lf f9, lista4+0x14
	addf f4,f4,f9
	lf f9, lista4+0x18
	addf f4,f4,f9
	lf f9, lista4+0x1C
	addf f4,f4,f9
	lf f9, lista4+0x20
	addf f4,f4,f9
	lf f9, lista4+0x24
	addf f4,f4,f9
	lf f9, lista4+0x28
	addf f4,f4,f9
	lf f9, lista4+0x2C
	addf f4,f4,f9
	lf f9, lista4+0x30
	addf f4,f4,f9
	lf f9, lista4+0x34
	addf f4,f4,f9
	lf f9, lista4+0x38
	addf f4,f4,f9
	divf f4,f4,f0
	sf a4,f4
	
	addf f20,f2,f4
	multf f21,f21,f4
	
	lf f6, lista1
	addf f1,f1,f6
	lf f6, lista1+0x04
	addf f1,f1,f6
	lf f6, lista1+0x08
	addf f1,f1,f6
	lf f6, lista1+0x0C
	addf f1,f1,f6
	lf f6, lista1+0x10
	addf f1,f1,f6
	lf f6, lista1+0x14
	addf f1,f1,f6
	lf f6, lista1+0x18
	addf f1,f1,f6
	lf f6, lista1+0x1C
	addf f1,f1,f6
	lf f6, lista1+0x20
	addf f1,f1,f6
	lf f6, lista1+0x24
	addf f1,f1,f6
	lf f6, lista1+0x28
	addf f1,f1,f6
	lf f6, lista1+0x2C
	addf f1,f1,f6
	lf f6, lista1+0x30
	addf f1,f1,f6
	lf f6, lista1+0x34
	addf f1,f1,f6
	lf f6, lista1+0x38
	addf f1,f1,f6
	divf f1,f1,f0
	sf a1,f1
	
	multf f21,f21,f1
	
	lf f8, lista3
	addf f3,f3,f8
	lf f8, lista3+0x04
	addf f3,f3,f8	
	lf f8, lista3+0x08
	addf f3,f3,f8
	lf f8, lista3+0x0C
	addf f3,f3,f8
	lf f8, lista3+0x10
	addf f3,f3,f8
	lf f8, lista3+0x14
	addf f3,f3,f8
	lf f8, lista3+0x18
	addf f3,f3,f8	
	lf f8, lista3+0x1C
	addf f3,f3,f8
	lf f8, lista3+0x20
	addf f3,f3,f8
	lf f8, lista3+0x24
	addf f3,f3,f8
	lf f8, lista3+0x28
	addf f3,f3,f8
	lf f8, lista3+0x2C
	addf f3,f3,f8	
	lf f8, lista3+0x30
	addf f3,f3,f8
	lf f8, lista3+0x34
	addf f3,f3,f8
	lf f8, lista3+0x38
	addf f3,f3,f8
	divf f3,f3,f0
	sf a3,f3
	
	addf f23,f1,f3
	divf f20,f20,f23
	
	j calculaM
	
veinte:	
	lf f7, lista2
	addf f2,f2,f7
	lf f7, lista2+0x04
	addf f2,f2,f7
	lf f7, lista2+0x08
	addf f2,f2,f7
	lf f7, lista2+0x0C
	addf f2,f2,f7
	lf f7, lista2+0x10
	addf f2,f2,f7
	lf f7, lista2+0x14
	addf f2,f2,f7
	lf f7, lista2+0x18
	addf f2,f2,f7
	lf f7, lista2+0x1C
	addf f2,f2,f7
	lf f7, lista2+0x20
	addf f2,f2,f7
	lf f7, lista2+0x24
	addf f2,f2,f7
	lf f7, lista2+0x28
	addf f2,f2,f7
	lf f7, lista2+0x2C
	addf f2,f2,f7
	lf f7, lista2+0x30
	addf f2,f2,f7
	lf f7, lista2+0x34
	addf f2,f2,f7
	lf f7, lista2+0x38
	addf f2,f2,f7
	lf f7, lista2+0x3C
	addf f2,f2,f7
	lf f7, lista2+0x40
	addf f2,f2,f7
	lf f7, lista2+0x44
	addf f2,f2,f7
	lf f7, lista2+0x48
	addf f2,f2,f7
	lf f7, lista2+0x4C
	addf f2,f2,f7
	divf f2,f2,f0
	sf a2,f2
	
	lf f9, lista4
	addf f4,f4,f9
	lf f9, lista4+0x04
	addf f4,f4,f9
	lf f9, lista4+0x08
	addf f4,f4,f9
	lf f9, lista4+0x0C
	addf f4,f4,f9
	lf f9, lista4+0x10
	addf f4,f4,f9
	lf f9, lista4+0x14
	addf f4,f4,f9
	lf f9, lista4+0x18
	addf f4,f4,f9
	lf f9, lista4+0x1C
	addf f4,f4,f9
	lf f9, lista4+0x20
	addf f4,f4,f9
	lf f9, lista4+0x24
	addf f4,f4,f9
	lf f9, lista4+0x28
	addf f4,f4,f9
	lf f9, lista4+0x2C
	addf f4,f4,f9
	lf f9, lista4+0x30
	addf f4,f4,f9
	lf f9, lista4+0x34
	addf f4,f4,f9
	lf f9, lista4+0x38
	addf f4,f4,f9
	lf f9, lista4+0x3C
	addf f4,f4,f9
	lf f9, lista4+0x40
	addf f4,f4,f9
	lf f9, lista4+0x44
	addf f4,f4,f9
	lf f9, lista4+0x48
	addf f4,f4,f9
	lf f9, lista4+0x4C
	addf f4,f4,f9
	divf f4,f4,f0
	sf a4,f4
	
	multf f21,f2,f4
	addf f20,f2,f4
	
	lf f6, lista1
	addf f1,f1,f6
	lf f6, lista1+0x04
	addf f1,f1,f6
	lf f6, lista1+0x08
	addf f1,f1,f6
	lf f6, lista1+0x0C
	addf f1,f1,f6
	lf f6, lista1+0x10
	addf f1,f1,f6
	lf f6, lista1+0x14
	addf f1,f1,f6
	lf f6, lista1+0x18
	addf f1,f1,f6
	lf f6, lista1+0x1C
	addf f1,f1,f6
	lf f6, lista1+0x20
	addf f1,f1,f6
	lf f6, lista1+0x24
	addf f1,f1,f6
	lf f6, lista1+0x28
	addf f1,f1,f6
	lf f6, lista1+0x2C
	addf f1,f1,f6
	lf f6, lista1+0x30
	addf f1,f1,f6
	lf f6, lista1+0x34
	addf f1,f1,f6
	lf f6, lista1+0x38
	addf f1,f1,f6
	lf f6, lista1+0x3C
	addf f1,f1,f6
	lf f6, lista1+0x40
	addf f1,f1,f6
	lf f6, lista1+0x44
	addf f1,f1,f6
	lf f6, lista1+0x48
	addf f1,f1,f6
	lf f6, lista1+0x4C
	addf f1,f1,f6
	divf f1,f1,f0
	sf a1,f1
	
	multf f21,f21,f1
	
	lf f8, lista3
	addf f3,f3,f8
	lf f8, lista3+0x04
	addf f3,f3,f8	
	lf f8, lista3+0x08
	addf f3,f3,f8
	lf f8, lista3+0x0C
	addf f3,f3,f8
	lf f8, lista3+0x10
	addf f3,f3,f8
	lf f8, lista3+0x14
	addf f3,f3,f8
	lf f8, lista3+0x18
	addf f3,f3,f8	
	lf f8, lista3+0x1C
	addf f3,f3,f8
	lf f8, lista3+0x20
	addf f3,f3,f8
	lf f8, lista3+0x24
	addf f3,f3,f8
	lf f8, lista3+0x28
	addf f3,f3,f8
	lf f8, lista3+0x2C
	addf f3,f3,f8	
	lf f8, lista3+0x30
	addf f3,f3,f8
	lf f8, lista3+0x34
	addf f3,f3,f8
	lf f8, lista3+0x38
	addf f3,f3,f8
	lf f8, lista3+0x3C
	addf f3,f3,f8
	lf f8, lista3+0x40
	addf f3,f3,f8	
	lf f8, lista3+0x44
	addf f3,f3,f8
	lf f8, lista3+0x48
	addf f3,f3,f8
	lf f8, lista3+0x4C
	addf f3,f3,f8
	divf f3,f3,f0
	sf a3,f3
	
	multf f21,f21,f3
	
	addf f23,f1,f3
	divf f20,f20,f23
	
	lf f10, lista5
	addf f5,f5,f10
	lf f10, lista5+0x04
	addf f5,f5,f10
	lf f10, lista5+0x08
	addf f5,f5,f10
	lf f10, lista5+0x0C
	addf f5,f5,f10
	lf f10, lista5+0x10
	addf f5,f5,f10
	lf f10, lista5+0x14
	addf f5,f5,f10
	lf f10, lista5+0x18
	addf f5,f5,f10
	lf f10, lista5+0x1C
	addf f5,f5,f10
	lf f10, lista5+0x20
	addf f5,f5,f10
	lf f10, lista5+0x24
	addf f5,f5,f10
	lf f10, lista5+0x28
	addf f5,f5,f10
	lf f10, lista5+0x2C
	addf f5,f5,f10
	lf f10, lista5+0x30
	addf f5,f5,f10
	lf f10, lista5+0x34
	addf f5,f5,f10
	lf f10, lista5+0x38
	addf f5,f5,f10
	lf f10, lista5+0x3C
	addf f5,f5,f10
	lf f10, lista5+0x40
	addf f5,f5,f10
	lf f10, lista5+0x44
	addf f5,f5,f10
	lf f10, lista5+0x48
	addf f5,f5,f10
	lf f10, lista5+0x4C
	addf f5,f5,f10
	divf f5,f5,f0
	sf a5,f5
	
	j calculaM
	
calculaM:
	multf f21,f21,f5
	addf f16,f16,f20
	sf M,f20
	addf f16,f16,f20
	sf M+0x10,f20
	addf f16,f16,f20
	sf M+0x20,f20
	addf f16,f16,f20
	sf M+0x30,f20
	
	multf f11,f1,f20
	sf M+0x04,f11
	addf f16,f16,f11
	multf f12,f2,f20
	sf M+0x14,f12
	addf f16,f16,f12
	multf f13,f3,f20
	sf M+0x24,f13
	addf f16,f16,f13
	multf f14,f4,f20
	sf M+0x34,f14
	addf f16,f16,f14
	
	multf f11,f11,f1
	sf M+0x08,f11
	addf f16,f16,f11
	multf f12,f12,f2
	sf M+0x18,f12
	addf f16,f16,f12
	multf f13,f13,f3
	sf M+0x28,f13
	addf f16,f16,f13
	multf f14,f14,f4
	sf M+0x38,f14
	addf f16,f16,f14
	
	multf f11,f11,f1
	addf f16,f16,f11
	sf M+0x0C,f11
	multf f12,f12,f2
	addf f16,f16,f12
	sf M+0x1C,f12
	multf f13,f13,f3
	addf f16,f16,f13
	sf M+0x2C,f13
	multf f14,f14,f4
	addf f16,f16,f14
	sf M+0x3C,f14
	
	sf checkA,f21
	sf checkM,f16
	
	j fin
	
fin:
	trap 0