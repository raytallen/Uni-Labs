module lab4_top_tb;
    //Initializing simulated inputs
    reg [9:0] sim_SW;
    reg [3:0] sim_KEY;
    wire [6:0] sim_HEX;
    lab4_top DUT(sim_SW,sim_KEY,sim_HEX);

    initial begin
        //All keys not pressed, direction switch forward
        sim_KEY[3:0] = 4'b0011; sim_SW[0] = 1; sim_SW[9:1] = 0;

        //Hold the reset button, press clk, and release both
        #50;
        sim_KEY[1] = 0;
        #50;
        sim_KEY[0] = 0;
        #50;
        sim_KEY[1] = 1;
        sim_KEY[0] = 1;

        //Cycle through forward 7 times
        repeat (7) begin
            #50;
            sim_KEY[0] = 0;
            #50;
            sim_KEY[0] = 1;
        end

        //Change direction and cycle back 6 times
        #50;
        sim_SW[0] = 0;
        repeat (7) begin
            #50;
            sim_KEY[0] = 0;
            #50;
            sim_KEY[0] = 1;
        end

        //Hold the reset button, press clk, and release both
        #50;
        sim_KEY[1] = 0;
        #50;
        sim_KEY[0] = 0;
        #50;
        sim_KEY[1] = 1;
        sim_KEY[0] = 1;
    end
endmodule