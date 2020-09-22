module testfsm;
  reg s, reset, clk;
  reg [2:0] opcode;
  reg [1:0] op;
  reg [15:0] in;

  wire w, loada, loadb, loads, loadc, asel, bsel;
  wire [2:0] nsel;
  wire [1:0] vsel;
  wire [15:0] data;

  stateMachine DUT(s, reset, opcode, op, clk, w, nsel, 
                   write, loada, loadb, loadc, loads, asel, bsel, vsel); 

  initial begin 
    clk = 0; #5; 
     forever begin // rising edge of the clock every 5 ps 
        clk = 1; #5; 
        clk = 0; #5; 
     end 
  end 


  initial begin 

  reset = 1'b1;  //turn reset on to go to state 1
  #10            //wait for clock

  reset = 1'b0;
  opcode = 3'b101; //test ALU case
  op = 2'b00;      //test ADD case
  s = 1'b1;         //exit state 1

  #10         		//should be in state 2 (decoder)
  #10              	//should be in state 3 (load A)
  #10			//should be in state 4 (load B)
  #10			//should be in state 5 (ADD)
  #10			//should be in state 9 (rightReg C)
  #10                   //should be in state 1 (wait)
  op = 2'b01;
  #10         		//should be in state 2 (decoder)
  #10              	//should be in state 3 (load A)
  #10			//should be in state 4 (load B)
  #10			//should be in state 6 (SUB)
  #10			//should be in state 9 (rightReg C)
  #10                   //should be in state 1 (wait)
  op = 2'b10;
  #10         		//should be in state 2 (decoder)
  #10              	//should be in state 3 (load A)
  #10			//should be in state 4 (load B)
  #10			//should be in state 7 (AND)
  #10			//should be in state 9 (rightReg C)
  #10                   //should be in state 1 (wait)
  op = 2'b11;
  #10         		//should be in state 2 (decoder)
  #10              	//should be in state 3 (load A)
  #10			//should be in state 4 (load B)
  #10			//should be in state 8 (NOT)
  #10			//should be in state 9 (rightReg C)
  #10                   //should be in state 1 (wait)
  opcode = 3'b110;
  op = 2'b10;
  #10 			//should be in state 2 (decoder)
  #10			//should be in state 10 (move branch)
  #10			//should be in state 11 (writeReg N)
  #10			//should be in wait state 
  op = 2'b00;
  #10 			//should be in state 2 (decoder)
  #10			//should be in state 10 (move branch)
  #10			//should be in state 12 (load B)
  #10 			//should be in state 13 (ADD (asel = 0))
  #10	 		//should be in state 14 (writeReg D)
  s = 1'b0;
  #100			//should remain in wait state


  $stop;
end 

endmodule  
  
  