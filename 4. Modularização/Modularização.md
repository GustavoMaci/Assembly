# 👨‍💻 Modularização:  
- Uma segmentação bem definida do projeto assegura a modularização do Sistema. Cada tarefa forma um módulo do programa separado e independente.
- Durante a implementação cada módulo, suas entradas e saídas, são bem definidas. Não há qualquer confusão nas interfaces com outros módulos do programa.
- No momento da verificação, a integridade de cada módulo é testada independentemente.

![image](https://github.com/user-attachments/assets/d13015a4-1ea3-4fd6-9bd3-00ceecb29e0e)

# Instruções para Modularização:
## Instrução Jump And Link: 
### jal:
**▶ Sintaxe:**  
`jal destino`  

**▶ Operação:**  
`$31 = PC + 4`
`PC = &destino`

**▶ Exemplo:**  
`jal main`

---
## Instrução Jump Register: 
### jr:
**▶ Sintaxe:**  
`jr $fonte1`  

**▶ Operação:**  
`PC = $fonte1`

**▶ Exemplo:**  
`jr $31`
