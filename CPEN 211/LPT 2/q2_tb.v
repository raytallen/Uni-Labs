module q2_tb();

    reg clk, reset, s;
    reg [7:0] in;
    reg [1:0] op;
    wire[7:0] out;
    wire ovf, done;

    initial begin
		clk = 0; #1;
		forever begin
			clk = 1; #1;
			clk = 0; #1;
		end
	end

    calc DUT(clk, reset, s, in, op, out, ovf, done);

    initial begin
        reset = 1; #5; reset = 0; s = 0; op = 2'b00; # 5;
        s = 1; #2; s = 0; #8; 
        op = 2'b01; s = 1; #2; s = 0; #8;
        in = 2; s = 1; #2; s = 0; #8;
        in = 4; s = 1; #2; s = 0; #8; 

    end
endmodule