module testlab6;

  reg [3:0] KEY;
  reg [9:0] SW;
  wire [9:0] LEDR; 
  wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
  reg CLOCK_50;

  lab7_top DUT(KEY,SW,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,CLOCK_50);

  
  initial begin 
    KEY[0] = 1; #5; 
     forever begin // rising edge of the clock every 5 ps 
        KEY[0] = 0; #5; 
        KEY[0] = 1; #5; 
     end 
  end 

  initial begin

  KEY[1] = 1'b0;

  #10

  KEY[1] = 1'b1;
  SW[9:0] = 10'b0000000111;
  KEY[3] = 1'b0;
  KEY[2] = 1'b1;
 
  #10

  SW[9:0] = 10'b1011010000;
 
  #10

  KEY[2] = 1'b0;

  #50

  SW[9:0] = 10'b0000000010;
  KEY[2] = 1'b1;
 
  #10

  SW[9:0] = 110'b1011010001;

  #10

  KEY[2] = 1'b0;

  #50

  SW[9:0] = 10'b0010101000;
  KEY[2] = 1'b1;
 
  #10

  SW[9:0] = 110'b1010100001;

  #10

  KEY[2] = 1'b0;

  #50

  KEY[2] = 1'b1;


  $stop;
end

endmodule
 


  
  