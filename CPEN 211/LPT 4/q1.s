function:
    //R1 is n
    //R2 is *a
    //R3 is m
    //R0 is result
    //R5 is numcalls
    STR R4, [sp, #4]
    STR R5, [sp, #8]
    STR R6, [sp, #12]
    STR R7, [sp, #16]

    LDR R1, [sp, #-8]
    LDR R2, [sp, #-4]
    LDR R3, [sp]
    //int result = n-10
    MOV R7, #10
    SUB R0, R1, R7
    //int numcalls = a[0] + 1
    LDR R6, [R2]
    ADD R6, R6, #1
    STR R6, [R2]

    //if n <= 100
    MOV R8, #100
    CMP R1, R8
    BLE recursion

recursion:
    



