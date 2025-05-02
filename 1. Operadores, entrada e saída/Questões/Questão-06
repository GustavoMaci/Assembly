.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 # Ler um número de ATÉ 3 digitos
       
       addi $9, $0, 100 # 100 no $9
       addi $10, $0, 10 # 10 no $10
       
       div $8, $9 # Divide o número por 100 (Resultado = x,yz)
       
       mflo $11 # Pega o primeiro dígito (x)
       mfhi $12 # Pega o resto da div (yz)
       
       div $12, $10 # Divide o resto por 10 (Resultado = y,z)
       
       mflo $13 # Pega o primeiro dígito (Y)
       mfhi $14 # Pega o segundo dígito (z)
       
       add $4, $0, $11
       addi $2, $0, 1
       syscall # Imprime o 1° algarismo 
       
       add $4, $0, $13
       addi $2, $0, 1
       syscall # Imprime o 2° algarismo
              
       add $4, $0, $14
       addi $2, $0, 1
       syscall # Imprime o 3° algarismo
       
       addi $2, $0, 10
       syscall # Encerra o programa
