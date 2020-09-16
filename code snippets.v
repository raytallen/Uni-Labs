/*
yo this file contains useful codey bits for CPEN 211 Verilog
(c) 2017 Ray Allen and Wesley Britton
*/


/* BINARY TO ONE-HOT CODE DECODER 
    Converts Binary to a one-hot code
    m = width of binary bus
    n = width of one-hotcode bus
    m <= 2^n  */
module decoder(Binary_in, hotcode_out);
    parameter n = 2;
    parameter m = 4;

    input  [n-1:0] Binary_in;
    output [m-1:0] hotcode_out;

    wire [m-1:0] hotecode_out = 1 << Binary_in;
endmodule

//WIP WIP WIP//
/* N INPUT MULTIPLEXER 
    k-bits wide
    n # of inputs  
*/

module multiplexer (in, select, out);
    parameter k = 4;
    parameter n = 4;

    input [k*n-1:0] in;
    input [1:0] select;
    output [k-1:0] out;
    
    genvar i;
    generate for(i = 0; i < N; i++) begin

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

/* 4 INPUT MULTIPLEXER
    K-bits wide
    One-hot select */
module multiplexer4 (a3, a2, a1, a0, s, b);
    parameter k = 1;
    input [k-1:0] a0, a1, a2, a3; //inputs
    input [3:0] s; //one-hot select
    output reg [k-1:0] b;

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

    always @(*) begin
      case(s)
        3'b001: b = a0;
        3'b010: b = a1;
        3'b100: b = a2;
        default: b = {k{1'bx}};
      endcase
    end
endmodule

/* BINARY MULTIPLEXER */
module multiplexer2 (a1, a0, s, b);
    parameter k = 1;
    input [k-1:0] a0, a1; //inputs
    input s; //binary select
    output reg [k-1:0] b;

    always @(*) begin
      case(s)
        1'b0: b = a0;
        1'b1: b = a1;
        default: b = {k{1'bx}};
      endcase
    end
endmodule

/* K-BIT WIDE ARBITER */
module arbiter(r, g);
    parameter k = 8;
    input  [k-1:0] r;
    output [k-1:0] g;
    wire   [k-1:0] c = {1'b1, (~r[k-2:0] & c[k-2:0])};
    assign g = r & c;
endmodule

/* EQUALITY COMPARATOR
    Compares 2 k-bit signals for equality */
module EqComp(a, b, eq);
    parameter k = 8;
    input [k-1:0] a, b;
    output eq;
    assign eq = (a==b);
endmodule

/* MAGNITUDE COMPARATOR */
module MagComp(a, b, gt) ;
    parameter k = 8;
    input [k-1:0] a, b;
    output gt;
    assign gt = (a < b);
endmodule

/* ROM */
module ROM(read_address, dout);
    parameter data_width = 32;
    parameter addr_width = 4;
    parameter filename = "data.txt";
    input[addr_width-1:0] read_address;
    output [data_width-1:0] dout;
    reg [data_width-1:0] mem [2**addr_width-1:0];

    initial $readmemb(filename, mem);
    assign dout = mem[read_address];
endmodule

/* HALF-ADDER */
module HalfAdder(input a, b, output c, s);
    assign s = a ^ b;
    assign c = a & b;
endmodule

/* ALU */
module ALU(Ain, Bin, ALUop, out, status);
    input [15:0] Ain, Bin;
    input [1:0] ALUop;
    output reg [15:0] out;
    output status;

    always @(*) begin
        case(ALUop)
        2'b00: out = Ain + Bin;
        2'b01: out = Ain - Bin;
        2'b10: out = Ain & Bin;
        2'b11: out = ~Bin;
        endcase
    end
endmodule


/* SHIFTER 
    Shifts the bits like 1 bit yo */
module shifter16(in, shift, out);
    input [15:0] in;
    input [1:0] shift;  
    output reg [15:0] out;

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
                   out = in<<1;
                   out[15] = out[14];
                 end
        endcase
    end
endmodule


 /* REGISTER WITH LOAD ENABLE */
module register(clk, load, in, out) ;
    parameter n = 1;  // width
    input clk, load ;
    input  [n-1:0] in ;
    output [n-1:0] out ;
    reg    [n-1:0] out ;
    wire   [n-1:0] next_out ;

    assign next_out = load ? in : out;

    always @(posedge clk)
      out = next_out;  
endmodule

module register8_file_16bit(data_in, writenum, write_in, readnum, clk, data_out);
    input [15:0] data_in;
    input [2:0] writenum, readnum;
    input write_in;
    input clk;

    output [15:0] data_out;

    wire [7:0] reg_select, write, mux_select;
    wire [7:0] reg_out [15:0];
    
    decoder #(3,8) writehotcode(writenum, reg_select);
    decoder #(3,8) readhotcode(readnum, mux_select);

    assign write = write_in ? reg_select : 8'b00000000;

    register #(16) reg0(clk, write[0], data_in, reg_out[0]);
    register #(16) reg1(clk, write[1], data_in, reg_out[1]);
    register #(16) reg2(clk, write[2], data_in, reg_out[2]);
    register #(16) reg3(clk, write[3], data_in, reg_out[3]);
    register #(16) reg4(clk, write[4], data_in, reg_out[4]);
    register #(16) reg5(clk, write[5], data_in, reg_out[5]);
    register #(16) reg6(clk, write[6], data_in, reg_out[6]);
    register #(16) reg7(clk, write[7], data_in, reg_out[7]);

    multiplexer8 #(16) outmux(reg_out[7], reg_out[6], reg_out[5], reg_out[4], reg_out[3], reg_out[2], reg_out[1], reg_out[0], mux_select, data_out);
endmodule

module datapath( .clk         (~KEY[0]), // recall from Lab 4 that KEY0 is 1 when NOT pushed

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
    input [15:0] datapath_in;
    input [2:0] writenum, readnum;
    input [1:0] shift, ALUop;
    input vsel, write, loada, loadb, asel, bsel, loadc, loads;
    output [15:0] data_out;
    wire [15:0] data_in, data_out, regA_to_muxA, regB_to_shiftB, shiftB_to_muxB, Ain, Bin, ALU1_to_regC;
    wire ALU1_to_regStatus;

    multiplexer2 #(16) firstmux(datapath_in, datapath_out, vsel, data_in);
    register8_file_16bit register(data_in, writenum, write, readnum, clk);

    register #(16) regA(clk, loada, data_out, regA_to_muxA);
    register #(16) regB(clk, loadb, data_out, regB_to_shiftB);
    shifter shiftB(regB_to_shiftB, shift, shiftB_to_muxB);

    multiplexer2 #(16) muxA(16'b0, regA_to_muxA, asel, Ain);
    multiplexer2 #(16) muxB({11'b0,datapath_in[4:0]}, shiftB_to_muxB, bsel, Bin);

    ALU ALU1(Ain, Bin, ALUop, ALU1_to_regC, ALU1_to_regStatus);

    register #(16) regC(clk, loadc, ALU1_to_regC, datapath_out);
    register #(1) regStatus(clk, loads, regStatus);

endmodule




////////////////////////////////////
///////////CPEN 311 STUFF///////////
////////////////////////////////////

/* LOGIC GATES */
module gates (input logic [3:0] a,b, output [3:0] y1, y2, y3, y4, y5);
    assign y1  = a & b; //AND
    assign y2 = a | b;  //OR
    assign y3 = a ^ b   //XOR
    assign y4 = ~(a & b)//NAND
    assign y5 = ~(a | b)//NOR
endmodule


//register with async reset and variable bit width
module reg_async (clk, reset, d, q);
    parameter N=1;
    input clk, reset;
    input [N-1:0] d;
    output reg [N-1:0] q;
    always @(posedge clk, posedge reset) begin
        if(reset) q <= N'b0;
        else q <= d;
    end
endmodule
