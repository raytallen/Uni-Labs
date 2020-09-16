/*
CPEN 311 Assignment 3
Author: Ray Allen
Student #: 28263820
Date: Feb 25, 2019
*/


//trapped edge module
//holds trapped_edge output high when async_sig is high
//holds output high until asynchronous reset is high

module trap_edge(input async_sig, clk, reset, output reg trapped_edge);
    initial begin
        trapped_edge = 0;
    end
    
    always @(posedge clk, posedge reset) begin
        if(reset) trapped_edge = 0;
        else if(async_sig) trapped_edge = 1;
    end

endmodule


//shared access to one state machine model with parameters for argument and recieved data widths
/

module shared_access_to_one_state_machine #(parameter N = 32, parameter M = 8)
(
    //inputs
    input reset, clk, start_request_a, start_request_b, target_state_machine_finished,
    input [(N-1):0] input_arguments_a, input_arguments_b,
    input [(M-1):0] received_data,

    //outputs
    output finish_a, finish_b, reset_start_request_a, reset_start_request_b, start_target_state_machine,
    output reg [(N-1):0] output_arguments,
    output [(M-1):0] received_data_a, received_data_b
);
    
    reg [11:0] state;

    wire select_b_output_parameters;

    //use state encoding to assert outputs of each state, as done in-class
    assign select_b_output_parameters   = state [11];
    assign start_target_state_machine   = state[10];
    assign reset_start_request_a        = state[9];
    assign reset_start_request_b        = state[8];
    assign finish_a                     = state[7];
    assign finish_b                     = state[6];
    assign register_data_a_enable       = state[5];
    assign register_data_b_enable       = state[4];

    //state encodings
    parameter check_start_a         = 12'b00000000_0001;
    parameter give_start_a          = 12'b01100000_0010;
    parameter wait_for_finish_a     = 12'b00000000_0011;
    parameter register_data_a       = 12'b00000010_0100;
    parameter give_finish_a         = 12'b00001000_0101;
    parameter check_start_b         = 12'b10000000_1001;
    parameter give_start_b          = 12'b11010000_1010;
    parameter wait_for_finish_b     = 12'b10000000_1011;
    parameter register_data_b       = 12'b10000001_1100;
    parameter give_finish_b         = 12'b10000100_1101;


    //state machine
    always @(posedge clk, posedge reset) begin

        //asynchronous reset to check_start_a state
        if(reset) state <= check_start_a;

        else case(state)
            //Checks FSM A for start
            check_start_a: begin
                if(start_request_a) state <= give_start_a;
                else state <= check_start_b;
            end

            //sends start signal and arguments from FSM A to C
            give_start_a: state <= wait_for_finish_a;

            //waits for FSM C to finish
            wait_for_finish_a: begin
                if(target_state_machine_finished) state <= register_data_a;
                else state <= wait_for_finish_a;
            end

            //saves data from FSM C to register
            register_data_a: state <= give_finish_a;

            //sends finish signal to FSM A
            give_finish_a: state <= check_start_b;


            //Checks FSM B for start
            check_start_b: begin
                if(start_request_b) state <= give_start_b;
                else state <= check_start_a;
            end

            //sends start signal and arguments from FSM B to C
            give_start_b: state <= wait_for_finish_b;

            //waits for FSM C to finish
            wait_for_finish_b: begin
                if(target_state_machine_finished) state <= register_data_b;
                else state <= wait_for_finish_b;
            end
            
            //saves data from FSM C to register
            register_data_b: state <= give_finish_b;

            //sends finish signal to FSM B
            give_finish_b: state <= check_start_a;
        endcase
    end

    //combinational logic to select either FSM A or B arguments to send to FSM C, depending on current state
    always @(*) begin
        if(select_b_output_parameters) output_arguments = input_arguments_b;
        else output_arguments = input_arguments_a;
    end

    //8 bit registers with load enable to save recieved data from FSM C for FSM A and B
    register register_A (.clk(clk), .load(register_data_a_enable), .in(received_data), .out(received_data_a));
    register register_B (.clk(clk), .load(register_data_b_enable), .in(received_data), .out(received_data_b));

endmodule


/* REGISTER WITH LOAD ENABLE */
module register(clk, load, in, out) ;
    parameter n = 8;  // width
    input clk, load ;
    input  [n-1:0] in ;
    output [n-1:0] out ;
    reg    [n-1:0] out ;
    wire   [n-1:0] next_out ;

    assign next_out = load ? in : out;

    always @(posedge clk)
      out = next_out;  
endmodule