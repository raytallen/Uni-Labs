module ksa (
    input CLOCK_50,
    input [3:0] KEY,
    input [9:0] SW,

    output logic [9:0] LED,
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

    logic start_key, reset_n;
    logic [23:0] secret_key;

    async_to_sync start_butt(.async_sig(~KEY[0]), .outclk(CLOCK_50), .out_sync_sig(start_key));
    async_to_sync reset_butt(.async_sig(~KEY[3]), .outclk(CLOCK_50), .out_sync_sig(reset_n));

    //assign secret_key = 24'b00000000_00000010_01001001;
    assign secret_key = 24'h000249;

    //Seven segment display instantiation
    logic [3:0] nIn;
    logic [6:0] ssOut;
    SevenSegmentDisplayDecoder mod (.nIn(nIn), .ssOut(ssOut));

    //working memory RAM
    logic [7:0] q, data, address;
    logic wren;

   /* s_memory mem(
        //inputs
        .clock(CLOCK_50), .address(address), .data(data), .wren(wren),
        //outputs
        .q(q)
    );*/

    //testbench memory
    fakeMem mem(
        //inputs
        .clk(CLOCK_50), .mem_in(data), .mem_addr(address), .mem_wen(wren),
        //outputs
        .mem_out(q)
    );


    //decrypted message RAM
    logic [7:0] q_d, data_d;
    logic [4:0] address_d;
    logic wren_d;
    //encrypted message ROM
    logic [7:0] q_m;
    logic [4:0] address_m;

    decrypt_core core0(
        //Inputs
        .clk(CLOCK_50), .start(start_key), .reset(reset_n),
        .secret_key(secret_key), .q(q), .q_d(q_d), .q_m(q_m),
        //Outputs
        .wren(wren), .wren_d(wren_d),
        .data(data), .data_d(data_d),
        .address(address), .address_d(address_d), .address_m(address_m)
    );

endmodule

module reg_async (clk, reset, d, q);
    parameter N=1;
    input clk, reset;
    input [N-1:0] d;
    output reg [N-1:0] q;
    always @(posedge clk, posedge reset) begin
        if(reset) q <= 0;
        else q <= d;
    end
endmodule

module async_to_sync(input async_sig, outclk, output out_sync_sig);
    wire VCC = 1;
    wire GND = 0;
    wire reg1_out, reg2_out, reg4_out;
    reg_async reg1(.clk(async_sig), .reset(reg4_out), .d(VCC), .q(reg1_out));
    reg_async reg2(.clk(outclk), .reset(GND), .d(reg1_out), .q(reg2_out));
    reg_async reg3(.clk(outclk), .reset(GND), .d(reg2_out), .q(out_sync_sig));
    reg_async reg4(.clk(outclk), .reset(GND), .d(out_sync_sig), .q(reg4_out));
endmodule