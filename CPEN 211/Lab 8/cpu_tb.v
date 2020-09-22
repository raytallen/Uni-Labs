// testbench for cpu 
module testcpu;
  reg clk, reset, s, load;
  reg signed [15:0] in;
  wire signed [15:0] out;
  wire N, V, Z, w;
  
  // instantiation for CPU 
  cpu DUT(clk,reset,s,load,in,out,N,V,Z,w);

  initial begin 
    clk = 0; #5; 
     forever begin // rising edge of the clock every 5 ps 
        clk = 1; #5; 
        clk = 0; #5; 
     end 
  end 

  initial begin 

  reset = 1'b1;

  #10

  reset = 1'b0;
  // MOV opcode 110, op 10, Rn 000, imm8 00000111    // writing to register from imm8
  in = 16'b1101000000000111;
  load = 1'b1;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #10
  //3
  #10 
  #10 
  #10 
  // MOV opcode 110, op 10, Rn 001, imm8 00000010    // writing to register from imm 8
  in = 16'b1101000100000010;
  s = 1'b1; // start
  #10
  s = 1'b0;
  #10
  #10
  #10
  #10
  // ALU opcode 101, op 00 (add) , Rn 001 (A), Rd 010, sh 01, Rm 000 (B)    // performing addition 
  in = 16'b1010000101001000;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100
  $display ("       2 + 14 = %b (0000000000010000 expected), status = %b%b%b (000 expected)", out, V, N, Z); 



  // MOV opcode 110, op 10, Rn 100, imm8 00100010  // writing to register from imm8
  in = 16'b1101010000100010;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #10
  //3
  #10 
  #10 
  #10 
  #10 
  // MOV opcode 110, op 10, Rn 011, imm8 00000001  // writing to register from imm8
  in = 16'b1101001100000001;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #10
  //3
  #10 
  #10 
  #10 
  // ALU opcode 101, op 01 (sub), Rn 100 (A), Rd 101, sh 01, Rm 011 (B)  // performing subtraction 
  in = 16'b1010110010101011;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100 
  $display ("       34 - 2 = %b (0000000000100000 expected), status = %b%b%b (000 expected)", out, V, N, Z); 

  // MOV opcode 110, op 10, Rn 110, imm8 00010111  // writing to regsiter from imm8
  in = 16'b1101011000010111;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #10
  //3
  #10 
  #10 
  #10 
  #10 
  // MOV opcode 110, op 10, Rn 111, imm8 00001100  // writing to register from imm8
  in = 16'b1101011100001100;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #10
  //3
  #10 
  #10 
  #10 
  // ALU opcode 101, op 10 (AND), Rn 110 (A), Rd 000, sh 11, Rm 111 (B)  // performing ANDing 
  in = 16'b1011011000011111;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100 
  $display ("       23 & 6 = %b (0000000000000110 expected), status = %b%b%b (000 expected)", out, V, N, Z);  
  

 
  // ALU opcode 101, op 00 (add), Rn 010 (A), Rd 100, sh 00, Rm 011 (B)  // performing adding 
  in = 16'b1010001010000011;
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100 
  $display ("       16 + 1 = %b (0000000000010001 expected), status = %b%b%b (000 expected)", out, V, N, Z); 


  // ALU opcode 101, op 01 (sub), Rn 001 (A), Rd (111), sh 01, Rm 011 (B) // performing subtraction
  in = 16'b1010100111101011; 
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100 
  $display ("         2 - 2 = %b (0000000000000000 expected), status = %b%b%b (001 expected)", out, V, N, Z); // zero output

  // ALU opcode 101, op 01 (sub), Rn 001 (A), Rd (110), sh 00, Rm 101 (B) // performing subtraction
  in = 16'b1010100111000101; 
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100 
  $display ("        2 - 32 = %b (1111111111100010 expected), status = %b%b%b (010 expected)", out, V, N, Z); // negative output 

  // ALU opcode 101, op 11 (NOT), Rn 000, Rd 010, sh 00, Rm 001 // performing NOTing 
  in = 16'b1011100001000001; 
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100 
  $display ("          ~2 = %b (1111111111111101 expected), status = %b%b%b (010 expected)", out, V, N, Z); // negative output 
 
  // MOV opcode 110, op 00, Rn 000, Rd 111, sh 11, Rm 101 // writing to register from shifted register 
  in = 16'b1100000011111101; 
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #10                   
  //3
  #10 
  #10 
  #10 
  
  // ALU opcode 101, op 11 (NOT), Rn 000 (A), Rd 110, sh 00, Rm 110 (B) // performing NOTing 
  in = 16'b1011100011000110; 
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100 
  $display ("        ~ 65506 = %b (0000000000011101 expected), status = %b%b%b (000 expected)", out, V, N, Z);  


  // MOV opcode 110, op 00, Rn 000, Rd 001, sh 00, Rm 110 // writing to register from shifted register 
  in = 16'b1100000011100110; 
  s = 1'b1; // start 
  #10
  s = 1'b0;
  #100
  
   $stop;
  end 
endmodule 