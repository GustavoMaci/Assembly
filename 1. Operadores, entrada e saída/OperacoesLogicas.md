# Operações Lógicas: 🧠
## AND bit a bit (bitwise): 
### and:
**▶ Sintaxe:**  
`and $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = $fonte1 & $fonte2` *(bitwise AND)*  

**▶ Exemplo:**  
`and $8, $9, $10`  

---
## OR bit a bit (bitwise): 
### or:
**▶ Sintaxe:**  
`or $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = $fonte1 | $fonte2` *(bitwise OR)*  

**▶ Exemplo:**  
`or $8, $9, $10` 

---
## NOR bit a bit (bitwise): 
### nor:
**▶ Sintaxe:**  
`nor $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = ~($fonte1 | $fonte2)` *(bitwise NOR)*  

**▶ Exemplo:**  
`nor $8, $9, $10` 

---
## Deslocamento de bits para a esquerda: 
### sll:
**▶ Sintaxe:**  
`sll $destino, $fonte1, Constante`  

**▶ Operação:**  
`$destino = $fonte1 << Constante` *(deslocamento à esquerda lógico)*  

**▶ Exemplo:**  
`sll $8, $9, 3`  

