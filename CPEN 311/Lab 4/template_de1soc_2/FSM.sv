//done and perfect
module initialize_memory(
    input start, clk,
    output logic finish, wren,
    output logic [7:0] address, data
);
    logic [1:0] state;

    parameter idle          = 2'b00;
    parameter begin_loop    = 2'b01;
    parameter loop          = 2'b10;
    parameter done          = 2'b11;

    initial begin
        state = idle;
        finish = 1;
        wren = 0;
        address = 0;
        data = 8'b0;
    end

    always @(posedge clk) begin
        case(state)
            idle: begin
                if(start) begin
                    finish <= 0;
                    address <= 0;
                    wren <= 1;
                    state <= begin_loop;
                end
                else state <= idle;
            end

            begin_loop: begin
                data <= 0;
                state <= loop; 
            end

            loop: begin
                if(address == 255) begin
                    state <= done;
                end
                else begin
                    data <= address + 1;
                    address <= address + 1;
                    state <= loop;
                end
            end

            done: begin
                wren <= 0;
                finish <= 1;
                state <= idle;
            end
        endcase
    end
endmodule

module decode_algorithm(
    input start, clk,
    input [7:0] q,
    input [23:0] secret_key,

    output logic finish, wren,
    output logic [7:0] data,
    output logic [7:0] address
);
    logic address_flag;
    logic [5:0] state;
    logic [7:0] i, j, temp1, temp2;

    parameter idle              = 6'b00_0000;
    parameter begin_decode_loop = 6'b00_0001;
    parameter wait_read_s_0     = 6'b00_0010;
    parameter decode            = 6'b00_0011;
    parameter swap1             = 6'b01_0100;
    parameter wait_read_s_1     = 6'b01_0101;
    parameter swap2             = 6'b01_0110;
    parameter swap3             = 6'b01_0111;
    parameter wait_write_s_0    = 6'b01_1000;
    parameter swap4             = 6'b00_1001;
    parameter swap5             = 6'b00_1010;
    parameter wait_write_s_1    = 6'b00_1011;
    parameter done_swap         = 6'b00_1100; 

    initial begin
        finish = 1;
        state = 0;
        i = 0;
        j = 0;
        temp1 = 0;
        temp2 = 0;
    end

    /*assign address_flag = state[4];

    always_comb begin
        if (address_flag) address = j;
        else address = i;
    end*/

    /*always_comb begin
        case(address_flag)
            0: address = i;
            1: address = j;
        endcase
    end*/

    always_ff @(posedge clk) begin
        case(state)
            idle: begin
                if(start) begin
                    finish <= 0;
                    state <= begin_decode_loop;
                end
                else state <= idle;
            end

            //for i = 0 to 255
        //1
            begin_decode_loop: begin
                if (i < 255) begin
                    state <= wait_read_s_0;
                    address = i;
                end
                else begin
                    i <= 0; j <= 0;
                    finish <= 1;
                    state <= idle;
                end
            end
        //2
            wait_read_s_0: state <= decode;
        //3
            decode: begin
                case(i % 8'd3)
                    8'd2: j <= j + q + secret_key[7:0];
                    8'd1: j <= j + q + secret_key[15:8];
                    8'd0: j <= j + q + secret_key[23:16];
                    default: j <= j + q + secret_key[7:0];
                endcase
                
                temp1 <= q;
                state <= swap1;
            end
        //4
            //swap s[i] and s[j]
            swap1: begin
                address <= j;
                state <= wait_read_s_1;
            end
        //5
            wait_read_s_1: state <= swap2;
        //6
            swap2: begin
                temp2 <= q;
                state <= swap3;
            end
        //7
            swap3: begin
                wren <= 1;
                data <= temp1;
                state <= wait_write_s_0;
            end
        //8
            wait_write_s_0: state <= swap4;
        //9
            swap4: begin
                address <= i;
                state <= swap5;
            end
        //10
            swap5: begin
                data <= temp2;
                state <= wait_write_s_1;
            end
        //11
            wait_write_s_1: state <= done_swap;
        //12
            done_swap: begin
                wren <= 0;
                i <= i + 1;
                state <= begin_decode_loop;
            end
        endcase
    end
endmodule