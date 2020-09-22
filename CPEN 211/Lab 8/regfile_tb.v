module testreg;

  reg [15:0] data_in; 
  reg [2:0] writenum; 
  reg write; 
  reg [2:0] readnum; 
  reg clk; 
  wire [15:0] data_out; 
   
  registerFile dut(data_in, writenum, write, readnum, clk, data_out); 


  initial begin 
     clk = 0; #5; 
     forever begin // rising edge of the clock every 5 ps 
        clk = 1; #5; 
        clk = 0; #5; 
     end 
  end 

  initial begin
    data_in = 16'b0000000001111000; // data_in is 120
    writenum = 3'b101;              // writenum writes to R5
    write = 1'b1;                   // write is 1 - allows the register to be written to 
    readnum = 3'b000;               // readnum is 0 - nothing is being read 
    #10

    write = 1'b0;                   // write is 0 - no longer writing                
    readnum = 3'b101;               // read from R5 
    #10 
    $display ("%b -> 0000000001111000", data_out); // data_out should be 120 

    data_in = 16'b0000000000101101; // data_in is 45
    writenum = 3'b010;              // writenum writes to R2
    write = 1'b1;                   // write is 1 - allows the register to be written to 
    readnum = 3'b000;               // readnum is 0 - nothing is being read 
    #10

    write = 1'b0;                   // write is 0 - no longer writing                
    readnum = 3'b010;               // read from R2
    #10 
    $display ("%b -> 0000000000101101", data_out); // data_out should be 45

    data_in = 16'b0000111100001111;  //data_in is 3855
    writenum = 3'b101;               //3855 should override the value of 120 previously stored in R5
    write = 1'b1;                    //turn on write enable and turn readnum off
    readnum = 3'b000;
    #10

    readnum = 3'b101;                //read value from R5 
    write = 1'b0;                    //turn write enable off
    #10
    $display ("%b -> 0000111100001111", data_out); // data_out should be 3855

    $stop; 
  end

endmodule

