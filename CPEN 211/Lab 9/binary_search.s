.global binary_search
       binary_search:	ldr r12,[sp, #-4]	// loads numcalls into r12
       			add r12, #1		// numcalls++
			
			sub sp,sp, #12		// make room for numcalls, r4, link register on the stack
			str lr,[sp, #4]		// store link register
			str r4,[sp, #0]		// store r4 onto the stack

						// before sp -> ________
						// 		numcalls

						// after 	________
						//	        numcalls
						// 		r4 copy
						//        sp ->	r5 copy

			sub r4,r3,r2		// endindex - startindex
			lsr r4,r4,#1		// division by 2
			add r4,r2,r4		// middleindex = startIndex + (endIndex - startIndex)/2

			str r12,[sp, #-4] 	// stores numcalls++ into the stack (below sp)

			cmp r2,r3		// compares startindex with endindex

			ble test_middle		// if ( startindex > endindex ) return -1
			mov r0, #-1		// prep for return of condition fails 
			mov pc,lr		// return control to caller

	test_middle:	ldr r12,[r0, r4, lsl#2]	// r12 = numbers[middleindex] 
			cmp r12,r1		// compare numbers[middleindex] with key
			bne search_l		// if ( numbers[middleIndex] == key ) keyIndex = middleIndex
			ldr r3,[sp, #-4]	// r3 = numcalls
			rsb r3,r3, #0		// r3 = 0 - r3
			str r3,[r0, r4, lsl#2]	// numbers[ middleIndex ] = -numcalls
			mov r0,r4		// keyindex = middleindex
			mov r1,r4		// r1 = middleindex
			ldr r4,[sp, #0]		// restore r4
			b return_result		// go to return branch with the found key
	
	search_l:	ble search_r		// if ( numbers[middleIndex] > key ) search smaller section
			mov r3,r4
			sub r3,r3, #1		// endindex = middleindex-1
			bl binary_search	// how deep does the rabbit hole go?
			ldr lr,[sp, #4]
			ldr r4,[sp, #0]		// restore r4
			add sp,sp, #12		// pop 3 items off stack
			b return_result		// go to return branch with result

	search_r:	mov r2,r4
			add r2, #1		// startindex = middleindex+1 
			bl binary_search	// pretty deep apparently
			ldr lr,[sp, #4]
			ldr r4,[sp, #0]		// restore r4
			add sp,sp, #12		// pop 3 items off the stack
			b return_result		// go to return branch with result
	
	return_result:	mov pc,lr		// return control to caller

	


			



				
			




       			

       			
