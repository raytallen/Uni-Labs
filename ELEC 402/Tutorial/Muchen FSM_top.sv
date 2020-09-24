`timescale 1ns/ps

module fsm_tb();

    // output of our up_counter module
    logic [7:0] count;

    // control/input 
    logic clk, counter_en, counter_rst;
    logic fsm_en, fsm_rst;

    // Instantiate modules and connect them up
    fsm F1(clk, fsm_en, fsm_rst, count, counter_en, counter_rst);
    up_counter U1(clk, counter_rst, counter_en, count);

    //init more signals after some time
    initial begin
        #15;
        fsm_rst = 0;
        fsm_en = 1;
    end
    
    //clock
    always begin
        clk = 1; #10;
        clk = 0; #10;
    end

    initial begin
        clk = 0;
        fsm_rst = 1;
        fsm_en = 0;
    end
endmodule