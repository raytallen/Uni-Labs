//file copied from altera generic interrups interrupt_example.s 			
				.include	"address_map_arm.s"
				.include	"interrupt_ID.s"

/* ********************************************************************************
 * This program demonstrates use of interrupts with assembly language code. 
 * The program responds to interrupts from the pushbutton KEY port in the FPGA.
 *
 * The interrupt service routine for the pushbutton KEYs indicates which KEY has 
 * been pressed on the HEX0 display.
 ********************************************************************************/
				.gloabl CURRENT_PID
				.section .vectors, "ax"

				B 			_start					// reset vector
				B 			SERVICE_UND				// undefined instruction vector
				B 			SERVICE_SVC				// software interrrupt vector
				B 			SERVICE_ABT_INST		// aborted prefetch vector
				B 			SERVICE_ABT_DATA		// aborted data vector
				.word 	0							// unused vector
				B 			SERVICE_IRQ				// IRQ interrupt vector
				B 			SERVICE_FIQ				// FIQ interrupt vector

				.text
				.global	_start
_start:		
				/* Set up stack pointers for IRQ and SVC processor modes */
				MOV		R1, #0b11010010					// interrupts masked, MODE = IRQ
				MSR		CPSR_c, R1						// change to IRQ mode
				LDR		SP, =A9_ONCHIP_END - 3			// set IRQ stack to top of A9 onchip memory

				/* Change to SVC (supervisor) mode with interrupts disabled */
				MOV		R1, #0b11010011					// interrupts masked, MODE = SVC
				MSR		CPSR, R1						// change to supervisor mode
				LDR		SP, =DDR_END - 3				// set SVC stack to top of DDR3 memory

				BL			CONFIG_GIC					// configure the ARM generic interrupt controller

				// write to the pushbutton KEY interrupt mask register
				LDR		R0, =KEY_BASE					// pushbutton KEY base address
				MOV		R1, #0xF						// set interrupt mask bits
				STR		R1, [R0, #0x8]					// interrupt mask register is (base + 8)

				// enable IRQ interrupts in the processor
				MOV		R0, #0b01010011					// IRQ unmasked, MODE = SVC
				MSR		CPSR_c, R0
				LDR		R1, =0x61A80					// move 40000 into R1
				LDR		R0, =MPCORE_PRIV_TIMER
				STR		R1, [R0]						// load R1 into load value
				LDR		R1, =0xFFFF
				STR		R1, [R0, #0x8]					// store prescaler 255 into control for timer and set control bits A,E to 1
					
				// enable JTAG interrupts
				LDR		R0, =0xFF201004
				LDR		R1, [R0]
				ORR		R1, #1
				LDR		R2, =0xFFFFFFFD
				AND		R1, R2
				STR		R1, [R0]
				
				
				
IDLE:				
				LDR		R0, =CHAR_FLAG
				LDR		R1, [R0]
				CMP		R1, #1
				BNE		IDLE
				LDR		R1, =CHAR_BUFFER
				LDR 	R0, [R1]
				BL		PUT_JTAG
				LDR		R0, =CHAR_FLAG
				MOV		R1, #0
				STR		R1, [R0]
				
				B 		IDLE									// main program simply idles

PROC1:
				MOV		R1, #0
				LDR		R2, =0xBEBC200
				ADD		R1, R1, #1
				LDR		R3, =LEDR_BASE
				STR		R1, [R3]
				MOV		R0, #0
LED_LOOP:			
				ADD		R0, R0, #1
				CMP		R0, R2
				BGE		PROC1
				B		LED_LOOP

CURRENT_PID:	.word 0

PD_ARRAY: 	.fill 17,4,0xDEADBEEF
			.fill 13,4,0xDEADBEE1
			.word 0x3F000000 // SP
			.word 0 // LR
			.word PROC1+4 // PC
			.word 0x53 // CPSR (0x53 means IRQ enabled, mode = SVC)


/* Define the exception service routines */

/*--- Undefined instructions --------------------------------------------------*/
SERVICE_UND:
    			B SERVICE_UND 
 
/*--- Software interrupts -----------------------------------------------------*/
SERVICE_SVC:			
    			B SERVICE_SVC 

/*--- Aborted data reads ------------------------------------------------------*/
SERVICE_ABT_DATA:
    			B SERVICE_ABT_DATA 

/*--- Aborted instruction fetch -----------------------------------------------*/
SERVICE_ABT_INST:
    			B SERVICE_ABT_INST 
 
/*--- IRQ ---------------------------------------------------------------------*/
SERVICE_IRQ:
    			PUSH		{R0-R7, LR}
    
    			/* Read the ICCIAR from the CPU interface */
    			LDR		R4, =MPCORE_GIC_CPUIF
    			LDR		R5, [R4, #ICCIAR]				// read from ICCIAR
				CMP 	R5, #29
				BNE		FPGA_IRQ1_HANDLER				//If R5 != 29, branch to FPGA_IRQ1_HANDLER
				BL		TIMER_ISR						//Else continue
				B		EXIT_IRQ


FPGA_IRQ1_HANDLER:
				CMP		R5, #80
				BNE		FPGA_IRQ2_HANDLER
				BL		JTAG_ISR
				B		EXIT_IRQ

FPGA_IRQ2_HANDLER:
    			CMP		R5, #KEYS_IRQ

UNEXPECTED:		BNE		UNEXPECTED    					// if not recognized, stop here
    
    			BL		KEY_ISR
EXIT_IRQ:
    			/* Write to the End of Interrupt Register (ICCEOIR) */
    			STR		R5, [R4, #ICCEOIR]			// write to ICCEOIR
    
    			POP		{R0-R7, LR}
    			SUBS		PC, LR, #4

/*--- FIQ ---------------------------------------------------------------------*/
SERVICE_FIQ:
    			B			SERVICE_FIQ 



PUT_JTAG:		LDR 	R1, =0xFF201000 		// JTAG UART base address
				LDR 	R2, [R1, #4] 			// read the JTAG UART control register
				LDR 	R3, =0xFFFF
				ANDS 	R2, R2, R3 				// check for write space
				BEQ 	END_PUT 				// if no space, ignore the character
				STR 	R0, [R1] 				// send the character
END_PUT:		BX 		LR
				
				
				.end   

