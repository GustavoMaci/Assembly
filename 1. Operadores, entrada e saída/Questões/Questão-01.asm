.text
main:  addi $2, $0, 5
       syscall # Recebe um número
             
       sll $8, $2, 1 # Multiplica por dois
       
       add $4, $0, $8
       addi $2, $0, 1
       syscall # Imprimir o valor de $8
       
       addi $2, $0, 10
       syscall # Encerrar programa
