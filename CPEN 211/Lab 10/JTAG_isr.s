                .include	"address_map_arm.s"
                .global JTAG_ISR
                .global CHAR_BUFFER
                .global CHAR_FLAG
JTAG_ISR:       LDR     R0, =0xFF
                LDR     R1, =0xFF201000
                LDR     R2, [R1]
                AND     R0, R2, R0 
                LDR     R3, =CHAR_BUFFER
                STR     R0, [R3]
                LDR     R3, =CHAR_FLAG
                MOV     R2, #1
                STR     R2, [R3]
                BX      LR

            


CHAR_BUFFER:    .word 0
CHAR_FLAG:      .word 0

                .end
