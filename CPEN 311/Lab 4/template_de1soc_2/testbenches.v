module initialize_memory_TB();
    reg start, clk;
    wire finish, wren;
    wire [7:0] address, data;

    initialize_memory DUT(start, clk, finish, wren, address, data);

    initial begin
        forever begin
            clk = 1; #1;
            clk = 0; #1; 
        end
    end

    initial begin
        start = 1;
        #5;
        start = 0;
    end

endmodule

module KSA_TB();
    reg clk;
    reg [3:0] KEY;
    reg [9:0] SW;
    wire [9:0] LED;
    wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

    ksa DUT(
        .CLOCK_50(clk), .KEY(~KEY), .SW(SW),

        .LED(LED), .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2), .HEX3(HEX3), .HEX4(HEX4), .HEX5(HEX5)
    );

    initial begin
        forever begin
            clk = 1; #1;
            clk = 0; #1;
        end
    end

    initial begin
        KEY[3:0] = 3'b0;
        #5;
        //initialize memory
        KEY [3] = 1; #10;
        KEY [3] = 0; #800;
        KEY [0] = 1; #10;
        KEY [0] = 0; #8000;
        $finish;
    end

endmodule