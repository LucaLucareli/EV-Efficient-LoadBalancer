; ============================================
; Módulo de Gerenciamento de Carga OTIMIZADO
; Foco: menos ciclos + menos consumo
; Arquitetura: RISC-V
; ============================================

.section .data
num_veiculos:   .word 3
soc_base:       .word 80, 20, 50

energia_solar:  .word 50
energia_bat:    .word 20
energia_rede:   .word 30

.section .text
.globl _start

_start:

    ; -------------------------------
    ; ETAPA 1: Cálculo da demanda
    ; -------------------------------

    la t0, soc_base
    lw t1, num_veiculos

    li t2, 0           ; demanda total
    li t3, 100

calc_loop:
    lw t4, 0(t0)
    sub t5, t3, t4
    add t2, t2, t5

    addi t0, t0, 4
    addi t1, t1, -1
    bnez t1, calc_loop

    ; -------------------------------
    ; ETAPA 2: Carregamento único (menos acesso à RAM)
    ; -------------------------------

    lw t0, energia_solar
    lw t1, energia_bat
    lw t3, energia_rede

    add t4, t0, t1     ; solar + bateria
    add t5, t4, t3     ; total disponível

    ; -------------------------------
    ; ETAPA 3: Decisão com menos branches
    ; -------------------------------

    blt t0, t2, use_mix
    li a0, 1           ; modo solar
    j end

use_mix:
    blt t4, t2, use_grid
    li a0, 2           ; solar + bateria
    j end

use_grid:
    blt t5, t2, no_energy
    li a0, 3           ; rede elétrica
    j end

no_energy:
    li a0, 0

end:

    ; -------------------------------
    ; ETAPA 4: modo economia de energia
    ; -------------------------------

sleep:
    wfi                ; espera interrupção (baixo consumo)
    j sleep
