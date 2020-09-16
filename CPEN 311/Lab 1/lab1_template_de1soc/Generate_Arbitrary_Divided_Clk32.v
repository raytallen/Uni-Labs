`timescale 1ns / 1ns
/*module Generate_Arbitrary_Divided_Clk32(inclk,outclk,outclk_Not,div_clk_count,Reset);
    input inclk;
	input Reset;
	output outclk;
	output outclk_Not;
	input[31:0] div_clk_count;
	
	var_clk_div32 Div_Clk(.inclk(inclk),.outclk(outclk),.outclk_not(outclk_Not),.clk_count(div_clk_count),.Reset(Reset));
endmodule*/


/*
	Frequency divider module
	Input 50 Mhz clock as inclk and div_clk_count as per the equation below to get desired outclk frequency
	If div_clk_count is zero, no clock will be generated
	
	div_clk_count = 25,000,000 / frequency
*/
module Generate_Arbitrary_Divided_Clk32 (input inclk, Reset, input[31:0] div_clk_count, output reg outclk, output outclk_Not);

	//Creates counter to count inclk passed
	reg [31:0] counter;

	always @(posedge inclk) begin
		
		//If div_clk_count is zero, no clock is output
		if (div_clk_count == 0) outclk = 0;

		//If the number of inclks has passed, output a high signal on outclk
		else if (counter == div_clk_count) outclk = 1;

		//If twice or greater number of inclks have passed, output low and reset counter
		//This is to ensure that outclk has an equal amount of time high as it is low
		else if (counter > div_clk_count * 2) begin
			outclk = 0;
			counter = 0;
		end

		//Add one to counter
		counter = counter + 1;
	end

	assign outclk_Not = !outclk;

endmodule


