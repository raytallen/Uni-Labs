//don't worry, q1.v is perfecto sir

`define A 3'b000
`define B 3'b001
`define C 3'b010
`define D 3'b011
`define E 3'b100

module top_module(clk, reset, in, out);
    input clk;
    input reset;

    input [1:0] in;

    output reg [1:0] out;

    reg[2:0] present_state, next_state;

    always @(posedge(clk)) begin
        if(reset) begin
            present_state = `A;
            next_state = `A;
        end
        else begin
            case(present_state)
                `A: case(in)
                        2'b01: next_state = `E;
                        2'b10: next_state = `B;
                        default: next_state = `A;
                    endcase

                `B: case(in)
                        2'b10: next_state = `A;
                        default: next_state = `B;
                    endcase

                `C: next_state = `B;

                `D: case(in)
                        2'b10: next_state = `A;
                        2'b01: next_state = `B;
                        2'b00: next_state = `C;
                        default: next_state = `D;
                    endcase

                `E: case(in)
                        2'b11: next_state = `D;
                        default: next_state = `E;
                    endcase
                default: next_state = 2'bx;
            endcase
        end

        present_state = next_state;

        case(present_state)
            `A: out = 2'b11;
            `B: out = 2'b10;
            `C: out = 2'b00;
            `D: out = 2'b10;
            `E: out = 2'b01;
            default: out = 2'bx;
        endcase
    end
endmodule