/* SHIFTER TESTBENCH
Test's the 16 bit wide shifter module
*/

module shifter16_tb();

    reg [15:0] in;
    reg [1:0] shift;
    wire [15:0] out;
    shifter16 DUT(in, shift, out);

    initial begin
        //reset's shifter to all zeros
        in = 16'b0000000000000000; shift = 2'b00; #5;
        //set's input to be shifted, output should be unshifted
        in = 16'b1000100010001001; #5;
        //shift one to left, expecting 0001000100010010
        shift = 2'b01; #5;
        //shift one to right, expecting 0100010001000100
        shift = 2'b10; #5;
        //shift one to right, expecting 1100010001000100
        shift = 2'b11; #5;
    end
endmodule