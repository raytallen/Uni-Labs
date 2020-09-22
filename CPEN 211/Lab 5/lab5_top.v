// INSTRUCTIONS:
//
// You can use this file to demo your Lab5 on your DE1-SoC.  You should NOT 
// spend ANY time looking at this file until you have first read the Lab 5 
// handout completely and especially Sections 3 (Lab Procedure) and Section 4
// (which describes the marking scheme).
// 
// If you prefer you can instead use your own version of lab5_top.v.
//
// You MUST submit whichever lab5_top.v you used during your demo with handin.
//
// If you DO use this file you will need to fill in the sseg module as by
// default it will just print F's on HEX0 through HEX3.  Also, the signal 
// names inside the lab5_top module may need to be change to match the 
// ones you use in your own datapath module.

// DE1-SOC INTERFACE SPECIFICATION for lab5_top.v code in this file:
//
// clk input to datpath has rising edge when KEY0 is *pressed* 
//
// LEDR9 is the status register output
//
// HEX3, HEX2, HEX1, HEX0 are wired to datapath_out.
//
// When SW[9] is set to 1, SW[7:0] changes the lower 8 bits of datpath_in.
// (The upper 8-bits are hardwired to zero.) The LEDR[8:0] will show the
// current control inputs (LED "on" means input has logic value of 1).
//
// When SW[9] is set to 0, SW[8:0] changes the control inputs to the datapath
// as listed in the table below.  Note that the datapath has three main
// stages: register read, execute and writeback.  On any given clock cycle,
// you should only need to configure one of these stages so some switches are
// reused.  LEDR[7:0] will show the lower 8-bits of datapath_in (LED "on"
// means corresponding input has logic value of 1).
//
// control signal(s)  switch(es)
// ~~~~~~~~~~~~~~~~~  ~~~~~~~~~       
// <<register read stage>>
//           readnum  SW[3:1]
//             loada  SW[5]
//             loadb  SW[6]
// <<execute stage>>
//             shift  SW[2:1]
//              asel  SW[3]
//              bsel  SW[4]
//             ALUop  SW[6:5]
//             loadc  SW[7]
//             loads  SW[8]
// <<writeback stage>>
//             write  SW[0]      
//          writenum  SW[3:1]
//              vsel  SW[4]

module lab5_top(KEY,SW,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,CLOCK_50);
  input [3:0] KEY;
  input [9:0] SW;
  input CLOCK_50;
  
  output [9:0] LEDR; 
  output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
 
  wire [15:0] datapath_in, datapath_out;
  wire [2:0] readnum, writenum;
  wire [1:0] shift, ALUop;
  wire write, vsel, loada, loadb, asel, bsel, loadc, loads;

  input_iface IN(CLOCK_50, SW, datapath_in, write, vsel, loada, loadb, asel, 
                 bsel, loadc, loads, readnum, writenum, shift, ALUop, LEDR[8:0]);

  datapath DP ( .clk         (~KEY[0]), // recall from Lab 4 that KEY0 is 1 when NOT pushed

                // register operand fetch stage
                .readnum     (readnum),
                .vsel        (vsel),
                .loada       (loada),
                .loadb       (loadb),

                // computation stage (sometimes called "execute")
                .shift       (shift),
                .asel        (asel),
                .bsel        (bsel),
                .ALUop       (ALUop),
                .loadc       (loadc),
                .loads       (loads),

                // set when "writing back" to register file
                .writenum    (writenum),
                .write       (write),  
                .datapath_in (datapath_in),

                // outputs
                .status      (LEDR[9]),
                .datapath_out(datapath_out)
             );

  // fill in sseg to display 4-bits in hexidecimal 0,1,2...9,A,B,C,D,E,F
  sseg H0(datapath_out[3:0],   HEX0);   
  sseg H1(datapath_out[7:4],   HEX1);
  sseg H2(datapath_out[11:8],  HEX2);
  sseg H3(datapath_out[15:12], HEX3);
  assign HEX4 = 7'b0111111;  // disabled
  assign HEX5 = 7'b0111111;  // disabled
endmodule

