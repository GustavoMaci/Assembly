# Condicionais em Mars Mips: ➡️
## beq - Instrução Branch if Equals:
**▶ Sintaxe:**  
`beq $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 == $fonte2) PC = $rótulo senão PC = PC + 4` 

**▶ Exemplo:**  
`beq $8, $9, main`

---
## bnq - Instrução Branch if Not Equals:
**▶ Sintaxe:**  
`bnq $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 != $fonte2) PC = $rótulo senão PC = PC + 4` 

**▶ Exemplo:**  
`bnq $8, $9, main`  

---
## j - Jump:
**▶ Sintaxe:**  
`j rótulo`  

**▶ Operação:**  
`PC = $rótulo (há detalhes)` 

**▶ Exemplo:**  
`j main` 
