/* Testbench for the 16 bit ALU */

module ALU_tb();

    reg [15:0] Ain, Bin;
    reg[1:0] ALUop;
    wire [15:0] out;
    wire status;

    ALU DUT(Ain, Bin, ALUop, out, status);

    initial begin
        Ain = 0; Bin = 0; ALUop = 0; #5;
        //Adds 5 + 6, expecting 11
        Ain = 5; Bin = 6; #5; ALUop = 2'b00; #5;
        //Subtracts 5 - 6, expecting underflow
        ALUop = 2'b01; #5;
        //And's 101 and 110, expecting 100
        ALUop = 2'b10; #5;
        //Not's b, expecting 001
        ALUop = 2'b11; #5;
    end
endmodule