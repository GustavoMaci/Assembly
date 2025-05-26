.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Qtd de números 
	addi $9, $0, 1 # Qtd maior número
	addi $11, $0, 1 # i
	
loop:	addi $2, $0, 5
	syscall  # Número digitado
	
	bgt $2, $10, maior
	beq $10, 0, maior # Verificação para o $10 nao ficar com 0 sempre
	j cont
maior:	add $10, $0, $2  # Número maior --> verificação

cont:	addi $11, $11, 1

 	ble $11, $8, loop
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall # Maior número do laço
	
	addi $2, $0, 10
	syscall
