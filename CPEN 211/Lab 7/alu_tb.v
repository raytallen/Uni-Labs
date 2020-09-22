// testbench tests basical functionality and corner cases of the ALU 
module testalu; 
  reg [1:0] ALUop; 
  reg signed [15:0] Ain; 
  reg signed [15:0] Bin; 
  wire signed [15:0] ALUout; 
  wire [2:0] status; 
  
  ALU dut(ALUop, Ain, Bin, ALUout, status); 

  initial begin 

    // 1. test inputs  
    Ain = 16'b0000000000000000; // Ain is 0 
    Bin = 16'b0000000000000001; // Bin is 1 

    ALUop = 2'b00; // ALUop 00 for addition 
    #10 $display("Ain + Bin = %b (0000000000000001)", ALUout); // expected output is 1 
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b01; // ALUop 01 for subtraction 
    #10 $display("Ain - Bin = %b (1111111111111111)", ALUout); // expected output is -1 
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b10; // ALUop 01 for AND operation 
    #10 $display("Ain & Bin = %b (0000000000000000)", ALUout); // expected output is 0000000000000000
        $display("   status = %b (1)", status); // expected output is 1

    ALUop = 2'b11; // ALUop 01 for NOT operation 
    #10 $display("     ~Bin = %b (1111111111111110)", ALUout); // expected output is 0000000010010000
        $display("   status = %b (0)", status); // expected output is 0

    // 2. test inputs 
    Ain = 16'b0000000010010110; // Ain is 150 
    Bin = 16'b0000000110010000; // Bin is 400

    ALUop = 2'b00; // ALUop 00 for addition 
    #10 $display("Ain + Bin = %b (0000001000100110)", ALUout); // expected output is 550
        $display("   status = %b (0)", status); // expected output is 0  

    ALUop = 2'b01; // ALUop 01 for subtraction 
    #10 $display("Ain - Bin = %b (1111111100000110)", ALUout); // expected output is -250 
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b10; // ALUop 01 for AND operation 
    #10 $display("Ain & Bin = %b (0000000010010000)", ALUout); // expected output is 0000000010010000
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b11; // ALUop 01 for NOT operation 
    #10 $display("     ~Bin = %b (1111111001101111)", ALUout); // expected output is 11111111001101111  
        $display("   status = %b (0)", status); // expected output is 0

    // 3. test inputs 
    Ain = 16'b1000001000100000; // Ain is 33312
    Bin = 16'b0001000000100001; // Bin is 4129

    ALUop = 2'b00; // ALUop 00 for addition 
    #10 $display("Ain + Bin = %b (1001001001000001)", ALUout); // expected output is 37441
        $display("   status = %b (0)", status); // expected output is 0 

    ALUop = 2'b01; // ALUop 01 for subtraction 
    #10 $display("Ain - Bin = %b (0111000111111111)", ALUout); // expected output is 29183 
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b10; // ALUop 01 for AND operation 
    #10 $display("Ain & Bin = %b (0000000000100000)", ALUout); // expected output is 0000000000100000
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b11; // ALUop 01 for NOT operation 
    #10 $display("     ~Bin = %b (1110111111011110)", ALUout); // expected output is 1110111111011110
        $display("   status = %b (0)", status); // expected output is 0

    // 4. test inputs 
    Ain = 16'b1111111111111111; // Ain is 65535
    Bin = 16'b0000000000000010; // Bin is 2

    ALUop = 2'b00; // ALUop 00 for addition 
    #10 $display("Ain + Bin = %b (0000000000000001)", ALUout); // expected output is 65537
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b01; // ALUop 01 for subtraction 
    #10 $display("Ain - Bin = %b (1111111111111101)", ALUout); // expected output is 65533
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b10; // ALUop 01 for AND operation 
    #10 $display("Ain & Bin = %b (0000000000000010)", ALUout); // expected output is 0000000000000010
        $display("   status = %b (0)", status); // expected output is 0

    ALUop = 2'b11; // ALUop 01 for NOT operation 
    #10 $display("     ~Bin = %b (1111111111111101)", ALUout); // expected output is 1111111111111101
        $display("   status = %b (0)", status); // expected output is 0

    // 5. test inputs 
    Ain = 16'b0000000000000100; // Ain is 4
    Bin = 16'b0000000000000100; // Bin is 4

    ALUop = 2'b01; // ALUop 01 for subtraction 
    #10 $display("Ain - Bin = %b (0000000000000000)", ALUout); // expected output is 0
        $display("   status = %b (1)", status); // expected output is 1
   
    Ain = 16'b0111111111111111; 
    Bin = 16'b0111111111111111;  
    ALUop = 2'b00; 

    #10; 
    Ain = 16'b1111111111111001; // -1
    Bin = 16'b0111111111111111; // 
    ALUop = 2'b01; 
    #10; 


  end 
endmodule 