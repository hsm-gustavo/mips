.data
array:    .word  6, 3, 8, 2, 9, 1, 7, 4, 10, 5   # Array de 10 elementos

.text
.globl main
main:
    la   $t0, array         # Carrega o endereço base do array para $t0
    li   $t4, 10            # Carrega o tamanho do array para $t4 (número de elementos)
   
loop_start:
    lw   $t1, 0($t0)         # Carrega o próximo elemento do array para $t1
   
    # Imprime o valor do array
    li   $v0, 1              # Código da syscall para imprimir inteiro
    move $a0, $t1            # Coloca o valor em $t1 no registrador de argumento $a0
    syscall
   
    addi $t0, $t0, 4         # Avança para o próximo elemento do array
    addi $t4, $t4, -1        # Decrementa o contador de elementos
   
    bnez $t4, loop_start     # Se ainda houver elementos, repetir o loop
   
    # Verifica a condição
    lw   $t1, array          # Carrega o primeiro elemento do array para $t1
    li   $t2, 5              # Carrega o valor 5 para $t2
    bgt  $t1, $t2, cond_true # Pula para cond_true se $t1 > $t2
   
    # Continuação sequencial
    # ... (outras instruções aqui)
    j    end

cond_true:
    li   $t3, 4             # Carrega o valor 4 para $t3 (número de instruções a pular)
   
loop_cond_true:
    addi $t3, $t3, -1        # Decrementa o contador de instruções
    beqz $t3, end            # Se $t3 for zero, pula para end
   
    # Imprime uma linha vazia
    li   $v0, 4              # Código da syscall para imprimir string
    la   $a0, newline        # Carrega o endereço da string de nova linha
    syscall
   
    j loop_cond_true         # Salta de volta para loop_cond_true

end:
    li   $v0, 10             # Código da syscall para sair
    syscall
.data
newline:   .asciiz "\n"       # String de nova linha
