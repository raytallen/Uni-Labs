my_array_1: .double 1.1
            .double 1.2
            .double 1.3
            .double 2.1
            .double 2.2
            .double 2.3
            .double 3.1
            .double 3.2
            .double 3.3

my_array_2: .double 1.1
            .double 1.2
            .double 1.3
            .double 2.1
            .double 2.2
            .double 2.3
            .double 3.1
            .double 3.2
            .double 3.3

my_array_3: .double 0.0

num:        .double 0.0

arraysize:  .word 3

zero: 		.double 0.0

.global _start
_start:

    SUB sp, sp, #28
    STR R4, [sp, #0]
    STR R5, [sp, #4]
    STR R6, [sp, #8]
    STR R7, [sp, #16]
    STR R8, [sp, #20]
    STR R9, [sp, #24]
    STR R10, [sp, #28]
    MOV R0, #0				//row position, starts at index 0
    MOV R1, #0				//column position starts at index 0
    LDR R2, =my_array_1
    LDR R3, =my_array_2
    LDR R4, =my_array_3
    LDR R6, =arraysize
    MOV R7, #0
    LDR R9, =my_array_1
    MOV R11, #0
    LDR R12, =num


	

next_element:
	MOV R11, #0			// reset r11
	MOV R10, R3

calc_position:
	ADD R11, R11, #1
   	.word 0xED920B00 		// flpt load coproc reg 0 from adress in r2   
  	.word 0xED931B00 		// flpt load coproc reg 1 from adress in r3
  	.word 0xED9C3B00 		// flpt load coproc reg 3 from adress in r12
  	.word 0xEE202B01		// fl multiply coproc registers r2, r1 , r0
    	.word 0xEE322B03		// fl add coproc reg r2,r2,r3
    	.word 0xED9C2B00		// fl store from coproc reg 2 into adress in r12
    	ADD R2, R2, #8			// move rows over 1 for array 1
   	LDR R7, [R6]			// load array size
   	MOV R8, #8			
    	MUL R7, R7, R8			// move column down 1 
    	ADD R3, R7, R3			
	LDR R7, [R6]			// load array size
	CMP R11, R7
	BLE calc_position		// if (i=<arraysize) 
	.word 0xED942B00		// fl store from coproc reg 2 into adress in r4
	LDR R9, =zero
	.word 0xED993B00		// fl load from R9 to coproc reg 3
	ADD R4, R4, #8			// move r4 to next position
	MOV R3, R10



move_row_col:
	LDR R7, [R6]			
	CMP R1, R7			// compare column position with array size
	BLT increment_col		// if (i<arraysize) increment columns 
	MOV R1, #0			// reset columns
	MOV R3, R10               	// reset columns address
	CMP R0, R7			// check if done
	BGE done
	ADD R0, R0, #1 			// increment rows
	MOV R8, #8			
	MUL R7, R7, R8
	ADD R2, R2, R7			// move rows down
	B next_element	

increment_col:
	ADD R3, R3, #8
	B next_element	
	


done:	
	B done				// finished computation



//move_column:
//	LDR R7, [R6]
//	CMP R1, R7
//	BLT move_column1
//	MOV R1, #0
//	ADD R0, R0, #1
		

//move_column1:
//	ADD R1, R1, #1
		
    


.end
