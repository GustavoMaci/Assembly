.text
main:	addi $8, $0, 3
	addi $9, $0, 1 # i
	addi $10, $0, 10 
	
count:	bgt $9, 10, out
	mul $11, $8, $9 # 3 X i
	
	add $4, $0, $11
	add $2, $0, 1
	syscall # Imprime (3 X i)
	
	addi $4, $0, '\n'
	add $2, $0, 11
	syscall 
	
	addi $9, $9, 1 # Incremento do $9
	j count
	
out:	addi $2, $0, 10
	syscall
