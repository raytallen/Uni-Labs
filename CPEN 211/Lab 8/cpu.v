// cpu module 
module cpu(clk,reset,N,V,Z,m_cmd,m_addr,read_data,write_data, halt);
  input clk, reset;
  input [15:0] read_data;
  output [15:0] write_data;
  output N, V, Z;
  output [1:0] m_cmd;
  output [8:0] m_addr;
	output halt;
 
  
  wire [15:0] instregout, sximm5, sximm8;  
  wire [2:0] opcode, readnum, writenum, nsel;  
  wire [1:0] ALUop, op, shift; 
  wire write, loada, loadb, loadc, loads, asel, bsel, load_pc, addr_sel, load_ir, load_addr, PC_add; 
  wire [1:0] vsel, m_cmd, addr_sel_out, pre_pc_sel;  
	wire [15:0] data_out;
	
	/*
	status[0] is Z zero flag
	status[1] is N negative flag
	status[2] is V overflow flag
	*/
  wire [2:0] statusout, reset_pc, cond; 
  wire [15:0] out; 
  wire [8:0] next_pc, PC, post_PC;
  wire [8:0] dataAddr_out;

	assign Z = statusout[0];
	assign N = statusout[1];
	assign V = statusout[2];
                 
  
  // write_data output is the out output of the datapath module
  assign write_data = out; 

  // instruction register 
  vDFFE #(16) instruction(clk, load_ir, read_data, instregout);   
  // instruction decoder block
  instructionDecoder insDec(instregout, nsel, ALUop, sximm5, sximm8, shift, readnum, writenum, opcode, op, cond); 
  // state machine 
  stateMachine FSM(reset, opcode, op, cond, statusout, clk, nsel, write, loada, loadb, loadc, loads, asel, bsel, vsel, reset_pc, load_pc, addr_sel, m_cmd, load_ir, load_addr, PC_add, halt, pre_pc_sel);
  // datapath 
  datapath DP(clk, readnum, vsel, loada, loadb, shift, asel, bsel, ALUop, loadc, loads, 
                writenum, write, read_data, sximm8, sximm5, PC, statusout, out, data_out);
  // register for program counter 
  vDFFE #(9) ProgramCounter(clk, load_pc, next_pc, PC);
  // multiplexer for program counter 
	MUX2 #(9) PRE_PC_MUX(data_out[8:0], PC, pre_pc_sel, post_PC);
	//CHANGE THIS TO MUX 3 ONEHOTCODE
  MUX3 #(9) PC_MUX(9'b000000000, post_PC + PC_add, post_PC + PC_add + sximm8[8:0], reset_pc, next_pc);

  DEC #(1,2) addr_selOneHot(addr_sel, addr_sel_out);
  // multiplexer for address selector 
  MUX2 #(9) ADDR_MUX(PC, dataAddr_out, addr_sel_out, m_addr);
  // register for data address
  vDFFE #(9) dataAddr(clk, load_addr, out[8:0], dataAddr_out);
  
 

 endmodule

// insttruction decoder module 
module instructionDecoder(instregout, nsel, ALUop, sximm5, sximm8, shift, readnum, writenum, opcode, op, cond); 
  input [15:0] instregout; 
  input [2:0] nsel; 
  output [1:0] ALUop; 
  output [15:0] sximm5; 
  output [15:0] sximm8; 
  output [1:0] shift; 
  output [2:0] readnum, writenum;  
  output [2:0] opcode; 
  output [1:0] op; 
	output [2:0] cond;

  wire [2:0] Rn, Rd, Rm, R; 
  wire [4:0] imm5; 
  wire [7:0] imm8;  

  assign opcode = instregout[15:13];  		//assign value vased off figure in lab manual
  assign op = instregout[12:11]; 
  assign ALUop = instregout[12:11]; 
  assign imm5 = instregout[4:0];  
  assign imm8 = instregout[7:0]; 
  assign shift = instregout[4:3]; 
  assign Rn = instregout[10:8]; 
  assign Rd = instregout[7:5]; 
  assign Rm = instregout[2:0]; 
	assign cond = instregout[10:8];

  // multiplexer selects one of Rn, Rd, or Rm 
  MUX3 #(3) Rmux(Rm, Rd, Rn, nsel, R); 
  assign readnum = R; // readnum is output of multiplexer
  assign writenum = R; // writenum is output of multiplexer 

  //assign sximm5 = {11{imm5[4]}, imm5[4:0]}; 
  //assign sximm8 = {8{imm5[7]}, imm5[7:0]}; 
  assign sximm5 = {imm5[4],imm5[4],imm5[4],imm5[4],imm5[4],imm5[4],imm5[4],imm5[4],imm5[4],imm5[4],imm5[4],imm5[4:0]};
  assign sximm8 = {imm8[7],imm8[7],imm8[7],imm8[7],imm8[7],imm8[7],imm8[7],imm8[7],imm8[7:0]};
