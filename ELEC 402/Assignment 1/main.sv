module elevator__FSM(
    input clk,
    output [3:0] state
);
/*  States
    first 4 bits define state
    last 4 bits define outputs
*/  
    logic [7:0] state;

    parameter idle          = 8'b0000_0000;
    parameter floor1_closed = 8'b0000_0000;
    parameter floor1__open  = 8'b0000_0000;



    

endmodule





