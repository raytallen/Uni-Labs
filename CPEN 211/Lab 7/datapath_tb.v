// testbench for testdatapath module after Stage 1 changes 
module testdatapath; 

  reg [2:0] readnum, writenum; 
  reg clk, write, loada, loadb, loadc, loads, asel, bsel; 
  reg [1:0] ALUop, shift, vsel; 
  reg signed [15:0] mdata, sximm8, sximm5; 
  reg signed [7:0] PC; 
  wire [2:0] statusout;
  wire [15:0] C; 

  // module instantiation for datapath testbench 
  datapath dut(clk, readnum, vsel, loada, loadb, shift, asel, bsel, ALUop, loadc, loads, 
                writenum, write, mdata, sximm8, sximm5, PC, statusout, C);

  initial begin 
    clk = 0; #5; 
     forever begin // rising edge of the clock every 5 ps 
        clk = 1; #5; 
        clk = 0; #5; 
     end 
  end 

  initial begin
    // assign PC and mdata to zero 
    PC = 8'b00000000;               
    mdata = 16'b0000000000000000; 

    sximm8 = 16'b0000000000000111; vsel = 2'b10;     // vsel set to 10 to select sximm8 (7) 
    writenum = 3'b000; write = 1'b1;                 // write set to 1 to write to R0
    #10;                                           
    sximm8 = 16'b0000000000000010;                   // select sximm8 (2)
    writenum = 3'b001;                               // write set to 1 to write to R1 
    #10;      
    readnum = 3'b001; write = 1'b0;                  // set write to 0, read from R1
    loada = 1'b1; loadb = 1'b0;                      // copy its value to register A on rising edge 
    #10;
    readnum = 3'b000;                                // read from R0
    loada = 1'b0; loadb = 1'b1;                      // copy its value to register B on rising edge 
    #10; 
    loadb = 1'b0; ALUop = 2'b00;                     // load a and b return to 0, ALUop set for addition
    asel = 1'b0; bsel = 1'b0; shift = 2'b01;         // asel selects aout, bsel selects shiftout, shift set for shifting left 
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 2'b00;                       // loadc returns to 0, vsel set to 00 to select C 
    writenum = 3'b010; write = 1'b1;                 // write set to 1 to write to R2 (2 + 14 = 16) 
    #10; 
    $display ("       2 + 14 = %b (0000000000010000 expected), status = %b (000 expected)", C, statusout); 



    sximm8 = 16'b0000000000100010; vsel = 2'b10;     // vsel set to 10 to select sximm8 (34) 
    writenum = 3'b100; write = 1'b1;                 // write set to 1 to write to R4
    #10;                                           
    sximm8 = 16'b0000000000000001;                   // select sximm8 (1)
    writenum = 3'b011;                               // write set to 1 to write to R3 
    #10;      
    readnum = 3'b100; write = 1'b0;                  // set write to 0, read from R4
    loada = 1'b1; loadb = 1'b0;                      // copy its value to register A on rising edge 
    #10;
    readnum = 3'b011;                                // read from R3
    loada = 1'b0; loadb = 1'b1;                      // copy its value to register B on rising edge 
    #10; 
    loadb = 1'b0; ALUop = 2'b01;                     // load a and b return to 0, ALUop set for subtraction
    asel = 1'b0; bsel = 1'b0; shift = 2'b01;         // asel selects aout, bsel selects shiftout, shift set for shifting left 
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 2'b00;                       // loadc returns to 0, vsel set to 00 to select C 
    writenum = 3'b101; write = 1'b1;                 // write set to 1 to write to R5 (34 - 2 = 32) 
    #10; 
    $display ("       34 - 2 = %b (0000000000100000 expected), status = %b (000 expected)", C, statusout); 



    sximm8 = 16'b0000000000010111; vsel = 2'b10;     // vsel set to 10 to select sximm8 (23) 
    writenum = 3'b110; write = 1'b1;                 // write set to 1 to write to R6
    #10;                                           
    sximm8 = 16'b0000000000001100;                   // select sximm8 (12)
    writenum = 3'b111;                               // write set to 1 to write to R7 
    #10;      
    readnum = 3'b110; write = 1'b0;                  // set write to 0, read from R6
    loada = 1'b1; loadb = 1'b0;                      // copy its value to register A on rising edge 
    #10;
    readnum = 3'b111;                                // read from R7
    loada = 1'b0; loadb = 1'b1;                      // copy its value to register B on rising edge 
    #10; 
    loadb = 1'b0; ALUop = 2'b10;                     // load a and b return to 0, ALUop set for ANDing
    asel = 1'b0; bsel = 1'b0; shift = 2'b11;         // asel selects aout, bsel selects shiftout, shift set for shifting right, MSB=B[15]
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 1'b0;                       // loadc returns to 0, vsel set to 0 to select datapath_out 
    writenum = 3'b000; write = 1'b1;                 // write set to 1 to write to R0 (23 & 6 = 6) 
    #10; 
    $display ("       23 & 6 = %b (0000000000000110 expected), status = %b (000 expected)", C, statusout); 


    // modified
    sximm8 = 16'b1111111110010011; vsel = 2'b10;     // vsel set to 10 to select sximm8 (-109)
    writenum = 3'b011; write = 1'b1;                 // write set to 1 to write to R3
    #10;                                           
    readnum = 3'b000; write = 1'b0;                  // set write to 0, read from R0
    loada = 1'b1; loadb = 1'b0;                      // copy its value to register A on rising edge 
    #10;
    readnum = 3'b011;                                // read from R3
    loada = 1'b0; loadb = 1'b1;                      // copy its value to register B on rising edge 
    #10; 
    loadb = 1'b0; ALUop = 2'b00;                     // load a and b return to 0, ALUop set for addition
    asel = 1'b0; bsel = 1'b0; shift = 2'b11;         // asel selects aout, bsel selects shiftout, shift set for shifting right, MSB=B[15]
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 1'b0;                       // loadc returns to 0, vsel set to 0 to select C 
    writenum = 3'b111; write = 1'b1;                 // write set to 1 to write to R7 (6 + (-55) = -49) 
    #10; 
    $display ("    6 + (-55) = %b (1111111111001111 expected), status = %b (010 expected)", C, statusout); 

    sximm8 = 16'b1111111111100101;                   // sximm8 set to -27
    sximm5 = 16'b0000000000000101;                   // sximm5 is 5
    readnum = 3'b111; write = 1'b0;                  // set write to 0, read from R7 (-49) 
    loada = 1'b1; loadb = 1'b0;                      // copy its value to register A on rising edge 
    #10;
    loada = 1'b0; ALUop = 2'b11;                     // load a and b return to 0, ALUop set for NOTing
    asel = 1'b0; bsel = 1'b1; shift = 2'b01;         // asel selects aout, bsel selects sximm5, shift set for shifting left (10)
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 2'b00;                      // loadc returns to 0, vsel set to 00 to select datapath_out 
    writenum = 3'b111; write = 1'b1;                 // write set to 1 to write to R7 (~5 = 6) 
    #10; 
    $display ("           ~5 = %b (1111111111111010 expected), status = %b (010 expected)", C, statusout); 

    readnum = 3'b010; write = 1'b0;                  // set write to 0, read from R2 (16)
    loada = 1'b1; loadb = 1'b0;                      // copy its value to register A on rising edge 
    #10;
    loada = 1'b0; ALUop = 2'b10;                     // load a and b return to 0, ALUop set for ANDing
    asel = 1'b0; bsel = 1'b0; shift = 2'b00;         // asel selects aout, bsel selects shiftout, shift set for no shifting
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 2'b00;                       // loadc returns to 0, vsel set to 00 to select C 
    writenum = 3'b100; write = 1'b1;                 // write set to 1 to write to R4 (16 & -109 = 16) 
    #10; 
    $display ("    16 & -109 = %b (0000000000010000 expected), status = %b (000 expected)", C, statusout); 
 


    readnum = 3'b100; write = 1'b0;                  // set write to 0, read from R4 (16)
    loada = 1'b0; loadb = 1'b1;                      // copy its value to register B on rising edge 
    #10;
    loadb = 1'b0; ALUop = 2'b01;                     // load a and b return to 0, ALUop set for subtraction
    asel = 1'b0; bsel = 1'b0; shift = 2'b00;         // asel selects aout, bsel selects shiftout, shift set for no shifting
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 2'b00;                       // loadc returns to 0, vsel set to 00 to select C 
    writenum = 3'b100; write = 1'b1;                 // write set to 1 to write to R4 (16 - 16 = 0) 
    #10; 
    $display ("      16 - 16 = %b (0000000000000000 expected), status = %b (001 expected)", C, statusout); 


    
    readnum = 3'b101; write = 1'b0;                  // set write to 0, read from R5 (32)
    loada = 1'b0; loadb = 1'b1;                      // copy its value to register B on rising edge 
    #10;
    loadb = 1'b0; ALUop = 2'b00;                     // load a and b return to 0, ALUop set for addition
    asel = 1'b1; bsel = 1'b0; shift = 2'b10;         // asel selects 16'b0, bsel selects shiftout, shift set for shifting right, MSB=0
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 2'b00;                      // loadc returns to 0, vsel set to 00 to select C
    writenum = 3'b000; write = 1'b1;                 // write set to 1 to write to R0 (0 + 16 = 16) 
    #10; 
    $display ("       0 + 16 = %b (0000000000010000 expected), status = %b (000 expected)", C, statusout); 

 

    sximm8 = 16'b1111111111111111; vsel = 2'b10;     // vsel set to 10 to select sximm8 (65535) 
    writenum = 3'b000; write = 1'b1;                 // write set to 1 to write to R0
    #10;                                           
    sximm8 = 16'b1111111111111111;                   // select sximm8 (65535)
    writenum = 3'b001;                               // write set to 1 to write to R1 
    #10;      
    readnum = 3'b001; write = 1'b0;                  // set write to 0, read from R1
    loada = 1'b1; loadb = 1'b0;                      // copy its value to register A on rising edge 
    #10;
    readnum = 3'b000;                                // read from R0
    loada = 1'b0; loadb = 1'b1;                      // copy its value to register B on rising edge 
    #10; 
    loadb = 1'b0; ALUop = 2'b00;                     // load a and b return to 0, ALUop set for addition
    asel = 1'b0; bsel = 1'b0; shift = 2'b00;         // asel selects aout, bsel selects shiftout, shift set for no shifting
    loadc = 1'b1; loads = 1'b1;                      // loadc is 1 to save result in register C, loads is 1 to record status
    #10; 
    loadc = 1'b0; vsel = 2'b00;                       // loadc returns to 0, vsel set to 00 to select C 
    writenum = 3'b010; write = 1'b1;                 // write set to 1 to write to R2 (127 + 127 = 254) 
    #10; 
    $display ("    127 + 127 = %b (11111111111111111 expected), status = %b (010 expected)", C, statusout);

    $stop;
    end  

endmodule
