/*
Assignment:     Lab 4
Class:          CPEN 211 L1B
Author:         Ray Allen
Student #:      28263820
ECE ID:         n2k1b
*/

//Defines names for the different states
`define S1 3'b000
`define S2 3'b001
`define S3 3'b010
`define S4 3'b011
`define S5 3'b100

//Setting up the i/o from the board into the module
module lab4_top(input [9:0] SW, input [3:0] KEY, output reg [6:0] HEX0);
    
    //Assigning useful names to the keys and switches, and changing the buttons to not be inverse
    wire clk, reset, dirSW;   
    assign clk = ~KEY[0];
    assign reset = ~KEY[1];
    assign dirSW = SW[0];

    //Defining the state buses
    reg [2:0] present, next;

    //Clock for state machine is triggered on the positive edge of the KEY 1 press
    always @ (posedge clk) begin

        //Sets the next state depending on the present state and what input is recieved
        //If dirSW = 1, moves count up, if dirSW = 0, moves count down
        case (present)
        `S1:    if(clk == 1'b1 & dirSW == 1) next = `S2;
                else if(clk == 1'b1 & dirSW == 0) next = `S5;
                else next = `S1;

        `S2:    if(clk == 1'b1 & dirSW == 1) next = `S3;
                else if(clk == 1'b1 & dirSW == 0) next = `S1;
                else next = `S2;

        `S3:    if(clk == 1'b1 & dirSW == 1) next = `S4;
                else if(clk == 1'b1 & dirSW == 0) next = `S2;
                else next = `S3;

        `S4:    if(clk == 1'b1 & dirSW == 1) next = `S5;
                else if(clk == 1'b1 & dirSW == 0) next = `S3;
                else next = `S4;

        `S5:    if(clk == 1'b1 & dirSW == 1) next = `S1;
                else if(clk == 1'b1 & dirSW == 0) next = `S4;
                else next = `S5;
	    endcase

        //If reset button is pressed, goes back to first state
        if (reset) begin
        present = `S1;
        next = `S1;
        HEX0[6:0] = 7'b1000000;
        end

        //Sets the present state to the next state, moves everything to the next state
        present = next;
        
        //Sets the HEX display output depending on the present state
        case (present)
            `S1:    HEX0[6:0] = 7'b1000000; //0
            `S2:    HEX0[6:0] = 7'b1111001; //1
            `S3:    HEX0[6:0] = 7'b0100100; //2
            `S4:    HEX0[6:0] = 7'b0110000; //3
            `S5:    HEX0[6:0] = 7'b0011001; //4
        endcase
    end
endmodule