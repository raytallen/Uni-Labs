//Author: Ray Allen
//Testbenches for CPEN 311 Lab 2

module address_counter_tb();
    reg CLK_Sampling, pause, reverse, reset;
    wire [31:0] address;
    wire high_low_half;

    address_counter DUT(
        //inputs
        .CLK_Sampling(CLK_Sampling),
        .pause(pause),
        .reverse(reverse),
        .reset(reset),

        //outputs
        .address(address),
        .high_low_half(high_low_half)
    );

    initial begin
        forever begin
            CLK_Sampling = 0; #1;
            CLK_Sampling = 1; #1;
        end
    end

    initial begin
        //start counter as normal
        pause = 0; reverse = 0; reset = 0; #10;

        //tests pause funciton
        pause = 1; #10;
        pause = 0; #10;

        //tests reverse address counting
        reverse = 1; #10;

        //tests pausing while in reverse
        pause = 1; #10;
        pause = 0; #10;
        reverse = 0; #10;

        //tests reset
        reset = 1; #5;
        reset = 0; #10;
    end
endmodule

module read_flash_FSM_tb();
    //inputs
    reg read, pause, high_low_half, clk;
    reg [31:0] address;

    //flash inputs
    reg flash_mem_readdatavalid;
    reg [31:0] flash_mem_readdata;

    //outputs
    wire [15:0] signal_out;

    //flash outputs
    wire flash_mem_read, flash_mem_waitrequest;
    wire [31:0] flash_mem_address;

    read_flash_FSM DUT(
        //inputs
        .read(read), .pause(pause), .high_low_half(high_low_half), .CLK_50M(clk), .address(address),

        //flash inputs
        .flash_mem_readdatavalid(flash_mem_readdatavalid), .flash_mem_readdata(flash_mem_readdata),
        
        //outputs
        .signal_out(signal_out),

        //flash outputs
        .flash_mem_read(flash_mem_read), .flash_mem_waitrequest(flash_mem_waitrequest), .flash_mem_address(flash_mem_address)
    );

    initial begin
        forever begin
            high_low_half = 0; clk = 0; #1;
            clk = 1; #1;
            high_low_half = 1; clk = 0; #1;
            clk = 1; #1;
        end
    end

    initial begin
        address = 32'b0; read = 0; pause = 0; high_low_half = 0; flash_mem_readdatavalid = 0;
        flash_mem_readdata = {16'b0000000000000000,16'b1111111111111111}; #5;

        //tests read function
        read = 1; #20;
        
        //tests pause function
        pause = 1; #5;
        pause = 0; #20;
    end

endmodule


module control_tb();
    reg speed_up, speed_down, speed_reset, clk;
    reg [7:0] ascii;
    wire [31:0] divider;
    wire pause, reverse;

    control DUT(
        //inputs
        .speed_up(speed_up), .speed_down(speed_down), .speed_reset(speed_reset), .clk(clk),
        .ascii(ascii),

        //outputs
        .divider(divider), .pause(pause), .reverse(reverse)
    );

    initial begin
        forever begin
            clk = 0; #1;
            clk = 1; #1; 
        end
    end

    initial begin
        speed_up = 0; speed_down = 0; speed_reset = 0; ascii = 0; #5;

        //test speed up
        speed_up = 1; #5;
        //test speed reset
        speed_up = 0; speed_reset = 1; #5;
        //test speed down
        speed_reset = 0; speed_down = 1; #5;

        //test pause
        speed_down = 0; ascii = 8'h44; #5;

        //test play
        ascii = 8'h45; #5;

        //test reverse
        ascii = 8'h42; #5;
        ascii = 8'h46; #5;
    end
endmodule