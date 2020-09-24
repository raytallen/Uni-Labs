module fsm(
    input logic clk,
    input logic en,
    input logic rst,

    input[7:0] logic count,

    output logic counter_en,
    output logic counter_rst
);
    enum {
        RED,
        AMBER,
        GREEN
    } state, next_state;

    // Next state logic (comb)
    always_comb 
        // if(count == 10) next_state = GREEN
        // else next_state = RED
        if      (state == RED)      next_state = (count == 10) ? GREEN : RED;   
        else if (state == GREEN)    next_state = (count == 20) ? AMBER : GREEN;
        else if (state == AMBER)    next_state = (count == 3) ? RED : AMBER;
        else                        next_state = RED;
    end

    // State memory logic
    always_ff @(posedge clk) begin
        if (rst)        state <= RED;
        else if (en)    state <= next_state;
        else            state <= state;
    end
    
    // Output
    always_comb begin

        counter_rst = 0;
        
        case (state)
            RED: begin
                counter_en = 1;
                counter_rst = count == 10; // not sure if timing is right
            end
                
            GREEN: begin
                counter_en = 1;
                counter_rst = count == 20;
            end
            AMBER: begin
                counter_en = 1;
                counter_rst = count == 3;
            end

            // Shouldn't happen: HALT whatever we're controlling
            default:{counter_en, counter_rst} = 2'b01;
        endcase
    end
endmodule

module up_counter(
    input logic clk, rst, en,
    output logic[7:0] count
);
    always_ff @(posedge clk) begin
        if(rst) count <= 0;
        else if (en) count <= count + 1;
    end

endmodule