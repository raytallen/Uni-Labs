module lab8_top(KEY, SW, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, CLOCK_50);
	input [3:0] KEY;
	input [9:0] SW;
  input CLOCK_50;
	output [9:0] LEDR;
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	
	
	wire msel, cmp1_out, cmp3_out, SWdriverout, LEDdriverout; 
	wire [7:0] write_address; 
	wire [8:0] m_addr;
	wire [15:0] write_data, read_data, dout; 
	wire [1:0] m_cmd;
  wire halt;

	//module instantiation for CPU and RAM
	cpu CPU(CLOCK_50,~KEY[1],N,V,Z,m_cmd,m_addr,read_data,write_data, halt);
	RAM MEM(CLOCK_50,m_addr[7:0],m_addr[7:0],(cmp3_out & msel),write_data,dout);
	
	EqComp #(2) cmp1(m_cmd, 2'b01, cmp1_out); // read comparator 
	EqComp #(1) cmp2(1'b0, m_addr[8:8], msel); // valid address comparator 
	EqComp #(2) cmp3(m_cmd, 2'b10, cmp3_out); // write comparator 
	
	assign read_data = (msel & cmp1_out) ? dout : 16'bzzzzzzzzzzzzzzzz;

	// module instantiations for stage 3 (input from switcuhes and output to LEDs) 
	SWdriver SWtristate(m_cmd, m_addr, SWdriverout); 
	LEDdriver LEDtristate(m_cmd, m_addr, LEDdriverout);

	// dout comes from switches when enable is on 
	assign read_data = SWdriverout ? {{8{SW[7]}},SW[7:0]} : 16'bzzzzzzzzzzzzzzzz;

	// register with load enable module instantiation to write to LEDs if enable is on 
	vDFFE #(8) LEDreg(CLOCK_50, LEDdriverout, write_data[7:0], LEDR[7:0]);   
	// assign status flags 
 /* assign HEX5[0] = ~Z;
  assign HEX5[6] = ~N;
  assign HEX5[3] = ~V;

  sseg H0(dout[3:0],   HEX0);
  sseg H1(dout[7:4],   HEX1);
  sseg H2(dout[11:8],  HEX2);
  sseg H3(dout[15:12], HEX3);
  assign HEX4 = 7'b1111111;
  assign {HEX5[2:1],HEX5[5:4]} = 4'b1111; // disabled*/
  assign LEDR[8] = halt;

endmodule

// LDR from switches module 
module SWdriver(m_cmd, m_addr, SWdriverout); 
	input [1:0] m_cmd; 
	input [8:0] m_addr; 
	output SWdriverout; 

	wire cmp4out;
	
	EqComp #(9) cmp4(9'h140, m_addr, cmp4out); // compare if m_addr is address 140 (hexidecimal)
	assign SWdriverout = cmp4out & (m_cmd == 2'b01); // enable tristate driver if m_addr is 9'h140 and m_cmd is for reading
endmodule 

// STR from LEDs module 
module LEDdriver(m_cmd, m_addr, LEDdriverout); 
	input [1:0] m_cmd; 
	input [8:0] m_addr; 
	output LEDdriverout; 

	wire cmp5out; 

	EqComp #(9) cmp5(9'h100, m_addr, cmp5out); // compare if m_addr is address 100 (hexidecimal)
	assign LEDdriverout = cmp5out & (m_cmd == 2'b10); // enable tristate driver if m_addr is 9'h100 and m_cmd is for writing
endmodule 


/*  
module sseg(in,segs);
  input [3:0] in;
  output [6:0] segs;
  reg [6:0] segs; 

  always@(in)
     case(in)

  // NOTE: The code for sseg below is not complete: You can use your code from
  // Lab4 to fill this in or code from someone else's Lab4.  
  //
  // IMPORTANT:  If you *do* use someone else's Lab4 code for the seven
  // segment display you *need* to state the following three things in
  // a file README.txt that you submit with handin along with this code: 
  //
  //   1.  First and last name of student providing code
  //   2.  Student number of student providing code
  //   3.  Date and time that student provided you their code
  //
  // You must also (obviously!) have the other student's permission to use
  // their code.
  //
  // To do otherwise is considered plagiarism.
  //
  // One bit per segment. On the DE1-SoC a HEX segment is illuminated when
  // the input bit is 0. Bits 6543210 correspond to:
  //
  //    0000
  //   5    1
  //   5    1
  //    6666
  //   4    2
  //   4    2
  //    3333
  //
  // Decimal value | Hexadecimal symbol to render on (one) HEX display
  //             0 | 0
  //             1 | 1
  //             2 | 2
  //             3 | 3
  //             4 | 4
  //             5 | 5
  //             6 | 6
  //             7 | 7
  //             8 | 8
  //             9 | 9
  //            10 | A
  //            11 | b
  //            12 | C
  //            13 | d
  //            14 | E
  //            15 | F
	4'b0000: segs = 7'b1000000; // 0
	4'b0001: segs = 7'b1111001; // 1
	4'b0010: segs = 7'b0100100; // 2
	4'b0011: segs = 7'b0110000; // 3
	4'b0100: segs = 7'b0011001; // 4
	4'b0101: segs = 7'b0010010; // 5
	4'b0110: segs = 7'b0000010; // 6
	4'b0111: segs = 7'b1111000; // 7
	4'b1000: segs = 7'b0000000; // 8
	4'b1001: segs = 7'b0011000; // 9 
	4'b1010: segs = 7'b0001000; // A
	4'b1011: segs = 7'b0000011; // b
	4'b1100: segs = 7'b1000110; // C
	4'b1101: segs = 7'b0100001; // d
	4'b1110: segs = 7'b0000110; // E
	4'b1111: segs = 7'b0001110; // F
  	default: segs = 7'b0001110;  // this will output "F" 
    endcase 

endmodule

*/
	