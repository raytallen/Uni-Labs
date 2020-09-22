module cpu(clk, reset, s, load, in, out, N, V, Z, w);
    input clk, reset, s, load;
    input [15:0] in;
    output [15:0] out;
    output N, V, Z, w;

    //Instruction register to instruction decoder
    wire [15:0] instruct_reg_to_dec;

    wire [15:0] mdata, sximm8;
    wire [7:0] PC;
    wire [3:0] vsel;
    wire [2:0] readnum, writenum, status, nsel;
    wire [1:0] ALUop, shift;
    wire loada, loadb, loadc, loads, asel, bsel, write;


    vDFFE #(16) Instruct_Reg(clk, load, in, instruct_reg_to_dec);

    datapath DP(clk, readnum, vsel, loada, loadb, shift, asel,
                bsel, ALUop, loadc, loads, writenum, write, mdata,
                sximm8, PC, status, out);

    InstructionDecoder InstructDec(in, nsel, opcode, op, out);

endmodule

`define reset 6'b000000
`define state1 6'b000001

module cpuStateMachine(clk, s, reset, opcode, op, w, TBD);
    input clk, s, reset;
    input [2:0] opcode;
    input [1:0] op;
    output TBD;
    output w;
    reg [5:0] present_state, next_state;

    vDFF #(6) stateReg(clk, next_state, present_state);

    always @(*) begin
        if(reset) begin
            present_state = `reset;
            next_state = `reset;
        end

        case(present_state)
            `reset: begin
                if(s) next_state = `state1;
                else next_state = `reset;
            end

            `state1: next_state = `state1;

            default: next_state = 16'bx;
        endcase
    end
endmodule

module InstructionDecoder(in, nsel, opcode, op, ALUop, sximm5, sximm8, shift, readnum, writenum);
    input[15:0] in;
    input[2:0] nsel;
    output[15:0] out, sximm5, sximm8;
    output[2:0] opcode, readnum, writenum;
    output [1:0] op, ALUop, shift;

    wire[2:0] Rn, Rd, Rm;
    wire [4:0] imm5;
    wire [7:0] imm8;

    reg[15:0] sximm5, sximm8;

    assign ALUop = in[12:11];
    assign shift = in[4:3];

    assign Rn = in[10:8];
    assign Rd = in[7:5];
    assign Rm = in[2:0];

    assign opcode = in[15:13];
    assign op = in[12:11];
    assign writenum = readnum;

    always @(*) begin
        if(imm5[4] == 1) sximm5 = {11'b11111111111, imm5};
        if(imm5[4] == 0) sximm5 = {11'b0, imm5};
        if(imm8[7] == 1) sximm8 = {8'b11111111, imm8};
        if(imm8[7] == 0) sximm8 = {8'b0, imm8};
    end

    multiplexer3 #(16) nselMux(Rm, Rd, Rn, nsel, readnum);
    
    
endmodule