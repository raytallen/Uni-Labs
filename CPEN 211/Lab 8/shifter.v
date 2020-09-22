module shifter(x,y,out);
	input [15:0] x;
	input [1:0] y;
	output [15:0] out;

	reg[15:0] out;

	always@* begin
	case(y)
		2'b00: out = x;		     //if shift is 00 keep loadb the same
		2'b01: out = {x[14:0],1'b0}; //shift=01 - shift to left and LSB = 0
		2'b10: out = {1'b0,x[15:1]}; //shift=10 - shift to right and MSB = 0 
		2'b11: out = {x[15],x[15:1]}; //shift=11 - shift to right and MSB = MSB from before
	endcase
	end
endmodule