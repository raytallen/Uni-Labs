
module train_FSM(
    input   clk, rst,
    //door_is_open = 1 when open, 0 when closed
    input   depart_ready,
            door_obstruction,
            door_is_open,
            near_station, 
            at_station,
            track_obstruction,
    input[7:0] cruise_speed, current_speed, crawl_speed,

    output logic    ctrl_door,
                    ctrl_brake,
                    ctrl_brake_emergency,
                    ctrl_motor_accelerate,
                    ctrl_motor_maintain
);

    logic [3:0] count;

    //states
    enum {
        s_idle,
        s_doors_opened,
        s_doors_closing,
        s_doors_closed,
        s_accelerate,
        s_maintain_speed,
        s_brake,
        s_emergency_brake,
        s_crawl,
        s_arrived,
        s_doors_opening,
        s_fault
    } state;


    //state transitions
    always_ff @(posedge clk) begin
        if(rst) state <= s_idle;
        else case(state)

            s_idle: state <= s_doors_opened;

            s_doors_opened: if(depart_ready) state <= s_doors_closing;

            s_doors_closing: begin
                if(door_obstruction) state <= s_doors_opening;
                else if(~door_is_open) state <= s_doors_closed;
            end

            s_doors_closed: state <= s_accelerate;

            s_accelerate: begin
                if(track_obstruction) state <= s_emergency_brake;
                else if(current_speed >= cruise_speed) state <= s_maintain_speed; 
            end

            s_maintain_speed: begin
                if(track_obstruction) state <= s_emergency_brake;
                else if(near_station) state <= s_brake;
            end

            s_brake: if(current_speed <= crawl_speed) state <= s_crawl;

            s_crawl: if(at_station) state <= s_arrived;

            s_arrived: if(current_speed == 0) state <= s_doors_opening;

            s_doors_opening: if(door_is_open) state <= s_doors_opened;

            s_emergency_brake: if(~track_obstruction) state <= s_accelerate;

            s_fault: state <= s_fault;
            default: state <= s_fault;
        endcase
    end

    //outputs (combinational)
    always_comb begin
        case(state)
            s_idle: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_opened: begin
                ctrl_door               = 1;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_closing: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_closed: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_accelerate: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 1;
                ctrl_motor_maintain     = 0;
            end

            s_maintain_speed: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 1;
            end

            s_brake: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_crawl: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 1;
            end

            s_arrived: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_opening: begin
                ctrl_door               = 1;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_emergency_brake: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 1;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_fault: begin
                ctrl_door               = 1'bz;
                ctrl_brake              = 1'bz;
                ctrl_brake_emergency    = 1'bz;
                ctrl_motor_accelerate   = 1'bz;
                ctrl_motor_maintain     = 1'bz;
            end

            default: begin
                ctrl_door               = 1'bz;
                ctrl_brake              = 1'bz;
                ctrl_brake_emergency    = 1'bz;
                ctrl_motor_accelerate   = 1'bz;
                ctrl_motor_maintain     = 1'bz;
            end
        endcase
    end
endmodule






