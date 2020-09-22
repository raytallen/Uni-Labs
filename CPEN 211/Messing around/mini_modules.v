/* BINARY MULTIPLEXER
  k bits wide
  a1 = 1
  a0 = 0 */
module multiplexer2 (a1, a0, s, b);
    parameter k = 16;
    input [k-1:0] a0, a1; //inputs
    input s; //binary select
    output reg [k-1:0] b;
    //Selects b equal to an a depending on input hot-code
    always @(*) begin
      case(s)
        1'b0: b = a0;
        1'b1: b = a1;
        default: b = {k{1'bx}};
      endcase
    end
endmodule

/* 4 INPUT MULTIPLEXER
    K-bits wide
    One-hot select */
module multiplexer4 (a3, a2, a1, a0, s, b);
  parameter k = 1;
  input [k-1:0] a0, a1, a2, a3; //inputs
  input [3:0] s; //one-hot select
  output reg [k-1:0] b;
  //Selects b equal to an a depending on input hot-code
  always @(*) begin
    case(s)
      4'b0001: b = a0;
      4'b0010: b = a1;
      4'b0100: b = a2;
      4'b1000: b = a3;
      default: b = {k{1'bx}};
    endcase
  end
endmodule

/* 3 INPUT MULTIPLEXER
    K-bits wide
    One-hot select */
module multiplexer3 (a2, a1, a0, s, b);
  parameter k = 1;
  input [k-1:0] a0, a1, a2; //inputs
  input [2:0] s; //one-hot select
  output reg [k-1:0] b;
  //Selects b equal to an a depending on input hot-code
  always @(*) begin
    case(s)
      3'b001: b = a0;
      3'b010: b = a1;
      3'b100: b = a2;
      default: b = {k{1'bx}};
    endcase
  end
endmodule

/* 8 INPUT MULTIPLEXER
    K-bits wide
    One-hot select */
module multiplexer8 (a7, a6, a5, a4, a3, a2, a1, a0, s, b);
  parameter k = 1;
  input [k-1:0] a0, a1, a2, a3, a4, a5, a6, a7; //inputs
  input [7:0] s; //one-hot select
  output reg [k-1:0] b;
  //Selects b equal to an a depending on input hot-code
  always @(*) begin
    case(s)
      8'b00000001: b = a0;
      8'b00000010: b = a1;
      8'b00000100: b = a2;
      8'b00001000: b = a3;
      8'b00010000: b = a4;
      8'b00100000: b = a5;
      8'b01000000: b = a6;
      8'b10000000: b = a7;
      default: b = {k{1'bx}};
    endcase
  end
endmodule

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
// register without load enable

module vDFF(clk, in, out);
  parameter n = 16; //width
  input clk;
  input [n-1:0] in;
  output [n-1:0] out;
  reg [n-1:0] out;
  wire [n-1:0] next_out;

  always @(posedge clk)
    out = next_out;
endmodule

/* BINARY TO ONE-HOT CODE DECODER 
    Converts Binary to a one-hot code
    m = width of binary bus
    n = width of one-hotcode bus
    m <= 2^n  */
module decoder(Binary_in, hotcode_out);
    parameter n = 3;
    parameter m = 8;

    input  [n-1:0] Binary_in;
    output [m-1:0] hotcode_out;

    wire [m-1:0] hotcode_out = 1 << Binary_in;
endmodule

/* SHIFTER 
  Shifts the bits in a 16 bit bus in a direction depending on the 'shift' input*/
module shifter16(in, shift, out);
    input [15:0] in;
    input [1:0] shift;  
    output reg [15:0] out;
    /*
    If shift == 00, nothing get's shifted
    If shift == 01, get's shifted 1 left, right-most bit is 0
    If shift == 10, get's shifted 1 right, right most bit is 0
    If shift == 11, get's shifted 1 right, right most bit privious value is copied
    */
    always @(*) begin
        case(shift)
          2'b00: out = in;
          2'b01: begin
                   out = in<<1;
                   out[0] = 1'b0;
                 end
          2'b10: begin
                   out = in>>1;
                   out[15] = 1'b0;
                 end
          2'b11: begin
                   out = in>>1;
                   out[15] = out[14];
                 end
        endcase
    end
endmodule

/* ALU
    Does arithmetic on two 16 bit input, depending on what ALUop input is*/
module ALU16(Ain, Bin, ALUop, out, status);
  input [15:0] Ain, Bin;
  input [1:0] ALUop;
  output reg [15:0] out;

  wire ovf;

  /*
  If status == 000 no status flags
  If status == 001 zero
  If status == 010 negative
  If status == 100 overflow
  */
  output reg [2:0] status;
  /*
  If ALUop == 00, add inputs
  If ALUop == 01, subtract inputs, CMP instruction
  If ALUop == 10, AND inputs
  If ALUop == 11, NOT b-input
  */
  always @(*) begin
    case(ALUop)
      2'b00: out = Ain + Bin;
      2'b01: out = Ain - Bin;
      2'b10: out = Ain & Bin;
      2'b11: out = ~Bin;
    endcase

    if(ALUop == 2'b01) begin
      if(out == 16'b0) status = 3'b001;
      if(out[15] == 1) status = 3'b010;
      if(Ain ^ Bin) status = 3'b100;
    end
  end
endmodule

// code from Dally section 10.3 - add a+b or subtract a-b, check for overflow
module AddSub(a,b,sub,s,ovf) ;
  parameter n=16;
  input [n-1:0] a, b ;
  input sub ; // subtract if sub=1, otherwise add
  output [n-1:0] s ;
  output ovf ; // 1 if overflow
  wire c1, c2 ; // carry out of last two bits
  wire ovf = c1 ^ c2 ; // overflow if signs don't match
  // add non sign bits
  assign {c1, s[n-2:0]} = a[n-2:0] + (b[n-2:0] ^ {n-1{sub}}) + sub ;
  // add sign bits
  assign {c2, s[n-1]} = a[n-1] + (b[n-1] ^ sub) + c1 ;
endmodule

module ALU_TB();
  reg[15:0] Ain, Bin;
  reg [1:0] ALUop;
  wire [15:0] out;
  wire [2:0] status;
  ALU16 dut(Ain, Bin, ALUop, out, status);
  initial begin
    Ain = 1;
    Bin = 0;
    ALUop = 0;
    #5;
    Ain = 0;
    Bin = 0;
    ALUop = 0;
    #5;
    Ain = 16'b1111111111111111;
    Bin = 16'b0000111111111111;
    ALUop = 2'b01;
    #5;
  end
endmodule