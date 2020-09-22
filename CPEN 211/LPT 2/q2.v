module calc(clk, reset, s, in, op, out, ovf, done);
    input clk, reset, s;
    input [7:0] in;
    input [1:0] op;
    output [7:0] out;
    output ovf, done;

    //outputs from function unit
    wire selA, loadA, loadB, loadV, zero, ovf_reg_in;

    wire [7:0] A_muxtoreg, A_reg_wire, subtractor_out, funct_out;

    multiplexer2 #(8) mux(in, subtractor_out, selA, A_muxtoreg);
    vDFFE #(8) regA(clk, loadA, A_muxtoreg, A_reg_wire);

    subtractor subtractor(A_reg_wire, subtractor_out);
    bit8NOR NOR(A_reg_wire, zero);

    controller control(clk, reset, op, s, A_reg_wire, out, selA, loadA, loadB, loadV, done, funct_out, ovf_reg_in);

    vDFFE #(8) regB(clk, loadB, funct_out, out);
    vDFFE #(8) regV(clk, loadV, ovf_reg_in, ovf);


endmodule

`define pause 4'b0000
//states for CLEAR command
`define zero1 4'b0001
`define zero2 4'b0010
//states for ADD command
`define add1 4'b0011
`define add2 4'b0100
`define add3 4'b0101
//states for SHIFT command
`define shift1 4'b1000
`define shift2 4'b1001
`define shift3 4'b1010

module controller(clk, reset, op, s, A_reg_wire, out, selA, loadA, loadB, loadV, done, funct_out, ovf_reg_in);
    input clk, reset, s;
    input [1:0] op;
    input [7:0] A_reg_wire, out;

    output reg selA, loadA, loadB, loadV, done, ovf_reg_in;

    reg[3:0] present_state, next_state;

    output reg[7:0] funct_out;

    always @(*) begin
        if(reset) begin
            present_state = `pause;
            next_state = `pause;
        end
        else begin
            case(present_state)
                `pause: begin
                    if((s==1)&&(op==0)) next_state = `zero1;
                    if((s==1)&&(op==2'b01)) next_state = `add1;
                end

                `zero1: next_state = `pause;

                `add1: next_state = `add2;

                `add2: next_state = `add3;

                `add2: next_state = `pause;

                default: next_state = 2'bx;
            endcase
        end

        present_state = next_state;

        case(present_state)
            `pause: begin
                loadA = 0; loadB = 0; loadV = 0;
                done = 1;
            end

            `zero1: begin
                funct_out = 0;
                loadB = 1;
                done = 0;
            end
            
            `add1: begin   
                selA  = 1;
                loadA = 1;
            end

            `add2: begin
                loadA = 0;
                funct_out = out + A_reg_wire;
            end

            `add3: begin
                loadB = 1;
            end
            default done = 2'bx;
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

module subtractor(in, out);
    input [7:0] in;
    output [7:0] out;

    assign out = in - 1;
endmodule


module bit8NOR(in, out);
    input [7:0] in;
    output reg out;

    always @(*) begin
        if(in==8'b0) out = 1;
    end
endmodule



