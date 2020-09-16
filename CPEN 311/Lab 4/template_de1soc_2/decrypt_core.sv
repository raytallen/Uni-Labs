module decrypt_core(
    input clk,
    input start, reset,
    input [23:0] secret_key,

    //working memory RAM
    input [7:0] q,
    output logic wren,
    output logic [7:0] data, address,

    //decrypted message RAM
    input [7:0] q_d,
    output logic wren_d,
    output logic [7:0] data_d,
    output logic [4:0] address_d,

    //encrypted message ROM
    input [7:0] q_m,
    output logic [4:0] address_m
);

    //FSM and algorithim parameters
    logic start_initialize, start_decode;
    logic finish_initialize, finish_decode;
    logic [3:0] state;
    logic FSM_select;

    logic wren_initialize, wren_decode;
    logic [7:0] address_initialize, data_initialize, address_decode, data_decode;

    parameter idle                      = 4'b0_000;
    parameter start_initialize_memory   = 4'b0_001;
    parameter wait_initialize_memory    = 4'b0_010;
    parameter start_decode_algorithm    = 4'b1_011;
    parameter wait_decode_algorithm     = 4'b1_100;

    assign FSM_select = state[3];

    always_comb begin
        if (FSM_select) begin
            wren = wren_decode;
            address = address_decode;
            data = data_decode;
        end
        else begin
            wren = wren_initialize;
            address = address_initialize;
            data = data_initialize;
        end
    end

    //initialize memory FSM
    initialize_memory initialize_memory(
        //inputs
        .start(start_initialize), .clk(clk),
        //outputs
        .finish(finish_initialize), .wren(wren_initialize), .address(address_initialize), .data(data_initialize)
    );

    //decode memory FSM
    decode_algorithm decode_algorithm(
        //inputs
        .start(start_decode), .clk(clk), .q(q), .secret_key(secret_key),
        //outputs
        .finish(finish_decode), .wren(wren_decode), .address(address_decode), .data(data_decode)
    );

    initial begin
        state = idle;
    end

    //part 2a, basic decode algorithm
    always_ff @(posedge clk) begin
        case (state)
            //wait for start signal (KEY_0)
            idle: begin
                if (reset) begin
                    start_initialize <= 1;
                    state <= start_initialize_memory;
                end
                else if (start) begin
                    start_decode <= 1;
                    state <= start_decode_algorithm;
                end
                else state <= idle;
            end

            start_initialize_memory: begin
                start_initialize <= 0;
                state <= wait_initialize_memory;
            end

            wait_initialize_memory: begin
                if(finish_initialize) state <= idle;
                else state <= wait_initialize_memory;
            end

            start_decode_algorithm: begin
                start_decode <= 0;
                state <= wait_decode_algorithm;
            end

            wait_decode_algorithm: begin
                if(finish_decode) state <= idle;
                else state <= wait_decode_algorithm;
            end
        endcase
    end
endmodule


