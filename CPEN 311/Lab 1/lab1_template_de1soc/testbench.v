`timescale 1ns / 1ns
module lab1_tb();
    Basic_Organ_Solution DUT();

endmodule

module Generate_Arbitrary_Divided_Clk32_TB();
    reg inclk, Reset;
    reg [31:0] div_clk_count;
    wire outclk, outclk_Not;

    Generate_Arbitrary_Divided_Clk32 DUT(.inclk(inclk), .Reset(Reset), .div_clk_count(div_clk_count), .outclk(outclk), .outclk_Not(outclk_Not));

    initial begin
	inclk = 0;
        forever begin
            inclk = 1; #2;
            inclk = 0; #2;
        end
    end

    initial begin

        //Start with 0 output
        Reset = 0;
        div_clk_count= 0;
        #5000;

        //test frequency divider @ 1000Hz
        div_clk_count = 32'd25000;
        #100000;

        //test frequency divider @ 500Hz
        div_clk_count = 32'd50000;
        #100000;
    end


endmodule