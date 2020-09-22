/* 8 wide, 16 bit register
    Following verilog describes an 8 wide, 16 bit register file.
*/

module register8_file_16bit(data_in, writenum, write_in, readnum, clk, data_out);
    input [15:0] data_in;
    input [2:0] writenum, readnum;
    input write_in;
    input clk;

    output [15:0] data_out;

    wire [7:0] reg_select, write, mux_select;
    wire [15:0] reg_out [7:0];
    
    decoder #(3,8) writehotcode(writenum, reg_select);
    decoder #(3,8) readhotcode(readnum, mux_select);

    assign write = write_in ? reg_select : 8'b00000000;

    register #(16) reg0(clk, write[0], data_in[15:0], reg_out[0]);
    register #(16) reg1(clk, write[1], data_in[15:0], reg_out[1]);
    register #(16) reg2(clk, write[2], data_in[15:0], reg_out[2]);
    register #(16) reg3(clk, write[3], data_in[15:0], reg_out[3]);
    register #(16) reg4(clk, write[4], data_in[15:0], reg_out[4]);
    register #(16) reg5(clk, write[5], data_in[15:0], reg_out[5]);
    register #(16) reg6(clk, write[6], data_in[15:0], reg_out[6]);
    register #(16) reg7(clk, write[7], data_in[15:0], reg_out[7]);

    multiplexer8 #(16) outmux(reg_out[7], reg_out[6], reg_out[5], reg_out[4], reg_out[3], reg_out[2], reg_out[1], reg_out[0], mux_select, data_out);
endmodule

 /* REGISTER WITH LOAD ENABLE
 n-bit wide resiter with load enable */
module register(clk, load, in, out) ;
    parameter n = 16;  // width
    input clk, load ;
    input  [n-1:0] in ;
    output reg [n-1:0] out ;
    wire   [n-1:0] next_out ;

    assign next_out = load ? in : out;

    //On posedge clk, makes out equal to next_out
    always @(posedge clk)
      out = next_out;  
endmodule

