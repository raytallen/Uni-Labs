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

module question7(input async_sig, outclk, output out_sync_sig);
    wire VCC = 1;
    wire GND = 0;
    wire reg1_out, reg2_out, reg4_out;
    reg_async reg1(.clk(async_sig), .reset(reg4_out), .d(VCC), .q(reg1_out));
    reg_async reg2(.clk(outclk), .reset(GND), .d(reg1_out), .q(reg2_out));
    reg_async reg3(.clk(outclk), .reset(GND), .d(reg2_out), .q(out_sync_sig));
    reg_async reg4(.clk(outclk), .reset(GND), .d(out_sync_sig), .q(reg4_out));
endmodule

module question7_tb();
    reg async_sig, outclk;
    wire out_sync_sig;
    question7 DUT(async_sig, outclk, out_sync_sig);

    initial begin
        forever begin
            outclk = 0; #2;
            outclk = 1; #2;
        end
    end

    initial begin

        async_sig = 0; #20;
        async_sig = 1; #20;
        async_sig = 0; #30;
        async_sig = 1; #30;
        async_sig = 0; #20;
        async_sig = 1; #10;
        async_sig = 0; #30;
    end
endmodule