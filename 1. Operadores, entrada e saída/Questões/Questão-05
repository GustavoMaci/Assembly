.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 # Ler um número de 3 digitos
       
       addi $9, $0, 100 # Salva no $9 o valor 100
       addi $10, $0, 10 # Salva no $10 o valor 10
       
       div $8, $9 # Divide o número por 100 (Resultado = x,yz)
       
       mflo $11 # Pega o primeiro dígito (x)
       mfhi $12 # Pega o resto da div (yz)
       
       div $12, $10 # Divide o resto por 10 (Resultado = y,z)
       
       mflo $13 # Pega o primeiro dígito (y)
       mfhi $14 # Pega o segundo dígito (z)
       
       add $15, $11, $13 # Soma os dígitos x + y
       add $16, $15, $14 # Soma os dígitos x + y + z
       
       add $4, $0, $16
       addi $2, $0, 1
       syscall # Printa a soma dos algarismos
       
       addi $2, $0, 10
       syscall # Encerra o programa
