// register with load enable
module vDFFE(clk, en, in, out); 
  parameter n = 16; // width 
  input clk, en; 
  input [n-1:0] in; 
  output [n-1:0] out; 
  reg [n-1:0] out; 
  wire [n-1:0] next_out; 
  
  assign next_out = en ? in : out; 
  
  always @(posedge clk) 
    out = next_out; 
endmodule 

// example code given in slide set 6
module DEC(a, b);
  parameter n=3;
  parameter m=8;
  
  input [n-1:0] a;
  output [m-1:0] b;
  
  wire [m-1:0] b = 1 << a;
endmodule

// two input k-wide mux with one hot select
// example taken from slide set 6
module MUX2(a1,a0,s,b);
  parameter k = 16;
  input [k-1:0] a0, a1 ;
  input [1:0] s;
  output [k-1:0] b;
  wire [k-1:0] b =  ({k{s[0]}} & a0) | 
                    ({k{s[1]}} & a1);
endmodule


// eight input k wide mux with one hot select
module MUX8(a7,a6,a5,a4,a3,a2,a1,a0,s,b);
  parameter k = 16;
  input [k-1:0] a0, a1, a2, a3, a4, a5, a6, a7 ;
  input [7:0] s;
  output [k-1:0] b;
  wire [k-1:0] b =  ({k{s[0]}} & a0) | 
                    ({k{s[1]}} & a1) |
                    ({k{s[2]}} & a2) | 
                    ({k{s[3]}} & a3) | 
                    ({k{s[4]}} & a4) | 
                    ({k{s[5]}} & a5) | 
                    ({k{s[6]}} & a6) | 
                    ({k{s[7]}} & a7);              
endmodule

// three input k wide mux with one hot select 
module MUX3(a2, a1, a0, s, b); 
  parameter k = 16; 
  input [k-1:0] a0, a1, a2; 
  input [2:0] s; 
  output [k-1:0] b; 
  wire [k-1:0] b = ({k{s[0]}} & a0) | 
                    ({k{s[1]}} & a1) |
                    ({k{s[2]}} & a2);
endmodule 


// four input k wide mux with one hot select 
module MUX4(a3, a2, a1, a0, s, b); 
  parameter k = 16; 
  input [k-1:0] a0, a1, a2, a3; 
  input [3:0] s; 
  output [k-1:0] b; 
  wire [k-1:0] b = ({k{s[0]}} & a0) | 
                    ({k{s[1]}} & a1) |
                    ({k{s[2]}} & a2) | 
                    ({k{s[3]}} & a3);
endmodule 


// register file module 
module registerFile (data_in, writenum, write, readnum, clk, data_out); 
  input [15:0] data_in; 
  input [2:0] writenum; 
  input write; 
  input [2:0] readnum; 
  input clk; 
  output [15:0] data_out; 
  
  wire [15:0] R0; 
  wire [15:0] R1; 
  wire [15:0] R2; 
  wire [15:0] R3; 
  wire [15:0] R4; 
  wire [15:0] R5; 
  wire [15:0] R6; 
  wire [15:0] R7; 
  wire [7:0] writeout; 
  wire [7:0] readout; 
  
  // decoder module instantiations
  DEC writenum_dec(writenum, writeout); 
  DEC readnum_dec(readnum, readout); 
  
  // register module instantiations for 8 registers 
  vDFFE Reg0(clk, writeout[0] & write, data_in, R0); 
  vDFFE Reg1(clk, writeout[1] & write, data_in, R1); 
  vDFFE Reg2(clk, writeout[2] & write, data_in, R2); 
  vDFFE Reg3(clk, writeout[3] & write, data_in, R3); 
  vDFFE Reg4(clk, writeout[4] & write, data_in, R4); 
  vDFFE Reg5(clk, writeout[5] & write, data_in, R5); 
  vDFFE Reg6(clk, writeout[6] & write, data_in, R6); 
  vDFFE Reg7(clk, writeout[7] & write, data_in, R7); 
  
  // multiplexer module instantiations 
  MUX8 regmux(R7, R6, R5, R4, R3, R2, R1, R0, readout, data_out); 
endmodule  
 
  
  
