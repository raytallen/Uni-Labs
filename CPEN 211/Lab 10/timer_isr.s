            .include	"address_map_arm.s"
            .global TIMER_ISR
            .global TIMER_VAL
TIMER_ISR:  LDR     R3, =CURRENT_PID
            MOV     R4, #1
            STR     R4, [R3]
            LDR     R0, =TIMER_VAL
            LDR     R2, [R0]
            ADD     R2, #1
            STR     R2, [R0]


            // LDR     R1, =LEDR_BASE
            // STR     R2, [R1]
            BX      LR

TIMER_VAL:  .word 0


            .end