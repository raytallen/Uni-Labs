//Author: Ray Allen
//This is going to have all the extra modules for CPEN 311 Lab 2


//read_flash_FSM is the FSM responsible for providing the correct inputs to the flash
//memory to read data from a specific address
module read_flash_FSM(
    //my connections
    input read, pause,
    input high_low_half,

    input [31:0] address,
    output reg [15:0] signal_out,

    //Connections to the flash_inst
    input CLK_50M, flash_mem_readdatavalid,
    input [31:0] flash_mem_readdata,
    output reg flash_mem_read, flash_mem_waitrequest,
    output reg [31:0] flash_mem_address
);

    reg state;

    //States
    parameter idle = 4'b0000;
    parameter start_read = 4'b0001;
    parameter read_wait = 4'b0010;
    parameter read_read = 4'b0011;

    //state transitions
    always @(posedge CLK_50M) begin
        case(state)
            //idle state
            idle: begin 
                if(read == 1) state <= start_read;
                else state <= idle;
            end
            //starts read sequence
            start_read: state <= read_wait;
            //waits 1 clock for flash to output
            read_wait: state <= read_read;
            //recieves output from flash
            read_read: state <= idle;
        endcase
    end

    //state outputs
    always @(*) begin
        case(state)
            idle: begin
                flash_mem_read = 0;
                flash_mem_address = 0;
                flash_mem_waitrequest = 0;
            end

            start_read: begin
                flash_mem_read = 1;
                flash_mem_address = address;
                flash_mem_waitrequest = 0;
            end

            read_wait: begin
                flash_mem_read = 1;
                flash_mem_address = address;
                flash_mem_waitrequest = 0;
            end

            read_read: begin
                flash_mem_read = 1;
                flash_mem_address = address;
                flash_mem_waitrequest = 0;
            end
        endcase

        //selects top or bottom half of flash mem to output to audio controller
        //outputs no audio if paused
        if(pause == 1) signal_out = 16'b0;
        else if(high_low_half == 0) signal_out = flash_mem_readdata [15:0];
        else signal_out = flash_mem_readdata [31:16];
    end
endmodule


//address_counter module is FSM responsible for incrementing the flash memory address
//and controlling wether to read the most/least significant bits
//pauses the address counting when pause is HIGH and reverses adress counting when reverse is HIGH
module address_counter(
    input CLK_Sampling, pause, reverse,
    input [7:0] ascii,
    output reg [31:0] address,
    output reg high_low_half
);

    reg reset;

    initial begin
        address = 32'b0; //starts from the beginning of the flash memory
        high_low_half = 0;
        reset = 0;
    end

    //implements address reset function
    always@(posedge CLK_Sampling) begin    
        if(ascii == 8'h52) begin
            if(reset == 0) begin
                reset <= 1;
                address = 0;
            end
        end
        else reset <=0;
        
        //regular playback
        if(~pause & ~reverse) begin
            high_low_half <= high_low_half + 1;
            if(address == 32'h7FFFF) address <= 0;
            else if(high_low_half == 1) address <= address + 1;   
        end

        //reversed playback
        else if(~pause & reverse) begin
            high_low_half <= high_low_half + 1;
            if(address == 0) address <= 32'h7FFFF;
            else if(high_low_half == 0) address <= address - 1;
        end
    end
endmodule


//control module controls button inputs from DE1 and keyboard
//controls playback speed, pause, and reverse
module control(
    input speed_up, speed_down, speed_reset, clk,
    input [7:0] ascii,
    output reg [31:0] divider,
    output reg pause, reverse
);

    initial begin
        divider = 32'd1136;
        pause = 0;
        reverse = 0;
    end

    //keyboard commands for play/pause and forwards/backwards
    always @(posedge clk) begin
        case(ascii) 
            8'h44: pause = 1;
            8'h45: pause = 0; 
            8'h42: reverse = 1;
            8'h46: reverse = 0;
            default: begin
                reverse = reverse;
                pause = pause;
            end
        endcase

        //playback speed reset
        if(speed_reset) divider = 32'd1136;

        //playback speed down
        else if (speed_down) begin
            if (divider < 32'd1500) divider = divider + 25;
        end

        //playback speed up
        else if (speed_up) begin
            if (divider > 32'd500) divider = divider - 25;  
        end
    end

endmodule