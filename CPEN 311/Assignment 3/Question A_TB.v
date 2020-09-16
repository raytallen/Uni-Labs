

module shared_access_tb();

    reg reset, clk, start_request_a, start_request_b, target_state_machine_finished;
    reg [31:0] input_arguments_a, input_arguments_b;
    reg [7:0] received_data;

    wire trapped_start_a, trapped_start_b;

    wire finish_a, finish_b, reset_start_request_a, reset_start_request_b, start_target_state_machine;
    wire [31:0] output_arguments;
    wire [7:0] received_data_a, received_data_b;

    shared_access_to_one_state_machine DUT(
    //inputs
        .reset(reset), .clk(clk), .start_request_a(trapped_start_a), .start_request_b(trapped_start_b),
        .target_state_machine_finished(target_state_machine_finished), .input_arguments_a(input_arguments_a),
        .input_arguments_b(input_arguments_b), .received_data(received_data),
    //outputs
        .finish_a(finish_a), .finish_b(finish_b), .reset_start_request_a(reset_start_request_a),
        .reset_start_request_b(reset_start_request_b), .start_target_state_machine(start_target_state_machine),
        .output_arguments(output_arguments), .received_data_a(received_data_a), .received_data_b(received_data_b)
    );

    //edge trappers
    trap_edge trap_a(.clk(clk), .reset(finish_a), .async_sig(start_request_a), .trapped_edge(trapped_start_a));
    trap_edge trap_b(.clk(clk), .reset(finish_b), .async_sig(start_request_b), .trapped_edge(trapped_start_b));


    initial begin
        forever begin
            clk = 0; #1;
            clk = 1; #1;
        end
    end

    initial begin

        //initialize all values
        input_arguments_a = 32'd0;          //FSM A arguments all 0s
        input_arguments_b = 32'd2147483647; //FSM B arguments all 1s
        received_data = 8'b0;               //for individual tests, recieved data from FSM C will be all zeros
        start_request_a = 0;
        start_request_b = 0;
        target_state_machine_finished = 0;
        reset = 1; #2; reset = 0; #2;

        //begin start request from FSM A
        start_request_a = 1; #2; start_request_a = 0; #5;
        //send finishged signal from FSM C
        target_state_machine_finished = 1; #2; target_state_machine_finished = 0; #2;

        //begin start request from FSM B
        start_request_b = 1; #2; start_request_b = 0; #10;
        //send finishged signal from FSM C
        target_state_machine_finished = 1; #2; target_state_machine_finished = 0;  #10;

        received_data = 8'b11111111; //for simultanious tests, recieved data from FSM C will be all 1's
       
        //simultanious start requests from FSM A and B
        start_request_a = 1; start_request_b = 1; #2;
        start_request_a = 0; start_request_b = 0; #5;

        //finished first state machine
        target_state_machine_finished = 1; #2; target_state_machine_finished = 0; #10;
        //finished second state machine
        target_state_machine_finished = 1; #2; target_state_machine_finished = 0; #10;

    end

endmodule