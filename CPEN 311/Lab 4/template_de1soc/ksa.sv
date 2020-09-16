module ksa (
    input CLOCK_50,
    input [3:0] KEY,
    input [9:0] SW,

    output [9:0] LED,
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

    //ksa inputs and outputs
    logic clk, reset_n;
    logic [23:0] secret_key;
    logic [3:0] finish;

    assign clk = CLOCK_50;
    assign start_key = ~KEY[0];
    assign reset_n = ~KEY[3];
    //assign secret_key [23:10] = 0;
    //assign secret_key [9:0] = SW [9:0];

    assign secret_key = 24'b00000000_00000010_01001001;

    assign LED = finish;

    
    //SevenSegmentDisplayDecoder parameters
    logic [3:0] nIn;
    logic [6:0] ssOut;

    //Seven segment instantiation
    SevenSegmentDisplayDecoder mod (.nIn(nIn), .ssOut(ssOut));

    //working memory RAM
    logic [7:0] q, data, address;
    logic wren;
    //RAM_FSM RAM();

    s_memory mem(
        //inputs
        .clock(clk), .address(address), .data(data), .wren(wren),
        //outputs
        .q(q)
    );

    //testbench memory
    /*fakeMem mem(
        //inputs
        .clk(clk), .mem_in(data), .mem_addr(address), .mem_wen(wren),
        //outputs
        .mem_out(q)
    );*/

    //decrypted message RAM
    logic [7:0] q_d, data_d;
    logic [4:0] address_d;
    logic wren_d;

    //RAM_d_FSM RAM_d();
  
    //encrypted message ROM
    logic [7:0] q_m;
    logic [4:0] address_m;

   // ROM_q_FSM ROM_q();

    decrypt_core core0(
        //Inputs
        .clk(clk), .start(start_key), .reset(reset_n), .secret_key(secret_key), .q(q), .q_d(q_d), .q_m(q_m),
        //Outputs
        .wren(wren), .wren_d(wren_d),
        .data(data), .data_d(data_d),
        .address(address), .address_d(address_d), .address_m(address_m),
        .finish(finish[0])
    );
endmodule