module datapath(input clk, vsel, loada, loadb, asel, bsel, loadc, loads, status, write, input [1:0] shift, ALUop, input [2:0] readnum, writenum, input [15:0] datapath_in, output [15:0] datapath_out);
    wire [15:0] data_in, data_out, regA_to_muxA, regB_to_shiftB, shiftB_to_muxB, Ain, Bin, ALU1_to_regC;
    wire ALU1_to_regStatus;

    multiplexer2 #(16) firstmux(datapath_in, datapath_out, vsel, data_in);
    register8_file_16bit register(data_in, writenum, write, readnum, clk, data_out);

    register #(16) regA(clk, loada, data_out, regA_to_muxA);
    register #(16) regB(clk, loadb, data_out, regB_to_shiftB);
    shifter16 shiftB(regB_to_shiftB, shift, shiftB_to_muxB);

    multiplexer2 #(16) muxA(16'b0, regA_to_muxA, asel, Ain);
    multiplexer2 #(16) muxB({11'd0,datapath_in[4:0]}, shiftB_to_muxB, bsel, Bin);

    ALU ALU1(Ain, Bin, ALUop, ALU1_to_regC, ALU1_to_regStatus);

    register #(16) regC(clk, loadc, ALU1_to_regC, datapath_out);
    register #(1) regS(clk, loads, regStatus, NULL);
endmodule

module input_iface(clk, SW, datapath_in, write, vsel, loada, loadb, asel, bsel, 
                   loadc, loads, readnum, writenum, shift, ALUop, LEDR);
  input clk;
  input [9:0] SW;
  output [15:0] datapath_in;
  output write, vsel, loada, loadb, asel, bsel, loadc, loads;
  output [2:0] readnum, writenum;
  output [1:0] shift, ALUop;
  output [8:0] LEDR;

  wire sel_sw = SW[9];  

  // When SW[9] is set to 1, SW[7:0] changes the lower 8 bits of datpath_in.
  wire [15:0] datapath_in_next = sel_sw ? {8'b0,SW[7:0]} : datapath_in;
  vDFF #(16) DATA(clk,datapath_in_next,datapath_in);

  // When SW[9] is set to 0, SW[8:0] changes the control inputs 
  wire [8:0] ctrl_sw;
  wire [8:0] ctrl_sw_next = sel_sw ? ctrl_sw : SW[8:0];
  vDFF #(9) CTRL(clk,ctrl_sw_next,ctrl_sw);

  assign {readnum,vsel,loada,loadb,shift,asel,bsel,ALUop,loadc,loads,writenum,write}={
    // register operand fetch stage
    //     readnum       vsel        loada       loadb
           ctrl_sw[3:1], ctrl_sw[4], ctrl_sw[5], ctrl_sw[6], 
    // computation stage (sometimes called "execute")
    //     shift         asel        bse         ALUop         loadc       loads
           ctrl_sw[2:1], ctrl_sw[3], ctrl_sw[4], ctrl_sw[6:5], ctrl_sw[7], ctrl_sw[8],  
    // set when "writing back" to register file
    //   writenum        write
           ctrl_sw[3:1], ctrl_sw[0]    
  };

  // LEDR[7:0] shows other bits
  assign LEDR = sel_sw ? ctrl_sw : {1'b0, datapath_in[7:0]};  
endmodule         

module vDFF(clk,D,Q);
  parameter n=1;
  input clk;
  input [n-1:0] D;
  output [n-1:0] Q;
  reg [n-1:0] Q;

  always @(posedge clk)
    Q <= D;
endmodule


// The sseg module below can be used to display the value of datpath_out on
// the hex LEDS the input is a 4-bit value representing numbers between 0 and
// 15 the output is a 7-bit value that will print a hexadecimal digit.  You
// may want to look at the code in Figure 7.20 and 7.21 in Dally but note this
// code will not work with the DE1-SoC because the order of segments used in
// the book is not the same as on the DE1-SoC (see comments below).

module sseg(in,segs);
  input [3:0] in;
  output reg [6:0] segs;
  //outputs hexidecimal to display depending on what segs is recieved
  always @(*) begin
    case (in)
      4'd0: segs=7'b1000000;
      4'd1: segs=7'b1111001;
      4'd2: segs=7'b0100100;
      4'd3: segs=7'b0110000;
      4'd4: segs=7'b0011001;
      4'd5: segs=7'b0010010;
      4'd6: segs=7'b0000010;
      4'd7: segs=7'b1111000;
      4'd8: segs=7'b0000000;
      4'd9: segs=7'b0011000;
      4'd10: segs=7'b0001000;
      4'd11: segs=7'b0000011;
      4'd12: segs=7'b1000110;
      4'd13: segs=7'b0100001;
      4'd14: segs=7'b0000110;
      4'd15: segs=7'b0001110;
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

/* BINARY MULTIPLEXER */
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