endmodule 

`define s1 6'b000000			//RESET
`define s2 6'b000001			//DECODE
`define s3 6'b000010
`define s5 6'b000100
`define s4 6'b000011
`define s6 6'b000101
`define s7 6'b000110
`define s8 6'b000111
`define s9 6'b001000
`define s10 6'b001001
`define s11 6'b001010
`define s12 6'b001011
`define s13 6'b001100
`define s14 6'b001101
`define s15 6'b001110		//IF1
`define s16 6'b001111		//IF2
`define s17 6'b010000		//UpdatePC
`define s18 6'b010001	
`define s19 6'b010010 
`define s20 6'b010011
`define s21 6'b010100
`define s22 6'b010101 
`define s23 6'b010111 //HALT state
`define s24 6'b011000
`define s25 6'b011001
`define s26 6'b011010
`define PC1 6'b011011
`define PCsximm8 6'b011100
`define PC1_load 6'b011101
`define PCsximm8_load 6'b011110
`define BL 6'b011111
`define BL_load 6'b100000
`define BX 6'b100001
`define BX_load 6'b100010


// state machine module 
module stateMachine(reset, opcode, op, cond, statusout, clk, nsel, write, loada, loadb, loadc, loads, asel, bsel, vsel, reset_pc, load_pc, addr_sel, m_cmd, load_ir, load_addr, PC_add, halt, pre_pc_sel); 
  parameter n = 3; // width of nsel signal 
  input reset;  
  input [2:0] opcode, cond, statusout; 
  input [1:0] op; 
  input clk; 
 
  output [n-1:0] nsel; 
  output write, loada, loadb, loadc, loads, asel, bsel, load_pc, addr_sel, load_ir, load_addr, PC_add, halt;
  output [1:0] vsel, m_cmd; 
	output reg [2:0] reset_pc;
	output reg [1:0] pre_pc_sel;
 
  reg [5:0] next_state; 
  reg [n-1:0] nsel; 
  reg write, loada, loadb, loadc, loads, asel, bsel, load_pc, addr_sel, load_ir, load_addr, PC_add, halt;
  reg [1:0] vsel, m_cmd; 
  wire [5:0] next_state_reset, p;

  vDFF #(6) state(clk, next_state_reset, p); 
  assign next_state_reset = reset ? `s1 : next_state;
  
  always@(*) begin 
	case(p) 
	  `s1: next_state = `s15; // goes to IF1 state from reset state 
	  `s15: next_state = `s16;  //goes to IF2
	  `s16: next_state = `s17;  //goes to UpdatePC
	  `s17: next_state = `s2;   //moves to decode state

 	  `s2: 
		begin
		 	if (opcode == 3'b110) // decode state: move or ALU 
				next_state = `s10;  // Move branch	

	    else if (opcode == 3'b101)
				next_state = `s3; // getA state: first state of ALU branch 

	    else if (opcode == 3'b011 | opcode == 3'b100) // opcode is 011 or 100 
				next_state = `s18; 

	    else if (opcode == 3'b111)
				next_state = `s23;

			else if (opcode == 3'b001)
				begin
					case(cond)
						3'b000: next_state = `PCsximm8;
						3'b001: begin
							if(statusout[0] == 1'b1) next_state = `PCsximm8;
							else next_state = `PC1; 
						end
						3'b010: begin
							if(statusout[0] == 1'b0) next_state = `PCsximm8;
							else next_state = `PC1;
						end
						3'b011: begin
							if(statusout[1] != statusout[2]) next_state = `PCsximm8;
							else next_state = `PC1;
						end
						3'b100: begin
							if((statusout[1] != statusout[2]) | (statusout[0] == 1'b1)) next_state = `PCsximm8;
							else next_state = `PC1;
						end
						default: next_state = 6'bxxxxxx;
					endcase
				end

			else if (opcode == 3'b010)
				case(op)
					2'b00: next_state = `BX;
					2'b11: next_state = `BL;
					default: next_state = 6'bxxxxxx;	
				endcase
				
	    else 
				next_state = 6'bxxxxxx;
		end 

		`PCsximm8: next_state = `PCsximm8_load;
		`PC1: next_state = `PC1_load;

		`PCsximm8_load: next_state = `s15;
		`PC1_load: next_state = `s15;

		`BL: next_state = `BL_load;
		`BL_load: next_state = `PCsximm8;

		`BX: next_state = `BX_load;
		`BX_load: next_state = `s15;

	  `s10: if(op == 2'b10)
		next_state = `s11; //writeReg state
		else if (op == 2'b00)
		next_state = `s12; //loadb state
                else 
                next_state = 6'bxxxxxx;
	  `s12: next_state = `s13; //add state (asel = 0)
	  `s13: next_state = `s14; //writeReg state
	  `s14: next_state = `s15; //end of mov (op == 00) branch
	  `s11: next_state = `s15; //end of mov (op == 10) branch
	  `s3: next_state = `s4; // getB state 
	  `s4: if (op == 2'b00) 
		next_state = `s5; // add state
	       else if (op == 2'b01)  
		next_state = `s6; // subtraction state 
	       else if (op == 2'b10) 
		next_state = `s7; // AND state 
	       else if (op == 2'b11) 
		next_state = `s8; // NOT state 
	       else 
		next_state = 6'bxxxxxx; 
	  `s5: next_state = `s9; // writeReg state: all ALU operations go to state 10 
	  `s6: next_state = `s15; //Go from CMP to IF1
	  `s7: next_state = `s9; //if any other computation, write to C
	  `s8: next_state = `s9;  
	  `s9: next_state = `s15; //after writing calculation, moves to IF1 state 
	  `s18: next_state = `s19; // unconditionally read Rn and add with sximm5 
	  `s19: next_state = `s20; 
	  `s20: if (opcode == 3'b011) // LDR instruction 
		  next_state = `s21; 
		else if (opcode == 3'b100) // STR instruction 
		  next_state = `s24; 
		else 
		  next_state = 6'bxxxxxx;
	  `s21: next_state = `s22; // goes to IF1 state  
	  `s23: next_state = `s23; // stay in decode (halt) state until reset is 1
	  `s24: next_state = `s25;
	  `s22: next_state = `s15;
	  `s25: next_state = `s26;
	  `s26: next_state = `s15;


	  default: next_state = 6'bxxxxxx; 
	endcase
	case (p) 
	  `s1: begin // wait state
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b100; load_pc = 1'b1; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//in state one we want to reset everything just in case
	  end 

	  `s2: begin // decode state  
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//in state 2 we are just checking for opcode so no outputs necessary
	  end

	  `s10: begin // start of mov branch 
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//start of mov branch and checks for op - no outputs
	  end 

	  `s3: begin // getA state  
	    nsel = 3'b001;  write = 1'b0; 
	    loada = 1'b1; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  	//we need to loada to be on to enable loadA register
		//nsel is 3'b001 to choose Rn to make readnum be the value of the register we want to read from for loadA
	  end 

	  `s4: begin // getB state 
	    nsel = 3'b100;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b1; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  	//need loadb to be on to enable loadB register
		//nsel is 3'b100 to select Rm to set readnum to be the value of the register we want to read from for loadB
	  end 

	  `s5: begin // add state 
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b1; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  	//calculation state - loads/loadc on
	  end 

	  `s6: begin // subtraction state  
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b1; loads = 1'b1; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  	//calculation state - loads/loadc on
	
	  end 
	  `s7: begin // AND state  
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b1; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  	//calculation state - loads/loadc on
	  end 

	  `s8: begin // NOT state
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b1; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  	//calculation state - loads/loadc on
	  end 

	  `s9: begin // writeReg C
	    nsel = 3'b010;  write = 1'b1; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//nsel is set to Rd to set writenum to the register value we want to set our calculated value to
	  end

	  `s11: begin //writeReg  
	    nsel = 3'b001;  write = 1'b1; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b10;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//set nsel to 001 so the writenum is set to Rn so immediate value inputted goes the register that we input
	  end

	  `s12: begin //loadB state in mov branch 
	    nsel = 3'b100;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b1; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//set nsel to 100 so writenum gets the value of Rm so loadB reads from the register indicated with Rm
		
	  end
	  `s13: begin //add state (asel = 1)
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b1; loads = 1'b0; asel = 1'b1; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//calculation state - loada/loadc on
		//set asel to 1 so we add 0 to B so we can output B by itself
		
	  end 
	  `s14: begin //writeReg state in mov branch
	    nsel = 3'b010;  write = 1'b1; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		//nsel set to Rd so the output gets written to register indicated by Rd (write = value of Rd)
	  end

	   `s15: begin // IF1 state 
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b1; m_cmd = 2'b01; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 
		//Read from address and turn on addr_sel to one to select PC
	  
	  `s16: begin // IF2 state 
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b1; m_cmd = 2'b01; load_ir = 1'b1; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 
		//load the instruction register with the instruction in the memory location given by program counter
	  
	  `s17: begin // UpdatePC state 
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b1; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b1; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 
		//loadpc is on to update the program counter

	  `s18: begin // load Rn into register A  
	    nsel = 3'b001;  write = 1'b0; 
	    loada = 1'b1; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0;
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
                //nsel is 3'b001 to choose Rn to make readnum be the value of the register we want to read from for loadA
	  end 

          `s19: begin // ADD contents of register A with Bsel set to select sximm5
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b1; loads = 1'b0; asel = 1'b0; bsel = 1'b1; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 

          `s20: begin // loads data address register 
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b1; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 
		//takes the memory location given from the addition of sxim5 and Rn and loads it into the address register

          `s21: begin // m_cmd for reading 
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b01; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end
		//read the memory location specified from the address register previously loaded


	   `s22: begin // writing for load 
	    nsel = 3'b010;  write = 1'b1; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b11;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b01; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 	
		//writes the value stored in the memory location into the specified register Rn


	  `s23: begin // HALT state
	    nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b1; pre_pc_sel = 2'b01;
	  end 
		//state that leads to no where -- program has to be reset to exit this state


	  `s24: begin // LOAD B
	    nsel = 3'b010;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b1; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 
		//loads value from register Rd into regiseter B

	  `s25: begin // ADD VALUE IN LOADB TO 0
	    nsel = 3'b001;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b1; loads = 1'b1; asel = 1'b1; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 
		//outputs loadB to the output by adding it to 0

	  `s26: begin // writing Rn with value in memory
	    nsel = 3'b010;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b10; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01; 
	  end 
		//takes the value output from load B and writes it into the memory location stored in the address register

		`PCsximm8: begin
			nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b001; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		end

		`PC1: begin
			nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		end

		`PCsximm8_load: begin
			nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b001; load_pc = 1'b1; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		end

		`PC1_load: begin
			nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b1; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		end

		`BL: begin
			nsel = 3'b001;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b01;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		end

		`BL_load: begin
			nsel = 3'b001;  write = 1'b1; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b01;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
		end

		`BX: begin
			nsel = 3'b010;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b10;
		end

		`BX_load: begin
			nsel = 3'b010;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'bxx;
			reset_pc = 3'b010; load_pc = 1'b1; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b10;
		end

	  default: begin 
      nsel = 3'b000;  write = 1'b0; 
	    loada = 1'b0; loadb = 1'b0; loadc = 1'b0; loads = 1'b0; asel = 1'b0; bsel = 1'b0; vsel = 2'b00;
			reset_pc = 3'b010; load_pc = 1'b0; addr_sel = 1'b0; m_cmd = 2'b00; load_ir = 1'b0; load_addr = 1'b0; 
			PC_add = 1'b0; halt = 1'b0; pre_pc_sel = 2'b01;
	  end 
		//default case

		
	 endcase 
   end
   
endmodule
  
