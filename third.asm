.data
    .align 2
    array:  .word 0, 1, 2, 3, 4, 5

.text
main:
    la $t1, array      
    add $t1, $t1, 20   # 2000 + 5 (cada elemento tem 4 bytes => 20/4 = 5 // endereço base = 2000, o quinto elemento está em 5*4 bytes dps do endereço base)
    lw $t0, 0($t1)     # carrega o valor de 2005 em t0

    li $v0, 10         
    syscall
