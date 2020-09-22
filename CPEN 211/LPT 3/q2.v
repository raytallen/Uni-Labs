`define S1 3'b000 //Reset state
`define S2 3'b001
`define S3 3'b010
`define S4 3'b011
`define S5 3'b100
`define S6 3'b101

module top_module(clk, reset, PC);
    input clk, reset;
    output [2:0] PC;


    reg[2:0] present_state, next_state;
    reg write, loada, loadb, loadc, loadPC, resetPC, bsel, PCsel;
    wire[8:0] din;
    wire[8:0] dout;
    wire[2:0] PCin_premux, PCin_postmux1, PC, PCin_postpostmux;
    wire[2:0] b_mux_in, b_reg_in;

    LPT3RAM MEM(clk,PC,write,din,dout);

    vDFFE #(3) A(clk, loada, dout[8:6], din[8:6]);
    vDFFE #(3) B(clk, loadb, b_reg_in, din[5:3]);
    vDFFE #(3) C(clk, loadc, dout[2:0], din[2:0]);

    vDFFE #(3) ProgramCounter(clk, loadPC, PCin_postpostmux, PC);

    multiplexer2 #(3) RESETPC(3'b000, PCin_premux, resetPC, PCin_postmux1);
    multiplexer2 #(3) PC_equal_C(dout[2:0], PCin_postmux1, PCsel, PCin_postpostmux);
    
    multiplexer2 #(3) b_in_mux(b_mux_in,dout[5:3],bsel, b_reg_in);

    assign b_mux_in = dout[5:3] - dout[8:6];

    assign PCin_premux = PC + 1;

    always @(posedge(clk)) begin
        if(reset) begin
            present_state = `S1;
            next_state = `S1;
            loadPC = 1; resetPC = 1; PCsel = 0;
        end
        else begin
            //order of states
            case(present_state)
                `S1: begin
                        loadPC = 0; loada = 1; loadb = 1; loadc = 1; bsel = 0; write = 0; resetPC = 0; PCsel = 0;
                        next_state = `S2;
                     end
                `S2: begin
                        loadPC = 0; loada = 0; loadb = 1; loadc = 0; bsel = 1; write = 0; resetPC = 0; PCsel = 0;
                        next_state = `S3;
                     end
                `S3: begin
                        loadPC = 0; loada = 0; loadb = 0; loadc = 0; bsel = 0; write = 1; resetPC = 0; PCsel = 0;
                        next_state = `S4;
                     end
                `S4: begin
                        loadPC = 0; loada = 0; loadb = 0; loadc = 0; bsel = 0; write = 0; resetPC = 0; PCsel = 0;
                        if(dout[5:3] < 0) begin
                            PCsel = 1;
                            loadPC = 1;
                        end
                        else begin
                            PCsel = 0;
                            loadPC = 1;
                        end
                        next_state = `S5;
                     end
                `S5: begin
                        loadPC = 0; loada = 0; loadb = 0; loadc = 0; bsel = 0; write = 0; resetPC = 0; PCsel = 0;
                        next_state = `S1;
                     end
                default: present_state = 3'bx;
            endcase
            present_state = next_state;
        end
    end
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