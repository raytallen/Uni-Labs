// datapath module 
module datapath(clk, readnum, vsel, loada, loadb, shift, asel, bsel, ALUop, loadc, loads, 
                writenum, write, mdata, sximm8, sximm5, PC, statusout, C);

  input [2:0] readnum, writenum; 
  input clk, write, loada, loadb, loadc, loads, asel, bsel; 
  input [1:0] ALUop, shift, vsel; 
  input [15:0] mdata, sximm8, sximm5;
  input [7:0] PC; 
  output [2:0] statusout;
  output [15:0] C; 

  wire [15:0] aout;  
  wire [15:0] bout; 
  wire [15:0] shiftout;  
  wire [15:0] Ain; 
  wire [15:0] Bin; 
  wire [15:0] ALUout; 
  wire [2:0] status; 
  wire [15:0] data_out, data_in; 
  wire [1:0] aselout, bselout;
  wire [3:0] vselout; 

  registerFile REGFILE(data_in, writenum, write, readnum, clk, data_out);    // register file stores values in 8 registers 
  DEC #(1,2) aselonehot(asel,aselout);                                        // decoder turns binary select input into one-hot
  DEC #(1,2) bselonehot(bsel,bselout);
  DEC #(2,4) vselonehot(vsel, vselout);              
  vDFFE loadA(clk, loada, data_out, aout);                                    // register A with load enable 
  vDFFE loadB(clk, loadb, data_out, bout);                                    // register B with load enable 
  shifter Shift(bout, shift, shiftout);                                       // shifter shifts input 
  MUX2 Muxa(16'b0000000000000000, aout, aselout, Ain);                        // multiplexer selects a input 
  MUX2 Muxb(sximm5, shiftout, bselout, Bin);                                  // multiplexer selects b input 
  ALU alu(ALUop, Ain, Bin, ALUout, status);                                   // ALU performs arithmetic or logical operations
  vDFFE loadC(clk, loadc, ALUout, C);                                         // register C with load enable 
  vDFFE #(3) loadS(clk, loads, status, statusout);                            // status register 
  MUX4 Mux1lab6(mdata, sximm8, {8'b00000000, PC}, C, vselout, data_in);       // first multiplexer to select data_in


endmodule 
/* UNCHANGED LAB 6
  registerFile REGFILE(data_in, writenum, write, readnum, clk, data_out);    // register file stores values in 8 registers 
  DEC #(1,2) aselonehot(asel,aselout);                                        // decoder turns binary select input into one-hot
  DEC #(1,2) bselonehot(bsel,bselout);
  DEC #(2,4) vselonehot(vsel, vselout);              
  vDFFE loadA(clk, loada, data_out, aout);                                    // register A with load enable 
  vDFFE loadB(clk, loadb, data_out, bout);                                    // register B with load enable 
  shifter Shift(bout, shift, shiftout);                                       // shifter shifts input 
  MUX2 Muxa(16'b0000000000000000, aout, aselout, Ain);                        // multiplexer selects a input 
  MUX2 Muxb(sximm5, shiftout, bselout, Bin);                                  // multiplexer selects b input 
  ALU alu(ALUop, Ain, Bin, ALUout, status);                                   // ALU performs arithmetic or logical operations
  vDFFE loadC(clk, loadc, ALUout, C);                                         // register C with load enable 
  vDFFE #(3) loadS(clk, loads, status, statusout);                            // status register 
  MUX4 Mux1lab6(mdata, sximm8, {8'b00000000, PC}, C, vselout, data_in);       // first multiplexer to select data_in
*/


  