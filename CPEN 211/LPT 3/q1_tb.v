module q1_tb();

    reg clk, reset;
    reg [1:0] in;
    wire [1:0] out;

    initial begin
		clk = 0; #1;
		forever begin
			clk = 1; #1;
			clk = 0; #1;
		end
	end

    top_module DUT(clk, reset, in, out);

    initial begin
        reset = 1; #5; reset = 0; #5;
        in = 2'b00; #5; in = 2'b10; #5;
        in = 2'b11; #20; 
        reset = 1; #5; reset = 0; #5;
        in = 2'b11; #5; in = 2'b01; #5;
        in = 2'b11; #5; in = 2'b00;


    end
endmodule