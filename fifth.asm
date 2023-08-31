.data
array:  .word 2, 4, 6, 8, 10, 12  # Valores do array
index:  .word 5                    # Índice desejado

.text
.globl main
main:
    la $s0, array                 # Carrega o endereço base do array em $s0
    lw $t0, index                 # Carrega o índice desejado em $t0

    # Cálculo do endereço do elemento no índice desejado
    sll $t0, $t0, 2               # Multiplica o índice por 4 (deslocamento de 2 bits para a esquerda)
    add $t1, $s0, $t0             # $t1 = $s0 + ($t0 * 4)
    lw $t2, ($t1)                 # Carrega o valor no endereço calculado para $t2

    # Agora $t2 contém o valor no índice 5 do array
    # Faça o que for necessário com o valor em $t2

    # Fim do programa
    li $v0, 10                    # Código de saída do programa
    syscall
