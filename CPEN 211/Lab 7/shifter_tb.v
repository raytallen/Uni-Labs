module shifter_tb;

	reg [15:0] x;
	reg [1:0] y;
	wire [15:0] out;

	shifter dut(x,y,out);

	initial begin
	x = 16'b000000011000000; y= 2'b00; 	//give test value for x and y
	#10					
	$display ("%b,		%b ",x, y);	//display the current value of x and y
	$display ("%b", out);			//since y = 00 here out should be the same as x


	x = 16'b000000011000000; y= 2'b01; 	//new test case (y=01, should shift left with 0
	#10					//in new LSB position
	$display ("%b,		%b ",x, y);
	$display ("%b", out);			//check output

	x = 16'b000000011000000; y= 2'b10;	//y = 10, should shift right with 0 in new MSB
	#10 
	$display ("%b,		%b ",x, y);	//display current inputs
	$display ("%b", out);			//display output

	x = 16'b000000011000000; y= 2'b11; 	//y = 11, shift right and new MSB of "out" has value
	#10					//of old LSB of "x" (this case 0)
	$display ("%b,		%b ",x, y);
	$display ("%b", out);			//display inputs and outputs

	x = 16'b1000000011100001; y= 2'b01; 	//new x value, test shifting left (y=01)
	#10
	$display ("%b,		%b ",x, y);	//display inputs and outputs
	$display ("%b", out);

	x = 16'b1000000111000001; y= 2'b10; 	//same new value of x, shift to the right 
	#10					//(MSB of "out" should match the old LSB of "x")
	$display ("%b,		%b ",x, y);
	$display ("%b", out);			//display input and outputs

	x = 16'b1000000111000001; y= 2'b11;	//y = 11, new MSB of "out" should match the old
	#10 					//LSB of "x" (this case 1)
	$display ("%b,		%b ",x, y);
	$display ("%b", out);			//display inputs and outputs to check

	end 

endmodule

	