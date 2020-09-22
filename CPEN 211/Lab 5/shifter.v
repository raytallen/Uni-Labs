/* SHIFTER 
Shifts the bits in a 16 bit bus in a direction depending on the 'shift' input
*/
module shifter16(in, shift, out);
    input [15:0] in;
    input [1:0] shift;  
    output reg [15:0] out;
    /*
    If shift == 00, nothing get's shifted
    If shift == 01, get's shifted 1 left, right-most bit is 0
    If shift == 10, get's shifted 1 right, right most bit is 0
    If shift == 11, get's shifted 1 right, right most bit privious value is copied
    */
    always @(*) begin
        case(shift)
          2'b00: out = in;
          2'b01: begin
                   out = in<<1;
                   out[0] = 1'b0;
                 end
          2'b10: begin
                   out = in>>1;
                   out[15] = 1'b0;
                 end
          2'b11: begin
                   out = in>>1;
                   out[15] = out[14];
                 end
        endcase
    end
endmodule